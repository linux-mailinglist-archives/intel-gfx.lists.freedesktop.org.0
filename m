Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2EE827B3B
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6FA210E2CB;
	Mon,  8 Jan 2024 23:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32BF10E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755221; x=1736291221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jBjTuyBxgNqsV/PBzefFHJnrlhYNm1eMmfqF5pzDAs4=;
 b=ntLRnqoinj6YPMtzD0KLzj1Jh8fdJfaNexqhRIikPl9UZQXn7MWyCPbd
 0qpQCmXgW89o/EjsvtcC4prwPlpY/cYscBMvcouKEXw4G+NZ36d4Uvy/G
 X0mzaYDLLG6q8dW4ezgdJuSPWgyDiKBB9OpHSp4JnsTdSmJyzeLlmfesa
 U9Ci6OqXGru0SWRYXVfICRD9Cs6jXezpE7soffLfciP9x/XlTY7OkVoen
 kSZ9nI1TkF4fGQOQv1KWgUzK/+Mr+4byA8eVVQr/o0Br3F4V9kY/k7sQ/
 LU7oQJoAKoJGKMMywJnSF8C4/QJGLyS5tr8dhTI3Hg2EfKnA/WFh/uESu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514116"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514116"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647074"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647074"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:06:59 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 01/15] drm/i915: Extract display->vbt_data to a new vbt structure
Date: Mon,  8 Jan 2024 15:05:03 -0800
Message-Id: <20240108230517.1497504-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
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

Vbt data is scattered to multiple places like vbt_data and
opregion vbt fields. Introduce a new structure intel_vbt
to collate various vbt fields into one simple structure. This
will be used to cache the vbt read from spi flash/oprom as well
as the vbt read from opregion and firmware.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 195 +++++++++---------
 drivers/gpu/drm/i915/display/intel_crt.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  16 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  19 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   2 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  18 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
 13 files changed, 144 insertions(+), 136 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0e61e424802e..b9120eb1321d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -146,7 +146,7 @@ bdb_find_section(struct drm_i915_private *i915,
 {
 	struct bdb_block_entry *entry;
 
-	list_for_each_entry(entry, &i915->display.vbt.bdb_blocks, node) {
+	list_for_each_entry(entry, &i915->display.vbt.data.bdb_blocks, node) {
 		if (entry->section_id == section_id)
 			return entry->data + 3;
 	}
@@ -370,7 +370,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 	 * include block 41 and thus we don't need to
 	 * generate one.
 	 */
-	if (i915->display.vbt.version < 155)
+	if (i915->display.vbt.data.version < 155)
 		return NULL;
 
 	fp_timing_size = 38;
@@ -501,7 +501,7 @@ init_bdb_block(struct drm_i915_private *i915,
 		return;
 	}
 
-	list_add_tail(&entry->node, &i915->display.vbt.bdb_blocks);
+	list_add_tail(&entry->node, &i915->display.vbt.data.bdb_blocks);
 }
 
 static void init_bdb_blocks(struct drm_i915_private *i915,
@@ -910,7 +910,7 @@ parse_lfp_data(struct drm_i915_private *i915,
 		    (int)sizeof(tail->panel_name[0].name),
 		    tail->panel_name[panel_type].name);
 
-	if (i915->display.vbt.version >= 188) {
+	if (i915->display.vbt.data.version >= 188) {
 		panel->vbt.seamless_drrs_min_refresh_rate =
 			tail->seamless_drrs_min_refresh_rate[panel_type];
 		drm_dbg_kms(&i915->drm,
@@ -936,7 +936,7 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	 * first on VBT >= 229, but still fall back to trying the old LFP
 	 * block if that fails.
 	 */
-	if (i915->display.vbt.version < 229)
+	if (i915->display.vbt.data.version < 229)
 		return;
 
 	generic_dtd = bdb_find_section(i915, BDB_GENERIC_DTD);
@@ -1041,12 +1041,12 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 
 	panel->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
 	panel->vbt.backlight.controller = 0;
-	if (i915->display.vbt.version >= 191) {
+	if (i915->display.vbt.data.version >= 191) {
 		size_t exp_size;
 
-		if (i915->display.vbt.version >= 236)
+		if (i915->display.vbt.data.version >= 236)
 			exp_size = sizeof(struct bdb_lfp_backlight_data);
-		else if (i915->display.vbt.version >= 234)
+		else if (i915->display.vbt.data.version >= 234)
 			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
 		else
 			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_191;
@@ -1063,14 +1063,14 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	panel->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
 	panel->vbt.backlight.active_low_pwm = entry->active_low_pwm;
 
-	if (i915->display.vbt.version >= 234) {
+	if (i915->display.vbt.data.version >= 234) {
 		u16 min_level;
 		bool scale;
 
 		level = backlight_data->brightness_level[panel_type].level;
 		min_level = backlight_data->brightness_min_level[panel_type].level;
 
-		if (i915->display.vbt.version >= 236)
+		if (i915->display.vbt.data.version >= 236)
 			scale = backlight_data->brightness_precision_bits[panel_type] == 16;
 		else
 			scale = level > 255;
@@ -1091,7 +1091,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		panel->vbt.backlight.min_brightness = entry->min_brightness;
 	}
 
-	if (i915->display.vbt.version >= 239)
+	if (i915->display.vbt.data.version >= 239)
 		panel->vbt.backlight.hdr_dpcd_refresh_timeout =
 			DIV_ROUND_UP(backlight_data->hdr_dpcd_refresh_timeout[panel_type], 100);
 	else
@@ -1168,42 +1168,44 @@ static void
 parse_general_features(struct drm_i915_private *i915)
 {
 	const struct bdb_general_features *general;
+	struct intel_vbt_data *data = &i915->display.vbt.data;
 
 	general = bdb_find_section(i915, BDB_GENERAL_FEATURES);
 	if (!general)
 		return;
 
-	i915->display.vbt.int_tv_support = general->int_tv_support;
+	data->int_tv_support = general->int_tv_support;
 	/* int_crt_support can't be trusted on earlier platforms */
-	if (i915->display.vbt.version >= 155 &&
+	if (data->version >= 155 &&
 	    (HAS_DDI(i915) || IS_VALLEYVIEW(i915)))
-		i915->display.vbt.int_crt_support = general->int_crt_support;
-	i915->display.vbt.lvds_use_ssc = general->enable_ssc;
-	i915->display.vbt.lvds_ssc_freq =
+		data->int_crt_support = general->int_crt_support;
+	data->lvds_use_ssc = general->enable_ssc;
+	data->lvds_ssc_freq =
 		intel_bios_ssc_frequency(i915, general->ssc_freq);
-	i915->display.vbt.display_clock_mode = general->display_clock_mode;
-	i915->display.vbt.fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
-	if (i915->display.vbt.version >= 181) {
-		i915->display.vbt.orientation = general->rotate_180 ?
+	data->display_clock_mode = general->display_clock_mode;
+	data->fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
+	if (data->version >= 181) {
+		data->orientation = general->rotate_180 ?
 			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP :
 			DRM_MODE_PANEL_ORIENTATION_NORMAL;
 	} else {
-		i915->display.vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
+		data->orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 	}
 
-	if (i915->display.vbt.version >= 249 && general->afc_startup_config) {
-		i915->display.vbt.override_afc_startup = true;
-		i915->display.vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;
+	if (data->version >= 249 && general->afc_startup_config) {
+		data->override_afc_startup = true;
+		data->override_afc_startup_val =
+			general->afc_startup_config == 0x1 ? 0x0 : 0x7;
 	}
 
 	drm_dbg_kms(&i915->drm,
 		    "BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\n",
-		    i915->display.vbt.int_tv_support,
-		    i915->display.vbt.int_crt_support,
-		    i915->display.vbt.lvds_use_ssc,
-		    i915->display.vbt.lvds_ssc_freq,
-		    i915->display.vbt.display_clock_mode,
-		    i915->display.vbt.fdi_rx_polarity_inverted);
+		    data->int_tv_support,
+		    data->int_crt_support,
+		    data->lvds_use_ssc,
+		    data->lvds_ssc_freq,
+		    data->display_clock_mode,
+		    data->fdi_rx_polarity_inverted);
 }
 
 static const struct child_device_config *
@@ -1227,7 +1229,7 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 		return;
 	}
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 		struct sdvo_device_mapping *mapping;
 
@@ -1252,7 +1254,7 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 			    child->slave_addr,
 			    (child->dvo_port == DEVICE_PORT_DVOB) ?
 			    "SDVOB" : "SDVOC");
-		mapping = &i915->display.vbt.sdvo_mappings[child->dvo_port - 1];
+		mapping = &i915->display.vbt.data.sdvo_mappings[child->dvo_port - 1];
 		if (!mapping->initialized) {
 			mapping->dvo_port = child->dvo_port;
 			mapping->slave_addr = child->slave_addr;
@@ -1303,7 +1305,7 @@ parse_driver_features(struct drm_i915_private *i915)
 		 * interpretation, but real world VBTs seem to.
 		 */
 		if (driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS)
-			i915->display.vbt.int_lvds_support = 0;
+			i915->display.vbt.data.int_lvds_support = 0;
 	} else {
 		/*
 		 * FIXME it's not clear which BDB version has the LVDS config
@@ -1316,10 +1318,10 @@ parse_driver_features(struct drm_i915_private *i915)
 		 * in the wild with the bits correctly populated. Version
 		 * 108 (on i85x) does not have the bits correctly populated.
 		 */
-		if (i915->display.vbt.version >= 134 &&
+		if (i915->display.vbt.data.version >= 134 &&
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS &&
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
-			i915->display.vbt.int_lvds_support = 0;
+			i915->display.vbt.data.int_lvds_support = 0;
 	}
 }
 
@@ -1333,7 +1335,7 @@ parse_panel_driver_features(struct drm_i915_private *i915,
 	if (!driver)
 		return;
 
-	if (i915->display.vbt.version < 228) {
+	if (i915->display.vbt.data.version < 228) {
 		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
 			    driver->drrs_enabled);
 		/*
@@ -1366,7 +1368,7 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 
 	panel->vbt.vrr = true; /* matches Windows behaviour */
 
-	if (i915->display.vbt.version < 228)
+	if (i915->display.vbt.data.version < 228)
 		return;
 
 	power = bdb_find_section(i915, BDB_LFP_POWER);
@@ -1392,10 +1394,10 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 			panel->vbt.drrs_type = DRRS_TYPE_NONE;
 	}
 
-	if (i915->display.vbt.version >= 232)
+	if (i915->display.vbt.data.version >= 232)
 		panel->vbt.edp.hobl = panel_bool(power->hobl, panel_type);
 
-	if (i915->display.vbt.version >= 233)
+	if (i915->display.vbt.data.version >= 233)
 		panel->vbt.vrr = panel_bool(power->vrr_feature_enabled,
 					    panel_type);
 }
@@ -1431,7 +1433,7 @@ parse_edp(struct drm_i915_private *i915,
 
 	panel->vbt.edp.pps = *edp_pps;
 
-	if (i915->display.vbt.version >= 224) {
+	if (i915->display.vbt.data.version >= 224) {
 		panel->vbt.edp.rate =
 			edp->edp_fast_link_training_rate[panel_type] * 20;
 	} else {
@@ -1510,7 +1512,7 @@ parse_edp(struct drm_i915_private *i915,
 		break;
 	}
 
-	if (i915->display.vbt.version >= 173) {
+	if (i915->display.vbt.data.version >= 173) {
 		u8 vswing;
 
 		/* Don't read from VBT if module parameter has valid value*/
@@ -1526,7 +1528,7 @@ parse_edp(struct drm_i915_private *i915,
 	panel->vbt.edp.drrs_msa_timing_delay =
 		panel_bits(edp->sdrrs_msa_timing_delay, panel_type, 2);
 
-	if (i915->display.vbt.version >= 244)
+	if (i915->display.vbt.data.version >= 244)
 		panel->vbt.edp.max_link_rate =
 			edp->edp_max_port_link_rate[panel_type] * 20;
 }
@@ -1558,7 +1560,7 @@ parse_psr(struct drm_i915_private *i915,
 	 * New psr options 0=500us, 1=100us, 2=2500us, 3=0us
 	 * Old decimal value is wake up time in multiples of 100 us.
 	 */
-	if (i915->display.vbt.version >= 205 &&
+	if (i915->display.vbt.data.version >= 205 &&
 	    (DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915))) {
 		switch (psr_table->tp1_wakeup_time) {
 		case 0:
@@ -1604,7 +1606,7 @@ parse_psr(struct drm_i915_private *i915,
 		panel->vbt.psr.tp2_tp3_wakeup_time_us = psr_table->tp2_tp3_wakeup_time * 100;
 	}
 
-	if (i915->display.vbt.version >= 226) {
+	if (i915->display.vbt.data.version >= 226) {
 		u32 wakeup_time = psr->psr2_tp2_tp3_wakeup_time;
 
 		wakeup_time = panel_bits(wakeup_time, panel_type, 2);
@@ -1636,7 +1638,7 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
 {
 	enum port port_bc = DISPLAY_VER(i915) >= 11 ? PORT_B : PORT_C;
 
-	if (!panel->vbt.dsi.config->dual_link || i915->display.vbt.version < 197) {
+	if (!panel->vbt.dsi.config->dual_link || i915->display.vbt.data.version < 197) {
 		panel->vbt.dsi.bl_ports = BIT(port);
 		if (panel->vbt.dsi.config->cabc_supported)
 			panel->vbt.dsi.cabc_ports = BIT(port);
@@ -2090,7 +2092,7 @@ parse_compression_parameters(struct drm_i915_private *i915)
 	u16 block_size;
 	int index;
 
-	if (i915->display.vbt.version < 198)
+	if (i915->display.vbt.data.version < 198)
 		return;
 
 	params = bdb_find_section(i915, BDB_COMPRESSION_PARAMETERS);
@@ -2110,7 +2112,7 @@ parse_compression_parameters(struct drm_i915_private *i915)
 		}
 	}
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		if (!child->compression_enable)
@@ -2435,10 +2437,10 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
 
 int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 216)
+	if (!devdata || devdata->i915->display.vbt.data.version < 216)
 		return 0;
 
-	if (devdata->i915->display.vbt.version >= 230)
+	if (devdata->i915->display.vbt.data.version >= 230)
 		return parse_bdb_230_dp_max_link_rate(devdata->child.dp_max_link_rate);
 	else
 		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
@@ -2446,7 +2448,7 @@ int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 
 int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 244)
+	if (!devdata || devdata->i915->display.vbt.data.version < 244)
 		return 0;
 
 	return devdata->child.dp_max_lane_count + 1;
@@ -2541,7 +2543,7 @@ intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
 /* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
 int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 158 ||
+	if (!devdata || devdata->i915->display.vbt.data.version < 158 ||
 	    DISPLAY_VER(devdata->i915) >= 14)
 		return -1;
 
@@ -2550,7 +2552,7 @@ int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 
 int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 204)
+	if (!devdata || devdata->i915->display.vbt.data.version < 204)
 		return 0;
 
 	switch (devdata->child.hdmi_max_data_rate) {
@@ -2688,10 +2690,10 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
 	if (!has_ddi_port_info(i915))
 		return;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node)
 		parse_ddi_port(devdata);
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node)
 		print_ddi_port(devdata);
 }
 
@@ -2724,33 +2726,33 @@ parse_general_definitions(struct drm_i915_private *i915)
 	bus_pin = defs->crt_ddc_gmbus_pin;
 	drm_dbg_kms(&i915->drm, "crt_ddc_bus_pin: %d\n", bus_pin);
 	if (intel_gmbus_is_valid_pin(i915, bus_pin))
-		i915->display.vbt.crt_ddc_pin = bus_pin;
+		i915->display.vbt.data.crt_ddc_pin = bus_pin;
 
-	if (i915->display.vbt.version < 106) {
+	if (i915->display.vbt.data.version < 106) {
 		expected_size = 22;
-	} else if (i915->display.vbt.version < 111) {
+	} else if (i915->display.vbt.data.version < 111) {
 		expected_size = 27;
-	} else if (i915->display.vbt.version < 195) {
+	} else if (i915->display.vbt.data.version < 195) {
 		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
-	} else if (i915->display.vbt.version == 195) {
+	} else if (i915->display.vbt.data.version == 195) {
 		expected_size = 37;
-	} else if (i915->display.vbt.version <= 215) {
+	} else if (i915->display.vbt.data.version <= 215) {
 		expected_size = 38;
-	} else if (i915->display.vbt.version <= 250) {
+	} else if (i915->display.vbt.data.version <= 250) {
 		expected_size = 39;
 	} else {
 		expected_size = sizeof(*child);
 		BUILD_BUG_ON(sizeof(*child) < 39);
 		drm_dbg(&i915->drm,
 			"Expected child device config size for VBT version %u not known; assuming %u\n",
-			i915->display.vbt.version, expected_size);
+			i915->display.vbt.data.version, expected_size);
 	}
 
 	/* Flag an error for unexpected size, but continue anyway. */
 	if (defs->child_dev_size != expected_size)
 		drm_err(&i915->drm,
 			"Unexpected child device config size %u (expected %u for VBT version %u)\n",
-			defs->child_dev_size, expected_size, i915->display.vbt.version);
+			defs->child_dev_size, expected_size, i915->display.vbt.data.version);
 
 	/* The legacy sized child device config is the minimum we need. */
 	if (defs->child_dev_size < LEGACY_CHILD_DEVICE_CONFIG_SIZE) {
@@ -2786,10 +2788,10 @@ parse_general_definitions(struct drm_i915_private *i915)
 		memcpy(&devdata->child, child,
 		       min_t(size_t, defs->child_dev_size, sizeof(*child)));
 
-		list_add_tail(&devdata->node, &i915->display.vbt.display_devices);
+		list_add_tail(&devdata->node, &i915->display.vbt.data.display_devices);
 	}
 
-	if (list_empty(&i915->display.vbt.display_devices))
+	if (list_empty(&i915->display.vbt.data.display_devices))
 		drm_dbg_kms(&i915->drm,
 			    "no child dev is parsed from VBT\n");
 }
@@ -2798,25 +2800,25 @@ parse_general_definitions(struct drm_i915_private *i915)
 static void
 init_vbt_defaults(struct drm_i915_private *i915)
 {
-	i915->display.vbt.crt_ddc_pin = GMBUS_PIN_VGADDC;
+	i915->display.vbt.data.crt_ddc_pin = GMBUS_PIN_VGADDC;
 
 	/* general features */
-	i915->display.vbt.int_tv_support = 1;
-	i915->display.vbt.int_crt_support = 1;
+	i915->display.vbt.data.int_tv_support = 1;
+	i915->display.vbt.data.int_crt_support = 1;
 
 	/* driver features */
-	i915->display.vbt.int_lvds_support = 1;
+	i915->display.vbt.data.int_lvds_support = 1;
 
 	/* Default to using SSC */
-	i915->display.vbt.lvds_use_ssc = 1;
+	i915->display.vbt.data.lvds_use_ssc = 1;
 	/*
 	 * Core/SandyBridge/IvyBridge use alternative (120MHz) reference
 	 * clock for LVDS.
 	 */
-	i915->display.vbt.lvds_ssc_freq = intel_bios_ssc_frequency(i915,
-								   !HAS_PCH_SPLIT(i915));
+	i915->display.vbt.data.lvds_ssc_freq = intel_bios_ssc_frequency(i915,
+									!HAS_PCH_SPLIT(i915));
 	drm_dbg_kms(&i915->drm, "Set default to SSC at %d kHz\n",
-		    i915->display.vbt.lvds_ssc_freq);
+		    i915->display.vbt.data.lvds_ssc_freq);
 }
 
 /* Common defaults which may be overridden by VBT. */
@@ -2877,7 +2879,7 @@ init_vbt_missing_defaults(struct drm_i915_private *i915)
 		if (port == PORT_A)
 			child->device_type |= DEVICE_TYPE_INTERNAL_CONNECTOR;
 
-		list_add_tail(&devdata->node, &i915->display.vbt.display_devices);
+		list_add_tail(&devdata->node, &i915->display.vbt.data.display_devices);
 
 		drm_dbg_kms(&i915->drm,
 			    "Generating default VBT child device with type 0x04%x on port %c\n",
@@ -2885,7 +2887,7 @@ init_vbt_missing_defaults(struct drm_i915_private *i915)
 	}
 
 	/* Bypass some minimum baseline VBT version checks */
-	i915->display.vbt.version = 155;
+	i915->display.vbt.data.version = 155;
 }
 
 static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
@@ -3077,8 +3079,8 @@ void intel_bios_init(struct drm_i915_private *i915)
 	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
 
-	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
-	INIT_LIST_HEAD(&i915->display.vbt.bdb_blocks);
+	INIT_LIST_HEAD(&i915->display.vbt.data.display_devices);
+	INIT_LIST_HEAD(&i915->display.vbt.data.bdb_blocks);
 
 	if (!HAS_DISPLAY(i915)) {
 		drm_dbg_kms(&i915->drm,
@@ -3106,11 +3108,11 @@ void intel_bios_init(struct drm_i915_private *i915)
 		goto out;
 
 	bdb = get_bdb_header(vbt);
-	i915->display.vbt.version = bdb->version;
+	i915->display.vbt.data.version = bdb->version;
 
 	drm_dbg_kms(&i915->drm,
 		    "VBT signature \"%.*s\", BDB version %d\n",
-		    (int)sizeof(vbt->signature), vbt->signature, i915->display.vbt.version);
+		    (int)sizeof(vbt->signature), vbt->signature, i915->display.vbt.data.version);
 
 	init_bdb_blocks(i915, bdb);
 
@@ -3192,15 +3194,16 @@ void intel_bios_init_panel_late(struct drm_i915_private *i915,
 void intel_bios_driver_remove(struct drm_i915_private *i915)
 {
 	struct intel_bios_encoder_data *devdata, *nd;
+	struct intel_vbt *vbt = &i915->display.vbt;
 	struct bdb_block_entry *entry, *ne;
 
-	list_for_each_entry_safe(devdata, nd, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry_safe(devdata, nd, &vbt->data.display_devices, node) {
 		list_del(&devdata->node);
 		kfree(devdata->dsc);
 		kfree(devdata);
 	}
 
-	list_for_each_entry_safe(entry, ne, &i915->display.vbt.bdb_blocks, node) {
+	list_for_each_entry_safe(entry, ne, &vbt->data.bdb_blocks, node) {
 		list_del(&entry->node);
 		kfree(entry);
 	}
@@ -3233,13 +3236,13 @@ bool intel_bios_is_tv_present(struct drm_i915_private *i915)
 {
 	const struct intel_bios_encoder_data *devdata;
 
-	if (!i915->display.vbt.int_tv_support)
+	if (!i915->display.vbt.data.int_tv_support)
 		return false;
 
-	if (list_empty(&i915->display.vbt.display_devices))
+	if (list_empty(&i915->display.vbt.data.display_devices))
 		return true;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		/*
@@ -3275,10 +3278,10 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 {
 	const struct intel_bios_encoder_data *devdata;
 
-	if (list_empty(&i915->display.vbt.display_devices))
+	if (list_empty(&i915->display.vbt.data.display_devices))
 		return true;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		/* If the device type is not LFP, continue.
@@ -3329,7 +3332,7 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 	if (!is_port_valid(i915, port))
 		return false;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		if (dvo_port_to_port(i915, child->dvo_port) == port)
@@ -3370,7 +3373,7 @@ bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
 {
 	const struct intel_bios_encoder_data *devdata;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 		u8 dvo_port = child->dvo_port;
 
@@ -3464,7 +3467,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_bios_encoder_data *devdata;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		const struct child_device_config *child = &devdata->child;
 
 		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
@@ -3581,7 +3584,7 @@ bool intel_bios_dp_has_shared_aux_ch(const struct intel_bios_encoder_data *devda
 	i915 = devdata->i915;
 	aux_channel = devdata->child.aux_channel;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		if (intel_bios_encoder_supports_dp(devdata) &&
 		    aux_channel == devdata->child.aux_channel)
 			count++;
@@ -3592,7 +3595,7 @@ bool intel_bios_dp_has_shared_aux_ch(const struct intel_bios_encoder_data *devda
 
 int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
+	if (!devdata || devdata->i915->display.vbt.data.version < 196 || !devdata->child.iboost)
 		return 0;
 
 	return translate_iboost(devdata->child.dp_iboost_level);
@@ -3600,7 +3603,7 @@ int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata)
 
 int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
+	if (!devdata || devdata->i915->display.vbt.data.version < 196 || !devdata->child.iboost)
 		return 0;
 
 	return translate_iboost(devdata->child.hdmi_iboost_level);
@@ -3616,12 +3619,12 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
 
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
 {
-	return devdata->i915->display.vbt.version >= 195 && devdata->child.dp_usb_type_c;
+	return devdata->i915->display.vbt.data.version >= 195 && devdata->child.dp_usb_type_c;
 }
 
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata)
 {
-	return devdata->i915->display.vbt.version >= 209 && devdata->child.tbt;
+	return devdata->i915->display.vbt.data.version >= 209 && devdata->child.tbt;
 }
 
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata)
@@ -3639,7 +3642,7 @@ intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
 {
 	struct intel_bios_encoder_data *devdata;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node) {
 		if (intel_bios_encoder_port(devdata) == port)
 			return devdata;
 	}
@@ -3653,6 +3656,6 @@ void intel_bios_for_each_encoder(struct drm_i915_private *i915,
 {
 	struct intel_bios_encoder_data *devdata;
 
-	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
+	list_for_each_entry(devdata, &i915->display.vbt.data.display_devices, node)
 		func(i915, devdata);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index abaacea5c2cc..b1953a447f20 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1033,7 +1033,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	ddc_pin = dev_priv->display.vbt.crt_ddc_pin;
+	ddc_pin = dev_priv->display.vbt.data.crt_ddc_pin;
 
 	connector = &intel_connector->base;
 	crt->connector = intel_connector;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 927d124457b6..f559c089b038 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2509,12 +2509,12 @@ void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 						       PCH_DREF_CONTROL) &
 			DREF_SSC1_ENABLE;
 
-		if (dev_priv->display.vbt.lvds_use_ssc != bios_lvds_use_ssc) {
+		if (dev_priv->display.vbt.data.lvds_use_ssc != bios_lvds_use_ssc) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "SSC %s by BIOS, overriding VBT which says %s\n",
 				    str_enabled_disabled(bios_lvds_use_ssc),
-				    str_enabled_disabled(dev_priv->display.vbt.lvds_use_ssc));
-			dev_priv->display.vbt.lvds_use_ssc = bios_lvds_use_ssc;
+				    str_enabled_disabled(dev_priv->display.vbt.data.lvds_use_ssc));
+			dev_priv->display.vbt.data.lvds_use_ssc = bios_lvds_use_ssc;
 		}
 	}
 }
@@ -7465,7 +7465,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
 		return false;
 
-	if (!dev_priv->display.vbt.int_crt_support)
+	if (!dev_priv->display.vbt.data.int_crt_support)
 		return false;
 
 	return true;
@@ -7534,7 +7534,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		bool has_edp, has_port;
 
-		if (IS_VALLEYVIEW(dev_priv) && dev_priv->display.vbt.int_crt_support)
+		if (IS_VALLEYVIEW(dev_priv) && dev_priv->display.vbt.data.int_crt_support)
 			intel_crt_init(dev_priv);
 
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 47297ed85822..6e1aa58aad61 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -232,6 +232,10 @@ struct intel_vbt_data {
 	} sdvo_mappings[2];
 };
 
+struct intel_vbt {
+	struct intel_vbt_data data;
+};
+
 struct intel_wm {
 	/*
 	 * Raw watermark latency values:
@@ -516,7 +520,7 @@ struct intel_display {
 	struct intel_opregion opregion;
 	struct intel_overlay *overlay;
 	struct intel_display_params params;
-	struct intel_vbt_data vbt;
+	struct intel_vbt vbt;
 	struct intel_wm wm;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9ff0cbd9c0df..c3ef87d1107b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6182,7 +6182,7 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 	intel_attach_scaling_mode_property(&connector->base);
 
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
-						       i915->display.vbt.orientation,
+						       i915->display.vbt.data.orientation,
 						       fixed_mode->hdisplay,
 						       fixed_mode->vdisplay);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 3038655377ea..c5efd665bc6f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -376,7 +376,7 @@ static int i9xx_pll_refclk(struct drm_device *dev,
 	u32 dpll = pipe_config->dpll_hw_state.dpll;
 
 	if ((dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
-		return dev_priv->display.vbt.lvds_ssc_freq;
+		return dev_priv->display.vbt.data.lvds_ssc_freq;
 	else if (HAS_PCH_SPLIT(dev_priv))
 		return 120000;
 	else if (DISPLAY_VER(dev_priv) != 2)
@@ -1210,7 +1210,7 @@ static void ilk_update_pll_dividers(struct intel_crtc_state *crtc_state,
 	factor = 21;
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if ((intel_panel_use_ssc(dev_priv) &&
-		     dev_priv->display.vbt.lvds_ssc_freq == 100000) ||
+		     dev_priv->display.vbt.data.lvds_ssc_freq == 100000) ||
 		    (HAS_PCH_IBX(dev_priv) &&
 		     intel_is_dual_link_lvds(dev_priv)))
 			factor = 25;
@@ -1325,8 +1325,8 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 		if (intel_panel_use_ssc(dev_priv)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
-				    dev_priv->display.vbt.lvds_ssc_freq);
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+				    dev_priv->display.vbt.data.lvds_ssc_freq);
+			refclk = dev_priv->display.vbt.data.lvds_ssc_freq;
 		}
 
 		if (intel_is_dual_link_lvds(dev_priv)) {
@@ -1477,7 +1477,7 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+			refclk = dev_priv->display.vbt.data.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1526,7 +1526,7 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+			refclk = dev_priv->display.vbt.data.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1564,7 +1564,7 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+			refclk = dev_priv->display.vbt.data.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1604,7 +1604,7 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+			refclk = dev_priv->display.vbt.data.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ef57dad1a9cb..4b6c57f89bef 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2796,6 +2796,7 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 				struct intel_dpll_hw_state *pll_state)
 {
 	u32 dco_fraction = pll_params->dco_fraction;
+	struct intel_vbt_data *data = &i915->display.vbt.data;
 
 	if (ehl_combo_pll_div_frac_wa_needed(i915))
 		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
@@ -2813,8 +2814,8 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 	else
 		pll_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
 
-	if (i915->display.vbt.override_afc_startup)
-		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);
+	if (data->override_afc_startup)
+		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(data->override_afc_startup_val);
 }
 
 static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
@@ -3009,8 +3010,8 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 					 DKL_PLL_DIV0_PROP_COEFF(prop_coeff) |
 					 DKL_PLL_DIV0_FBPREDIV(m1div) |
 					 DKL_PLL_DIV0_FBDIV_INT(m2div_int);
-		if (i915->display.vbt.override_afc_startup) {
-			u8 val = i915->display.vbt.override_afc_startup_val;
+		if (i915->display.vbt.data.override_afc_startup) {
+			u8 val = i915->display.vbt.data.override_afc_startup_val;
 
 			pll_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(val);
 		}
@@ -3548,7 +3549,7 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 
 	hw_state->mg_pll_div0 = intel_dkl_phy_read(i915, DKL_PLL_DIV0(tc_port));
 	val = DKL_PLL_DIV0_MASK;
-	if (i915->display.vbt.override_afc_startup)
+	if (i915->display.vbt.data.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
 	hw_state->mg_pll_div0 &= val;
 
@@ -3612,7 +3613,7 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
 						 TGL_DPLL_CFGCR0(id));
 		hw_state->cfgcr1 = intel_de_read(i915,
 						 TGL_DPLL_CFGCR1(id));
-		if (i915->display.vbt.override_afc_startup) {
+		if (i915->display.vbt.data.override_afc_startup) {
 			hw_state->div0 = intel_de_read(i915, TGL_DPLL0_DIV0(id));
 			hw_state->div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
 		}
@@ -3686,9 +3687,9 @@ static void icl_dpll_write(struct drm_i915_private *i915,
 
 	intel_de_write(i915, cfgcr0_reg, hw_state->cfgcr0);
 	intel_de_write(i915, cfgcr1_reg, hw_state->cfgcr1);
-	drm_WARN_ON_ONCE(&i915->drm, i915->display.vbt.override_afc_startup &&
+	drm_WARN_ON_ONCE(&i915->drm, i915->display.vbt.data.override_afc_startup &&
 			 !i915_mmio_reg_valid(div0_reg));
-	if (i915->display.vbt.override_afc_startup &&
+	if (i915->display.vbt.data.override_afc_startup &&
 	    i915_mmio_reg_valid(div0_reg))
 		intel_de_rmw(i915, div0_reg,
 			     TGL_DPLL0_DIV0_AFC_STARTUP_MASK, hw_state->div0);
@@ -3769,7 +3770,7 @@ static void dkl_pll_write(struct drm_i915_private *i915,
 	intel_dkl_phy_write(i915, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
 
 	val = DKL_PLL_DIV0_MASK;
-	if (i915->display.vbt.override_afc_startup)
+	if (i915->display.vbt.data.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
 	intel_dkl_phy_rmw(i915, DKL_PLL_DIV0(tc_port), val,
 			  hw_state->mg_pll_div0);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index d3cf6a652221..aa44c1effa54 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -126,7 +126,7 @@ intel_dsi_get_panel_orientation(struct intel_connector *connector)
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
-	orientation = dev_priv->display.vbt.orientation;
+	orientation = dev_priv->display.vbt.data.orientation;
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 221f5c6c871b..64dd4717122f 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -850,12 +850,12 @@ void intel_lvds_init(struct drm_i915_private *i915)
 
 	/* Skip init on machines we know falsely report LVDS */
 	if (dmi_check_system(intel_no_lvds)) {
-		drm_WARN(&i915->drm, !i915->display.vbt.int_lvds_support,
+		drm_WARN(&i915->drm, !i915->display.vbt.data.int_lvds_support,
 			 "Useless DMI match. Internal LVDS support disabled by VBT\n");
 		return;
 	}
 
-	if (!i915->display.vbt.int_lvds_support) {
+	if (!i915->display.vbt.data.int_lvds_support) {
 		drm_dbg_kms(&i915->drm,
 			    "Internal LVDS support disabled by VBT\n");
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 0d8e5320a4f8..5e76e366d4d1 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -48,7 +48,7 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
 {
 	if (i915->display.params.panel_use_ssc >= 0)
 		return i915->display.params.panel_use_ssc != 0;
-	return i915->display.vbt.lvds_use_ssc &&
+	return i915->display.vbt.data.lvds_use_ssc &&
 		!intel_has_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 713cfba71475..f37fce257fbd 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -520,7 +520,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	if (HAS_PCH_IBX(dev_priv)) {
-		has_ck505 = dev_priv->display.vbt.display_clock_mode;
+		has_ck505 = dev_priv->display.vbt.data.display_clock_mode;
 		can_ssc = has_ck505;
 	} else {
 		has_ck505 = false;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 9218047495fb..632d0f0daa32 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2078,7 +2078,7 @@ intel_sdvo_get_analog_edid(struct drm_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct i2c_adapter *ddc;
 
-	ddc = intel_gmbus_get_adapter(i915, i915->display.vbt.crt_ddc_pin);
+	ddc = intel_gmbus_get_adapter(i915, i915->display.vbt.data.crt_ddc_pin);
 	if (!ddc)
 		return NULL;
 
@@ -2601,9 +2601,9 @@ intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo,
 	int ddc_bus;
 
 	if (sdvo->base.port == PORT_B)
-		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
+		mapping = &dev_priv->display.vbt.data.sdvo_mappings[0];
 	else
-		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
+		mapping = &dev_priv->display.vbt.data.sdvo_mappings[1];
 
 	if (mapping->initialized)
 		ddc_bus = (mapping->ddc_pin & 0xf0) >> 4;
@@ -2624,9 +2624,9 @@ intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 	u8 pin;
 
 	if (sdvo->base.port == PORT_B)
-		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
+		mapping = &dev_priv->display.vbt.data.sdvo_mappings[0];
 	else
-		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
+		mapping = &dev_priv->display.vbt.data.sdvo_mappings[1];
 
 	if (mapping->initialized &&
 	    intel_gmbus_is_valid_pin(dev_priv, mapping->i2c_pin))
@@ -2668,11 +2668,11 @@ intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
 	const struct sdvo_device_mapping *my_mapping, *other_mapping;
 
 	if (sdvo->base.port == PORT_B) {
-		my_mapping = &dev_priv->display.vbt.sdvo_mappings[0];
-		other_mapping = &dev_priv->display.vbt.sdvo_mappings[1];
+		my_mapping = &dev_priv->display.vbt.data.sdvo_mappings[0];
+		other_mapping = &dev_priv->display.vbt.data.sdvo_mappings[1];
 	} else {
-		my_mapping = &dev_priv->display.vbt.sdvo_mappings[1];
-		other_mapping = &dev_priv->display.vbt.sdvo_mappings[0];
+		my_mapping = &dev_priv->display.vbt.data.sdvo_mappings[1];
+		other_mapping = &dev_priv->display.vbt.data.sdvo_mappings[0];
 	}
 
 	/* If the BIOS described our SDVO device, take advantage of it. */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 9c21ce69bd98..8b6991db369e 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -225,7 +225,7 @@ static void cpt_init_clock_gating(struct drm_i915_private *i915)
 		val = intel_uncore_read(&i915->uncore, TRANS_CHICKEN2(pipe));
 		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
-		if (i915->display.vbt.fdi_rx_polarity_inverted)
+		if (i915->display.vbt.data.fdi_rx_polarity_inverted)
 			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
-- 
2.34.1

