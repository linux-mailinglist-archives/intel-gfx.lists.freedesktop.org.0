Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B7E59FB23
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CA4B52BB;
	Wed, 24 Aug 2022 13:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F95B51C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347083; x=1692883083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IoLbZ5J1SOOm7okUXNMr3TJPmFt85SiU5NlRvtwAS8c=;
 b=dU2LuRjmp5xkX0Gctkhkj3th45FD5sypRWOV6LOuCgJFGm7sITBHcwBk
 hk42NkHu9N39uaybdEFjicStO3+EWjtul0+gzUgy7XoyZV9TlElP4A9wb
 IUMxVrwAGGRl0Vemy/Qe5IS1XpuuN8hPveeXsoO86h5oORxeegbVFx2OJ
 JYWKXVnIloM/VgoHIwhzWVGyC90Bn15t/J/SjeLF/GCtHhDYweZH59+ER
 FWdTYjrz6ZsxSN0SdcmWs0T1zr0I++KxkaZ2cD0LjuDfUXvQoOVfwgXcs
 qEtflgrzm3+CST1Nghk7f2/oOBb3S06ocDfDBkQUsayVQ3rHDV01dHUzJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="320022683"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="320022683"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="560598477"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:17:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:50 +0300
Message-Id: <be533cf43299814b6496b37e0141156130c8e48a.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 24/38] drm/i915: move vbt to display.vbt
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display VBT related members under drm_i915_private display
sub-struct.

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 212 +++++++++---------
 drivers/gpu/drm/i915/display/intel_crt.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
 .../gpu/drm/i915/display/intel_display_core.h |  38 ++++
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  18 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   2 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  18 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |  37 ---
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 15 files changed, 188 insertions(+), 187 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index bcbaf87d6c31..b72673ff5613 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -159,7 +159,7 @@ find_section(struct drm_i915_private *i915,
 {
 	struct bdb_block_entry *entry;
 
-	list_for_each_entry(entry, &i915->vbt.bdb_blocks, node) {
+	list_for_each_entry(entry, &i915->display.vbt.bdb_blocks, node) {
 		if (entry->section_id == section_id)
 			return entry->data + 3;
 	}
@@ -501,7 +501,7 @@ init_bdb_block(struct drm_i915_private *i915,
 		return;
 	}
 
-	list_add_tail(&entry->node, &i915->vbt.bdb_blocks);
+	list_add_tail(&entry->node, &i915->display.vbt.bdb_blocks);
 }
 
 static void init_bdb_blocks(struct drm_i915_private *i915,
@@ -878,7 +878,7 @@ parse_lfp_data(struct drm_i915_private *i915,
 	if (!tail)
 		return;
 
-	if (i915->vbt.version >= 188) {
+	if (i915->display.vbt.version >= 188) {
 		panel->vbt.seamless_drrs_min_refresh_rate =
 			tail->seamless_drrs_min_refresh_rate[panel_type];
 		drm_dbg_kms(&i915->drm,
@@ -904,7 +904,7 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	 * first on VBT >= 229, but still fall back to trying the old LFP
 	 * block if that fails.
 	 */
-	if (i915->vbt.version < 229)
+	if (i915->display.vbt.version < 229)
 		return;
 
 	generic_dtd = find_section(i915, BDB_GENERIC_DTD);
@@ -1008,12 +1008,12 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	}
 
 	panel->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
-	if (i915->vbt.version >= 191) {
+	if (i915->display.vbt.version >= 191) {
 		size_t exp_size;
 
-		if (i915->vbt.version >= 236)
+		if (i915->display.vbt.version >= 236)
 			exp_size = sizeof(struct bdb_lfp_backlight_data);
-		else if (i915->vbt.version >= 234)
+		else if (i915->display.vbt.version >= 234)
 			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
 		else
 			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_191;
@@ -1030,14 +1030,14 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	panel->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
 	panel->vbt.backlight.active_low_pwm = entry->active_low_pwm;
 
-	if (i915->vbt.version >= 234) {
+	if (i915->display.vbt.version >= 234) {
 		u16 min_level;
 		bool scale;
 
 		level = backlight_data->brightness_level[panel_type].level;
 		min_level = backlight_data->brightness_min_level[panel_type].level;
 
-		if (i915->vbt.version >= 236)
+		if (i915->display.vbt.version >= 236)
 			scale = backlight_data->brightness_precision_bits[panel_type] == 16;
 		else
 			scale = level > 255;
@@ -1134,37 +1134,37 @@ parse_general_features(struct drm_i915_private *i915)
 	if (!general)
 		return;
 
-	i915->vbt.int_tv_support = general->int_tv_support;
+	i915->display.vbt.int_tv_support = general->int_tv_support;
 	/* int_crt_support can't be trusted on earlier platforms */
-	if (i915->vbt.version >= 155 &&
+	if (i915->display.vbt.version >= 155 &&
 	    (HAS_DDI(i915) || IS_VALLEYVIEW(i915)))
-		i915->vbt.int_crt_support = general->int_crt_support;
-	i915->vbt.lvds_use_ssc = general->enable_ssc;
-	i915->vbt.lvds_ssc_freq =
+		i915->display.vbt.int_crt_support = general->int_crt_support;
+	i915->display.vbt.lvds_use_ssc = general->enable_ssc;
+	i915->display.vbt.lvds_ssc_freq =
 		intel_bios_ssc_frequency(i915, general->ssc_freq);
-	i915->vbt.display_clock_mode = general->display_clock_mode;
-	i915->vbt.fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
-	if (i915->vbt.version >= 181) {
-		i915->vbt.orientation = general->rotate_180 ?
+	i915->display.vbt.display_clock_mode = general->display_clock_mode;
+	i915->display.vbt.fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
+	if (i915->display.vbt.version >= 181) {
+		i915->display.vbt.orientation = general->rotate_180 ?
 			DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP :
 			DRM_MODE_PANEL_ORIENTATION_NORMAL;
 	} else {
-		i915->vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
+		i915->display.vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 	}
 
-	if (i915->vbt.version >= 249 && general->afc_startup_config) {
-		i915->vbt.override_afc_startup = true;
-		i915->vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;
+	if (i915->display.vbt.version >= 249 && general->afc_startup_config) {
+		i915->display.vbt.override_afc_startup = true;
+		i915->display.vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;
 	}
 
 	drm_dbg_kms(&i915->drm,
 		    "BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\n",
-		    i915->vbt.int_tv_support,
-		    i915->vbt.int_crt_support,
-		    i915->vbt.lvds_use_ssc,
-		    i915->vbt.lvds_ssc_freq,
-		    i915->vbt.display_clock_mode,
-		    i915->vbt.fdi_rx_polarity_inverted);
+		    i915->display.vbt.int_tv_support,
+		    i915->display.vbt.int_crt_support,
+		    i915->display.vbt.lvds_use_ssc,
+		    i915->display.vbt.lvds_ssc_freq,
+		    i915->display.vbt.display_clock_mode,
+		    i915->display.vbt.fdi_rx_polarity_inverted);
 }
 
 static const struct child_device_config *
@@ -1190,7 +1190,7 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 		return;
 	}
 
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
 		child = &devdata->child;
 
 		if (child->slave_addr != SLAVE_ADDR1 &&
@@ -1214,7 +1214,7 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
 			    child->slave_addr,
 			    (child->dvo_port == DEVICE_PORT_DVOB) ?
 			    "SDVOB" : "SDVOC");
-		mapping = &i915->vbt.sdvo_mappings[child->dvo_port - 1];
+		mapping = &i915->display.vbt.sdvo_mappings[child->dvo_port - 1];
 		if (!mapping->initialized) {
 			mapping->dvo_port = child->dvo_port;
 			mapping->slave_addr = child->slave_addr;
@@ -1265,7 +1265,7 @@ parse_driver_features(struct drm_i915_private *i915)
 		 * interpretation, but real world VBTs seem to.
 		 */
 		if (driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS)
-			i915->vbt.int_lvds_support = 0;
+			i915->display.vbt.int_lvds_support = 0;
 	} else {
 		/*
 		 * FIXME it's not clear which BDB version has the LVDS config
@@ -1278,10 +1278,10 @@ parse_driver_features(struct drm_i915_private *i915)
 		 * in the wild with the bits correctly populated. Version
 		 * 108 (on i85x) does not have the bits correctly populated.
 		 */
-		if (i915->vbt.version >= 134 &&
+		if (i915->display.vbt.version >= 134 &&
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_LVDS &&
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
-			i915->vbt.int_lvds_support = 0;
+			i915->display.vbt.int_lvds_support = 0;
 	}
 }
 
@@ -1295,7 +1295,7 @@ parse_panel_driver_features(struct drm_i915_private *i915,
 	if (!driver)
 		return;
 
-	if (i915->vbt.version < 228) {
+	if (i915->display.vbt.version < 228) {
 		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
 			    driver->drrs_enabled);
 		/*
@@ -1328,7 +1328,7 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 
 	panel->vbt.vrr = true; /* matches Windows behaviour */
 
-	if (i915->vbt.version < 228)
+	if (i915->display.vbt.version < 228)
 		return;
 
 	power = find_section(i915, BDB_LFP_POWER);
@@ -1354,10 +1354,10 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 			panel->vbt.drrs_type = DRRS_TYPE_NONE;
 	}
 
-	if (i915->vbt.version >= 232)
+	if (i915->display.vbt.version >= 232)
 		panel->vbt.edp.hobl = panel_bool(power->hobl, panel_type);
 
-	if (i915->vbt.version >= 233)
+	if (i915->display.vbt.version >= 233)
 		panel->vbt.vrr = panel_bool(power->vrr_feature_enabled,
 					    panel_type);
 }
@@ -1393,7 +1393,7 @@ parse_edp(struct drm_i915_private *i915,
 
 	panel->vbt.edp.pps = *edp_pps;
 
-	if (i915->vbt.version >= 224) {
+	if (i915->display.vbt.version >= 224) {
 		panel->vbt.edp.rate =
 			edp->edp_fast_link_training_rate[panel_type] * 20;
 	} else {
@@ -1472,7 +1472,7 @@ parse_edp(struct drm_i915_private *i915,
 		break;
 	}
 
-	if (i915->vbt.version >= 173) {
+	if (i915->display.vbt.version >= 173) {
 		u8 vswing;
 
 		/* Don't read from VBT if module parameter has valid value*/
@@ -1488,7 +1488,7 @@ parse_edp(struct drm_i915_private *i915,
 	panel->vbt.edp.drrs_msa_timing_delay =
 		panel_bits(edp->sdrrs_msa_timing_delay, panel_type, 2);
 
-	if (i915->vbt.version >= 244)
+	if (i915->display.vbt.version >= 244)
 		panel->vbt.edp.max_link_rate =
 			edp->edp_max_port_link_rate[panel_type] * 20;
 }
@@ -1520,7 +1520,7 @@ parse_psr(struct drm_i915_private *i915,
 	 * New psr options 0=500us, 1=100us, 2=2500us, 3=0us
 	 * Old decimal value is wake up time in multiples of 100 us.
 	 */
-	if (i915->vbt.version >= 205 &&
+	if (i915->display.vbt.version >= 205 &&
 	    (DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915))) {
 		switch (psr_table->tp1_wakeup_time) {
 		case 0:
@@ -1566,7 +1566,7 @@ parse_psr(struct drm_i915_private *i915,
 		panel->vbt.psr.tp2_tp3_wakeup_time_us = psr_table->tp2_tp3_wakeup_time * 100;
 	}
 
-	if (i915->vbt.version >= 226) {
+	if (i915->display.vbt.version >= 226) {
 		u32 wakeup_time = psr->psr2_tp2_tp3_wakeup_time;
 
 		wakeup_time = panel_bits(wakeup_time, panel_type, 2);
@@ -1598,7 +1598,7 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
 {
 	enum port port_bc = DISPLAY_VER(i915) >= 11 ? PORT_B : PORT_C;
 
-	if (!panel->vbt.dsi.config->dual_link || i915->vbt.version < 197) {
+	if (!panel->vbt.dsi.config->dual_link || i915->display.vbt.version < 197) {
 		panel->vbt.dsi.bl_ports = BIT(port);
 		if (panel->vbt.dsi.config->cabc_supported)
 			panel->vbt.dsi.cabc_ports = BIT(port);
@@ -2053,7 +2053,7 @@ parse_compression_parameters(struct drm_i915_private *i915)
 	u16 block_size;
 	int index;
 
-	if (i915->vbt.version < 198)
+	if (i915->display.vbt.version < 198)
 		return;
 
 	params = find_section(i915, BDB_COMPRESSION_PARAMETERS);
@@ -2073,7 +2073,7 @@ parse_compression_parameters(struct drm_i915_private *i915)
 		}
 	}
 
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
 		child = &devdata->child;
 
 		if (!child->compression_enable)
@@ -2207,7 +2207,7 @@ static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
 		return PORT_NONE;
 
 	for_each_port(port) {
-		devdata = i915->vbt.ports[port];
+		devdata = i915->display.vbt.ports[port];
 
 		if (devdata && ddc_pin == devdata->child.ddc_pin)
 			return port;
@@ -2256,7 +2256,7 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
 	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
 	 * port A and port E with the same AUX ch and we must pick port E :(
 	 */
-	child = &i915->vbt.ports[p]->child;
+	child = &i915->display.vbt.ports[p]->child;
 
 	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
 	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
@@ -2273,7 +2273,7 @@ static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
 		return PORT_NONE;
 
 	for_each_port(port) {
-		devdata = i915->vbt.ports[port];
+		devdata = i915->display.vbt.ports[port];
 
 		if (devdata && aux_ch == devdata->child.aux_channel)
 			return port;
@@ -2308,7 +2308,7 @@ static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
 	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
 	 * port A and port E with the same AUX ch and we must pick port E :(
 	 */
-	child = &i915->vbt.ports[p]->child;
+	child = &i915->display.vbt.ports[p]->child;
 
 	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
 	child->aux_channel = 0;
@@ -2482,10 +2482,10 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
 
 static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->vbt.version < 216)
+	if (!devdata || devdata->i915->display.vbt.version < 216)
 		return 0;
 
-	if (devdata->i915->vbt.version >= 230)
+	if (devdata->i915->display.vbt.version >= 230)
 		return parse_bdb_230_dp_max_link_rate(devdata->child.dp_max_link_rate);
 	else
 		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
@@ -2546,7 +2546,7 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
 
 static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->vbt.version < 158)
+	if (!devdata || devdata->i915->display.vbt.version < 158)
 		return -1;
 
 	return devdata->child.hdmi_level_shifter_value;
@@ -2554,7 +2554,7 @@ static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de
 
 static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->vbt.version < 204)
+	if (!devdata || devdata->i915->display.vbt.version < 204)
 		return 0;
 
 	switch (devdata->child.hdmi_max_data_rate) {
@@ -2663,7 +2663,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 		return;
 	}
 
-	if (i915->vbt.ports[port]) {
+	if (i915->display.vbt.ports[port]) {
 		drm_dbg_kms(&i915->drm,
 			    "More than one child device for port %c in VBT, using the first.\n",
 			    port_name(port));
@@ -2678,7 +2678,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	if (intel_bios_encoder_supports_dp(devdata))
 		sanitize_aux_ch(devdata, port);
 
-	i915->vbt.ports[port] = devdata;
+	i915->display.vbt.ports[port] = devdata;
 }
 
 static bool has_ddi_port_info(struct drm_i915_private *i915)
@@ -2694,12 +2694,12 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
 	if (!has_ddi_port_info(i915))
 		return;
 
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
 		parse_ddi_port(devdata);
 
 	for_each_port(port) {
-		if (i915->vbt.ports[port])
-			print_ddi_port(i915->vbt.ports[port], port);
+		if (i915->display.vbt.ports[port])
+			print_ddi_port(i915->display.vbt.ports[port], port);
 	}
 }
 
@@ -2732,33 +2732,33 @@ parse_general_definitions(struct drm_i915_private *i915)
 	bus_pin = defs->crt_ddc_gmbus_pin;
 	drm_dbg_kms(&i915->drm, "crt_ddc_bus_pin: %d\n", bus_pin);
 	if (intel_gmbus_is_valid_pin(i915, bus_pin))
-		i915->vbt.crt_ddc_pin = bus_pin;
+		i915->display.vbt.crt_ddc_pin = bus_pin;
 
-	if (i915->vbt.version < 106) {
+	if (i915->display.vbt.version < 106) {
 		expected_size = 22;
-	} else if (i915->vbt.version < 111) {
+	} else if (i915->display.vbt.version < 111) {
 		expected_size = 27;
-	} else if (i915->vbt.version < 195) {
+	} else if (i915->display.vbt.version < 195) {
 		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
-	} else if (i915->vbt.version == 195) {
+	} else if (i915->display.vbt.version == 195) {
 		expected_size = 37;
-	} else if (i915->vbt.version <= 215) {
+	} else if (i915->display.vbt.version <= 215) {
 		expected_size = 38;
-	} else if (i915->vbt.version <= 237) {
+	} else if (i915->display.vbt.version <= 237) {
 		expected_size = 39;
 	} else {
 		expected_size = sizeof(*child);
 		BUILD_BUG_ON(sizeof(*child) < 39);
 		drm_dbg(&i915->drm,
 			"Expected child device config size for VBT version %u not known; assuming %u\n",
-			i915->vbt.version, expected_size);
+			i915->display.vbt.version, expected_size);
 	}
 
 	/* Flag an error for unexpected size, but continue anyway. */
 	if (defs->child_dev_size != expected_size)
 		drm_err(&i915->drm,
 			"Unexpected child device config size %u (expected %u for VBT version %u)\n",
-			defs->child_dev_size, expected_size, i915->vbt.version);
+			defs->child_dev_size, expected_size, i915->display.vbt.version);
 
 	/* The legacy sized child device config is the minimum we need. */
 	if (defs->child_dev_size < LEGACY_CHILD_DEVICE_CONFIG_SIZE) {
@@ -2794,10 +2794,10 @@ parse_general_definitions(struct drm_i915_private *i915)
 		memcpy(&devdata->child, child,
 		       min_t(size_t, defs->child_dev_size, sizeof(*child)));
 
-		list_add_tail(&devdata->node, &i915->vbt.display_devices);
+		list_add_tail(&devdata->node, &i915->display.vbt.display_devices);
 	}
 
-	if (list_empty(&i915->vbt.display_devices))
+	if (list_empty(&i915->display.vbt.display_devices))
 		drm_dbg_kms(&i915->drm,
 			    "no child dev is parsed from VBT\n");
 }
@@ -2806,25 +2806,25 @@ parse_general_definitions(struct drm_i915_private *i915)
 static void
 init_vbt_defaults(struct drm_i915_private *i915)
 {
-	i915->vbt.crt_ddc_pin = GMBUS_PIN_VGADDC;
+	i915->display.vbt.crt_ddc_pin = GMBUS_PIN_VGADDC;
 
 	/* general features */
-	i915->vbt.int_tv_support = 1;
-	i915->vbt.int_crt_support = 1;
+	i915->display.vbt.int_tv_support = 1;
+	i915->display.vbt.int_crt_support = 1;
 
 	/* driver features */
-	i915->vbt.int_lvds_support = 1;
+	i915->display.vbt.int_lvds_support = 1;
 
 	/* Default to using SSC */
-	i915->vbt.lvds_use_ssc = 1;
+	i915->display.vbt.lvds_use_ssc = 1;
 	/*
 	 * Core/SandyBridge/IvyBridge use alternative (120MHz) reference
 	 * clock for LVDS.
 	 */
-	i915->vbt.lvds_ssc_freq = intel_bios_ssc_frequency(i915,
-							   !HAS_PCH_SPLIT(i915));
+	i915->display.vbt.lvds_ssc_freq = intel_bios_ssc_frequency(i915,
+								   !HAS_PCH_SPLIT(i915));
 	drm_dbg_kms(&i915->drm, "Set default to SSC at %d kHz\n",
-		    i915->vbt.lvds_ssc_freq);
+		    i915->display.vbt.lvds_ssc_freq);
 }
 
 /* Common defaults which may be overridden by VBT. */
@@ -2885,7 +2885,7 @@ init_vbt_missing_defaults(struct drm_i915_private *i915)
 		if (port == PORT_A)
 			child->device_type |= DEVICE_TYPE_INTERNAL_CONNECTOR;
 
-		list_add_tail(&devdata->node, &i915->vbt.display_devices);
+		list_add_tail(&devdata->node, &i915->display.vbt.display_devices);
 
 		drm_dbg_kms(&i915->drm,
 			    "Generating default VBT child device with type 0x04%x on port %c\n",
@@ -2893,7 +2893,7 @@ init_vbt_missing_defaults(struct drm_i915_private *i915)
 	}
 
 	/* Bypass some minimum baseline VBT version checks */
-	i915->vbt.version = 155;
+	i915->display.vbt.version = 155;
 }
 
 static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
@@ -3084,8 +3084,8 @@ void intel_bios_init(struct drm_i915_private *i915)
 	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
 
-	INIT_LIST_HEAD(&i915->vbt.display_devices);
-	INIT_LIST_HEAD(&i915->vbt.bdb_blocks);
+	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
+	INIT_LIST_HEAD(&i915->display.vbt.bdb_blocks);
 
 	if (!HAS_DISPLAY(i915)) {
 		drm_dbg_kms(&i915->drm,
@@ -3113,11 +3113,11 @@ void intel_bios_init(struct drm_i915_private *i915)
 		goto out;
 
 	bdb = get_bdb_header(vbt);
-	i915->vbt.version = bdb->version;
+	i915->display.vbt.version = bdb->version;
 
 	drm_dbg_kms(&i915->drm,
 		    "VBT signature \"%.*s\", BDB version %d\n",
-		    (int)sizeof(vbt->signature), vbt->signature, i915->vbt.version);
+		    (int)sizeof(vbt->signature), vbt->signature, i915->display.vbt.version);
 
 	init_bdb_blocks(i915, bdb);
 
@@ -3174,13 +3174,13 @@ void intel_bios_driver_remove(struct drm_i915_private *i915)
 	struct intel_bios_encoder_data *devdata, *nd;
 	struct bdb_block_entry *entry, *ne;
 
-	list_for_each_entry_safe(devdata, nd, &i915->vbt.display_devices, node) {
+	list_for_each_entry_safe(devdata, nd, &i915->display.vbt.display_devices, node) {
 		list_del(&devdata->node);
 		kfree(devdata->dsc);
 		kfree(devdata);
 	}
 
-	list_for_each_entry_safe(entry, ne, &i915->vbt.bdb_blocks, node) {
+	list_for_each_entry_safe(entry, ne, &i915->display.vbt.bdb_blocks, node) {
 		list_del(&entry->node);
 		kfree(entry);
 	}
@@ -3214,13 +3214,13 @@ bool intel_bios_is_tv_present(struct drm_i915_private *i915)
 	const struct intel_bios_encoder_data *devdata;
 	const struct child_device_config *child;
 
-	if (!i915->vbt.int_tv_support)
+	if (!i915->display.vbt.int_tv_support)
 		return false;
 
-	if (list_empty(&i915->vbt.display_devices))
+	if (list_empty(&i915->display.vbt.display_devices))
 		return true;
 
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
 		child = &devdata->child;
 
 		/*
@@ -3257,10 +3257,10 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 	const struct intel_bios_encoder_data *devdata;
 	const struct child_device_config *child;
 
-	if (list_empty(&i915->vbt.display_devices))
+	if (list_empty(&i915->display.vbt.display_devices))
 		return true;
 
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
 		child = &devdata->child;
 
 		/* If the device type is not LFP, continue.
@@ -3306,7 +3306,7 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 	if (WARN_ON(!has_ddi_port_info(i915)))
 		return true;
 
-	return i915->vbt.ports[port];
+	return i915->display.vbt.ports[port];
 }
 
 /**
@@ -3366,7 +3366,7 @@ bool intel_bios_is_dsi_present(struct drm_i915_private *i915,
 	const struct child_device_config *child;
 	u8 dvo_port;
 
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
 		child = &devdata->child;
 
 		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
@@ -3465,7 +3465,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 	const struct intel_bios_encoder_data *devdata;
 	const struct child_device_config *child;
 
-	list_for_each_entry(devdata, &i915->vbt.display_devices, node) {
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
 		child = &devdata->child;
 
 		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
@@ -3496,7 +3496,7 @@ bool
 intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
 				enum port port)
 {
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
+	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[port];
 
 	if (drm_WARN_ON_ONCE(&i915->drm,
 			     !IS_GEMINILAKE(i915) && !IS_BROXTON(i915)))
@@ -3516,7 +3516,7 @@ bool
 intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
 			     enum port port)
 {
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
+	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[port];
 
 	return HAS_LSPCON(i915) && devdata && devdata->child.lspcon;
 }
@@ -3532,7 +3532,7 @@ bool
 intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
 				   enum port port)
 {
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
+	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[port];
 
 	return devdata && devdata->child.lane_reversal;
 }
@@ -3540,7 +3540,7 @@ intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 				   enum port port)
 {
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
+	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[port];
 	enum aux_ch aux_ch;
 
 	if (!devdata || !devdata->child.aux_channel) {
@@ -3634,7 +3634,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
+	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
 
 	return _intel_bios_max_tmds_clock(devdata);
 }
@@ -3643,14 +3643,14 @@ int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
 int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
+	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
 
 	return _intel_bios_hdmi_level_shift(devdata);
 }
 
 int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->vbt.version < 196 || !devdata->child.iboost)
+	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
 		return 0;
 
 	return translate_iboost(devdata->child.dp_iboost_level);
@@ -3658,7 +3658,7 @@ int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devd
 
 int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->vbt.version < 196 || !devdata->child.iboost)
+	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
 		return 0;
 
 	return translate_iboost(devdata->child.hdmi_iboost_level);
@@ -3667,7 +3667,7 @@ int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *de
 int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
+	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
 
 	return _intel_bios_dp_max_link_rate(devdata);
 }
@@ -3675,7 +3675,7 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
 int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
+	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
 
 	if (!devdata || !devdata->child.ddc_pin)
 		return 0;
@@ -3685,16 +3685,16 @@ int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
 
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
 {
-	return devdata->i915->vbt.version >= 195 && devdata->child.dp_usb_type_c;
+	return devdata->i915->display.vbt.version >= 195 && devdata->child.dp_usb_type_c;
 }
 
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata)
 {
-	return devdata->i915->vbt.version >= 209 && devdata->child.tbt;
+	return devdata->i915->display.vbt.version >= 209 && devdata->child.tbt;
 }
 
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
 {
-	return i915->vbt.ports[port];
+	return i915->display.vbt.ports[port];
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 6a3893c8ff22..760b5788eb43 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -645,7 +645,7 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 
 	BUG_ON(crt->base.type != INTEL_OUTPUT_ANALOG);
 
-	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->vbt.crt_ddc_pin);
+	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
 	edid = intel_crt_get_edid(connector, i2c);
 
 	if (edid) {
@@ -931,7 +931,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	wakeref = intel_display_power_get(dev_priv,
 					  intel_encoder->power_domain);
 
-	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->vbt.crt_ddc_pin);
+	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
 	ret = intel_crt_ddc_get_modes(connector, i2c);
 	if (ret || !IS_G4X(dev_priv))
 		goto out;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aabdcafc04c7..89b411662822 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2771,12 +2771,12 @@ static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 						       PCH_DREF_CONTROL) &
 			DREF_SSC1_ENABLE;
 
-		if (dev_priv->vbt.lvds_use_ssc != bios_lvds_use_ssc) {
+		if (dev_priv->display.vbt.lvds_use_ssc != bios_lvds_use_ssc) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "SSC %s by BIOS, overriding VBT which says %s\n",
 				    str_enabled_disabled(bios_lvds_use_ssc),
-				    str_enabled_disabled(dev_priv->vbt.lvds_use_ssc));
-			dev_priv->vbt.lvds_use_ssc = bios_lvds_use_ssc;
+				    str_enabled_disabled(dev_priv->display.vbt.lvds_use_ssc));
+			dev_priv->display.vbt.lvds_use_ssc = bios_lvds_use_ssc;
 		}
 	}
 }
@@ -4372,7 +4372,7 @@ static int i9xx_pll_refclk(struct drm_device *dev,
 	u32 dpll = pipe_config->dpll_hw_state.dpll;
 
 	if ((dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
-		return dev_priv->vbt.lvds_ssc_freq;
+		return dev_priv->display.vbt.lvds_ssc_freq;
 	else if (HAS_PCH_SPLIT(dev_priv))
 		return 120000;
 	else if (DISPLAY_VER(dev_priv) != 2)
@@ -7923,7 +7923,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
 		return false;
 
-	if (!dev_priv->vbt.int_crt_support)
+	if (!dev_priv->display.vbt.int_crt_support)
 		return false;
 
 	return true;
@@ -8058,7 +8058,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		bool has_edp, has_port;
 
-		if (IS_VALLEYVIEW(dev_priv) && dev_priv->vbt.int_crt_support)
+		if (IS_VALLEYVIEW(dev_priv) && dev_priv->display.vbt.int_crt_support)
 			intel_crt_init(dev_priv);
 
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 63ff660b9479..4eeb6a8caf67 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -6,11 +6,14 @@
 #ifndef __INTEL_DISPLAY_CORE_H__
 #define __INTEL_DISPLAY_CORE_H__
 
+#include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
 #include <linux/wait.h>
 #include <linux/workqueue.h>
 
+#include <drm/drm_connector.h>
+
 #include "intel_cdclk.h"
 #include "intel_display.h"
 #include "intel_dmc.h"
@@ -25,6 +28,7 @@ struct i915_audio_component;
 struct i915_hdcp_comp_master;
 struct intel_atomic_state;
 struct intel_audio_funcs;
+struct intel_bios_encoder_data;
 struct intel_cdclk_funcs;
 struct intel_cdclk_vals;
 struct intel_color_funcs;
@@ -153,6 +157,39 @@ struct intel_hotplug {
 	struct workqueue_struct *dp_wq;
 };
 
+struct intel_vbt_data {
+	/* bdb version */
+	u16 version;
+
+	/* Feature bits */
+	unsigned int int_tv_support:1;
+	unsigned int int_crt_support:1;
+	unsigned int lvds_use_ssc:1;
+	unsigned int int_lvds_support:1;
+	unsigned int display_clock_mode:1;
+	unsigned int fdi_rx_polarity_inverted:1;
+	int lvds_ssc_freq;
+	enum drm_panel_orientation orientation;
+
+	bool override_afc_startup;
+	u8 override_afc_startup_val;
+
+	int crt_ddc_pin;
+
+	struct list_head display_devices;
+	struct list_head bdb_blocks;
+
+	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if port present. */
+	struct sdvo_device_mapping {
+		u8 initialized;
+		u8 dvo_port;
+		u8 slave_addr;
+		u8 dvo_wiring;
+		u8 i2c_pin;
+		u8 ddc_pin;
+	} sdvo_mappings[2];
+};
+
 struct intel_wm {
 	/*
 	 * Raw watermark latency values:
@@ -311,6 +348,7 @@ struct intel_display {
 	struct intel_hotplug hotplug;
 	struct intel_opregion opregion;
 	struct intel_overlay *overlay;
+	struct intel_vbt_data vbt;
 	struct intel_wm wm;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9a230857ca63..d4e037450ac5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5202,7 +5202,7 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 		return;
 
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
-						       i915->vbt.orientation,
+						       i915->display.vbt.orientation,
 						       fixed_mode->hdisplay,
 						       fixed_mode->vdisplay);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 87899702a522..81655fdf2c89 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -991,7 +991,7 @@ static void ilk_update_pll_dividers(struct intel_crtc_state *crtc_state,
 	factor = 21;
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if ((intel_panel_use_ssc(dev_priv) &&
-		     dev_priv->vbt.lvds_ssc_freq == 100000) ||
+		     dev_priv->display.vbt.lvds_ssc_freq == 100000) ||
 		    (HAS_PCH_IBX(dev_priv) &&
 		     intel_is_dual_link_lvds(dev_priv)))
 			factor = 25;
@@ -1105,8 +1105,8 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 		if (intel_panel_use_ssc(dev_priv)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
-				    dev_priv->vbt.lvds_ssc_freq);
-			refclk = dev_priv->vbt.lvds_ssc_freq;
+				    dev_priv->display.vbt.lvds_ssc_freq);
+			refclk = dev_priv->display.vbt.lvds_ssc_freq;
 		}
 
 		if (intel_is_dual_link_lvds(dev_priv)) {
@@ -1231,7 +1231,7 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			refclk = dev_priv->vbt.lvds_ssc_freq;
+			refclk = dev_priv->display.vbt.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1273,7 +1273,7 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			refclk = dev_priv->vbt.lvds_ssc_freq;
+			refclk = dev_priv->display.vbt.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1306,7 +1306,7 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			refclk = dev_priv->vbt.lvds_ssc_freq;
+			refclk = dev_priv->display.vbt.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1339,7 +1339,7 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
-			refclk = dev_priv->vbt.lvds_ssc_freq;
+			refclk = dev_priv->display.vbt.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index d324bc8b5ef0..4c79e15d156d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2769,8 +2769,8 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 	else
 		pll_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
 
-	if (i915->vbt.override_afc_startup)
-		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->vbt.override_afc_startup_val);
+	if (i915->display.vbt.override_afc_startup)
+		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);
 }
 
 static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
@@ -2965,8 +2965,8 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 					 DKL_PLL_DIV0_PROP_COEFF(prop_coeff) |
 					 DKL_PLL_DIV0_FBPREDIV(m1div) |
 					 DKL_PLL_DIV0_FBDIV_INT(m2div_int);
-		if (dev_priv->vbt.override_afc_startup) {
-			u8 val = dev_priv->vbt.override_afc_startup_val;
+		if (dev_priv->display.vbt.override_afc_startup) {
+			u8 val = dev_priv->display.vbt.override_afc_startup_val;
 
 			pll_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(val);
 		}
@@ -3502,7 +3502,7 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 
 	hw_state->mg_pll_div0 = intel_de_read(dev_priv, DKL_PLL_DIV0(tc_port));
 	val = DKL_PLL_DIV0_MASK;
-	if (dev_priv->vbt.override_afc_startup)
+	if (dev_priv->display.vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
 	hw_state->mg_pll_div0 &= val;
 
@@ -3566,7 +3566,7 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 						 TGL_DPLL_CFGCR0(id));
 		hw_state->cfgcr1 = intel_de_read(dev_priv,
 						 TGL_DPLL_CFGCR1(id));
-		if (dev_priv->vbt.override_afc_startup) {
+		if (dev_priv->display.vbt.override_afc_startup) {
 			hw_state->div0 = intel_de_read(dev_priv, TGL_DPLL0_DIV0(id));
 			hw_state->div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
 		}
@@ -3638,9 +3638,9 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 
 	intel_de_write(dev_priv, cfgcr0_reg, hw_state->cfgcr0);
 	intel_de_write(dev_priv, cfgcr1_reg, hw_state->cfgcr1);
-	drm_WARN_ON_ONCE(&dev_priv->drm, dev_priv->vbt.override_afc_startup &&
+	drm_WARN_ON_ONCE(&dev_priv->drm, dev_priv->display.vbt.override_afc_startup &&
 			 !i915_mmio_reg_valid(div0_reg));
-	if (dev_priv->vbt.override_afc_startup &&
+	if (dev_priv->display.vbt.override_afc_startup &&
 	    i915_mmio_reg_valid(div0_reg))
 		intel_de_rmw(dev_priv, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
 			     hw_state->div0);
@@ -3732,7 +3732,7 @@ static void dkl_pll_write(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
 
 	val = DKL_PLL_DIV0_MASK;
-	if (dev_priv->vbt.override_afc_startup)
+	if (dev_priv->display.vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
 	intel_de_rmw(dev_priv, DKL_PLL_DIV0(tc_port), val,
 		     hw_state->mg_pll_div0);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 35e121cd226c..5efdd471ac2b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -106,7 +106,7 @@ intel_dsi_get_panel_orientation(struct intel_connector *connector)
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
-	orientation = dev_priv->vbt.orientation;
+	orientation = dev_priv->display.vbt.orientation;
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 730480ac3300..9aa38e8141b5 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -837,12 +837,12 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 	/* Skip init on machines we know falsely report LVDS */
 	if (dmi_check_system(intel_no_lvds)) {
-		drm_WARN(dev, !dev_priv->vbt.int_lvds_support,
+		drm_WARN(dev, !dev_priv->display.vbt.int_lvds_support,
 			 "Useless DMI match. Internal LVDS support disabled by VBT\n");
 		return;
 	}
 
-	if (!dev_priv->vbt.int_lvds_support) {
+	if (!dev_priv->display.vbt.int_lvds_support) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Internal LVDS support disabled by VBT\n");
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 237a40623dd7..43dbc5a3ec37 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -42,7 +42,7 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
 {
 	if (i915->params.panel_use_ssc >= 0)
 		return i915->params.panel_use_ssc != 0;
-	return i915->vbt.lvds_use_ssc
+	return i915->display.vbt.lvds_use_ssc
 		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index ee72400759a3..33bd4d7df465 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -514,7 +514,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	if (HAS_PCH_IBX(dev_priv)) {
-		has_ck505 = dev_priv->vbt.display_clock_mode;
+		has_ck505 = dev_priv->display.vbt.display_clock_mode;
 		can_ssc = has_ck505;
 	} else {
 		has_ck505 = false;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 19122bc6d2ab..f5b744bef18f 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2016,7 +2016,7 @@ intel_sdvo_get_analog_edid(struct drm_connector *connector)
 
 	return drm_get_edid(connector,
 			    intel_gmbus_get_adapter(dev_priv,
-						    dev_priv->vbt.crt_ddc_pin));
+						    dev_priv->display.vbt.crt_ddc_pin));
 }
 
 static enum drm_connector_status
@@ -2581,9 +2581,9 @@ intel_sdvo_select_ddc_bus(struct drm_i915_private *dev_priv,
 	struct sdvo_device_mapping *mapping;
 
 	if (sdvo->port == PORT_B)
-		mapping = &dev_priv->vbt.sdvo_mappings[0];
+		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
 	else
-		mapping = &dev_priv->vbt.sdvo_mappings[1];
+		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
 
 	if (mapping->initialized)
 		sdvo->ddc_bus = 1 << ((mapping->ddc_pin & 0xf0) >> 4);
@@ -2599,9 +2599,9 @@ intel_sdvo_select_i2c_bus(struct drm_i915_private *dev_priv,
 	u8 pin;
 
 	if (sdvo->port == PORT_B)
-		mapping = &dev_priv->vbt.sdvo_mappings[0];
+		mapping = &dev_priv->display.vbt.sdvo_mappings[0];
 	else
-		mapping = &dev_priv->vbt.sdvo_mappings[1];
+		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
 
 	if (mapping->initialized &&
 	    intel_gmbus_is_valid_pin(dev_priv, mapping->i2c_pin))
@@ -2639,11 +2639,11 @@ intel_sdvo_get_slave_addr(struct drm_i915_private *dev_priv,
 	struct sdvo_device_mapping *my_mapping, *other_mapping;
 
 	if (sdvo->port == PORT_B) {
-		my_mapping = &dev_priv->vbt.sdvo_mappings[0];
-		other_mapping = &dev_priv->vbt.sdvo_mappings[1];
+		my_mapping = &dev_priv->display.vbt.sdvo_mappings[0];
+		other_mapping = &dev_priv->display.vbt.sdvo_mappings[1];
 	} else {
-		my_mapping = &dev_priv->vbt.sdvo_mappings[1];
-		other_mapping = &dev_priv->vbt.sdvo_mappings[0];
+		my_mapping = &dev_priv->display.vbt.sdvo_mappings[1];
+		other_mapping = &dev_priv->display.vbt.sdvo_mappings[0];
 	}
 
 	/* If the BIOS described our SDVO device, take advantage of it. */
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 509b0a419c20..d474f5130aea 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -362,10 +362,10 @@ enum vbt_gmbus_ddi {
  * basically any of the fields to ensure the correct interpretation for the BDB
  * version in question.
  *
- * When we copy the child device configs to dev_priv->vbt.child_dev, we reserve
- * space for the full structure below, and initialize the tail not actually
- * present in VBT to zeros. Accessing those fields is fine, as long as the
- * default zero is taken into account, again according to the BDB version.
+ * When we copy the child device configs to dev_priv->display.vbt.child_dev, we
+ * reserve space for the full structure below, and initialize the tail not
+ * actually present in VBT to zeros. Accessing those fields is fine, as long as
+ * the default zero is taken into account, again according to the BDB version.
  *
  * BDB versions 155 and below are considered legacy, and version 155 seems to be
  * a baseline for some of the VBT documentation. When adding new fields, please
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a6b2a1ae124c..c43466205c36 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -34,7 +34,6 @@
 
 #include <linux/pm_qos.h>
 
-#include <drm/drm_connector.h>
 #include <drm/ttm/ttm_device.h>
 
 #include "display/intel_display.h"
@@ -90,15 +89,6 @@ struct vlv_s0ix_state;
 	 I915_GEM_DOMAIN_INSTRUCTION | \
 	 I915_GEM_DOMAIN_VERTEX)
 
-struct sdvo_device_mapping {
-	u8 initialized;
-	u8 dvo_port;
-	u8 slave_addr;
-	u8 dvo_wiring;
-	u8 i2c_pin;
-	u8 ddc_pin;
-};
-
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
@@ -199,32 +189,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 
 #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 
-struct intel_vbt_data {
-	/* bdb version */
-	u16 version;
-
-	/* Feature bits */
-	unsigned int int_tv_support:1;
-	unsigned int int_crt_support:1;
-	unsigned int lvds_use_ssc:1;
-	unsigned int int_lvds_support:1;
-	unsigned int display_clock_mode:1;
-	unsigned int fdi_rx_polarity_inverted:1;
-	int lvds_ssc_freq;
-	enum drm_panel_orientation orientation;
-
-	bool override_afc_startup;
-	u8 override_afc_startup_val;
-
-	int crt_ddc_pin;
-
-	struct list_head display_devices;
-	struct list_head bdb_blocks;
-
-	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if port present. */
-	struct sdvo_device_mapping sdvo_mappings[2];
-};
-
 struct i915_frontbuffer_tracking {
 	spinlock_t lock;
 
@@ -322,7 +286,6 @@ struct drm_i915_private {
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
 	struct intel_fbc *fbc[I915_MAX_FBCS];
-	struct intel_vbt_data vbt;
 
 	bool preserve_bios_swizzle;
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 49208e6508d9..c39497fa5035 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7435,7 +7435,7 @@ static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
 		val = intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN2(pipe));
 		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
-		if (dev_priv->vbt.fdi_rx_polarity_inverted)
+		if (dev_priv->display.vbt.fdi_rx_polarity_inverted)
 			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
-- 
2.34.1

