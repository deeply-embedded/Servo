#include <iostream> // std::ostream, std::cout, std::cin, std::cerr
#include <array> // std::array
#include <utility> // std::make_pair
#include <string> // std::string
#include <limits> // std::numeric_limits
#include <stdexcept> // std::runtime_error
#include <fstream> // std::ofstream
#include <algorithm> // std::find_if
#include "ReSyLib/GPIO.h" // RSL::GPIOPin
#include "ReSyLib/periphery/actor/Servo.h" // RSL::Servo

namespace utils {
	//! attempts to read a type from an istream until it succeeds.
	template <class TypeToRead, class UnaryPredicate>
	TypeToRead read(UnaryPredicate &&constraint,
			        std::string const &prompt = "Enter something",
					std::string const &errTxt = "Invalid input. Try again: ",
					std::istream &is = std::cin,
					std::ostream &os = std::cout) {

		os << prompt << std::flush; // print the prompt
		TypeToRead target{ };

		while (!(is >> target) || !constraint(target)) {
			// on failure to read:
			is.clear(is.rdstate() & ~is.failbit & ~is.eofbit); // clear error flags, but keep bad.
			if (!is) {
				throw std::runtime_error{ std::string{ "badbit set in is in " } + __func__ };
			}
			is.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); // ignore the line
			os << errTxt << std::flush; // print the error text
		}

		return target;
	}
} // END of namespace utils

namespace pwm {
	static auto constexpr amtServoPins = 14;

	//! maps RSL::GPIOPins to string representations
	std::array<std::pair<RSL::GPIOPin, std::string>, amtServoPins> const pins{
		std::make_pair(RSL::GPIOPin::P8_13, "P8_13"), // works
		std::make_pair(RSL::GPIOPin::P8_19, "P8_19"),
		std::make_pair(RSL::GPIOPin::P8_34, "P8_34"),
		std::make_pair(RSL::GPIOPin::P8_36, "P8_36"),
		std::make_pair(RSL::GPIOPin::P8_45, "P8_45"),
		std::make_pair(RSL::GPIOPin::P8_46, "P8_46"),
		std::make_pair(RSL::GPIOPin::P9_14, "P9_14"), // works
		std::make_pair(RSL::GPIOPin::P9_16, "P9_16"), // works (sometimes) with custom dto
		std::make_pair(RSL::GPIOPin::P9_21, "P9_21"), // works
		std::make_pair(RSL::GPIOPin::P9_22, "P9_22"), // works (sometimes) with custom dto
		std::make_pair(RSL::GPIOPin::P9_28, "P9_28"),
		std::make_pair(RSL::GPIOPin::P9_29, "P9_29"),
		std::make_pair(RSL::GPIOPin::P9_31, "P9_31"),
		std::make_pair(RSL::GPIOPin::P9_42, "P9_42") // used to work, doesn't anymore
	};
} // END of namespace pwm

int main() {
	/* to enable:
	cd /sys/devices/ocp.3/pwm_test_P8_19.15/
	echo 20000000 > period
	echo 0 > polarity
	*/

	try {
		std::cout << "Which pin to use?\n";
		for (auto i = 0U; i < pwm::pins.size(); ++i) {
			std::cout << i << ": " << pwm::pins[i].second << '\n';
		}
		std::cout << std::flush;
		auto num = utils::read<int>([](int i) {
										return i >= 0 && i < static_cast<int>(pwm::pins.size()); },
				                    "");
		auto pin = pwm::pins.at(num).first;

		static auto constexpr txt = "Enter \"abort\" to stop, enter anything else to continue";
		std::string state{ "continue" };

		do {
			auto servoPos = utils::read<double>([](double d) { return d >= 0.0 && d <= 1.0; },
					                            "Which position to use?");
			std::cout << "Pin: " << pwm::pins.at(num).second
					  << "\nPos: " << servoPos << std::endl;

			RSL::Servo servo{ pin };
			servo.enableServo();
			servo.setPosition(servoPos);
		} while (std::cout << txt << std::endl, std::cin >> state && state != "abort");

	} catch (std::runtime_error const &ex) {
		std::cerr << "Caught std::runtime_error: " << ex.what() << '\n';
	} catch (...) {
		std::cerr << "Caught unknown exception.\n";
	}
} // END of main
