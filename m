Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9E613ABC5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:02:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2708889E0E;
	Tue, 14 Jan 2020 14:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D5D689E0E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 14:02:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:02:08 -0800
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="372584556"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:02:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 16:01:37 +0200
Message-Id: <f6a7dce8c1f688b6ee755e7e81d9fce3c831f50f.1579010266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579010266.git.jani.nikula@intel.com>
References: <cover.1579010266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915: Fix DPCD register order in
 intel_dp_aux_enable_backlight()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: jani.nikula@intel.com, AceLan Kao <acelan.kao@canonical.com>,
 Perry Yuan <pyuan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lyude Paul <lyude@redhat.com>

For eDP panels, it appears it's expected that so long as the panel is in
DPCD control mode that the brightness value is never set to 0. Instead,
if the desired effect is to set the panel's backlight to 0 we're
expected to simply turn off the backlight through the
DP_EDP_DISPLAY_CONTROL_REGISTER.

We already do the latter correctly in intel_dp_aux_disable_backlight().
But, we make the mistake of writing the DPCD registers in the wrong
order when enabling the backlight in intel_dp_aux_enable_backlight()
since we currently enable the backlight through
DP_EDP_DISPLAY_CONTROL_REGISTER before writing the brightness level. On
the X1 Extreme 2nd Generation, this appears to have the potential of
confusing the panel in such a way that further attempts to set the
brightness don't actually change the backlight as expected and leave it
off. Presumably, this happens because the incorrect register writing
order briefly leaves the panel with DPCD mode enabled and a 0 brightness
level set.

So, reverse the order we write the DPCD registers when enabling the
panel backlight so that we write the brightness value first, and enable
the backlight second. This fix appears to be the final bit needed to get
the backlight on the ThinkPad X1 Extreme 2nd Generation's AMOLED screen
working.

Tested-by: AceLan Kao <acelan.kao@canonical.com>
Tested-by: Perry Yuan <pyuan@redhat.com>
Signed-off-by: Lyude Paul <lyude@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 5d4db5f8a165..77a759361c5c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -207,8 +207,9 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
 		}
 	}
 
+	intel_dp_aux_set_backlight(conn_state,
+				   connector->panel.backlight.level);
 	set_aux_backlight_enable(intel_dp, true);
-	intel_dp_aux_set_backlight(conn_state, connector->panel.backlight.level);
 }
 
 static void intel_dp_aux_disable_backlight(const struct drm_connector_state *old_conn_state)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
