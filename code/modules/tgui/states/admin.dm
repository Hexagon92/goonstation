/**
 * tgui state: admin_state
 *
 * Checks that the user is an admin, end-of-story.
 */
var/global/datum/ui_state/admin_state/admin_state = new /datum/ui_state/admin_state

/datum/ui_state/admin_state/can_use_topic(src_object, mob/user)
	if(isadmin(user) && M.client.holder.level >= LEVEL_ADMIN && !M.client.player_mode)
		return UI_INTERACTIVE
	return UI_CLOSE
