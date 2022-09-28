// This script external script or any other code in this VS_ should 
// be used to conditionally setup any GK or _ws var needed for successful implementation

var testGet = _ws.gateKeeper.getBoolean("GreetingFound"); ///JWD Just pulling a gk var for testing
_intv_USERLOG_DEBUG("--- In JavaScript (CallStartupSettings.js) - testGet:" + testGet); ///JWD standard js logging already goes to both files
