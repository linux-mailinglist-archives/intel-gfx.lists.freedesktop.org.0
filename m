Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E2C9AE4D6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 716DA10E925;
	Thu, 24 Oct 2024 12:34:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lFtGhy7M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3CA10E91F;
 Thu, 24 Oct 2024 12:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773283; x=1761309283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9MZZFowaO770CPb6uEJDp2hFvZDBQxuxOwi63S++VVk=;
 b=lFtGhy7MdH2LlaOIzv9jMXbPUbbTGuu+RgQDiDV94I/zUGMYt9zhHAzo
 sB/OgNiQbb2iqYgSwhWe02DxHV4PABI7my4yOboui8ffDYa9StoDmVp/Y
 T/u9xh85e12FDwZguzhaagxU0nNrQcsLiVwPIbX/m8mjo5qbXwEUg6CNh
 fD8ew7tadv7OyeBCNeGDeJxpy0d1SQINtIFXW6e9cikMvCvC/nSztPntd
 KK1SV0RE22+GoiN3lj/bNqr/W3F/c+0U0ViFPTW5dYzcl47TmLqneo5tc
 DxG/Lg++xWmwfIhIS/LjJlXSM59h3nwwwWKxhtBKkl1I+Bsf5QOwa2TCn Q==;
X-CSE-ConnectionGUID: XB7gADHBSCSl2h3y/8D/MQ==
X-CSE-MsgGUID: 8u3nB9XNR0Sys6X3wwNOpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29327878"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29327878"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:43 -0700
X-CSE-ConnectionGUID: 1qqcRJE3SJ2i9b6XR1U+eQ==
X-CSE-MsgGUID: lGfCcns2RXeNuCYJDRrqIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80494865"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 11/16] drm/i915/bios: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Date: Thu, 24 Oct 2024 15:33:37 +0300
Message-Id: <d9c654caa28e917871119dac7669a42168a8f7a8.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
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

Switch to using the new display->platform.<platform> members for
platform identification in display code.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 40 +++++++++--------------
 1 file changed, 15 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9967b65e3cf6..ef3fc831ac88 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1169,7 +1169,6 @@ static int intel_bios_ssc_frequency(struct intel_display *display,
 static void
 parse_general_features(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct bdb_general_features *general;
 
 	general = bdb_find_section(display, BDB_GENERAL_FEATURES);
@@ -1179,7 +1178,7 @@ parse_general_features(struct intel_display *display)
 	display->vbt.int_tv_support = general->int_tv_support;
 	/* int_crt_support can't be trusted on earlier platforms */
 	if (display->vbt.version >= 155 &&
-	    (HAS_DDI(display) || IS_VALLEYVIEW(i915)))
+	    (HAS_DDI(display) || display->platform.valleyview))
 		display->vbt.int_crt_support = general->int_crt_support;
 	display->vbt.lvds_use_ssc = general->enable_ssc;
 	display->vbt.lvds_ssc_freq =
@@ -1542,7 +1541,6 @@ static void
 parse_psr(struct intel_display *display,
 	  struct intel_panel *panel)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct bdb_psr *psr;
 	const struct psr_table *psr_table;
 	int panel_type = panel->vbt.panel_type;
@@ -1567,7 +1565,7 @@ parse_psr(struct intel_display *display,
 	 * Old decimal value is wake up time in multiples of 100 us.
 	 */
 	if (display->vbt.version >= 205 &&
-	    (DISPLAY_VER(display) >= 9 && !IS_BROXTON(i915))) {
+	    (DISPLAY_VER(display) >= 9 && !display->platform.broxton)) {
 		switch (psr_table->tp1_wakeup_time) {
 		case 0:
 			panel->vbt.psr.tp1_wakeup_time_us = 500;
@@ -2029,11 +2027,9 @@ static void icl_fixup_mipi_sequences(struct intel_display *display,
 static void fixup_mipi_sequences(struct intel_display *display,
 				 struct intel_panel *panel)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 11)
 		icl_fixup_mipi_sequences(display, panel);
-	else if (IS_VALLEYVIEW(i915))
+	else if (display->platform.valleyview)
 		vlv_fixup_mipi_sequences(display, panel);
 }
 
@@ -2243,15 +2239,15 @@ static u8 map_ddc_pin(struct intel_display *display, u8 vbt_pin)
 	const u8 *ddc_pin_map;
 	int i, n_entries;
 
-	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
+	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || display->platform.alderlake_p) {
 		ddc_pin_map = adlp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
-	} else if (IS_ALDERLAKE_S(i915)) {
+	} else if (display->platform.alderlake_s) {
 		ddc_pin_map = adls_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
 		return vbt_pin;
-	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
+	} else if (display->platform.rocketlake && INTEL_PCH_TYPE(i915) == PCH_TGP) {
 		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
 	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(display) == 9) {
@@ -2334,7 +2330,6 @@ static enum port __dvo_port_to_port(int n_ports, int n_dvo,
 static enum port dvo_port_to_port(struct intel_display *display,
 				  u8 dvo_port)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	/*
 	 * Each DDI port can have more than one value on the "DVO Port" field,
 	 * so look for all the possible values for each port.
@@ -2391,12 +2386,12 @@ static enum port dvo_port_to_port(struct intel_display *display,
 					  ARRAY_SIZE(xelpd_port_mapping[0]),
 					  xelpd_port_mapping,
 					  dvo_port);
-	else if (IS_ALDERLAKE_S(i915))
+	else if (display->platform.alderlake_s)
 		return __dvo_port_to_port(ARRAY_SIZE(adls_port_mapping),
 					  ARRAY_SIZE(adls_port_mapping[0]),
 					  adls_port_mapping,
 					  dvo_port);
-	else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
+	else if (display->platform.dg1 || display->platform.rocketlake)
 		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
 					  ARRAY_SIZE(rkl_port_mapping[0]),
 					  rkl_port_mapping,
@@ -2519,7 +2514,6 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 				      enum port port)
 {
 	struct intel_display *display = devdata->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (!intel_bios_encoder_supports_dvi(devdata))
 		return;
@@ -2529,7 +2523,7 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 	 * with a HSW VBT where the level shifter value goes
 	 * up to 11, whereas the BDW max is 9.
 	 */
-	if (IS_BROADWELL(i915) && devdata->child.hdmi_level_shifter_value > 9) {
+	if (display->platform.broadwell && devdata->child.hdmi_level_shifter_value > 9) {
 		drm_dbg_kms(display->drm,
 			    "Bogus port %c VBT HDMI level shift %d, adjusting to %d\n",
 			    port_name(port), devdata->child.hdmi_level_shifter_value, 9);
@@ -2618,14 +2612,13 @@ int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata
 
 static bool is_port_valid(struct intel_display *display, enum port port)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	/*
 	 * On some ICL SKUs port F is not present, but broken VBTs mark
 	 * the port as present. Only try to initialize port F for the
 	 * SKUs that may actually have it.
 	 */
-	if (port == PORT_F && IS_ICELAKE(i915))
-		return IS_ICL_WITH_PORT_F(i915);
+	if (port == PORT_F && display->platform.icelake)
+		return display->platform.icelake_port_f;
 
 	return true;
 }
@@ -2723,9 +2716,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 
 static bool has_ddi_port_info(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	return DISPLAY_VER(display) >= 5 || IS_G4X(i915);
+	return DISPLAY_VER(display) >= 5 || display->platform.g4x;
 }
 
 static void parse_ddi_ports(struct intel_display *display)
@@ -2907,7 +2898,7 @@ init_vbt_missing_defaults(struct intel_display *display)
 	unsigned int ports = DISPLAY_RUNTIME_INFO(display)->port_mask;
 	enum port port;
 
-	if (!HAS_DDI(display) && !IS_CHERRYVIEW(i915))
+	if (!HAS_DDI(display) && !display->platform.cherryview)
 		return;
 
 	for_each_port_masked(port, ports) {
@@ -3603,17 +3594,16 @@ static const u8 direct_aux_ch_map[] = {
 
 static enum aux_ch map_aux_ch(struct intel_display *display, u8 aux_channel)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const u8 *aux_ch_map;
 	int i, n_entries;
 
 	if (DISPLAY_VER(display) >= 13) {
 		aux_ch_map = adlp_aux_ch_map;
 		n_entries = ARRAY_SIZE(adlp_aux_ch_map);
-	} else if (IS_ALDERLAKE_S(i915)) {
+	} else if (display->platform.alderlake_s) {
 		aux_ch_map = adls_aux_ch_map;
 		n_entries = ARRAY_SIZE(adls_aux_ch_map);
-	} else if (IS_DG1(i915) || IS_ROCKETLAKE(i915)) {
+	} else if (display->platform.dg1 || display->platform.rocketlake) {
 		aux_ch_map = rkl_aux_ch_map;
 		n_entries = ARRAY_SIZE(rkl_aux_ch_map);
 	} else {
-- 
2.39.5

