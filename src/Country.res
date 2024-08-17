type windowsTimeZones = {
  id: string,
  name: string,
}
type timezoneType = {
  isoAlpha3: string,
  timeZones: array<string>,
  countryName: string,
  isoAlpha2: string,
}
let defaultTimeZone = {
  isoAlpha3: "",
  timeZones: [],
  countryName: "-",
  isoAlpha2: "",
}

let country = [
  {
    isoAlpha3: "AFG",
    timeZones: ["Asia/Kabul"],
    countryName: "Afghanistan",
    isoAlpha2: "AF",
  },
  {
    isoAlpha3: "ALA",
    timeZones: ["Europe/Mariehamn"],
    countryName: `Åland Islands`,
    isoAlpha2: "AX",
  },
  {
    isoAlpha3: "ALB",
    timeZones: ["Europe/Tirane"],
    countryName: "Albania",
    isoAlpha2: "AL",
  },
  {
    isoAlpha3: "DZA",
    timeZones: ["Africa/Algiers"],
    countryName: "Algeria",
    isoAlpha2: "DZ",
  },
  {
    isoAlpha3: "ASM",
    timeZones: ["Pacific/Pago_Pago"],
    countryName: "American Samoa",
    isoAlpha2: "AS",
  },
  {
    isoAlpha3: "AND",
    timeZones: ["Europe/Andorra"],
    countryName: "Andorra",
    isoAlpha2: "AD",
  },
  {
    isoAlpha3: "AGO",
    timeZones: ["Africa/Luanda"],
    countryName: "Angola",
    isoAlpha2: "AO",
  },
  {
    isoAlpha3: "AIA",
    timeZones: ["America/Anguilla"],
    countryName: "Anguilla",
    isoAlpha2: "AI",
  },
  {
    isoAlpha3: "ATA",
    timeZones: ["Antarctica/Palmer"],
    countryName: "Antarctica",
    isoAlpha2: "AQ",
  },
  {
    isoAlpha3: "ATG",
    timeZones: ["America/Antigua"],
    countryName: "Antigua and Barbuda",
    isoAlpha2: "AG",
  },
  {
    isoAlpha3: "ARG",
    timeZones: [
      "America/Argentina/Buenos_Aires",
      "America/Argentina/Cordoba",
      "America/Argentina/Salta",
      "America/Argentina/Jujuy",
      "America/Argentina/Tucuman",
      "America/Argentina/Catamarca",
      "America/Argentina/La_Rioja",
      "America/Argentina/San_Juan",
      "America/Argentina/Mendoza",
      "America/Argentina/San_Luis",
      "America/Argentina/Rio_Gallegos",
      "America/Argentina/Ushuaia",
    ],
    countryName: "Argentina",
    isoAlpha2: "AR",
  },
  {
    isoAlpha3: "ARM",
    timeZones: ["Asia/Yerevan"],
    countryName: "Armenia",
    isoAlpha2: "AM",
  },
  {
    isoAlpha3: "ABW",
    timeZones: ["America/Aruba"],
    countryName: "Aruba",
    isoAlpha2: "AW",
  },
  {
    isoAlpha3: "AUS",
    timeZones: [
      "Australia/Lord_Howe",
      "Antarctica/Macquarie",
      "Australia/Hobart",
      "Australia/Currie",
      "Australia/Melbourne",
      "Australia/Sydney",
      "Australia/Broken_Hill",
      "Australia/Brisbane",
      "Australia/Lindeman",
      "Australia/Adelaide",
      "Australia/Darwin",
      "Australia/Perth",
      "Australia/Eucla",
    ],
    countryName: "Australia",
    isoAlpha2: "AU",
  },
  {
    isoAlpha3: "AUT",
    timeZones: ["Europe/Vienna"],
    countryName: "Austria",
    isoAlpha2: "AT",
  },
  {
    isoAlpha3: "AZE",
    timeZones: ["Asia/Baku"],
    countryName: "Azerbaijan",
    isoAlpha2: "AZ",
  },
  {
    isoAlpha3: "BHS",
    timeZones: ["America/Nassau"],
    countryName: "Bahamas",
    isoAlpha2: "BS",
  },
  {
    isoAlpha3: "BHR",
    timeZones: ["Asia/Bahrain"],
    countryName: "Bahrain",
    isoAlpha2: "BH",
  },
  {
    isoAlpha3: "BGD",
    timeZones: ["Asia/Dhaka"],
    countryName: "Bangladesh",
    isoAlpha2: "BD",
  },
  {
    isoAlpha3: "BRB",
    timeZones: ["America/Barbados"],
    countryName: "Barbados",
    isoAlpha2: "BB",
  },
  {
    isoAlpha3: "BLR",
    timeZones: ["Europe/Minsk"],
    countryName: "Belarus",
    isoAlpha2: "BY",
  },
  {
    isoAlpha3: "BEL",
    timeZones: ["Europe/Brussels"],
    countryName: "Belgium",
    isoAlpha2: "BE",
  },
  {
    isoAlpha3: "BLZ",
    timeZones: ["America/Belize"],
    countryName: "Belize",
    isoAlpha2: "BZ",
  },
  {
    isoAlpha3: "BEN",
    timeZones: ["Africa/Porto-Novo"],
    countryName: "Benin",
    isoAlpha2: "BJ",
  },
  {
    isoAlpha3: "BMU",
    timeZones: ["Atlantic/Bermuda"],
    countryName: "Bermuda",
    isoAlpha2: "BM",
  },
  {
    isoAlpha3: "BTN",
    timeZones: ["Asia/Thimphu"],
    countryName: "Bhutan",
    isoAlpha2: "BT",
  },
  {
    isoAlpha3: "BOL",
    timeZones: ["America/La_Paz"],
    countryName: "Bolivia",
    isoAlpha2: "BO",
  },
  {
    isoAlpha3: "BES",
    timeZones: ["America/Kralendijk"],
    countryName: "Bonaire, Sint Eustatius and Saba",
    isoAlpha2: "BQ",
  },
  {
    isoAlpha3: "BIH",
    timeZones: ["Europe/Sarajevo"],
    countryName: "Bosnia and Herzegovina",
    isoAlpha2: "BA",
  },
  {
    isoAlpha3: "BWA",
    timeZones: ["Africa/Gaborone"],
    countryName: "Botswana",
    isoAlpha2: "BW",
  },
  {
    isoAlpha3: "BVT",
    timeZones: ["Africa/Porto-Novo"],
    countryName: "Bouvet Island",
    isoAlpha2: "BV",
  },
  {
    isoAlpha3: "BRA",
    timeZones: [
      "America/Noronha",
      "America/Belem",
      "America/Fortaleza",
      "America/Recife",
      "America/Araguaina",
      "America/Maceio",
      "America/Bahia",
      "America/Sao_Paulo",
      "America/Campo_Grande",
      "America/Cuiaba",
      "America/Santarem",
      "America/Porto_Velho",
      "America/Boa_Vista",
      "America/Manaus",
      "America/Eirunepe",
      "America/Rio_Branco",
    ],
    countryName: "Brazil",
    isoAlpha2: "BR",
  },
  {
    isoAlpha3: "IOT",
    timeZones: ["Indian/Chagos"],
    countryName: "British Indian Ocean Territory",
    isoAlpha2: "IO",
  },
  {
    isoAlpha3: "BRN",
    timeZones: ["Asia/Brunei"],
    countryName: "Brunei",
    isoAlpha2: "BN",
  },
  {
    isoAlpha3: "BGR",
    timeZones: ["Europe/Sofia"],
    countryName: "Bulgaria",
    isoAlpha2: "BG",
  },
  {
    isoAlpha3: "BFA",
    timeZones: ["Africa/Ouagadougou"],
    countryName: "Burkina Faso",
    isoAlpha2: "BF",
  },
  {
    isoAlpha3: "BDI",
    timeZones: ["Africa/Bujumbura"],
    countryName: "Burundi",
    isoAlpha2: "BI",
  },
  {
    isoAlpha3: "CPV",
    timeZones: ["Atlantic/Cape_Verde"],
    countryName: "Cabo Verde",
    isoAlpha2: "CV",
  },
  {
    isoAlpha3: "KHM",
    timeZones: ["Asia/Phnom_Penh"],
    countryName: "Cambodia",
    isoAlpha2: "KH",
  },
  {
    isoAlpha3: "CMR",
    timeZones: ["Africa/Douala"],
    countryName: "Cameroon",
    isoAlpha2: "CM",
  },
  {
    isoAlpha3: "CAN",
    timeZones: [
      "America/St_Johns",
      "America/Halifax",
      "America/Glace_Bay",
      "America/Moncton",
      "America/Goose_Bay",
      "America/Blanc-Sablon",
      "America/Toronto",
      "America/Nipigon",
      "America/Thunder_Bay",
      "America/Iqaluit",
      "America/Pangnirtung",
      "America/Atikokan",
      "America/Winnipeg",
      "America/Rainy_River",
      "America/Resolute",
      "America/Rankin_Inlet",
      "America/Regina",
      "America/Swift_Current",
      "America/Edmonton",
      "America/Cambridge_Bay",
      "America/Yellowknife",
      "America/Inuvik",
      "America/Creston",
      "America/Dawson_Creek",
      "America/Fort_Nelson",
      "America/Vancouver",
      "America/Whitehorse",
      "America/Dawson",
    ],
    countryName: "Canada",
    isoAlpha2: "CA",
  },
  {
    isoAlpha3: "CYM",
    timeZones: ["America/Cayman"],
    countryName: "Cayman Islands",
    isoAlpha2: "KY",
  },
  {
    isoAlpha3: "CAF",
    timeZones: ["Africa/Bangui"],
    countryName: "Central African Republic",
    isoAlpha2: "CF",
  },
  {
    isoAlpha3: "TCD",
    timeZones: ["Africa/Ndjamena"],
    countryName: "Chad",
    isoAlpha2: "TD",
  },
  {
    isoAlpha3: "CHL",
    timeZones: ["America/Santiago", "Pacific/Easter"],
    countryName: "Chile",
    isoAlpha2: "CL",
  },
  {
    isoAlpha3: "CHN",
    timeZones: ["Asia/Shanghai", "Asia/Urumqi"],
    countryName: "China",
    isoAlpha2: "CN",
  },
  {
    isoAlpha3: "CXR",
    timeZones: ["Indian/Christmas"],
    countryName: "Christmas Island",
    isoAlpha2: "CX",
  },
  {
    isoAlpha3: "CCK",
    timeZones: ["Indian/Cocos"],
    countryName: "Cocos (Keeling) Islands",
    isoAlpha2: "CC",
  },
  {
    isoAlpha3: "COL",
    timeZones: ["America/Bogota"],
    countryName: "Colombia",
    isoAlpha2: "CO",
  },
  {
    isoAlpha3: "COM",
    timeZones: ["Indian/Comoro"],
    countryName: "Comoros",
    isoAlpha2: "KM",
  },
  {
    isoAlpha3: "COG",
    timeZones: ["Africa/Brazzaville"],
    countryName: "Congo",
    isoAlpha2: "CG",
  },
  {
    isoAlpha3: "COD",
    timeZones: ["Africa/Kinshasa", "Africa/Lubumbashi"],
    countryName: "Congo (DRC)",
    isoAlpha2: "CD",
  },
  {
    isoAlpha3: "COK",
    timeZones: ["Pacific/Rarotonga"],
    countryName: "Cook Islands",
    isoAlpha2: "CK",
  },
  {
    isoAlpha3: "CRI",
    timeZones: ["America/Costa_Rica"],
    countryName: "Costa Rica",
    isoAlpha2: "CR",
  },
  {
    isoAlpha3: "CIV",
    timeZones: ["Africa/Abidjan"],
    countryName: `Côte d’Ivoire`,
    isoAlpha2: "CI",
  },
  {
    isoAlpha3: "HRV",
    timeZones: ["Europe/Zagreb"],
    countryName: "Croatia",
    isoAlpha2: "HR",
  },
  {
    isoAlpha3: "CUB",
    timeZones: ["America/Havana"],
    countryName: "Cuba",
    isoAlpha2: "CU",
  },
  {
    isoAlpha3: "CUW",
    timeZones: ["America/Curacao"],
    countryName: `Curaçao`,
    isoAlpha2: "CW",
  },
  {
    isoAlpha3: "CYP",
    timeZones: ["Asia/Nicosia"],
    countryName: "Cyprus",
    isoAlpha2: "CY",
  },
  {
    isoAlpha3: "CZE",
    timeZones: ["Europe/Prague"],
    countryName: "Czech Republic",
    isoAlpha2: "CZ",
  },
  {
    isoAlpha3: "DNK",
    timeZones: ["Europe/Copenhagen"],
    countryName: "Denmark",
    isoAlpha2: "DK",
  },
  {
    isoAlpha3: "DJI",
    timeZones: ["Africa/Djibouti"],
    countryName: "Djibouti",
    isoAlpha2: "DJ",
  },
  {
    isoAlpha3: "DMA",
    timeZones: ["America/Dominica"],
    countryName: "Dominica",
    isoAlpha2: "DM",
  },
  {
    isoAlpha3: "DOM",
    timeZones: ["America/Santo_Domingo"],
    countryName: "Dominican Republic",
    isoAlpha2: "DO",
  },
  {
    isoAlpha3: "ECU",
    timeZones: ["America/Guayaquil", "Pacific/Galapagos"],
    countryName: "Ecuador",
    isoAlpha2: "EC",
  },
  {
    isoAlpha3: "EGY",
    timeZones: ["Africa/Cairo"],
    countryName: "Egypt",
    isoAlpha2: "EG",
  },
  {
    isoAlpha3: "SLV",
    timeZones: ["America/El_Salvador"],
    countryName: "El Salvador",
    isoAlpha2: "SV",
  },
  {
    isoAlpha3: "GNQ",
    timeZones: ["Africa/Malabo"],
    countryName: "Equatorial Guinea",
    isoAlpha2: "GQ",
  },
  {
    isoAlpha3: "ERI",
    timeZones: ["Africa/Asmara"],
    countryName: "Eritrea",
    isoAlpha2: "ER",
  },
  {
    isoAlpha3: "EST",
    timeZones: ["Europe/Tallinn"],
    countryName: "Estonia",
    isoAlpha2: "EE",
  },
  {
    isoAlpha3: "SWZ",
    timeZones: ["Africa/Mbabane"],
    countryName: "Eswatini",
    isoAlpha2: "SZ",
  },
  {
    isoAlpha3: "ETH",
    timeZones: ["Africa/Addis_Ababa"],
    countryName: "Ethiopia",
    isoAlpha2: "ET",
  },
  {
    isoAlpha3: "FLK",
    timeZones: ["Atlantic/Stanley"],
    countryName: "Falkland Islands (Malvinas)",
    isoAlpha2: "FK",
  },
  {
    isoAlpha3: "FRO",
    timeZones: ["Atlantic/Faroe"],
    countryName: "Faroe Islands",
    isoAlpha2: "FO",
  },
  {
    isoAlpha3: "FJI",
    timeZones: ["Pacific/Fiji"],
    countryName: "Fiji",
    isoAlpha2: "FJ",
  },
  {
    isoAlpha3: "FIN",
    timeZones: ["Europe/Helsinki"],
    countryName: "Finland",
    isoAlpha2: "FI",
  },
  {
    isoAlpha3: "FRA",
    timeZones: ["Europe/Paris"],
    countryName: "France",
    isoAlpha2: "FR",
  },
  {
    isoAlpha3: "GUF",
    timeZones: ["America/Cayenne"],
    countryName: "French Guiana",
    isoAlpha2: "GF",
  },
  {
    isoAlpha3: "PYF",
    timeZones: ["Pacific/Tahiti", "Pacific/Marquesas", "Pacific/Gambier"],
    countryName: "French Polynesia",
    isoAlpha2: "PF",
  },
  {
    isoAlpha3: "ATF",
    timeZones: ["Indian/Kerguelen"],
    countryName: "French Southern Territories",
    isoAlpha2: "TF",
  },
  {
    isoAlpha3: "GAB",
    timeZones: ["Africa/Libreville"],
    countryName: "Gabon",
    isoAlpha2: "GA",
  },
  {
    isoAlpha3: "GMB",
    timeZones: ["Africa/Banjul"],
    countryName: "Gambia",
    isoAlpha2: "GM",
  },
  {
    isoAlpha3: "GEO",
    timeZones: ["Asia/Tbilisi"],
    countryName: "Georgia",
    isoAlpha2: "GE",
  },
  {
    isoAlpha3: "DEU",
    timeZones: ["Europe/Berlin", "Europe/Busingen"],
    countryName: "Germany",
    isoAlpha2: "DE",
  },
  {
    isoAlpha3: "GHA",
    timeZones: ["Africa/Accra"],
    countryName: "Ghana",
    isoAlpha2: "GH",
  },
  {
    isoAlpha3: "GIB",
    timeZones: ["Europe/Gibraltar"],
    countryName: "Gibraltar",
    isoAlpha2: "GI",
  },
  {
    isoAlpha3: "GRC",
    timeZones: ["Europe/Athens"],
    countryName: "Greece",
    isoAlpha2: "GR",
  },
  {
    isoAlpha3: "GRL",
    timeZones: ["America/Godthab", "America/Danmarkshavn", "America/Scoresbysund", "America/Thule"],
    countryName: "Greenland",
    isoAlpha2: "GL",
  },
  {
    isoAlpha3: "GRD",
    timeZones: ["America/Grenada"],
    countryName: "Grenada",
    isoAlpha2: "GD",
  },
  {
    isoAlpha3: "GLP",
    timeZones: ["America/Guadeloupe"],
    countryName: "Guadeloupe",
    isoAlpha2: "GP",
  },
  {
    isoAlpha3: "GUM",
    timeZones: ["Pacific/Guam"],
    countryName: "Guam",
    isoAlpha2: "GU",
  },
  {
    isoAlpha3: "GTM",
    timeZones: ["America/Guatemala"],
    countryName: "Guatemala",
    isoAlpha2: "GT",
  },
  {
    isoAlpha3: "GGY",
    timeZones: ["Europe/Guernsey"],
    countryName: "Guernsey",
    isoAlpha2: "GG",
  },
  {
    isoAlpha3: "GIN",
    timeZones: ["Africa/Conakry"],
    countryName: "Guinea",
    isoAlpha2: "GN",
  },
  {
    isoAlpha3: "GNB",
    timeZones: ["Africa/Bissau"],
    countryName: "Guinea-Bissau",
    isoAlpha2: "GW",
  },
  {
    isoAlpha3: "GUY",
    timeZones: ["America/Guyana"],
    countryName: "Guyana",
    isoAlpha2: "GY",
  },
  {
    isoAlpha3: "HTI",
    timeZones: ["America/Port-au-Prince"],
    countryName: "Haiti",
    isoAlpha2: "HT",
  },
  {
    isoAlpha3: "HMD",
    timeZones: ["Indian/Kerguelen"],
    countryName: "Heard Island and McDonald Islands",
    isoAlpha2: "HM",
  },
  {
    isoAlpha3: "VAT",
    timeZones: ["Europe/Vatican"],
    countryName: "Holy See (Vatican City State)",
    isoAlpha2: "VA",
  },
  {
    isoAlpha3: "HND",
    timeZones: ["America/Tegucigalpa"],
    countryName: "Honduras",
    isoAlpha2: "HN",
  },
  {
    isoAlpha3: "HKG",
    timeZones: ["Asia/Hong_Kong"],
    countryName: "Hong Kong SAR",
    isoAlpha2: "HK",
  },
  {
    isoAlpha3: "HUN",
    timeZones: ["Europe/Budapest"],
    countryName: "Hungary",
    isoAlpha2: "HU",
  },
  {
    isoAlpha3: "ISL",
    timeZones: ["Atlantic/Reykjavik"],
    countryName: "Iceland",
    isoAlpha2: "IS",
  },
  {
    isoAlpha3: "IND",
    timeZones: ["Asia/Kolkata", "Asia/Calcutta"],
    countryName: "India",
    isoAlpha2: "IN",
  },
  {
    isoAlpha3: "IDN",
    timeZones: ["Asia/Jakarta", "Asia/Pontianak", "Asia/Makassar", "Asia/Jayapura"],
    countryName: "Indonesia",
    isoAlpha2: "ID",
  },
  {
    isoAlpha3: "IRN",
    timeZones: ["Asia/Tehran"],
    countryName: "Iran",
    isoAlpha2: "IR",
  },
  {
    isoAlpha3: "IRQ",
    timeZones: ["Asia/Baghdad"],
    countryName: "Iraq",
    isoAlpha2: "IQ",
  },
  {
    isoAlpha3: "IRL",
    timeZones: ["Europe/Dublin"],
    countryName: "Ireland",
    isoAlpha2: "IE",
  },
  {
    isoAlpha3: "IMN",
    timeZones: ["Europe/Isle_of_Man"],
    countryName: "Isle of Man",
    isoAlpha2: "IM",
  },
  {
    isoAlpha3: "ISR",
    timeZones: ["Asia/Jerusalem"],
    countryName: "Israel",
    isoAlpha2: "IL",
  },
  {
    isoAlpha3: "ITA",
    timeZones: ["Europe/Rome"],
    countryName: "Italy",
    isoAlpha2: "IT",
  },
  {
    isoAlpha3: "JAM",
    timeZones: ["America/Jamaica"],
    countryName: "Jamaica",
    isoAlpha2: "JM",
  },
  {
    isoAlpha3: "JPN",
    timeZones: ["Asia/Tokyo"],
    countryName: "Japan",
    isoAlpha2: "JP",
  },
  {
    isoAlpha3: "JEY",
    timeZones: ["Europe/Jersey"],
    countryName: "Jersey",
    isoAlpha2: "JE",
  },
  {
    isoAlpha3: "JOR",
    timeZones: ["Asia/Amman"],
    countryName: "Jordan",
    isoAlpha2: "JO",
  },
  {
    isoAlpha3: "KAZ",
    timeZones: ["Asia/Almaty", "Asia/Qyzylorda", "Asia/Aqtobe", "Asia/Aqtau", "Asia/Oral"],
    countryName: "Kazakhstan",
    isoAlpha2: "KZ",
  },
  {
    isoAlpha3: "KEN",
    timeZones: ["Africa/Nairobi"],
    countryName: "Kenya",
    isoAlpha2: "KE",
  },
  {
    isoAlpha3: "KIR",
    timeZones: ["Pacific/Tarawa"],
    countryName: "Kiribati",
    isoAlpha2: "KI",
  },
  {
    isoAlpha3: "KOR",
    timeZones: ["Asia/Seoul"],
    countryName: "Korea",
    isoAlpha2: "KR",
  },
  {
    isoAlpha3: "PRK",
    timeZones: ["Asia/Pyongyang"],
    countryName: "Korea (Democratic People's Republic of)",
    isoAlpha2: "KP",
  },
  {
    isoAlpha3: "KWT",
    timeZones: ["Asia/Kuwait"],
    countryName: "Kuwait",
    isoAlpha2: "KW",
  },
  {
    isoAlpha3: "KGZ",
    timeZones: ["Asia/Bishkek"],
    countryName: "Kyrgyzstan",
    isoAlpha2: "KG",
  },
  {
    isoAlpha3: "LAO",
    timeZones: ["Asia/Vientiane"],
    countryName: "Laos",
    isoAlpha2: "LA",
  },
  {
    isoAlpha3: "LVA",
    timeZones: ["Europe/Riga"],
    countryName: "Latvia",
    isoAlpha2: "LV",
  },
  {
    isoAlpha3: "LBN",
    timeZones: ["Asia/Beirut"],
    countryName: "Lebanon",
    isoAlpha2: "LB",
  },
  {
    isoAlpha3: "LSO",
    timeZones: ["Africa/Maseru"],
    countryName: "Lesotho",
    isoAlpha2: "LS",
  },
  {
    isoAlpha3: "LBR",
    timeZones: ["Africa/Monrovia"],
    countryName: "Liberia",
    isoAlpha2: "LR",
  },
  {
    isoAlpha3: "LBY",
    timeZones: ["Africa/Tripoli"],
    countryName: "Libya",
    isoAlpha2: "LY",
  },
  {
    isoAlpha3: "LIE",
    timeZones: ["Europe/Vaduz"],
    countryName: "Liechtenstein",
    isoAlpha2: "LI",
  },
  {
    isoAlpha3: "LTU",
    timeZones: ["Europe/Vilnius"],
    countryName: "Lithuania",
    isoAlpha2: "LT",
  },
  {
    isoAlpha3: "LUX",
    timeZones: ["Europe/Luxembourg"],
    countryName: "Luxembourg",
    isoAlpha2: "LU",
  },
  {
    isoAlpha3: "MAC",
    timeZones: ["Asia/Macau"],
    countryName: "Macao SAR",
    isoAlpha2: "MO",
  },
  {
    isoAlpha3: "MKD",
    timeZones: ["Europe/Skopje"],
    countryName: "Macedonia, FYRO",
    isoAlpha2: "MK",
  },
  {
    isoAlpha3: "MDG",
    timeZones: ["Indian/Antananarivo"],
    countryName: "Madagascar",
    isoAlpha2: "MG",
  },
  {
    isoAlpha3: "MWI",
    timeZones: ["Africa/Blantyre"],
    countryName: "Malawi",
    isoAlpha2: "MW",
  },
  {
    isoAlpha3: "MYS",
    timeZones: ["Asia/Kuala_Lumpur", "Asia/Kuching"],
    countryName: "Malaysia",
    isoAlpha2: "MY",
  },
  {
    isoAlpha3: "MDV",
    timeZones: ["Indian/Maldives"],
    countryName: "Maldives",
    isoAlpha2: "MV",
  },
  {
    isoAlpha3: "MLI",
    timeZones: ["Africa/Bamako"],
    countryName: "Mali",
    isoAlpha2: "ML",
  },
  {
    isoAlpha3: "MLT",
    timeZones: ["Europe/Malta"],
    countryName: "Malta",
    isoAlpha2: "MT",
  },
  {
    isoAlpha3: "MHL",
    timeZones: ["Pacific/Majuro"],
    countryName: "Marshall Islands",
    isoAlpha2: "MH",
  },
  {
    isoAlpha3: "MTQ",
    timeZones: ["America/Martinique"],
    countryName: "Martinique",
    isoAlpha2: "MQ",
  },
  {
    isoAlpha3: "MRT",
    timeZones: ["Africa/Nouakchott"],
    countryName: "Mauritania",
    isoAlpha2: "MR",
  },
  {
    isoAlpha3: "MUS",
    timeZones: ["Indian/Mauritius"],
    countryName: "Mauritius",
    isoAlpha2: "MU",
  },
  {
    isoAlpha3: "YT",
    timeZones: ["Indian/Mayotte"],
    countryName: "Mayotte",
    isoAlpha2: "YT",
  },
  {
    isoAlpha3: "MEX",
    timeZones: [
      "America/Mexico_City",
      "America/Cancun",
      "America/Merida",
      "America/Monterrey",
      "America/Matamoros",
      "America/Mazatlan",
      "America/Chihuahua",
      "America/Ojinaga",
      "America/Hermosillo",
      "America/Tijuana",
      "America/Bahia_Banderas",
    ],
    countryName: "Mexico",
    isoAlpha2: "MX",
  },
  {
    isoAlpha3: "FSM",
    timeZones: ["Pacific/Chuuk", "Pacific/Pohnpei", "Pacific/Kosrae"],
    countryName: "Micronesia, Federated States of",
    isoAlpha2: "FM",
  },
  {
    isoAlpha3: "MDA",
    timeZones: ["Europe/Chisinau"],
    countryName: "Moldova",
    isoAlpha2: "MD",
  },
  {
    isoAlpha3: "MCO",
    timeZones: ["Europe/Monaco"],
    countryName: "Monaco",
    isoAlpha2: "MC",
  },
  {
    isoAlpha3: "MNG",
    timeZones: ["Asia/Ulaanbaatar", "Asia/Hovd", "Asia/Choibalsan"],
    countryName: "Mongolia",
    isoAlpha2: "MN",
  },
  {
    isoAlpha3: "MNE",
    timeZones: ["Europe/Podgorica"],
    countryName: "Montenegro",
    isoAlpha2: "ME",
  },
  {
    isoAlpha3: "MSR",
    timeZones: ["America/Montserrat"],
    countryName: "Montserrat",
    isoAlpha2: "MS",
  },
  {
    isoAlpha3: "MAR",
    timeZones: ["Africa/Casablanca"],
    countryName: "Morocco",
    isoAlpha2: "MA",
  },
  {
    isoAlpha3: "MOZ",
    timeZones: ["Africa/Maputo"],
    countryName: "Mozambique",
    isoAlpha2: "MZ",
  },
  {
    isoAlpha3: "MMR",
    timeZones: ["Asia/Rangoon"],
    countryName: "Myanmar",
    isoAlpha2: "MM",
  },
  {
    isoAlpha3: "NAM",
    timeZones: ["Africa/Windhoek"],
    countryName: "Namibia",
    isoAlpha2: "NA",
  },
  {
    isoAlpha3: "NRU",
    timeZones: ["Pacific/Nauru"],
    countryName: "Nauru",
    isoAlpha2: "NR",
  },
  {
    isoAlpha3: "NPL",
    timeZones: ["Asia/Kathmandu"],
    countryName: "Nepal",
    isoAlpha2: "NP",
  },
  {
    isoAlpha3: "NLD",
    timeZones: ["Europe/Amsterdam"],
    countryName: "Netherlands",
    isoAlpha2: "NL",
  },
  {
    isoAlpha3: "NCL",
    timeZones: ["Pacific/Noumea"],
    countryName: "New Caledonia",
    isoAlpha2: "NC",
  },
  {
    isoAlpha3: "NZL",
    timeZones: ["Pacific/Auckland", "Pacific/Chatham"],
    countryName: "New Zealand",
    isoAlpha2: "NZ",
  },
  {
    isoAlpha3: "NIC",
    timeZones: ["America/Managua"],
    countryName: "Nicaragua",
    isoAlpha2: "NI",
  },
  {
    isoAlpha3: "NER",
    timeZones: ["Africa/Niamey"],
    countryName: "Niger",
    isoAlpha2: "NE",
  },
  {
    isoAlpha3: "NGA",
    timeZones: ["Africa/Lagos"],
    countryName: "Nigeria",
    isoAlpha2: "NG",
  },
  {
    isoAlpha3: "NIU",
    timeZones: ["Pacific/Niue"],
    countryName: "Niue",
    isoAlpha2: "NU",
  },
  {
    isoAlpha3: "NFK",
    timeZones: ["Pacific/Norfolk"],
    countryName: "Norfolk Island",
    isoAlpha2: "NF",
  },
  {
    isoAlpha3: "MNP",
    timeZones: ["Pacific/Saipan"],
    countryName: "Northern Mariana Islands",
    isoAlpha2: "MP",
  },
  {
    isoAlpha3: "NOR",
    timeZones: ["Europe/Oslo"],
    countryName: "Norway",
    isoAlpha2: "NO",
  },
  {
    isoAlpha3: "OMN",
    timeZones: ["Asia/Muscat"],
    countryName: "Oman",
    isoAlpha2: "OM",
  },
  {
    isoAlpha3: "PAK",
    timeZones: ["Asia/Karachi"],
    countryName: "Pakistan",
    isoAlpha2: "PK",
  },
  {
    isoAlpha3: "PLW",
    timeZones: ["Pacific/Palau"],
    countryName: "Palau",
    isoAlpha2: "PW",
  },
  {
    isoAlpha3: "PSE",
    timeZones: ["Asia/Gaza", "Asia/Hebron"],
    countryName: "Palestine, State of",
    isoAlpha2: "PS",
  },
  {
    isoAlpha3: "PAN",
    timeZones: ["America/Panama"],
    countryName: "Panama",
    isoAlpha2: "PA",
  },
  {
    isoAlpha3: "PNG",
    timeZones: ["Pacific/Port_Moresby"],
    countryName: "Papua New Guinea",
    isoAlpha2: "PG",
  },
  {
    isoAlpha3: "PRY",
    timeZones: ["America/Asuncion"],
    countryName: "Paraguay",
    isoAlpha2: "PY",
  },
  {
    isoAlpha3: "PER",
    timeZones: ["America/Lima"],
    countryName: "Peru",
    isoAlpha2: "PE",
  },
  {
    isoAlpha3: "PHL",
    timeZones: ["Asia/Manila"],
    countryName: "Philippines",
    isoAlpha2: "PH",
  },
  {
    isoAlpha3: "PCN",
    timeZones: ["Pacific/Pitcairn"],
    countryName: "Pitcairn",
    isoAlpha2: "PN",
  },
  {
    isoAlpha3: "POL",
    timeZones: ["Europe/Warsaw"],
    countryName: "Poland",
    isoAlpha2: "PL",
  },
  {
    isoAlpha3: "PRT",
    timeZones: ["Europe/Lisbon", "Atlantic/Madeira", "Atlantic/Azores"],
    countryName: "Portugal",
    isoAlpha2: "PT",
  },
  {
    isoAlpha3: "PRI",
    timeZones: ["America/Puerto_Rico"],
    countryName: "Puerto Rico",
    isoAlpha2: "PR",
  },
  {
    isoAlpha3: "QAT",
    timeZones: ["Asia/Qatar"],
    countryName: "Qatar",
    isoAlpha2: "QA",
  },
  {
    isoAlpha3: "REU",
    timeZones: ["Indian/Reunion"],
    countryName: `Réunion`,
    isoAlpha2: "RE",
  },
  {
    isoAlpha3: "ROU",
    timeZones: ["Europe/Bucharest"],
    countryName: "Romania",
    isoAlpha2: "RO",
  },
  {
    isoAlpha3: "RUS",
    timeZones: [
      "Europe/Kaliningrad",
      "Europe/Moscow",
      "Europe/Simferopol",
      "Europe/Volgograd",
      "Europe/Astrakhan",
      "Europe/Samara",
      "Europe/Ulyanovsk",
      "Asia/Yekaterinburg",
      "Asia/Omsk",
      "Asia/Novosibirsk",
      "Asia/Barnaul",
      "Asia/Novokuznetsk",
      "Asia/Krasnoyarsk",
      "Asia/Irkutsk",
      "Asia/Chita",
      "Asia/Yakutsk",
      "Asia/Khandyga",
      "Asia/Vladivostok",
      "Asia/Ust-Nera",
      "Asia/Magadan",
      "Asia/Sakhalin",
      "Asia/Srednekolymsk",
      "Asia/Kamchatka",
      "Asia/Anadyr",
    ],
    countryName: "Russia",
    isoAlpha2: "RU",
  },
  {
    isoAlpha3: "RWA",
    timeZones: ["Africa/Kigali"],
    countryName: "Rwanda",
    isoAlpha2: "RW",
  },
  {
    isoAlpha3: "BLM",
    timeZones: ["America/St_Barthelemy"],
    countryName: `Saint Barthélemy`,
    isoAlpha2: "BL",
  },
  {
    isoAlpha3: "SHN",
    timeZones: ["Atlantic/St_Helena"],
    countryName: "Saint Helena, Ascension and Tristan da Cunha",
    isoAlpha2: "SH",
  },
  {
    isoAlpha3: "KNA",
    timeZones: ["America/St_Kitts"],
    countryName: "Saint Kitts and Nevis",
    isoAlpha2: "KN",
  },
  {
    isoAlpha3: "LCA",
    timeZones: ["America/St_Lucia"],
    countryName: "Saint Lucia",
    isoAlpha2: "LC",
  },
  {
    isoAlpha3: "MAF",
    timeZones: ["America/Marigot"],
    countryName: "Saint Martin (French part)",
    isoAlpha2: "MF",
  },
  {
    isoAlpha3: "SPM",
    timeZones: ["America/Miquelon"],
    countryName: "Saint Pierre and Miquelon",
    isoAlpha2: "PM",
  },
  {
    isoAlpha3: "VCT",
    timeZones: ["America/St_Vincent"],
    countryName: "Saint Vincent and the Grenadines",
    isoAlpha2: "VC",
  },
  {
    isoAlpha3: "WSM",
    timeZones: ["Pacific/Apia"],
    countryName: "Samoa",
    isoAlpha2: "WS",
  },
  {
    isoAlpha3: "SMR",
    timeZones: ["Europe/San_Marino"],
    countryName: "San Marino",
    isoAlpha2: "SM",
  },
  {
    isoAlpha3: "STP",
    timeZones: ["Africa/Sao_Tome"],
    countryName: "Sao Tome and Principe",
    isoAlpha2: "ST",
  },
  {
    isoAlpha3: "SAU",
    timeZones: ["Asia/Riyadh"],
    countryName: "Saudi Arabia",
    isoAlpha2: "SA",
  },
  {
    isoAlpha3: "SEN",
    timeZones: ["Africa/Dakar"],
    countryName: "Senegal",
    isoAlpha2: "SN",
  },
  {
    isoAlpha3: "SRB",
    timeZones: ["Europe/Belgrade"],
    countryName: "Serbia",
    isoAlpha2: "RS",
  },
  {
    isoAlpha3: "SYC",
    timeZones: ["Indian/Mahe"],
    countryName: "Seychelles",
    isoAlpha2: "SC",
  },
  {
    isoAlpha3: "SLE",
    timeZones: ["Africa/Freetown"],
    countryName: "Sierra Leone",
    isoAlpha2: "SL",
  },
  {
    isoAlpha3: "SGP",
    timeZones: ["Asia/Singapore"],
    countryName: "Singapore",
    isoAlpha2: "SG",
  },
  {
    isoAlpha3: "SXM",
    timeZones: ["America/Lower_Princes"],
    countryName: "Sint Maarten (Dutch part)",
    isoAlpha2: "SX",
  },
  {
    isoAlpha3: "SVK",
    timeZones: ["Europe/Bratislava"],
    countryName: "Slovakia",
    isoAlpha2: "SK",
  },
  {
    isoAlpha3: "SVN",
    timeZones: ["Europe/Ljubljana"],
    countryName: "Slovenia",
    isoAlpha2: "SI",
  },
  {
    isoAlpha3: "SLB",
    timeZones: ["Pacific/Guadalcanal"],
    countryName: "Solomon Islands",
    isoAlpha2: "SB",
  },
  {
    isoAlpha3: "SOM",
    timeZones: ["Africa/Mogadishu"],
    countryName: "Somalia",
    isoAlpha2: "SO",
  },
  {
    isoAlpha3: "ZAF",
    timeZones: ["Africa/Johannesburg"],
    countryName: "South Africa",
    isoAlpha2: "ZA",
  },
  {
    isoAlpha3: "SGS",
    timeZones: ["Atlantic/South_Georgia"],
    countryName: "South Georgia and the South Sandwich Islands",
    isoAlpha2: "GS",
  },
  {
    isoAlpha3: "SSD",
    timeZones: ["Africa/Juba"],
    countryName: "South Sudan",
    isoAlpha2: "SS",
  },
  {
    isoAlpha3: "ESP",
    timeZones: ["Europe/Madrid", "Africa/Ceuta", "Atlantic/Canary"],
    countryName: "Spain",
    isoAlpha2: "ES",
  },
  {
    isoAlpha3: "LKA",
    timeZones: ["Asia/Colombo"],
    countryName: "Sri Lanka",
    isoAlpha2: "LK",
  },
  {
    isoAlpha3: "SDN",
    timeZones: ["Africa/Khartoum"],
    countryName: "Sudan",
    isoAlpha2: "SD",
  },
  {
    isoAlpha3: "SUR",
    timeZones: ["America/Paramaribo"],
    countryName: "Suriname",
    isoAlpha2: "SR",
  },
  {
    isoAlpha3: "SJM",
    timeZones: ["Arctic/Longyearbyen"],
    countryName: "Svalbard and Jan Mayen",
    isoAlpha2: "SJ",
  },
  {
    isoAlpha3: "SWE",
    timeZones: ["Europe/Stockholm"],
    countryName: "Sweden",
    isoAlpha2: "SE",
  },
  {
    isoAlpha3: "CHE",
    timeZones: ["Europe/Zurich"],
    countryName: "Switzerland",
    isoAlpha2: "CH",
  },
  {
    isoAlpha3: "SYR",
    timeZones: ["Asia/Damascus"],
    countryName: "Syria",
    isoAlpha2: "SY",
  },
  {
    isoAlpha3: "TWN",
    timeZones: ["Asia/Taipei"],
    countryName: "Taiwan",
    isoAlpha2: "TW",
  },
  {
    isoAlpha3: "TJK",
    timeZones: ["Asia/Dushanbe"],
    countryName: "Tajikistan",
    isoAlpha2: "TJ",
  },
  {
    isoAlpha3: "TZA",
    timeZones: ["Africa/Dar_es_Salaam"],
    countryName: "Tanzania, United Republic of",
    isoAlpha2: "TZ",
  },
  {
    isoAlpha3: "THA",
    timeZones: ["Asia/Bangkok"],
    countryName: "Thailand",
    isoAlpha2: "TH",
  },
  {
    isoAlpha3: "TLS",
    timeZones: ["Asia/Dili"],
    countryName: "Timor-Leste",
    isoAlpha2: "TL",
  },
  {
    isoAlpha3: "TGO",
    timeZones: ["Africa/Lome"],
    countryName: "Togo",
    isoAlpha2: "TG",
  },
  {
    isoAlpha3: "TKL",
    timeZones: ["Pacific/Fakaofo"],
    countryName: "Tokelau",
    isoAlpha2: "TK",
  },
  {
    isoAlpha3: "TON",
    timeZones: ["Pacific/Tongatapu"],
    countryName: "Tonga",
    isoAlpha2: "TO",
  },
  {
    isoAlpha3: "TTO",
    timeZones: ["America/Port_of_Spain"],
    countryName: "Trinidad and Tobago",
    isoAlpha2: "TT",
  },
  {
    isoAlpha3: "TUN",
    timeZones: ["Africa/Tunis"],
    countryName: "Tunisia",
    isoAlpha2: "TN",
  },
  {
    isoAlpha3: "TUR",
    timeZones: ["Europe/Istanbul"],
    countryName: "Turkey",
    isoAlpha2: "TR",
  },
  {
    isoAlpha3: "TKM",
    timeZones: ["Asia/Ashgabat"],
    countryName: "Turkmenistan",
    isoAlpha2: "TM",
  },
  {
    isoAlpha3: "TCA",
    timeZones: ["America/Grand_Turk"],
    countryName: "Turks and Caicos Islands",
    isoAlpha2: "TC",
  },
  {
    isoAlpha3: "TUV",
    timeZones: ["Pacific/Funafuti"],
    countryName: "Tuvalu",
    isoAlpha2: "TV",
  },
  {
    isoAlpha3: "UGA",
    timeZones: ["Africa/Kampala"],
    countryName: "Uganda",
    isoAlpha2: "UG",
  },
  {
    isoAlpha3: "UKR",
    timeZones: ["Europe/Kiev", "Europe/Uzhgorod", "Europe/Zaporozhye"],
    countryName: "Ukraine",
    isoAlpha2: "UA",
  },
  {
    isoAlpha3: "ARE",
    timeZones: ["Asia/Dubai"],
    countryName: "United Arab Emirates",
    isoAlpha2: "AE",
  },
  {
    isoAlpha3: "GBR",
    timeZones: ["Europe/London"],
    countryName: "United Kingdom",
    isoAlpha2: "GB",
  },
  {
    isoAlpha3: "USA",
    timeZones: [
      "America/New_York",
      "America/Detroit",
      "America/Kentucky/Louisville",
      "America/Kentucky/Monticello",
      "America/Indiana/Indianapolis",
      "America/Indiana/Vincennes",
      "America/Indiana/Winamac",
      "America/Indiana/Marengo",
      "America/Indiana/Petersburg",
      "America/Indiana/Vevay",
      "America/Chicago",
      "America/Indiana/Tell_City",
      "America/Indiana/Knox",
      "America/Menominee",
      "America/North_Dakota/Center",
      "America/North_Dakota/New_Salem",
      "America/North_Dakota/Beulah",
      "America/Denver",
      "America/Boise",
      "America/Phoenix",
      "America/Los_Angeles",
      "America/Anchorage",
      "America/Juneau",
      "America/Sitka",
      "America/Metlakatla",
      "America/Yakutat",
      "America/Nome",
      "America/Adak",
      "Pacific/Honolulu",
    ],
    countryName: "United States",
    isoAlpha2: "US",
  },
  {
    isoAlpha3: "UMI",
    timeZones: ["Pacific/Midway", "Pacific/Wake"],
    countryName: "United States Minor Outlying Islands",
    isoAlpha2: "UM",
  },
  {
    isoAlpha3: "URY",
    timeZones: ["America/Montevideo"],
    countryName: "Uruguay",
    isoAlpha2: "UY",
  },
  {
    isoAlpha3: "UZB",
    timeZones: ["Asia/Samarkand", "Asia/Tashkent"],
    countryName: "Uzbekistan",
    isoAlpha2: "UZ",
  },
  {
    isoAlpha3: "VUT",
    timeZones: ["Pacific/Efate"],
    countryName: "Vanuatu",
    isoAlpha2: "VU",
  },
  {
    isoAlpha3: "VEN",
    timeZones: ["America/Caracas"],
    countryName: "Venezuela",
    isoAlpha2: "VE",
  },
  {
    isoAlpha3: "VNM",
    timeZones: ["Asia/Ho_Chi_Minh"],
    countryName: "Vietnam",
    isoAlpha2: "VN",
  },
  {
    isoAlpha3: "VGB",
    timeZones: ["America/Tortola"],
    countryName: "Virgin Islands, British",
    isoAlpha2: "VG",
  },
  {
    isoAlpha3: "VIR",
    timeZones: ["America/St_Thomas"],
    countryName: "Virgin Islands, U.S.",
    isoAlpha2: "VI",
  },
  {
    isoAlpha3: "WLF",
    timeZones: ["Pacific/Wallis"],
    countryName: "Wallis and Futuna",
    isoAlpha2: "WF",
  },
  {
    isoAlpha3: "ESH",
    timeZones: ["Africa/El_Aaiun"],
    countryName: "Western Sahara",
    isoAlpha2: "EH",
  },
  {
    isoAlpha3: "YEM",
    timeZones: ["Asia/Aden"],
    countryName: "Yemen",
    isoAlpha2: "YE",
  },
  {
    isoAlpha3: "ZMB",
    timeZones: ["Africa/Lusaka"],
    countryName: "Zambia",
    isoAlpha2: "ZM",
  },
  {
    isoAlpha3: "ZWE",
    timeZones: ["Africa/Harare"],
    countryName: "Zimbabwe",
    isoAlpha2: "ZW",
  },
]

let sofortCountries = [
  {
    isoAlpha3: "AUT",
    timeZones: ["Europe/Vienna"],
    countryName: "Austria",
    isoAlpha2: "AT",
  },
  {
    isoAlpha3: "BEL",
    timeZones: ["Europe/Brussels"],
    countryName: "Belgium",
    isoAlpha2: "BE",
  },
  {
    isoAlpha3: "DEU",
    timeZones: ["Europe/Berlin", "Europe/Busingen"],
    countryName: "Germany",
    isoAlpha2: "DE",
  },
  {
    isoAlpha3: "ITA",
    timeZones: ["Europe/Rome"],
    countryName: "Italy",
    isoAlpha2: "IT",
  },
  {
    isoAlpha3: "NLD",
    timeZones: ["Europe/Amsterdam"],
    countryName: "Netherlands",
    isoAlpha2: "NL",
  },
  {
    isoAlpha3: "ESP",
    timeZones: ["Europe/Madrid", "Africa/Ceuta", "Atlantic/Canary"],
    countryName: "Spain",
    isoAlpha2: "ES",
  },
]

let getCountry = paymentMethodName => {
  switch paymentMethodName {
  | "sofort" => sofortCountries
  | _ => country
  }
}
