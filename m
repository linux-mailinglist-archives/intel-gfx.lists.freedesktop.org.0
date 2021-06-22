Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 228B63B05C6
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 15:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2DC26E0CB;
	Tue, 22 Jun 2021 13:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490606E0CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 13:25:29 +0000 (UTC)
IronPort-SDR: EobNP4KbLH1ng6qLkY8CLqkxko94EIMX0fQuFGjyADBFYLVasnRko1ElsmlnxdmJs/HsFlZVxG
 GhJdzXuMHTsA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="206996466"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="206996466"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 06:25:28 -0700
IronPort-SDR: bg+eXxW92EeQyj1bWSPVaxx7sXIyyGXPvlsTyVkoPeJCrHUZ8O0hO6SLQM+cdtO+LsDpReZZxT
 TKrt1VFXuuVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="480810959"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2021 06:25:26 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Jun 2021 21:31:07 +0800
Message-Id: <20210622133107.7422-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: keep backlight_enable on until turn
 eDP display off
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround is specific for a particular panel on Google
chromebook project. When user space daemon enter idle state.
It request adjust brightness to 0, turn backlight_enable signal
off and keep eDP main link active.

On general LCD, this behavior might not be a problem.
But on this panel, its tcon would expect source to execute
full eDP power off sequence after drop backlight_enable signal.
Without eDP power off sequence. Even source try to turn
backlight_enable signal on and restore proper brightness level.
This panel is not able to light on again.

This WA ignored the request from user space daemon to disable
backlight_enable signal and keep it on always. When user space
request kernel to turn eDP display off, kernel driver still
can control backlight_enable signal properly. It would not
impact standard eDP power off sequence.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c  |  4 ++-
 drivers/gpu/drm/i915/display/intel_quirks.c | 34 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h             |  1 +
 3 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 7d7a60b4d2de..0212b53d932b 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -1311,6 +1311,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 static int intel_backlight_device_update_status(struct backlight_device *bd)
 {
 	struct intel_connector *connector = bl_get_data(bd);
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	struct drm_device *dev = connector->base.dev;
 
@@ -1330,7 +1331,8 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
 		if (panel->backlight.power) {
 			bool enable = bd->props.power == FB_BLANK_UNBLANK &&
 				bd->props.brightness != 0;
-			panel->backlight.power(connector, enable);
+			if (enable || !(dev_priv->quirks & QUIRK_KEEP_BACKLIGHT_ENABLE_ON))
+				panel->backlight.power(connector, enable);
 		}
 	} else {
 		bd->props.power = FB_BLANK_POWERDOWN;
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 98dd787b00e3..ed57b083edbb 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -53,6 +53,12 @@ static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
 	drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");
 }
 
+static void quirk_keep_backlight_enable_on(struct drm_i915_private *i915)
+{
+	i915->quirks |= QUIRK_KEEP_BACKLIGHT_ENABLE_ON;
+	drm_info(&i915->drm, "applying keep backlight enable on quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -72,6 +78,12 @@ static int intel_dmi_reverse_brightness(const struct dmi_system_id *id)
 	return 1;
 }
 
+static int backlight_wa_callback(const struct dmi_system_id *id)
+{
+	DRM_INFO("This is WA to ignore backlight off to prevent OLED panel issue on %s device\n", id->ident);
+	return 1;
+}
+
 static const struct intel_dmi_quirk intel_dmi_quirks[] = {
 	{
 		.dmi_id_list = &(const struct dmi_system_id[]) {
@@ -96,6 +108,28 @@ static const struct intel_dmi_quirk intel_dmi_quirks[] = {
 		},
 		.hook = quirk_invert_brightness,
 	},
+	{
+		.dmi_id_list = &(const struct dmi_system_id[]) {
+			{
+				.callback = backlight_wa_callback,
+				.ident = "Google Lillipup",
+				.matches = {DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
+					    DMI_MATCH(DMI_BOARD_NAME, "Lindar"),
+					    DMI_MATCH(DMI_PRODUCT_SKU, "sku524294"),
+				},
+			},
+			{
+				.callback = backlight_wa_callback,
+				.ident = "Google Lillipup",
+				.matches = {DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
+					    DMI_MATCH(DMI_BOARD_NAME, "Lindar"),
+					    DMI_MATCH(DMI_PRODUCT_SKU, "sku524295"),
+				},
+			},
+			{ }
+		},
+		.hook = quirk_keep_backlight_enable_on,
+	},
 };
 
 static struct intel_quirk intel_quirks[] = {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 01e11fe38642..8103919bf3b4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -467,6 +467,7 @@ struct i915_drrs {
 #define QUIRK_PIN_SWIZZLED_PAGES (1<<5)
 #define QUIRK_INCREASE_T12_DELAY (1<<6)
 #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
+#define QUIRK_KEEP_BACKLIGHT_ENABLE_ON (1<<8)
 
 struct intel_fbdev;
 struct intel_fbc_work;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
