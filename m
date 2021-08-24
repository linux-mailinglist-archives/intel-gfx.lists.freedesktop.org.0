Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B53AF3F5FA2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 15:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19AE98954A;
	Tue, 24 Aug 2021 13:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E4488954A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 13:58:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="196888249"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="196888249"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="526635721"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Aug 2021 06:58:30 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Date: Tue, 24 Aug 2021 22:00:42 +0800
Message-Id: <20210824140042.3083-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210812154237.13911-7-shawn.c.lee@intel.com>
References: <20210812154237.13911-7-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Retrieve max brightness level
 from VBT
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

v2: modify variable name brightness_precision_bits instead of
    max_brightness_level.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c              | 3 +++
 drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 8 ++++++--
 drivers/gpu/drm/i915/i915_drv.h                        | 1 +
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e86e6ed2d3bf..ccaf0a3100f7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -483,6 +483,9 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 			level = 255;
 		}
 		i915->vbt.backlight.min_brightness = min_level;
+
+		i915->vbt.backlight.brightness_precision_bits =
+			backlight_data->brightness_precision_bits[panel_type];
 	} else {
 		level = backlight_data->level[panel_type];
 		i915->vbt.backlight.min_brightness = entry->min_brightness;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index 584c14c4cbd0..21ab9e1acb57 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -147,10 +147,14 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
 static int dcs_setup_backlight(struct intel_connector *connector,
 			       enum pipe unused)
 {
+	struct drm_device *dev = connector->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_panel *panel = &connector->panel;
 
-	panel->backlight.max = PANEL_PWM_MAX_VALUE;
-	panel->backlight.level = PANEL_PWM_MAX_VALUE;
+	panel->backlight.max = (dev_priv->vbt.backlight.brightness_precision_bits > 8) \
+			       ? (1 << dev_priv->vbt.backlight.brightness_precision_bits) - 1 \
+			       : PANEL_PWM_MAX_VALUE;
+	panel->backlight.level = panel->backlight.max;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 005b1cec7007..1b42e39a7cd4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -706,6 +706,7 @@ struct intel_vbt_data {
 
 	struct {
 		u16 pwm_freq_hz;
+		u16 brightness_precision_bits;
 		bool present;
 		bool active_low_pwm;
 		u8 min_brightness;	/* min_brightness/255 of max */
-- 
2.17.1

