Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399843B26DC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 07:34:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B806E9E4;
	Thu, 24 Jun 2021 05:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A076E9E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 05:33:58 +0000 (UTC)
IronPort-SDR: KNPHu8TVK9IFTNvqjBKNuocIx8gHRWMI52/pfmAbK8QPfmLooY52dsthFizJzicPdzaf5axM7M
 vgChc97y8q/w==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="187087119"
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="187087119"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 22:33:57 -0700
IronPort-SDR: LLNJNlhHG7gLTeKeEZ5dGGWPH1q81WgqZCSGk9jwCcFmcPJvNfJGKo7BKptKsuU2AmZE6DIQ8z
 xMJ7fC640eOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="423950712"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga002.jf.intel.com with ESMTP; 23 Jun 2021 22:33:56 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Jun 2021 13:39:32 +0800
Message-Id: <20210624053932.21037-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210622133107.7422-1-shawn.c.lee@intel.com>
References: <20210622133107.7422-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v4] drm/i915: keep backlight_enable on until
 turn eDP display off
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

v2: 1. modify the quirk name and debug messages.
    2. unregister backlight.power callback for specific device.
v3: 1. modify debug output messages.
    2. use DMI_EXACT_MATCH instead of DMI_MATCH.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_quirks.c | 34 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h             |  1 +
 3 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6cc03b9e4321..d3312b9bcc6f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5238,7 +5238,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 
 	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
-	intel_connector->panel.backlight.power = intel_pps_backlight_power;
+	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
+		intel_connector->panel.backlight.power = intel_pps_backlight_power;
 	intel_panel_setup_backlight(connector, pipe);
 
 	if (fixed_mode) {
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 98dd787b00e3..8a52b7a16774 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -53,6 +53,12 @@ static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
 	drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");
 }
 
+static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
+{
+	i915->quirks |= QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK;
+	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -72,6 +78,12 @@ static int intel_dmi_reverse_brightness(const struct dmi_system_id *id)
 	return 1;
 }
 
+static int intel_dmi_no_pps_backlight(const struct dmi_system_id *id)
+{
+	DRM_INFO("No pps backlight support on %s\n", id->ident);
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
+				.callback = intel_dmi_no_pps_backlight,
+				.ident = "Google Lillipup sku524294",
+				.matches = {DMI_EXACT_MATCH(DMI_BOARD_VENDOR, "Google"),
+					    DMI_EXACT_MATCH(DMI_BOARD_NAME, "Lindar"),
+					    DMI_EXACT_MATCH(DMI_PRODUCT_SKU, "sku524294"),
+				},
+			},
+			{
+				.callback = intel_dmi_no_pps_backlight,
+				.ident = "Google Lillipup sku524295",
+				.matches = {DMI_EXACT_MATCH(DMI_BOARD_VENDOR, "Google"),
+					    DMI_EXACT_MATCH(DMI_BOARD_NAME, "Lindar"),
+					    DMI_EXACT_MATCH(DMI_PRODUCT_SKU, "sku524295"),
+				},
+			},
+			{ }
+		},
+		.hook = quirk_no_pps_backlight_power_hook,
+	},
 };
 
 static struct intel_quirk intel_quirks[] = {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 01e11fe38642..5a065be0792a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -467,6 +467,7 @@ struct i915_drrs {
 #define QUIRK_PIN_SWIZZLED_PAGES (1<<5)
 #define QUIRK_INCREASE_T12_DELAY (1<<6)
 #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
+#define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
 
 struct intel_fbdev;
 struct intel_fbc_work;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
