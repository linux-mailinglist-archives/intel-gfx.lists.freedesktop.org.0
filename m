Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B58B32DAE80
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 15:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB9D89CBE;
	Tue, 15 Dec 2020 14:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8121F89CBE
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 14:05:57 +0000 (UTC)
IronPort-SDR: wDUEOuUAgthuY/QXldSHDO7ObuLvLiTAPFuvm2KrmlksoIZDvdHOylAbQBcE1UueW1+bWEIeYZ
 ehxieC9MeJ9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="175024385"
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="175024385"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 06:05:55 -0800
IronPort-SDR: /wKPP0arCZrXxS8XQA6W63bk8RQzk6n0YTvzJyuORYFM4H3pwf9wSsTOv7P+d5zJzX4CaR8Xml
 lZMRav7bMu+g==
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="390691237"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 06:05:53 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Dec 2020 19:22:26 +0530
Message-Id: <20201215135226.16776-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915/backlight: RFC cache backlight power
 state
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is RFC proposal to cache the backlight power state in order
to avoid accessing pps register every time while brightness or bl_power
attributes of class intel_backlight is being changed.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c        | 18 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_panel.c     |  8 +++++++-
 3 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 5bc5bfbc4551..7c12b66c11af 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -263,6 +263,7 @@ struct intel_panel {
 		struct backlight_device *device;
 
 		const struct intel_panel_bl_funcs *funcs;
+		bool bl_powered;
 		void (*power)(struct intel_connector *, bool enable);
 	} backlight;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b2bc0c8c39c7..73536e377c20 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3398,6 +3398,8 @@ void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(conn_state->best_encoder));
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_panel *panel = &connector->panel;
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!intel_dp_is_edp(intel_dp))
@@ -3407,6 +3409,9 @@ void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 
 	intel_panel_enable_backlight(crtc_state, conn_state);
 	_intel_edp_backlight_on(intel_dp);
+	mutex_lock(&i915->backlight_lock);
+	panel->backlight.bl_powered = true;
+	mutex_unlock(&i915->backlight_lock);
 }
 
 /* Disable backlight in the panel power control. */
@@ -3437,6 +3442,8 @@ static void _intel_edp_backlight_off(struct intel_dp *intel_dp)
 void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(old_conn_state->best_encoder));
+	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
+	struct intel_panel *panel = &connector->panel;
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!intel_dp_is_edp(intel_dp))
@@ -3445,6 +3452,9 @@ void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
 	drm_dbg_kms(&i915->drm, "\n");
 
 	_intel_edp_backlight_off(intel_dp);
+	mutex_lock(&i915->backlight_lock);
+	panel->backlight.bl_powered = false;
+	mutex_unlock(&i915->backlight_lock);
 	intel_panel_disable_backlight(old_conn_state);
 }
 
@@ -3457,14 +3467,6 @@ static void intel_edp_backlight_power(struct intel_connector *connector,
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	intel_wakeref_t wakeref;
-	bool is_enabled;
-
-	is_enabled = false;
-	with_pps_lock(intel_dp, wakeref)
-		is_enabled = ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
-	if (is_enabled == enable)
-		return;
 
 	drm_dbg_kms(&i915->drm, "panel power control backlight %s\n",
 		    enable ? "enable" : "disable");
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 36b7693453ae..9f81edf25475 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -1282,6 +1282,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 static int intel_backlight_device_update_status(struct backlight_device *bd)
 {
 	struct intel_connector *connector = bl_get_data(bd);
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	struct drm_device *dev = connector->base.dev;
 
@@ -1301,7 +1302,12 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
 		if (panel->backlight.power) {
 			bool enable = bd->props.power == FB_BLANK_UNBLANK &&
 				bd->props.brightness != 0;
-			panel->backlight.power(connector, enable);
+			mutex_lock(&dev_priv->backlight_lock);
+			if (enable != panel->backlight.bl_powered) {
+				panel->backlight.power(connector, enable);
+				panel->backlight.bl_powered = enable;
+			}
+			mutex_unlock(&dev_priv->backlight_lock);
 		}
 	} else {
 		bd->props.power = FB_BLANK_POWERDOWN;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
