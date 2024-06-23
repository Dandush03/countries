# Countries Data
## This repository contains data about various countries, structured in the countries.yml file. The data includes information such as country names, codes, flags, phone codes, time zones, and translations in multiple languages.

### Structure of countries.yml
Each entry in the countries.yml file represents a country with the following fields:

- name: The name of the country in English.
- official_name: The official name of the country in English.
- code2l: The two-letter ISO 3166-1 alpha-2 country code.
- code3l: The three-letter ISO 3166-1 alpha-3 country code.
- svg_flag: URL to the SVG image of the country's flag.
- phone_code: The international phone code for the country.
- time_zone_identifier: The IANA time zone identifier for the country.
- continent: The continent where the country is located.
- region: The region within the continent where the country is located.
- translations: A nested object containing translations of the country's name and official name in various languages.

### Example Entry
``` yaml
---
- name: Afghanistan
  official_name: Islamic Republic of Afghanistan
  code2l: AF
  code3l: AFG
  svg_flag: https://flagcdn.com/af.svg
  phone_code: "+93"
  time_zone_identifier: Asia/Kabul
  continent: Asia
  region: Southern Asia
  translations:
    es:
      name: Afganistán
      official_name: la República Islámica del Afganistán
      continent: Asia
      region: Asia meridional
    fr:
      name: Afghanistan
      official_name: la République islamique d'Afghanistan
      continent: Asie
      region: Asie méridionale
    ru:
      name: Афганистан
      official_name: Исламская Республика Афганистан
      continent: Азия
      region: Южная Азия
    zh:
      name: 阿富汗
      official_name: 阿富汗伊斯兰共和国
      continent: 亚洲
      region: 南亚
    ar:
      name: أفغانستان
      official_name: 'جمهورية أفغانستان الإسلامية '
      continent: آسيا
      region: جنوب آسيا
    it:
      name: Afghanistan
      official_name: 'Repubblica Islamica di Afghanistan  '
      continent: Asia
      region: Asia meridionale
    he:
      name: אפגניסטן
      official_name: הרפובליקה האסלאמית של אפגניסטן
      continent: אסיה
      region: דרום אסיה
    ja:
      name: アフガニスタン
      official_name: アフガニスタン・イスラム共和国
      continent: アジア
      region: 南アジア
```

### Field Descriptions
### Top-Level Fields
- name: The common name of the country in English.
- official_name: The official, formal name of the country in English.
- code2l: The country's two-letter ISO code.
- code3l: The country's three-letter ISO code.
- svg_flag: A URL pointing to an SVG image of the country's flag.
- phone_code: The international dialing code for the country.
- time_zone_identifier: The primary time zone identifier for the country as defined by the IANA time zone database.
- continent: The continent on which the country is primarily located.
- region: The region within the continent.
- Translations: The translations object provides localized names and official names for the country in various languages. Each translation entry includes:

    - name: The name of the country in the specified language.
    - official_name: The official name of the country in the specified language.
    - continent: The name of the continent in the specified language.
    - region: The name of the region in the specified language.

## Supported Languages
The following languages are supported for translations:

 - es: Spanish
 - fr: French
 - ru: Russian
 - zh: Chinese
 - ar: Arabic
 - it: Italian
 - he: Hebrew
 - ja: Japanese
# Usage
This data can be used in applications requiring comprehensive country information, such as internationalization features, country selectors, and geographic data analysis.

