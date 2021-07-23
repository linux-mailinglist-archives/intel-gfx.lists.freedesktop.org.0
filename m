Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E1A3D34EB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 08:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047376FA50;
	Fri, 23 Jul 2021 06:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A932A6F94B
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 06:58:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="211829775"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="211829775"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 23:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="502405611"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jul 2021 23:58:39 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 15:05:47 +0800
Message-Id: <20210723070548.29315-7-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210723070548.29315-1-shawn.c.lee@intel.com>
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [V3 6/7] drm/i915/dsi: Retrieve max brightness level
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
Cc: cooper.chiou@intel.com, william.tseng@intel.com, jani.nikula@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
index 5b6922e28ef2..a43cbf35a01d 100644
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
index f99b6c0dd068..210eef301ba6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -712,6 +712,7 @@ struct intel_vbt_data {
 
 	struct {
 		u16 pwm_freq_hz;
+		u16 max_brightness_level;
 		bool present;
 		bool active_low_pwm;
 		u8 min_brightness;	/* min_brightness/255 of max */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
