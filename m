Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3F23EA7B9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 17:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED88E6E433;
	Thu, 12 Aug 2021 15:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB7B6E42F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 15:41:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="202542203"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="202542203"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:41:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="469795940"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga008.jf.intel.com with ESMTP; 12 Aug 2021 08:41:10 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 vandita.kulkarni@intel.com, cooper.chiou@intel.com,
 william.tseng@intel.com, Lee Shawn C <shawn.c.lee@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Date: Thu, 12 Aug 2021 23:42:36 +0800
Message-Id: <20210812154237.13911-7-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210812154237.13911-1-shawn.c.lee@intel.com>
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v4 6/7] drm/i915/dsi: Retrieve max brightness level
 from VBT.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

So far, DCS backlight driver hardcode (0xFF) for max brightness level.
MIPI DCS spec allow max 0xFFFF for set_display_brightness (51h) command.
And VBT brightness precision bits can support 8 ~ 16 bits.

We should set correct precision bits in VBT that meet panel's request.
Driver can refer to this setting then configure max brightness level
in DCS backlight driver properly.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c            |  3 +++
 .../gpu/drm/i915/display/intel_dsi_dcs_backlight.c   | 12 +++++++++---
 drivers/gpu/drm/i915/i915_drv.h                      |  1 +
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e86e6ed2d3bf..1affd679d1d1 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -483,6 +483,9 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 			level = 255;
 		}
 		i915->vbt.backlight.min_brightness = min_level;
+
+		i915->vbt.backlight.max_brightness_level =
+			(1 << backlight_data->brightness_precision_bits[panel_type]) - 1;
 	} else {
 		level = backlight_data->level[panel_type];
 		i915->vbt.backlight.min_brightness = entry->min_brightness;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index 584c14c4cbd0..cd85520d36e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -41,7 +41,7 @@
 #define POWER_SAVE_HIGH			(3 << 0)
 #define POWER_SAVE_OUTDOOR_MODE		(4 << 0)
 
-#define PANEL_PWM_MAX_VALUE		0xFF
+#define PANEL_PWM_MAX_VALUE		0xFFFF
 
 static u32 dcs_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
@@ -147,10 +147,16 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
 static int dcs_setup_backlight(struct intel_connector *connector,
 			       enum pipe unused)
 {
+	struct drm_device *dev = connector->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_panel *panel = &connector->panel;
 
-	panel->backlight.max = PANEL_PWM_MAX_VALUE;
-	panel->backlight.level = PANEL_PWM_MAX_VALUE;
+	panel->backlight.max = dev_priv->vbt.backlight.max_brightness_level \
+			       ? dev_priv->vbt.backlight.max_brightness_level \
+			       : PANEL_PWM_MAX_VALUE;
+	panel->backlight.level = dev_priv->vbt.backlight.max_brightness_level \
+				 ? dev_priv->vbt.backlight.max_brightness_level \
+				 : PANEL_PWM_MAX_VALUE;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 005b1cec7007..fbb3f18e7b8e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -706,6 +706,7 @@ struct intel_vbt_data {
 
 	struct {
 		u16 pwm_freq_hz;
+		u16 max_brightness_level;
 		bool present;
 		bool active_low_pwm;
 		u8 min_brightness;	/* min_brightness/255 of max */
-- 
2.17.1

