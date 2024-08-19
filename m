Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107339573D2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:45:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A486A10E29C;
	Mon, 19 Aug 2024 18:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EYeV6gFt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE1910E05F;
 Mon, 19 Aug 2024 18:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093135; x=1755629135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RpJcBR9DGXISzQpOyvtvKS1aqHuZh5TVSTi/8t1OAQQ=;
 b=EYeV6gFt1ISJuWqZDtbSjIvSSoQm5J5Oja4PGEdT3KmKj4vcJg1XT3F9
 QBZPMesX7CqwXHTKQYscAmV6QuGyaPGB5WC80zs8TiKmQJV1P7t0PZxfQ
 4YsRVrr5D+UfC2wsCGnlAdTli3qhgQjIm4t2f27HA16LuPNi0Z7ej/xzc
 BSiJOdTJyu+1uzpFXvNZpzWOvi71kfHpVfV0qEXL0XkOCRB5mlo1/8N77
 +OTPA4bvzqTYvV6a67LMyVB2t/q66ovyhM6mGVYYcMOV7Nta//o5FWGkB
 92PIU0ZGsSM+3+1uL8P6XsgEl71LXj1ufQx4rjorcQJkTHnKDWxd+8czt Q==;
X-CSE-ConnectionGUID: 8/QH1KC3S5GPbzjEiORbiQ==
X-CSE-MsgGUID: UvZZ1yRjSciXOqK6b5wx1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="21902237"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="21902237"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:35 -0700
X-CSE-ConnectionGUID: aqquQoPESnuPBfjooQhJbA==
X-CSE-MsgGUID: PupLVogBT9+EREiVLuf7iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="83670921"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 9/9] drm/i915/bios: use display->is.PLATFORM instead of
 IS_PLATFORM()
Date: Mon, 19 Aug 2024 21:44:36 +0300
Message-Id: <3957cefee1b89d5443297248a806755d2b001b7a.1724092799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724092799.git.jani.nikula@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
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

Switch to using the new display->is.PLATFORM members.

There are still cases like IS_G4X() which is trivial with macros, but
not so with platform members. Ditto for IS_IRONLAKE_M() and IS_IVB_GT1()
etc. although not used in this file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 36 +++++++++--------------
 1 file changed, 14 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d49435af62c7..c701f13e0cf6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1168,7 +1168,6 @@ static int intel_bios_ssc_frequency(struct intel_display *display,
 static void
 parse_general_features(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct bdb_general_features *general;
 
 	general = bdb_find_section(display, BDB_GENERAL_FEATURES);
@@ -1178,7 +1177,7 @@ parse_general_features(struct intel_display *display)
 	display->vbt.int_tv_support = general->int_tv_support;
 	/* int_crt_support can't be trusted on earlier platforms */
 	if (display->vbt.version >= 155 &&
-	    (HAS_DDI(display) || IS_VALLEYVIEW(i915)))
+	    (HAS_DDI(display) || display->is.VALLEYVIEW))
 		display->vbt.int_crt_support = general->int_crt_support;
 	display->vbt.lvds_use_ssc = general->enable_ssc;
 	display->vbt.lvds_ssc_freq =
@@ -1541,7 +1540,6 @@ static void
 parse_psr(struct intel_display *display,
 	  struct intel_panel *panel)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct bdb_psr *psr;
 	const struct psr_table *psr_table;
 	int panel_type = panel->vbt.panel_type;
@@ -1566,7 +1564,7 @@ parse_psr(struct intel_display *display,
 	 * Old decimal value is wake up time in multiples of 100 us.
 	 */
 	if (display->vbt.version >= 205 &&
-	    (DISPLAY_VER(display) >= 9 && !IS_BROXTON(i915))) {
+	    (DISPLAY_VER(display) >= 9 && !display->is.BROXTON)) {
 		switch (psr_table->tp1_wakeup_time) {
 		case 0:
 			panel->vbt.psr.tp1_wakeup_time_us = 500;
@@ -2028,11 +2026,9 @@ static void icl_fixup_mipi_sequences(struct intel_display *display,
 static void fixup_mipi_sequences(struct intel_display *display,
 				 struct intel_panel *panel)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 11)
 		icl_fixup_mipi_sequences(display, panel);
-	else if (IS_VALLEYVIEW(i915))
+	else if (display->is.VALLEYVIEW)
 		vlv_fixup_mipi_sequences(display, panel);
 }
 
@@ -2242,15 +2238,15 @@ static u8 map_ddc_pin(struct intel_display *display, u8 vbt_pin)
 	const u8 *ddc_pin_map;
 	int i, n_entries;
 
-	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
+	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || display->is.ALDERLAKE_P) {
 		ddc_pin_map = adlp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
-	} else if (IS_ALDERLAKE_S(i915)) {
+	} else if (display->is.ALDERLAKE_S) {
 		ddc_pin_map = adls_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
 		return vbt_pin;
-	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
+	} else if (display->is.ROCKETLAKE && INTEL_PCH_TYPE(i915) == PCH_TGP) {
 		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
 	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(display) == 9) {
@@ -2333,7 +2329,6 @@ static enum port __dvo_port_to_port(int n_ports, int n_dvo,
 static enum port dvo_port_to_port(struct intel_display *display,
 				  u8 dvo_port)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	/*
 	 * Each DDI port can have more than one value on the "DVO Port" field,
 	 * so look for all the possible values for each port.
@@ -2390,12 +2385,12 @@ static enum port dvo_port_to_port(struct intel_display *display,
 					  ARRAY_SIZE(xelpd_port_mapping[0]),
 					  xelpd_port_mapping,
 					  dvo_port);
-	else if (IS_ALDERLAKE_S(i915))
+	else if (display->is.ALDERLAKE_S)
 		return __dvo_port_to_port(ARRAY_SIZE(adls_port_mapping),
 					  ARRAY_SIZE(adls_port_mapping[0]),
 					  adls_port_mapping,
 					  dvo_port);
-	else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
+	else if (display->is.DG1 || display->is.ROCKETLAKE)
 		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
 					  ARRAY_SIZE(rkl_port_mapping[0]),
 					  rkl_port_mapping,
@@ -2518,7 +2513,6 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 				      enum port port)
 {
 	struct intel_display *display = devdata->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (!intel_bios_encoder_supports_dvi(devdata))
 		return;
@@ -2528,7 +2522,7 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 	 * with a HSW VBT where the level shifter value goes
 	 * up to 11, whereas the BDW max is 9.
 	 */
-	if (IS_BROADWELL(i915) && devdata->child.hdmi_level_shifter_value > 9) {
+	if (display->is.BROADWELL && devdata->child.hdmi_level_shifter_value > 9) {
 		drm_dbg_kms(display->drm,
 			    "Bogus port %c VBT HDMI level shift %d, adjusting to %d\n",
 			    port_name(port), devdata->child.hdmi_level_shifter_value, 9);
@@ -2617,14 +2611,13 @@ int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata
 
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
+	if (port == PORT_F && display->is.ICELAKE)
+		return display->is.ICELAKE_PORT_F;
 
 	return true;
 }
@@ -2906,7 +2899,7 @@ init_vbt_missing_defaults(struct intel_display *display)
 	unsigned int ports = DISPLAY_RUNTIME_INFO(display)->port_mask;
 	enum port port;
 
-	if (!HAS_DDI(display) && !IS_CHERRYVIEW(i915))
+	if (!HAS_DDI(display) && !display->is.CHERRYVIEW)
 		return;
 
 	for_each_port_masked(port, ports) {
@@ -3671,17 +3664,16 @@ static const u8 direct_aux_ch_map[] = {
 
 static enum aux_ch map_aux_ch(struct intel_display *display, u8 aux_channel)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const u8 *aux_ch_map;
 	int i, n_entries;
 
 	if (DISPLAY_VER(display) >= 13) {
 		aux_ch_map = adlp_aux_ch_map;
 		n_entries = ARRAY_SIZE(adlp_aux_ch_map);
-	} else if (IS_ALDERLAKE_S(i915)) {
+	} else if (display->is.ALDERLAKE_S) {
 		aux_ch_map = adls_aux_ch_map;
 		n_entries = ARRAY_SIZE(adls_aux_ch_map);
-	} else if (IS_DG1(i915) || IS_ROCKETLAKE(i915)) {
+	} else if (display->is.DG1 || display->is.ROCKETLAKE) {
 		aux_ch_map = rkl_aux_ch_map;
 		n_entries = ARRAY_SIZE(rkl_aux_ch_map);
 	} else {
-- 
2.39.2

