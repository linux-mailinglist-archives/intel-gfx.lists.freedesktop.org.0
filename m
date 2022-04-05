Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53D44F3CE0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A2910EB35;
	Tue,  5 Apr 2022 17:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 209C510EB35
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180058; x=1680716058;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=msEIFFk9Sv1HDnKKL0tMumffN32/t4U7eH+Z1ZfL0vA=;
 b=UIpp1rW2L1FQr0unFgFZwc38NY4YUdtpwYCiyQGx9JVZNejucl0AOBKU
 lKD3vG8z72r7dLXSgEeuPY7vE/1xfh58dB5+8FBG9Wxaqplav+y4Y3utA
 C3tPL4kZ+cRSfFJNmN3GXGEjXsobX52zRFDBYKOXDZPOZGy4y+KcMt2Bw
 xFBhc4WKq1ZHDf8H+zRqHgozX2MtMFaOccNvFVR4Ti+MYJErJVFV+sjCg
 JS1RFhC99OYePLmfL1GDgTeaYADoUnLLIX+HfVf3R11OJvQLXkGIh8XTm
 qdHArDreRyXmuI8rVkfwUB4WXmNtEFZjGJE8YYeR9hF60Zi8z26wIO2yW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="260994107"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="260994107"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="556610510"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 05 Apr 2022 10:34:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:33:49 +0300
Message-Id: <20220405173410.11436-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/22] drm/i915/bios: Use the cached BDB
 version
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have the BDB version cached, use it. We're going to have to
start doing some of the BDB block parsing later, at which point
we may no longer have the VBT around anymore (we free it at the
end of intel_bios_init() when it didn't come via OpRegion).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 54 +++++++++++------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 556169ce0544..5518f4cfa1b1 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -415,7 +415,7 @@ parse_panel_dtd(struct drm_i915_private *i915,
 	 * try the new generic DTD block first on VBT >= 229, but still fall
 	 * back to trying the old LFP block if that fails.
 	 */
-	if (bdb->version >= 229)
+	if (i915->vbt.version >= 229)
 		parse_generic_dtd(i915, bdb);
 	if (!i915->vbt.lfp_lvds_vbt_mode)
 		parse_lfp_panel_dtd(i915, bdb);
@@ -452,12 +452,12 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	}
 
 	i915->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
-	if (bdb->version >= 191) {
+	if (i915->vbt.version >= 191) {
 		size_t exp_size;
 
-		if (bdb->version >= 236)
+		if (i915->vbt.version >= 236)
 			exp_size = sizeof(struct bdb_lfp_backlight_data);
-		else if (bdb->version >= 234)
+		else if (i915->vbt.version >= 234)
 			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
 		else
 			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_191;
@@ -474,14 +474,14 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	i915->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
 	i915->vbt.backlight.active_low_pwm = entry->active_low_pwm;
 
-	if (bdb->version >= 234) {
+	if (i915->vbt.version >= 234) {
 		u16 min_level;
 		bool scale;
 
 		level = backlight_data->brightness_level[panel_type].level;
 		min_level = backlight_data->brightness_min_level[panel_type].level;
 
-		if (bdb->version >= 236)
+		if (i915->vbt.version >= 236)
 			scale = backlight_data->brightness_precision_bits[panel_type] == 16;
 		else
 			scale = level > 255;
@@ -581,7 +581,7 @@ parse_general_features(struct drm_i915_private *i915,
 
 	i915->vbt.int_tv_support = general->int_tv_support;
 	/* int_crt_support can't be trusted on earlier platforms */
-	if (bdb->version >= 155 &&
+	if (i915->vbt.version >= 155 &&
 	    (HAS_DDI(i915) || IS_VALLEYVIEW(i915)))
 		i915->vbt.int_crt_support = general->int_crt_support;
 	i915->vbt.lvds_use_ssc = general->enable_ssc;
@@ -589,7 +589,7 @@ parse_general_features(struct drm_i915_private *i915,
 		intel_bios_ssc_frequency(i915, general->ssc_freq);
 	i915->vbt.display_clock_mode = general->display_clock_mode;
 	i915->vbt.fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
-	if (bdb->version >= 181) {
+	if (i915->vbt.version >= 181) {
 		i915->vbt.orientation = general->rotate_180 ?
 			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP :
 			DRM_MODE_PANEL_ORIENTATION_NORMAL;
@@ -597,7 +597,7 @@ parse_general_features(struct drm_i915_private *i915,
 		i915->vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 	}
 
-	if (bdb->version >= 249 && general->afc_startup_config) {
+	if (i915->vbt.version >= 249 && general->afc_startup_config) {
 		i915->vbt.override_afc_startup = true;
 		i915->vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;
 	}
@@ -724,13 +724,13 @@ parse_driver_features(struct drm_i915_private *i915,
 		 * in the wild with the bits correctly populated. Version
 		 * 108 (on i85x) does not have the bits correctly populated.
 		 */
-		if (bdb->version >= 134 &&
+		if (i915->vbt.version >= 134 &&
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS &&
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
 			i915->vbt.int_lvds_support = 0;
 	}
 
-	if (bdb->version < 228) {
+	if (i915->vbt.version < 228) {
 		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
 			    driver->drrs_enabled);
 		/*
@@ -753,7 +753,7 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	const struct bdb_lfp_power *power;
 	u8 panel_type = i915->vbt.panel_type;
 
-	if (bdb->version < 228)
+	if (i915->vbt.version < 228)
 		return;
 
 	power = find_section(bdb, BDB_LFP_POWER);
@@ -771,7 +771,7 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	if (!(power->drrs & BIT(panel_type)))
 		i915->vbt.drrs_type = DRRS_TYPE_NONE;
 
-	if (bdb->version >= 232)
+	if (i915->vbt.version >= 232)
 		i915->vbt.edp.hobl = power->hobl & BIT(panel_type);
 }
 
@@ -876,7 +876,7 @@ parse_edp(struct drm_i915_private *i915, const struct bdb_header *bdb)
 		break;
 	}
 
-	if (bdb->version >= 173) {
+	if (i915->vbt.version >= 173) {
 		u8 vswing;
 
 		/* Don't read from VBT if module parameter has valid value*/
@@ -919,7 +919,7 @@ parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
 	 * New psr options 0=500us, 1=100us, 2=2500us, 3=0us
 	 * Old decimal value is wake up time in multiples of 100 us.
 	 */
-	if (bdb->version >= 205 &&
+	if (i915->vbt.version >= 205 &&
 	    (DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915))) {
 		switch (psr_table->tp1_wakeup_time) {
 		case 0:
@@ -965,7 +965,7 @@ parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
 		i915->vbt.psr.tp2_tp3_wakeup_time_us = psr_table->tp2_tp3_wakeup_time * 100;
 	}
 
-	if (bdb->version >= 226) {
+	if (i915->vbt.version >= 226) {
 		u32 wakeup_time = psr->psr2_tp2_tp3_wakeup_time;
 
 		wakeup_time = (wakeup_time >> (2 * panel_type)) & 0x3;
@@ -1085,7 +1085,7 @@ parse_mipi_config(struct drm_i915_private *i915,
 		return;
 	}
 
-	parse_dsi_backlight_ports(i915, bdb->version, port);
+	parse_dsi_backlight_ports(i915, i915->vbt.version, port);
 
 	/* FIXME is the 90 vs. 270 correct? */
 	switch (config->rotation) {
@@ -1448,7 +1448,7 @@ parse_compression_parameters(struct drm_i915_private *i915,
 	u16 block_size;
 	int index;
 
-	if (bdb->version < 198)
+	if (i915->vbt.version < 198)
 		return;
 
 	params = find_section(bdb, BDB_COMPRESSION_PARAMETERS);
@@ -2117,31 +2117,31 @@ parse_general_definitions(struct drm_i915_private *i915,
 	if (intel_gmbus_is_valid_pin(i915, bus_pin))
 		i915->vbt.crt_ddc_pin = bus_pin;
 
-	if (bdb->version < 106) {
+	if (i915->vbt.version < 106) {
 		expected_size = 22;
-	} else if (bdb->version < 111) {
+	} else if (i915->vbt.version < 111) {
 		expected_size = 27;
-	} else if (bdb->version < 195) {
+	} else if (i915->vbt.version < 195) {
 		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
-	} else if (bdb->version == 195) {
+	} else if (i915->vbt.version == 195) {
 		expected_size = 37;
-	} else if (bdb->version <= 215) {
+	} else if (i915->vbt.version <= 215) {
 		expected_size = 38;
-	} else if (bdb->version <= 237) {
+	} else if (i915->vbt.version <= 237) {
 		expected_size = 39;
 	} else {
 		expected_size = sizeof(*child);
 		BUILD_BUG_ON(sizeof(*child) < 39);
 		drm_dbg(&i915->drm,
 			"Expected child device config size for VBT version %u not known; assuming %u\n",
-			bdb->version, expected_size);
+			i915->vbt.version, expected_size);
 	}
 
 	/* Flag an error for unexpected size, but continue anyway. */
 	if (defs->child_dev_size != expected_size)
 		drm_err(&i915->drm,
 			"Unexpected child device config size %u (expected %u for VBT version %u)\n",
-			defs->child_dev_size, expected_size, bdb->version);
+			defs->child_dev_size, expected_size, i915->vbt.version);
 
 	/* The legacy sized child device config is the minimum we need. */
 	if (defs->child_dev_size < LEGACY_CHILD_DEVICE_CONFIG_SIZE) {
@@ -2497,7 +2497,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	drm_dbg_kms(&i915->drm,
 		    "VBT signature \"%.*s\", BDB version %d\n",
-		    (int)sizeof(vbt->signature), vbt->signature, bdb->version);
+		    (int)sizeof(vbt->signature), vbt->signature, i915->vbt.version);
 
 	/* Grab useful general definitions */
 	parse_general_features(i915, bdb);
-- 
2.35.1

