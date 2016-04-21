*** Settings ***
Resource           limited_keywords.robot
Suite Setup        Test Suite Setup
Suite Teardown     Close all browsers


*** Variables ***
${mode}         negotiation
@{used_roles}   tender_owner  viewer


*** Test Cases ***
##############################################################################################
#             CANCELLATIONS
##############################################################################################
Можливість створити переговорну процедуру для тестування скасування
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість створити процедуру
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  minimal
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість створити закупівлю


Можливість скасувати переговорну процедуру
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість скасувати процедуру
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  level2
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість скасувати закупівлю


Відображення активного статусу скасування переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення скасування процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Відображення активного статусу скасування закупівлі


Відображення причини скасування переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення скасування процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення причини скасування закупівлі


Відображення опису документа скасування переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення скасування процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису документа скасування закупівлі


Відображення заголовку документа скасування переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення скасування процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення заголовку документа скасування закупівлі

##############################################################################################
#             MAIN
##############################################################################################

Можливість створити переговорну процедуру
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість створити процедуру
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  minimal
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість створити закупівлю


Можливість додати документацію до переговорної процедури
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість додати документацію до процедури
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  level2
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість додати документацію до закупівлі


Можливість зареєструвати і підтвердити постачальника до переговорної процедури
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість зареєструвати і підтвердити постачальника до процедури
  ...  tender_owner
  ...  ${USERS.users['${tender_owner}'].broker}
  ...  minimal
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість зареєструвати і підтвердити постачальника до закупівлі


Можливість знайти переговорну процедуру по ідентифікатору
  [Tags]  ${USERS.users['${viewer}'].broker}: Можливість знайти процедуру
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  ...  minimal
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Можливість знайти закупівлю по ідентифікатору

##############################################################################################
#             MAIN DATA
##############################################################################################

Відображення заголовку переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Відображення заголовку закупівлі


Відображення заголовку переговорної процедури англійською мовою
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення заголовку закупівлі англійською мовою


Відображення заголовку переговорної процедури російською мовою
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення заголовку закупівлі російською мовою


Відображення ідентифікатора переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора закупівлі


Відображення опису переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису закупівлі


Відображення опису переговорної процедури англійською мовою
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису закупівлі англійською мовою


Відображення опису переговорної процедури російською мовою
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису закупівлі російською мовою


Відображення підстави вибору переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення підстави вибору закупівлі


Відображення обгрунтування причини вибору переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення основних даних процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення обгрунтування причини вибору закупівлі

##############################################################################################
#             MAIN DATA.VALUE
##############################################################################################

Відображення бюджету переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення бюджету процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення бюджету закупівлі


Відображення валюти переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення бюджету процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення валюти закупівлі


Відображення врахованого податку в бюджет переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення бюджету процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення врахованого податку в бюджет закупівлі

##############################################################################################
#             MAIN DATA.PROCURING ENTITY
##############################################################################################

Відображення країни замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення країни замовника закупівлі


Відображення населеного пункту замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення населеного пункту замовника закупівлі


Відображення поштового коду замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення поштового коду замовника закупівлі


Відображення області замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення області замовника закупівлі


Відображення вулиці замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення вулиці замовника закупівлі


Відображення контактного імені замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного імені замовника закупівлі


Відображення контактного телефону замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного телефону замовника закупівлі


Відображення сайту замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення сайту замовника закупівлі


Відображення офіційного імені замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення офіційного імені замовника закупівлі


Відображення схеми ідентифікації замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення схеми ідентифікації замовника закупівлі


Відображення ідентифікатора замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора замовника закупівлі


Відображення імені замовника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення замовника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення імені замовника закупівлі

##############################################################################################
#             MAIN DATA.ITEMS
##############################################################################################

Відображення опису додаткової класифікації номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису додаткової класифікації номенклатури закупівлі


Відображення ідентифікатора додаткової класифікації номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора додаткової класифікації номенклатури закупівлі


Відображення схеми додаткової класифікації номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення схеми додаткової класифікації номенклатури закупівлі


Відображення схеми класифікації номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення схеми класифікації номенклатури закупівлі


Відображення ідентифікатора класифікації номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора класифікації номенклатури закупівлі


Відображення опису класифікації номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису класифікації номенклатури закупівлі


Відображення опису номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення опису номенклатури закупівлі


Відображення кількості номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення кількості номенклатури закупівлі


Відображення назви одиниці номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення назви одиниці номенклатури закупівлі


Відображення коду одиниці номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення коду одиниці номенклатури закупівлі


Відображення дати доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення дати доставки номенклатури закупівлі


Відображення координат доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення координат доставки номенклатури закупівлі


Відображення назви нас. пункту доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення назви нас. пункту доставки номенклатури закупівлі


Відображення назви нас. пункту російською мовою доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення назви нас. пункту російською мовою доставки номенклатури закупівлі


Відображення назви нас. пункту англійською мовою доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення назви нас. пункту англійською мовою доставки номенклатури закупівлі


Відображення пошт. коду доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення пошт. коду доставки номенклатури закупівлі


Відображення регіону доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення регіону доставки номенклатури закупівлі


Відображення населеного пункту адреси доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення населеного пункту адреси доставки номенклатури закупівлі


Відображення вулиці доставки номенклатури переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення номенклатури процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення вулиці доставки номенклатури закупівлі

##############################################################################################
#             DOCUMENTS
##############################################################################################

Відображення заголовку документа переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення документації процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення заголовку документа закупівлі

##############################################################################################
#             AWARDS
##############################################################################################

Відображення підтвердженого постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення підтвердженого постачальника закупівлі


Відображення країни постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення країни постачальника закупівлі


Відображення міста постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення міста постачальника закупівлі


Відображення поштового коду постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення поштового коду постачальника закупівлі


Відображення області постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення області постачальника закупівлі


Відображення вулиці постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення вулиці постачальника закупівлі


Відображення контактного телефону постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного телефону постачальника закупівлі


Відображення контактного імені постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного імені постачальника закупівлі


Відображення контактного імейлу постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення контактного імейлу постачальника закупівлі


Відображення схеми ідентифікації постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення схеми ідентифікації постачальника закупівлі


Відображення офіційного імені постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення офіційного імені постачальника закупівлі


Відображення ідентифікатора постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення ідентифікатора постачальника закупівлі


Відображення імені постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення імені постачальника закупівлі


Відображення врахованого податку до ціни номенклатури постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення врахованого податку до ціни номенклатури постачальника закупівлі


Відображення валюти ціни номенклатури постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення валюти ціни номенклатури постачальника закупівлі


Відображення вартості номенклатури постачальника переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення постачальника процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  Відображення вартості номенклатури постачальника закупівлі

##############################################################################################
#             CONTRACTS
##############################################################################################

Неможливість укласти угоду для переговорної процедури поки не пройде stand-still період
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість укласти угоду для процедури
  ...  ${tender_owner}
  ...  ${USERS.users['${tender_owner}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${tender_owner}
  Неможливість укласти угоду для закупівлі поки не пройде stand-still період


Відображення статусу непідписаної угоди з постачальником переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення угоди з постачальником процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Відображення статусу непідписаної угоди з постачальником закупівлі


Можливість укласти угоду для переговорної процедури
  [Tags]  ${USERS.users['${tender_owner}'].broker}: Можливість укласти угоду для процедури
  ...  ${tender_owner}
  ...  ${USERS.users['${tender_owner}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${tender_owner}
  [Teardown]  Оновити LAST_MODIFICATION_DATE
  Можливість укласти угоду для закупівлі


Відображення статусу підписаної угоди з постачальником переговорної процедури
  [Tags]  ${USERS.users['${viewer}'].broker}: Відображення угоди з постачальником процедури
  ...  viewer
  ...  ${USERS.users['${viewer}'].broker}
  [Setup]  Дочекатись синхронізації з майданчиком  ${viewer}
  Відображення статусу підписаної угоди з постачальником закупівлі
