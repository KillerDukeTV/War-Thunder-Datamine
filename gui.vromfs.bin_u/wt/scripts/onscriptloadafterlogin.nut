::dagor.debug($"onScriptLoadAfterLogin: wt")
require("unit/initUnitTypes.nut")
require("controls/shortcutsList/updateShortcutsModulesList.nut")
require("slotInfoPanel/updateSlotInfoPanelButtons.nut")
require("mainmenu/onMainMenuReturn.nut")
require("mainmenu/instantActionHandler.nut")
require("mainmenu/mainMenuHandler.nut")
require("hud/updateHudConfig.nut")
require("flightMenu/updateFlightMenuButtonTypes.nut")

foreach (fn in [
  "money.nut"

  "ranks.nut"
  "difficulty.nut"
  "teams.nut"
  "airInfo.nut"
  "options/optionsExt.nut"
  "options/initOptions.nut"

  "gamercard.nut"
  "popups/popups.nut"
  "popups/popup.nut"
  "popups/popupFilter.nut"

  "wheelmenu/wheelmenu.nut"
  "guiLines.nut"
  "guiTutorial.nut"
  "wndLib/multiSelectMenu.nut"
  "showImage.nut"
  "chooseImage.nut"
  "newIconWidget.nut"
  "wndLib/commentModal.nut"
  "wndLib/infoWnd.nut"
  "wndLib/skipableMsgBox.nut"
  "wndWidgets/navigationPanel.nut"

  "timeBar.nut"

  "dataBlockAdapter.nut"

  "postFxSettings.nut"
  "artilleryMap.nut"

  "utils/genericTooltip.nut"

  "eulaWnd.nut"
  "countryChoiceWnd.nut"

  "measureType.nut"
  "genericOptions.nut"
  "options/framedOptionsWnd.nut"
  "options/optionsCustomDifficulty.nut"
  "options/fontChoiceWnd.nut"

  "leaderboard/leaderboardDataType.nut"
  "leaderboard/leaderboardCategoryType.nut"
  "leaderboard/leaderboardTable.nut"
  "leaderboard/leaderboard.nut"

  "queue/queueManager.nut"

  "events/eventDisplayType.nut"
  "events/eventsChapter.nut"
  "events/eventsManager.nut"
  "events/eventsHandler.nut"
  "events/eventRoomsHandler.nut"
  "events/eventsLeaderboards.nut"
  "events/eventRewards.nut"
  "events/eventRewardsWnd.nut"
  "events/rewardProgressManager.nut"
  "events/eventDescription.nut"
  "events/eventTicketBuyOfferProcess.nut"
  "events/eventDescriptionWindow.nut"
  "vehiclesWindow.nut"
  "events/eventJoinProcess.nut"

  "gameModes/gameModeSelect.nut"
  "gameModes/gameModeManager.nut"
  "changeCountry.nut"
  "instantAction.nut"
  "promo/promoViewUtils.nut"
  "unlocks/battleTaskDifficulty.nut"
  "unlocks/battleTasks.nut"
  "promo/promo.nut"
  "promo/promoHandler.nut"
  "mainmenu/topMenuSections.nut"
  "mainmenu/topMenuSectionsConfigs.nut"
  "mainmenu/topMenuButtonsHandler.nut"
  "mainmenu/guiStartMainmenu.nut"
  "credits.nut"

  "slotbar/crewsList.nut"
  "slotbar/slotbar.nut"
  "slotbar/slotbarWidget.nut"
  "slotbar/selectCrew.nut"
  "slotbar/slotbarPresetsList.nut"

  "onlineInfo/onlineInfo.nut"
  "onlineInfo/clustersManagement.nut"
  "matching/matchingGameModes.nut"

  "user/presenceType.nut"
  "squads/msquadService.nut"
  "squads/squadMember.nut"
  "squads/squadManager.nut"
  "squads/squadUtils.nut"
  "squads/squadInviteListWnd.nut"
  "squads/squadWidgetCustomHandler.nut"

  "chat/chatRoomType.nut"
  "chat/chat.nut"
  "chat/chatLatestThreads.nut"
  "chat/chatCategories.nut"
  "chat/menuChat.nut"
  "chat/createRoomWnd.nut"
  "chat/chatThreadInfoTags.nut"
  "chat/chatThreadInfo.nut"
  "chat/chatThreadsListView.nut"
  "chat/chatThreadHeader.nut"
  "chat/modifyThreadWnd.nut"
  "chat/mpChatMode.nut"
  "chat/mpChat.nut"

  "invites/invites.nut"
  "invites/inviteBase.nut"
  "invites/inviteChatRoom.nut"
  "invites/inviteSessionRoom.nut"
  "invites/inviteTournamentBattle.nut"
  "invites/inviteSquad.nut"
  "invites/inviteFriend.nut"
  "invites/invitesWnd.nut"

  "controls/controlsPresets.nut"
  "controls/controlsUtils.nut"
  "controls/controls.nut"
  "controls/assignButtonWnd.nut"
  "controls/controlsConsole.nut"
  "controls/input/button.nut"
  "controls/input/combination.nut"
  "controls/input/axis.nut"
  "controls/input/doubleAxis.nut"
  "controls/input/image.nut"
  "controls/input/keyboardAxis.nut"
  "controls/controlsWizard.nut"
  "controls/controlsType.nut"
  "controls/AxisControls.nut"
  "controls/aircraftHelpers.nut"
  "controls/gamepadCursorControlsSplash.nut"
  "help/helpWnd.nut"
  "help/helpInfoHandlerModal.nut"
  "joystickInterface.nut"

  "loading/loadingHangar.nut"
  "loading/loadingBrief.nut"
  "missions/mapPreview.nut"
  "missions/missionType.nut"
  "missions/missionsUtils.nut"
  "missions/urlMission.nut"
  "missions/loadingUrlMissionModal.nut"
  "missions/missionsManager.nut"
  "missions/urlMissionsList.nut"
  "missions/misListType.nut"
  "missions/missionDescription.nut"
  "tutorials.nut"
  "tutorialsManager.nut"
  "missions/campaignChapter.nut"
  "missions/remoteMissionModalHandler.nut"
  "missions/modifyUrlMissionWnd.nut"
  "missions/chooseMissionsListWnd.nut"
  "dynCampaign/dynamicChapter.nut"
  "dynCampaign/campaignPreview.nut"
  "dynCampaign/campaignResults.nut"
  "briefing.nut"
  "missionBuilder/testFlight.nut"
  "missionBuilder/missionBuilder.nut"
  "missionBuilder/missionBuilderTuner.nut"
  "missionBuilder/changeAircraftForBuilder.nut"

  "events/eventRoomCreationContext.nut"
  "events/createEventRoomWnd.nut"

  "replays/replayScreen.nut"
  "replays/replayPlayer.nut"

  "customization/types.nut"
  "customization/decorator.nut"
  "customization/decoratorsManager.nut"
  "customization/customizationWnd.nut"

  "myStats.nut"
  "user/usersInfoManager.nut"
  "user/partnerUnlocks.nut"
  "user/userCard.nut"
  "user/profileHandler.nut"
  "user/viralAcquisition.nut"
  "user/chooseTitle.nut"

  "contacts/contacts.nut"
  "userPresence.nut"

  "unlocks/unlocksConditions.nut"
  "unlocks/unlocks.nut"
  "unlocks/unlocksView.nut"
  "unlocks/showUnlock.nut"
  "promo/BattleTasksPromoHandler.nut"
  "unlocks/personalUnlocks.nut"
  "unlocks/battleTasksHandler.nut"
  "unlocks/battleTasksSelectNewTask.nut"
  "unlocks/favoriteUnlocksListView.nut"
  "unlocks/unlockSmoke.nut"

  "onlineShop/onlineShopModel.nut"
  "onlineShop/onlineShop.nut"
  "onlineShop/reqPurchaseWnd.nut"
  "paymentHandler.nut"

  "shop/shop.nut"
  "shop/shopCheckResearch.nut"
  "shop/shopViewWnd.nut"
  "convertExpHandler.nut"

  "weaponry/dmgModel.nut"
  "weaponry/unitBulletsGroup.nut"
  "weaponry/unitBulletsManager.nut"
  "dmViewer/dmViewer.nut"
  "weaponry/weaponryTypes.nut"
  "weaponry/weaponrySelectModal.nut"
  "weaponry/unitWeaponsHandler.nut"
  "weaponry/weapons.nut"
  "weaponry/weaponWarningHandler.nut"
  "weaponry/weaponsPurchase.nut"
  "finishedResearches.nut"
  "modificationsTierResearched.nut"

  "matchingRooms/sessionLobby.nut"
  "matchingRooms/mRoomsList.nut"
  "matchingRooms/mRoomInfo.nut"
  "matchingRooms/mRoomInfoManager.nut"
  "matchingRooms/sessionsListHandler.nut"
  "mplayerParamType.nut"
  "matchingRooms/mRoomPlayersListWidget.nut"
  "matchingRooms/mpLobby.nut"
  "matchingRooms/mRoomMembersWnd.nut"

  "flightMenu/flightMenu.nut"
  "misCustomRules/missionCustomState.nut"
  "mpStatistics.nut"
  "respawn/misLoadingState.nut"
  "respawn/respawn.nut"
  "respawn/teamUnitsLeftView.nut"
  "misObjectives/objectiveStatus.nut"
  "misObjectives/misObjectivesView.nut"
  "tacticalMap.nut"

  "debriefing/debriefingFull.nut"
  "debriefing/debriefingModal.nut"
  "debriefing/rankUpModal.nut"
  "debriefing/tournamentRewardReceivedModal.nut"
  "mainmenu/benchmarkResultModal.nut"

  "clans/clanType.nut"
  "clans/clanLogType.nut"
  "clans/clans.nut"
  "clans/clanSeasons.nut"
  "clans/clanTagDecorator.nut"
  "clans/modify/modifyClanModalHandler.nut"
  "clans/modify/createClanModalHandler.nut"
  "clans/modify/editClanModalhandler.nut"
  "clans/modify/upgradeClanModalHandler.nut"
  "clans/clanChangeMembershipReqWnd.nut"
  "clans/clanPageModal.nut"
  "clans/clansModalHandler.nut"
  "clans/clanChangeRoleModal.nut"
  "clans/clanBlacklistModal.nut"
  "clans/clanActivityModal.nut"
  "clans/clanAverageActivityModal.nut"
  "clans/clanRequestsModal.nut"
  "clans/clanLogModal.nut"
  "clans/clanSeasonInfoModal.nut"
  "clans/clanSquadsModal.nut"
  "clans/clanSquadInfoWnd.nut"

  "penitentiary/banhammer.nut"
  "penitentiary/tribunal.nut"

  "social/friends.nut"
  "social/facebook.nut"

  "gamercardDrawer.nut"

  "discounts/discounts.nut"
  "discounts/discountUtils.nut"

  "items/itemsManager.nut"
  "items/prizesView.nut"
  "items/recentItems.nut"
  "items/recentItemsHandler.nut"
  "items/ticketBuyWindow.nut"
  "items/itemsShop.nut"
  "items/trophyReward.nut"
  "items/trophyGroupShopWnd.nut"
  "items/trophyRewardWnd.nut"
  "items/trophyRewardList.nut"
  "items/everyDayLoginAward.nut"
  "items/orderAwardMode.nut"
  "items/orderType.nut"
  "items/orderUseResult.nut"
  "items/orders.nut"
  "items/orderActivationWindow.nut"

  "userLog/userlogData.nut"
  "userLog/userlogViewData.nut"
  "userLog/userLog.nut"

  "crew/crewShortCache.nut"
  "crew/skillParametersRequestType.nut"
  "crew/skillParametersColumnType.nut"
  "crew/crewModalHandler.nut"
  "crew/skillsPageStatus.nut"
  "crew/crewPoints.nut"
  "crew/crewBuyPointsHandler.nut"
  "crew/crewUnitSpecHandler.nut"
  "crew/crewSkillsPageHandler.nut"
  "crew/crewSpecType.nut"
  "crew/crew.nut"
  "crew/crewSkills.nut"
  "crew/unitCrewCache.nut"
  "crew/crewSkillParameters.nut"
  "crew/skillParametersType.nut"
  "crew/crewTakeUnitProcess.nut"

  "slotbar/slotbarPresets.nut"
  "slotbar/slotbarPresetsWnd.nut"
  "vehicleRequireFeatureWindow.nut"
  "slotbar/slotbarPresetsTutorial.nut"
  "slotInfoPanel.nut"
  "unit/unitInfoType.nut"
  "unit/unitInfoExporter.nut"

  "hud/hudEventManager.nut"
  "hud/hudVisMode.nut"
  "hud/baseUnitHud.nut"
  "hud/hud.nut"
  "hud/hudActionBarType.nut"
  "hud/hudActionBar.nut"
  "replays/spectator.nut"
  "hud/hudTankDebuffs.nut"
  "hud/hudDisplayTimers.nut"
  "hud/hudCrewState.nut"
  "hud/hudEnemyDebuffsType.nut"
  "hud/hudEnemyDamage.nut"
  "hud/hudRewardMessage.nut"
  "hud/hudMessages.nut"
  "hud/hudMessageStack.nut"
  "hud/hudBattleLog.nut"
  "hud/hudHitCamera.nut"
  "hud/hudLiveStats.nut"
  "hud/hudTutorialElements.nut"
  "hud/hudTutorialObject.nut"
  "streaks.nut"
  "wheelmenu/voicemenu.nut"
  "wheelmenu/multifuncmenu.nut"
  "hud/hudHintTypes.nut"
  "hud/hudHints.nut"
  "hud/hudHintsManager.nut"

  "warbonds/warbondAwardType.nut"
  "warbonds/warbondAward.nut"
  "warbonds/warbond.nut"
  "warbonds/warbondsManager.nut"
  "warbonds/warbondsView.nut"
  "warbonds/warbondShop.nut"

  "statsd/missionStats.nut"
  "debugTools/dbgCheckContent.nut"
  "debugTools/dbgUnlocks.nut"
  "debugTools/dbgClans.nut"
  "debugTools/dbgHud.nut"
  "debugTools/dbgHudObjects.nut"
  "debugTools/dbgHudObjectTypes.nut"
  "debugTools/dbgVoiceChat.nut"

  "utils/popupMessages.nut"
  "utils/soundManager.nut"
  "fileDialog/fileDialog.nut"
  "fileDialog/saveDataDialog.nut"
  "controls/controlsBackupManager.nut"

  "matching/serviceNotifications/match.nut"
  "matching/serviceNotifications/mlogin.nut"
  "matching/serviceNotifications/mrpc.nut"
  "matching/serviceNotifications/mpresense.nut"
  "matching/serviceNotifications/msquad.nut"
  "matching/serviceNotifications/mrooms.nut"

  "gamepadSceneSettings.nut"
])
{
  ::g_script_reloader.loadOnce($"scripts/{fn}")
}

require("scripts/controls/controlsFootballNy2021Hack.nut")

if (::g_login.isAuthorized() || ::disable_network()) //load scripts from packs only after login
  ::g_script_reloader.loadIfExist("scripts/worldWar/worldWar.nut")
