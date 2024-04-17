Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BADC8A83A3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98ACF1134C3;
	Wed, 17 Apr 2024 13:03:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kM2iJcRi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17141134B8;
 Wed, 17 Apr 2024 13:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713358999; x=1744894999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AvkQ/xdXGPi55GmtoywzhghyzhUumODCETsa7wtQxKs=;
 b=kM2iJcRiRtzCWUzY/OgzvG+gvvCErCaZ9S1S3Nt0I0VZgW52zxc0PZMt
 NsAMKftQFxv6GfkmnMjpZsgvv8kqOPsqbZz2xN/tBfPKphxm/7fGh1kM/
 FCiBkFwi9Cqc2kbFQ480UHQ6SRkspY9y+QUuMRyfFCZ1TXsth3zcTX/Rg
 LsfGwMzu9xYCkIBo/K8WinGJ8ks8N4B3r2gTxEw+CPo15skZdd5vX4E5A
 nadVHriM4EYG+iKbCI4J1dThauYrxD6NQqEMNcl+a4yVxDzOoSC4Lz/HI
 Y4y15r1dRSgnSfACN5BDiBrd8gESqaKivlHpQiKhXfZjxEcb8cJqYFKnw g==;
X-CSE-ConnectionGUID: itByQdkPQMyFQuyEWotZ/w==
X-CSE-MsgGUID: OgyioTPaSnSs46A6A9D6GA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8976861"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8976861"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:18 -0700
X-CSE-ConnectionGUID: D3lXx+cUT+K0ByHSEw7hQg==
X-CSE-MsgGUID: OnU0uHDjRMqazPENHR7SfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27199475"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 5/9] drm/i915/quirks: convert struct drm_i915_private to
 struct intel_display
Date: Wed, 17 Apr 2024 16:02:43 +0300
Message-Id: <d90e9d8e91e59d04d38f2743c02c74a8f0e13133.1713358679.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Use struct intel_display instead of struct drm_i915_private for
quirks. Also do drive-by conversions in call sites of intel_has_quirk().

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 40 ++++++-------
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
 .../drm/i915/display/intel_display_driver.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_panel.c    | 10 ++--
 drivers/gpu/drm/i915/display/intel_pps.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_quirks.c   | 56 +++++++++----------
 drivers/gpu/drm/i915/display/intel_quirks.h   |  6 +-
 7 files changed, 65 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 4d4330410b4d..071668bfe5d1 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -83,16 +83,16 @@ static u32 scale_hw_to_user(struct intel_connector *connector,
 
 u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);
+	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0);
 
-	if (i915->display.params.invert_brightness < 0)
+	if (display->params.invert_brightness < 0)
 		return val;
 
-	if (i915->display.params.invert_brightness > 0 ||
-	    intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)) {
+	if (display->params.invert_brightness > 0 ||
+	    intel_has_quirk(display, QUIRK_INVERT_BRIGHTNESS)) {
 		return panel->backlight.pwm_level_max - val + panel->backlight.pwm_level_min;
 	}
 
@@ -126,15 +126,15 @@ u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
 
 u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_WARN_ON_ONCE(&i915->drm,
+	drm_WARN_ON_ONCE(display->drm,
 			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
 
-	if (i915->display.params.invert_brightness > 0 ||
-	    (i915->display.params.invert_brightness == 0 &&
-	     intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)))
+	if (display->params.invert_brightness > 0 ||
+	    (display->params.invert_brightness == 0 &&
+	     intel_has_quirk(display, QUIRK_INVERT_BRIGHTNESS)))
 		val = panel->backlight.pwm_level_max - (val - panel->backlight.pwm_level_min);
 
 	return scale(val, panel->backlight.pwm_level_min, panel->backlight.pwm_level_max,
@@ -1642,17 +1642,17 @@ void intel_backlight_update(struct intel_atomic_state *state,
 
 int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	int ret;
 
 	if (!connector->panel.vbt.backlight.present) {
-		if (intel_has_quirk(i915, QUIRK_BACKLIGHT_PRESENT)) {
-			drm_dbg_kms(&i915->drm,
+		if (intel_has_quirk(display, QUIRK_BACKLIGHT_PRESENT)) {
+			drm_dbg_kms(display->drm,
 				    "[CONNECTOR:%d:%s] no backlight present per VBT, but present per quirk\n",
 				    connector->base.base.id, connector->base.name);
 		} else {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[CONNECTOR:%d:%s] no backlight present per VBT\n",
 				    connector->base.base.id, connector->base.name);
 			return 0;
@@ -1660,16 +1660,16 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 	}
 
 	/* ensure intel_panel has been initialized first */
-	if (drm_WARN_ON(&i915->drm, !panel->backlight.funcs))
+	if (drm_WARN_ON(display->drm, !panel->backlight.funcs))
 		return -ENODEV;
 
 	/* set level and max in panel struct */
-	mutex_lock(&i915->display.backlight.lock);
+	mutex_lock(&display->backlight.lock);
 	ret = panel->backlight.funcs->setup(connector, pipe);
-	mutex_unlock(&i915->display.backlight.lock);
+	mutex_unlock(&display->backlight.lock);
 
 	if (ret) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] failed to setup backlight\n",
 			    connector->base.base.id, connector->base.name);
 		return ret;
@@ -1677,7 +1677,7 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 
 	panel->backlight.present = true;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] backlight initialized, %s, brightness %u/%u\n",
 		    connector->base.base.id, connector->base.name,
 		    str_enabled_disabled(panel->backlight.enabled),
@@ -1821,7 +1821,7 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
 		if (intel_dp_aux_init_backlight_funcs(connector) == 0)
 			return;
 
-		if (!intel_has_quirk(i915, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
+		if (!intel_has_quirk(&i915->display, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
 			connector->panel.backlight.power = intel_pps_backlight_power;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3255d4e375af..f99ca7a5c356 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -631,6 +631,7 @@ intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
 
 void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -661,10 +662,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 
 	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
 
-	if (intel_has_quirk(dev_priv, QUIRK_INCREASE_DDI_DISABLED_TIME) &&
+	if (intel_has_quirk(display, QUIRK_INCREASE_DDI_DISABLED_TIME) &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Quirk Increase DDI disabled time\n");
+		drm_dbg_kms(display->drm, "Quirk Increase DDI disabled time\n");
 		/* Quirk time at 100ms for reliable operation */
 		msleep(100);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index e4015557af6a..4f112a69dea8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -204,6 +204,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 /* part #1: call before irq install */
 int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int ret;
 
 	if (i915_inject_probe_failure(i915))
@@ -262,7 +263,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-	intel_init_quirks(i915);
+	intel_init_quirks(display);
 
 	intel_fbc_init(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 073ea3166c36..6f4ff6a89c32 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -47,10 +47,12 @@
 
 bool intel_panel_use_ssc(struct drm_i915_private *i915)
 {
-	if (i915->display.params.panel_use_ssc >= 0)
-		return i915->display.params.panel_use_ssc != 0;
-	return i915->display.vbt.lvds_use_ssc &&
-		!intel_has_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
+	struct intel_display *display = &i915->display;
+
+	if (display->params.panel_use_ssc >= 0)
+		return display->params.panel_use_ssc != 0;
+	return display->vbt.lvds_use_ssc &&
+		!intel_has_quirk(display, QUIRK_LVDS_SSC_DISABLE);
 }
 
 const struct drm_display_mode *
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 3078dfac7817..0ccbf9a85914 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1350,7 +1350,7 @@ static void pps_init_delays_bios(struct intel_dp *intel_dp,
 static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 				struct edp_power_seq *vbt)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 
 	*vbt = connector->panel.vbt.edp.pps;
@@ -1363,9 +1363,9 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 	 * just fails to power back on. Increasing the delay to 800ms
 	 * seems sufficient to avoid this problem.
 	 */
-	if (intel_has_quirk(dev_priv, QUIRK_INCREASE_T12_DELAY)) {
+	if (intel_has_quirk(display, QUIRK_INCREASE_T12_DELAY)) {
 		vbt->t11_t12 = max_t(u16, vbt->t11_t12, 1300 * 10);
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Increasing T12 panel delay as per the quirk to %d\n",
 			    vbt->t11_t12);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index a280448df771..14d5fefc9c5b 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -9,72 +9,72 @@
 #include "intel_display_types.h"
 #include "intel_quirks.h"
 
-static void intel_set_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
+static void intel_set_quirk(struct intel_display *display, enum intel_quirk_id quirk)
 {
-	i915->display.quirks.mask |= BIT(quirk);
+	display->quirks.mask |= BIT(quirk);
 }
 
 /*
  * Some machines (Lenovo U160) do not work with SSC on LVDS for some reason
  */
-static void quirk_ssc_force_disable(struct drm_i915_private *i915)
+static void quirk_ssc_force_disable(struct intel_display *display)
 {
-	intel_set_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
-	drm_info(&i915->drm, "applying lvds SSC disable quirk\n");
+	intel_set_quirk(display, QUIRK_LVDS_SSC_DISABLE);
+	drm_info(display->drm, "applying lvds SSC disable quirk\n");
 }
 
 /*
  * A machine (e.g. Acer Aspire 5734Z) may need to invert the panel backlight
  * brightness value
  */
-static void quirk_invert_brightness(struct drm_i915_private *i915)
+static void quirk_invert_brightness(struct intel_display *display)
 {
-	intel_set_quirk(i915, QUIRK_INVERT_BRIGHTNESS);
-	drm_info(&i915->drm, "applying inverted panel brightness quirk\n");
+	intel_set_quirk(display, QUIRK_INVERT_BRIGHTNESS);
+	drm_info(display->drm, "applying inverted panel brightness quirk\n");
 }
 
 /* Some VBT's incorrectly indicate no backlight is present */
-static void quirk_backlight_present(struct drm_i915_private *i915)
+static void quirk_backlight_present(struct intel_display *display)
 {
-	intel_set_quirk(i915, QUIRK_BACKLIGHT_PRESENT);
-	drm_info(&i915->drm, "applying backlight present quirk\n");
+	intel_set_quirk(display, QUIRK_BACKLIGHT_PRESENT);
+	drm_info(display->drm, "applying backlight present quirk\n");
 }
 
 /* Toshiba Satellite P50-C-18C requires T12 delay to be min 800ms
  * which is 300 ms greater than eDP spec T12 min.
  */
-static void quirk_increase_t12_delay(struct drm_i915_private *i915)
+static void quirk_increase_t12_delay(struct intel_display *display)
 {
-	intel_set_quirk(i915, QUIRK_INCREASE_T12_DELAY);
-	drm_info(&i915->drm, "Applying T12 delay quirk\n");
+	intel_set_quirk(display, QUIRK_INCREASE_T12_DELAY);
+	drm_info(display->drm, "Applying T12 delay quirk\n");
 }
 
 /*
  * GeminiLake NUC HDMI outputs require additional off time
  * this allows the onboard retimer to correctly sync to signal
  */
-static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
+static void quirk_increase_ddi_disabled_time(struct intel_display *display)
 {
-	intel_set_quirk(i915, QUIRK_INCREASE_DDI_DISABLED_TIME);
-	drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");
+	intel_set_quirk(display, QUIRK_INCREASE_DDI_DISABLED_TIME);
+	drm_info(display->drm, "Applying Increase DDI Disabled quirk\n");
 }
 
-static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
+static void quirk_no_pps_backlight_power_hook(struct intel_display *display)
 {
-	intel_set_quirk(i915, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK);
-	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");
+	intel_set_quirk(display, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK);
+	drm_info(display->drm, "Applying no pps backlight power quirk\n");
 }
 
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
 	int subsystem_device;
-	void (*hook)(struct drm_i915_private *i915);
+	void (*hook)(struct intel_display *display);
 };
 
 /* For systems that don't have a meaningful PCI subdevice/subvendor ID */
 struct intel_dmi_quirk {
-	void (*hook)(struct drm_i915_private *i915);
+	void (*hook)(struct intel_display *display);
 	const struct dmi_system_id (*dmi_id_list)[];
 };
 
@@ -203,9 +203,9 @@ static struct intel_quirk intel_quirks[] = {
 	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
 };
 
-void intel_init_quirks(struct drm_i915_private *i915)
+void intel_init_quirks(struct intel_display *display)
 {
-	struct pci_dev *d = to_pci_dev(i915->drm.dev);
+	struct pci_dev *d = to_pci_dev(display->drm->dev);
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(intel_quirks); i++) {
@@ -216,15 +216,15 @@ void intel_init_quirks(struct drm_i915_private *i915)
 		     q->subsystem_vendor == PCI_ANY_ID) &&
 		    (d->subsystem_device == q->subsystem_device ||
 		     q->subsystem_device == PCI_ANY_ID))
-			q->hook(i915);
+			q->hook(display);
 	}
 	for (i = 0; i < ARRAY_SIZE(intel_dmi_quirks); i++) {
 		if (dmi_check_system(*intel_dmi_quirks[i].dmi_id_list) != 0)
-			intel_dmi_quirks[i].hook(i915);
+			intel_dmi_quirks[i].hook(display);
 	}
 }
 
-bool intel_has_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
+bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id quirk)
 {
-	return i915->display.quirks.mask & BIT(quirk);
+	return display->quirks.mask & BIT(quirk);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 10a4d163149f..151c8f4ae576 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
+struct intel_display;
 
 enum intel_quirk_id {
 	QUIRK_BACKLIGHT_PRESENT,
@@ -19,7 +19,7 @@ enum intel_quirk_id {
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
 };
 
-void intel_init_quirks(struct drm_i915_private *i915);
-bool intel_has_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk);
+void intel_init_quirks(struct intel_display *display);
+bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id quirk);
 
 #endif /* __INTEL_QUIRKS_H__ */
-- 
2.39.2

