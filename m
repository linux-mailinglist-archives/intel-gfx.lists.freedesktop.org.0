Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4499DE8DF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 15:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B99CD10E4CD;
	Fri, 29 Nov 2024 14:45:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ONh+7idP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A38E10E4C9;
 Fri, 29 Nov 2024 14:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732891557; x=1764427557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IOgEDKgkNPkxOMvi58xd9JjYwUV0EIDwsTMWw/MgTbo=;
 b=ONh+7idPbuTmoVasbjvaBrIoOJLB/CCycdVOy0V51GrIt5O+Y0x5YMWZ
 Hyjvb+qHL25JIcsVSs2oApfHrPlytykLtoK1/WTAfB+tH/qYRNFwWdgA9
 57xBYBFs1eIUMqnmeW6mU7Q1dX9qE9/rXRhdN7yMgY45nhMgf6dPumQuo
 O3n1PskiRikhw1oVzv32ztJyUZZOPrz2UCcdsalGWea90MYeGG/Ayg2RF
 1ozMpkyonbCZ6vP+sR08MsYt7/VSNR+zty0kQo4u2wFHXWeVVSfy+IE6V
 8wj/JkpPKSYU6Kpc9VlJpk1q1a3BhJbB3h4QnvccOGKF947kyR/LeLcxo w==;
X-CSE-ConnectionGUID: Dww4N9PlS/q6EMRjrM5p0w==
X-CSE-MsgGUID: 4VFtdv23RfOZMtAwAFuseA==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="50650258"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="50650258"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:45:56 -0800
X-CSE-ConnectionGUID: l9ZzbheFSeeeADwSx9xnCw==
X-CSE-MsgGUID: qg5MlYlURY61stqWbSPamw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="93346754"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.241])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:45:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/dp: convert to struct intel_display
Date: Fri, 29 Nov 2024 16:45:31 +0200
Message-Id: <990b3bf8998d91ce62ea972d48620d6ac53d43af.1732891498.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732891498.git.jani.nikula@intel.com>
References: <cover.1732891498.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main device data structure
for display. Switch to it internally in DP code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 684 +++++++++++++-----------
 1 file changed, 362 insertions(+), 322 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a566c7c5672c..c0de161613be 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -94,8 +94,6 @@
 #include "intel_vrr.h"
 #include "intel_crtc_state_dump.h"
 
-#define dp_to_i915(__intel_dp) to_i915(dp_to_dig_port(__intel_dp)->base.base.dev)
-
 /* DP DSC throughput values used for slice count calculations KPixels/s */
 #define DP_DSC_PEAK_PIXEL_RATE			2720000
 #define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
@@ -267,6 +265,7 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 
 static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
@@ -276,7 +275,7 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 	if (intel_dp->num_sink_rates)
 		return;
 
-	drm_err(&dp_to_i915(intel_dp)->drm,
+	drm_err(display->drm,
 		"[CONNECTOR:%d:%s][ENCODER:%d:%s] Invalid DPCD with no link rates, using defaults\n",
 		connector->base.base.id, connector->base.name,
 		encoder->base.base.id, encoder->base.name);
@@ -291,6 +290,7 @@ static void intel_dp_set_default_max_sink_lane_count(struct intel_dp *intel_dp)
 
 static void intel_dp_set_max_sink_lane_count(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
@@ -304,7 +304,7 @@ static void intel_dp_set_max_sink_lane_count(struct intel_dp *intel_dp)
 		return;
 	}
 
-	drm_err(&dp_to_i915(intel_dp)->drm,
+	drm_err(display->drm,
 		"[CONNECTOR:%d:%s][ENCODER:%d:%s] Invalid DPCD max lane count (%d), using default\n",
 		connector->base.base.id, connector->base.name,
 		encoder->base.base.id, encoder->base.name,
@@ -337,7 +337,9 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 {
-	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (drm_WARN_ON(display->drm,
 			index < 0 || index >= intel_dp->num_common_rates))
 		return 162000;
 
@@ -464,16 +466,16 @@ int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 
 bool intel_dp_has_joiner(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	/* eDP MSO is not compatible with joiner */
 	if (intel_dp->mso_link_count)
 		return false;
 
-	return DISPLAY_VER(dev_priv) >= 12 ||
-		(DISPLAY_VER(dev_priv) == 11 &&
+	return DISPLAY_VER(display) >= 12 ||
+		(DISPLAY_VER(display) == 11 &&
 		 encoder->port != PORT_A);
 }
 
@@ -502,12 +504,13 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 
 static int mtl_max_source_rate(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (intel_encoder_is_c10phy(encoder))
 		return 810000;
 
-	if (DISPLAY_VERx100(to_i915(encoder->base.dev)) == 1401)
+	if (DISPLAY_VERx100(display) == 1401)
 		return 1350000;
 
 	return 2000000;
@@ -561,17 +564,16 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	static const int g4x_rates[] = {
 		162000, 270000
 	};
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const int *source_rates;
 	int size, max_rate = 0, vbt_max_rate;
 
 	/* This should only be done once */
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    intel_dp->source_rates || intel_dp->num_source_rates);
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
-		if (IS_BATTLEMAGE(dev_priv)) {
+	if (DISPLAY_VER(display) >= 14) {
+		if (display->platform.battlemage) {
 			source_rates = bmg_rates;
 			size = ARRAY_SIZE(bmg_rates);
 		} else {
@@ -579,26 +581,26 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 			size = ARRAY_SIZE(mtl_rates);
 		}
 		max_rate = mtl_max_source_rate(intel_dp);
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(display) >= 11) {
 		source_rates = icl_rates;
 		size = ARRAY_SIZE(icl_rates);
-		if (IS_DG2(dev_priv))
+		if (display->platform.dg2)
 			max_rate = dg2_max_source_rate(intel_dp);
-		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
-			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
+		else if (display->platform.alderlake_p || display->platform.alderlake_s ||
+			 display->platform.dg1 || display->platform.rocketlake)
 			max_rate = 810000;
-		else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
+		else if (display->platform.jasperlake || display->platform.elkhartlake)
 			max_rate = ehl_max_source_rate(intel_dp);
 		else
 			max_rate = icl_max_source_rate(intel_dp);
-	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	} else if (display->platform.geminilake || display->platform.broxton) {
 		source_rates = bxt_rates;
 		size = ARRAY_SIZE(bxt_rates);
-	} else if (DISPLAY_VER(dev_priv) == 9) {
+	} else if (DISPLAY_VER(display) == 9) {
 		source_rates = skl_rates;
 		size = ARRAY_SIZE(skl_rates);
-	} else if ((IS_HASWELL(dev_priv) && !IS_HASWELL_ULX(dev_priv)) ||
-		   IS_BROADWELL(dev_priv)) {
+	} else if ((display->platform.haswell && !display->platform.haswell_ulx) ||
+		   display->platform.broadwell) {
 		source_rates = hsw_rates;
 		size = ARRAY_SIZE(hsw_rates);
 	} else {
@@ -689,18 +691,18 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 
 static void intel_dp_link_config_init(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config *lc;
 	int num_common_lane_configs;
 	int i;
 	int j;
 
-	if (drm_WARN_ON(&i915->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
+	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
 		return;
 
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
 
-	if (drm_WARN_ON(&i915->drm, intel_dp->num_common_rates * num_common_lane_configs >
+	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
 				    ARRAY_SIZE(intel_dp->link.configs)))
 		return;
 
@@ -724,10 +726,10 @@ static void intel_dp_link_config_init(struct intel_dp *intel_dp)
 
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_dp_link_config *lc;
 
-	if (drm_WARN_ON(&i915->drm, idx < 0 || idx >= intel_dp->link.num_configs))
+	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
 		idx = 0;
 
 	lc = &intel_dp->link.configs[idx];
@@ -756,9 +758,9 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 
 static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
 
 	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
@@ -768,7 +770,7 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 						     intel_dp->common_rates);
 
 	/* Paranoia, there should always be something in common. */
-	if (drm_WARN_ON(&i915->drm, intel_dp->num_common_rates == 0)) {
+	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates == 0)) {
 		intel_dp->common_rates[0] = 162000;
 		intel_dp->num_common_rates = 1;
 	}
@@ -816,11 +818,11 @@ int intel_dp_bw_fec_overhead(bool fec_enabled)
 }
 
 static int
-small_joiner_ram_size_bits(struct drm_i915_private *i915)
+small_joiner_ram_size_bits(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		return 17280 * 8;
-	else if (DISPLAY_VER(i915) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		return 7680 * 8;
 	else
 		return 6144 * 8;
@@ -828,18 +830,19 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
 
 u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp)
 {
+	struct intel_display *display = &i915->display;
 	u32 bits_per_pixel = bpp;
 	int i;
 
 	/* Error out if the max bpp is less than smallest allowed valid bpp */
 	if (bits_per_pixel < valid_dsc_bpp[0]) {
-		drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min %u\n",
+		drm_dbg_kms(display->drm, "Unsupported BPP %u, min %u\n",
 			    bits_per_pixel, valid_dsc_bpp[0]);
 		return 0;
 	}
 
 	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
-	if (DISPLAY_VER(i915) >= 13) {
+	if (DISPLAY_VER(display) >= 13) {
 		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
 
 		/*
@@ -851,7 +854,8 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 		 * DSC enabled.
 		 */
 		if (bits_per_pixel < 8) {
-			drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min 8\n",
+			drm_dbg_kms(display->drm,
+				    "Unsupported BPP %u, min 8\n",
 				    bits_per_pixel);
 			return 0;
 		}
@@ -862,7 +866,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 			if (bits_per_pixel < valid_dsc_bpp[i + 1])
 				break;
 		}
-		drm_dbg_kms(&i915->drm, "Set dsc bpp from %d to VESA %d\n",
+		drm_dbg_kms(display->drm, "Set dsc bpp from %d to VESA %d\n",
 			    bits_per_pixel, valid_dsc_bpp[i]);
 
 		bits_per_pixel = valid_dsc_bpp[i];
@@ -897,11 +901,10 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display,
 				    u32 mode_hdisplay,
 				    int num_joined_pipes)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 max_bpp;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
-	max_bpp = small_joiner_ram_size_bits(i915) / mode_hdisplay;
+	max_bpp = small_joiner_ram_size_bits(display) / mode_hdisplay;
 
 	max_bpp *= num_joined_pipes;
 
@@ -919,11 +922,10 @@ static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
 }
 
 static
-u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
+u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 				       u32 mode_clock, u32 mode_hdisplay,
 				       int num_joined_pipes)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
 	u32 max_bpp = small_joiner_ram_max_bpp(display, mode_hdisplay, num_joined_pipes);
 
 	if (num_joined_pipes > 1)
@@ -943,6 +945,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 pipe_bpp,
 					u32 timeslots)
 {
+	struct intel_display *display = &i915->display;
 	u32 bits_per_pixel, joiner_max_bpp;
 
 	/*
@@ -977,13 +980,13 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
 		bits_per_pixel = min_t(u32, bits_per_pixel, 31);
 
-	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
+	drm_dbg_kms(display->drm, "Max link bpp is %u for %u timeslots "
 				"total bw %u pixel clock %u\n",
 				bits_per_pixel, timeslots,
 				(link_clock * lane_count * 8),
 				intel_dp_mode_to_fec_clock(mode_clock));
 
-	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
+	joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, mode_clock,
 							    mode_hdisplay, num_joined_pipes);
 	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
 
@@ -996,7 +999,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				int num_joined_pipes)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	u8 min_slice_count, i;
 	int max_slice_width;
 
@@ -1011,12 +1014,12 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	 * Due to some DSC engine BW limitations, we need to enable second
 	 * slice and VDSC engine, whenever we approach close enough to max CDCLK
 	 */
-	if (mode_clock >= ((i915->display.cdclk.max_cdclk_freq * 85) / 100))
+	if (mode_clock >= ((display->cdclk.max_cdclk_freq * 85) / 100))
 		min_slice_count = max_t(u8, min_slice_count, 2);
 
 	max_slice_width = drm_dp_dsc_sink_max_slice_width(connector->dp.dsc_dpcd);
 	if (max_slice_width < DP_DSC_MIN_SLICE_WIDTH_VALUE) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Unsupported slice width %d by DP DSC Sink device\n",
 			    max_slice_width);
 		return 0;
@@ -1056,7 +1059,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 			return test_slice_count;
 	}
 
-	drm_dbg_kms(&i915->drm, "Unsupported Slice Count %d\n",
+	drm_dbg_kms(display->drm, "Unsupported Slice Count %d\n",
 		    min_slice_count);
 	return 0;
 }
@@ -1064,7 +1067,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 static bool source_can_output(struct intel_dp *intel_dp,
 			      enum intel_output_format format)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	switch (format) {
 	case INTEL_OUTPUT_FORMAT_RGB:
@@ -1076,11 +1079,11 @@ static bool source_can_output(struct intel_dp *intel_dp,
 		 * Also, ILK doesn't seem capable of DP YCbCr output.
 		 * The displayed image is severly corrupted. SNB+ is fine.
 		 */
-		return !HAS_GMCH(i915) && !IS_IRONLAKE(i915);
+		return !HAS_GMCH(display) && !display->platform.ironlake;
 
 	case INTEL_OUTPUT_FORMAT_YCBCR420:
 		/* Platform < Gen 11 cannot output YCbCr420 format */
-		return DISPLAY_VER(i915) >= 11;
+		return DISPLAY_VER(display) >= 11;
 
 	default:
 		MISSING_CASE(format);
@@ -1140,8 +1143,8 @@ static enum intel_output_format
 intel_dp_output_format(struct intel_connector *connector,
 		       enum intel_output_format sink_format)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	enum intel_output_format force_dsc_output_format =
 		intel_dp->force_dsc_output_format;
 	enum intel_output_format output_format;
@@ -1152,7 +1155,7 @@ intel_dp_output_format(struct intel_connector *connector,
 		     dfp_can_convert(intel_dp, force_dsc_output_format, sink_format)))
 			return force_dsc_output_format;
 
-		drm_dbg_kms(&i915->drm, "Cannot force DSC output format\n");
+		drm_dbg_kms(display->drm, "Cannot force DSC output format\n");
 	}
 
 	if (sink_format == INTEL_OUTPUT_FORMAT_RGB ||
@@ -1166,7 +1169,7 @@ intel_dp_output_format(struct intel_connector *connector,
 	else
 		output_format = INTEL_OUTPUT_FORMAT_YCBCR420;
 
-	drm_WARN_ON(&i915->drm, !source_can_output(intel_dp, output_format));
+	drm_WARN_ON(display->drm, !source_can_output(intel_dp, output_format));
 
 	return output_format;
 }
@@ -1217,7 +1220,7 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
 }
 
-static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
+static bool intel_dp_hdisplay_bad(struct intel_display *display,
 				  int hdisplay)
 {
 	/*
@@ -1233,7 +1236,7 @@ static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
 	 *
 	 * TODO: confirm the behaviour on HSW+
 	 */
-	return hdisplay == 4096 && !HAS_DDI(dev_priv);
+	return hdisplay == 4096 && !HAS_DDI(display);
 }
 
 static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
@@ -1334,7 +1337,7 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   int hdisplay, int clock,
 			   int num_joined_pipes)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int hdisplay_limit;
 
 	if (!intel_dp_has_joiner(intel_dp))
@@ -1342,9 +1345,9 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 
 	num_joined_pipes /= 2;
 
-	hdisplay_limit = DISPLAY_VER(i915) >= 30 ? 6144 : 5120;
+	hdisplay_limit = DISPLAY_VER(display) >= 30 ? 6144 : 5120;
 
-	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
+	return clock > num_joined_pipes * display->cdclk.max_dotclk_freq ||
 	       hdisplay > num_joined_pipes * hdisplay_limit;
 }
 
@@ -1370,12 +1373,12 @@ int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 
 bool intel_dp_has_dsc(const struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
-	if (!HAS_DSC(i915))
+	if (!HAS_DSC(display))
 		return false;
 
-	if (connector->mst_port && !HAS_DSC_MST(i915))
+	if (connector->mst_port && !HAS_DSC_MST(display))
 		return false;
 
 	if (connector->base.connector_type == DRM_MODE_CONNECTOR_eDP &&
@@ -1392,13 +1395,14 @@ static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    struct drm_display_mode *mode)
 {
+	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
-	int max_dotclk = dev_priv->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
@@ -1431,7 +1435,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
+	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
 		return MODE_H_ILLEGAL;
 
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
@@ -1499,12 +1503,17 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
 {
-	return DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915) || IS_HASWELL(i915);
+	struct intel_display *display = &i915->display;
+
+	return DISPLAY_VER(display) >= 9 ||
+		display->platform.broadwell || display->platform.haswell;
 }
 
 bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
 {
-	return DISPLAY_VER(i915) >= 10;
+	struct intel_display *display = &i915->display;
+
+	return DISPLAY_VER(display) >= 10;
 }
 
 static void seq_buf_print_array(struct seq_buf *s, const int *array, int nelem)
@@ -1569,11 +1578,11 @@ intel_dp_min_link_rate(struct intel_dp *intel_dp)
 
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int i = intel_dp_rate_index(intel_dp->sink_rates,
 				    intel_dp->num_sink_rates, rate);
 
-	if (drm_WARN_ON(&i915->drm, i < 0))
+	if (drm_WARN_ON(display->drm, i < 0))
 		i = 0;
 
 	return i;
@@ -1603,13 +1612,13 @@ bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp)
 static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 					 const struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return true;
 
-	if (DISPLAY_VER(dev_priv) == 11 && encoder->port != PORT_A &&
+	if (DISPLAY_VER(display) == 11 && encoder->port != PORT_A &&
 	    !intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST))
 		return true;
 
@@ -1672,7 +1681,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state,
 			    bool respect_downstream_limits)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	int bpp, bpc;
 
@@ -1698,7 +1707,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 		if (connector->base.display_info.bpc == 0 &&
 		    connector->panel.vbt.edp.bpp &&
 		    connector->panel.vbt.edp.bpp < bpp) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "clamping bpp for eDP panel to BIOS-provided %i\n",
 				    connector->panel.vbt.edp.bpp);
 			bpp = connector->panel.vbt.edp.bpp;
@@ -1779,12 +1788,12 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
+u8 intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 {
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return 12;
-	if (DISPLAY_VER(i915) == 11)
+	if (DISPLAY_VER(display) == 11)
 		return 10;
 
 	return 0;
@@ -1793,12 +1802,12 @@ u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 max_req_bpc)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	u8 dsc_max_bpc;
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 
 	if (!dsc_max_bpc)
 		return dsc_max_bpc;
@@ -1815,9 +1824,9 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 	return 0;
 }
 
-static int intel_dp_source_dsc_version_minor(struct drm_i915_private *i915)
+static int intel_dp_source_dsc_version_minor(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) >= 14 ? 2 : 1;
+	return DISPLAY_VER(display) >= 14 ? 2 : 1;
 }
 
 static int intel_dp_sink_dsc_version_minor(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
@@ -1851,7 +1860,7 @@ static int intel_dp_get_slice_height(int vactive)
 static int intel_dp_dsc_compute_params(const struct intel_connector *connector,
 				       struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	int ret;
 
@@ -1874,7 +1883,7 @@ static int intel_dp_dsc_compute_params(const struct intel_connector *connector,
 		(connector->dp.dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
 		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
 	vdsc_cfg->dsc_version_minor =
-		min(intel_dp_source_dsc_version_minor(i915),
+		min(intel_dp_source_dsc_version_minor(display),
 		    intel_dp_sink_dsc_version_minor(connector->dp.dsc_dpcd));
 	if (vdsc_cfg->convert_rgb)
 		vdsc_cfg->convert_rgb =
@@ -1884,7 +1893,7 @@ static int intel_dp_dsc_compute_params(const struct intel_connector *connector,
 	vdsc_cfg->line_buf_depth = min(INTEL_DP_DSC_MAX_LINE_BUF_DEPTH,
 				       drm_dp_dsc_sink_line_buf_depth(connector->dp.dsc_dpcd));
 	if (!vdsc_cfg->line_buf_depth) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "DSC Sink Line Buffer Depth invalid\n");
 		return -EINVAL;
 	}
@@ -1899,7 +1908,7 @@ static int intel_dp_dsc_compute_params(const struct intel_connector *connector,
 static bool intel_dp_dsc_supports_format(const struct intel_connector *connector,
 					 enum intel_output_format output_format)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	u8 sink_dsc_format;
 
 	switch (output_format) {
@@ -1910,7 +1919,7 @@ static bool intel_dp_dsc_supports_format(const struct intel_connector *connector
 		sink_dsc_format = DP_DSC_YCbCr444;
 		break;
 	case INTEL_OUTPUT_FORMAT_YCBCR420:
-		if (min(intel_dp_source_dsc_version_minor(i915),
+		if (min(intel_dp_source_dsc_version_minor(display),
 			intel_dp_sink_dsc_version_minor(connector->dp.dsc_dpcd)) < 2)
 			return false;
 		sink_dsc_format = DP_DSC_YCbCr420_Native;
@@ -2029,7 +2038,7 @@ static int dsc_src_min_compressed_bpp(void)
 
 static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	/*
 	 * Forcing DSC and using the platform's max compressed bpp is seen to cause
@@ -2044,7 +2053,7 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 	 * Max Compressed bpp for Gen 13+ is 27bpp.
 	 * For earlier platform is 23bpp. (Bspec:49259).
 	 */
-	if (DISPLAY_VER(i915) < 13)
+	if (DISPLAY_VER(display) < 13)
 		return 23;
 	else
 		return 27;
@@ -2105,13 +2114,13 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 			      int pipe_bpp,
 			      int timeslots)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u16 compressed_bppx16;
 	u8 bppx16_step;
 	int ret;
 
-	if (DISPLAY_VER(i915) < 14 || bppx16_incr <= 1)
+	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
 		bppx16_step = 16;
 	else
 		bppx16_step = 16 / bppx16_incr;
@@ -2135,7 +2144,8 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 			pipe_config->dsc.compressed_bpp_x16 = compressed_bppx16;
 			if (intel_dp->force_dsc_fractional_bpp_en &&
 			    fxp_q4_to_frac(compressed_bppx16))
-				drm_dbg_kms(&i915->drm, "Forcing DSC fractional bpp\n");
+				drm_dbg_kms(display->drm,
+					    "Forcing DSC fractional bpp\n");
 
 			return 0;
 		}
@@ -2150,8 +2160,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 				      int pipe_bpp,
 				      int timeslots)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 	int dsc_joiner_max_bpp;
@@ -2168,13 +2178,13 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 								pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
-	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
+	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
 								num_joined_pipes);
 	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
 	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		return xelpd_dsc_compute_link_config(intel_dp, connector, pipe_config, limits,
 						     dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
 	return icl_dsc_compute_link_config(intel_dp, pipe_config, limits,
@@ -2182,22 +2192,22 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
+u8 intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
-	return HAS_DSC(i915) ? 8 : 0;
+	return HAS_DSC(display) ? 8 : 0;
 }
 
 static
-bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
+bool is_dsc_pipe_bpp_sufficient(struct intel_display *display,
 				struct drm_connector_state *conn_state,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
 	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
-	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(display), conn_state->max_requested_bpc);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
@@ -2211,7 +2221,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 				struct drm_connector_state *conn_state,
 				struct link_config_limits *limits)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int forced_bpp;
 
 	if (!intel_dp->force_dsc_bpc)
@@ -2219,12 +2229,14 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, forced_bpp)) {
-		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
+	if (is_dsc_pipe_bpp_sufficient(display, conn_state, limits, forced_bpp)) {
+		drm_dbg_kms(display->drm, "Input DSC BPC forced to %d\n",
+			    intel_dp->force_dsc_bpc);
 		return forced_bpp;
 	}
 
-	drm_dbg_kms(&i915->drm, "Cannot force DSC BPC:%d, due to DSC BPC limits\n",
+	drm_dbg_kms(display->drm,
+		    "Cannot force DSC BPC:%d, due to DSC BPC limits\n",
 		    intel_dp->force_dsc_bpc);
 
 	return 0;
@@ -2236,7 +2248,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct link_config_limits *limits,
 					 int timeslots)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	u8 max_req_bpc = conn_state->max_requested_bpc;
@@ -2257,14 +2269,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
 	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
 	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	/*
@@ -2294,7 +2306,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  struct link_config_limits *limits)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
@@ -2310,8 +2322,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 
 		/* For eDP use max bpp that can be supported with DSC. */
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, pipe_bpp)) {
-			drm_dbg_kms(&i915->drm,
+		if (!is_dsc_pipe_bpp_sufficient(display, conn_state, limits, pipe_bpp)) {
+			drm_dbg_kms(display->drm,
 				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
 		}
@@ -2349,8 +2361,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				int timeslots,
 				bool compute_pipe_bpp)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
@@ -2388,7 +2399,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
 							    conn_state, limits, timeslots);
 		if (ret) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "No Valid pipe bpp for given mode ret = %d\n", ret);
 			return ret;
 		}
@@ -2400,7 +2411,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
 							true);
 		if (!pipe_config->dsc.slice_count) {
-			drm_dbg_kms(&dev_priv->drm, "Unsupported Slice Count %d\n",
+			drm_dbg_kms(display->drm,
+				    "Unsupported Slice Count %d\n",
 				    pipe_config->dsc.slice_count);
 			return -EINVAL;
 		}
@@ -2413,7 +2425,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 						     adjusted_mode->crtc_hdisplay,
 						     num_joined_pipes);
 		if (!dsc_dp_slice_count) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Compressed Slice Count not supported\n");
 			return -EINVAL;
 		}
@@ -2437,7 +2449,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Cannot compute valid DSC parameters for Input Bpp = %d"
 			    "Compressed BPP = " FXP_Q4_FMT "\n",
 			    pipe_config->pipe_bpp,
@@ -2446,7 +2458,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	}
 
 	pipe_config->dsc.compression_enable = true;
-	drm_dbg_kms(&dev_priv->drm, "DP DSC computed with Input Bpp = %d "
+	drm_dbg_kms(display->drm, "DP DSC computed with Input Bpp = %d "
 		    "Compressed Bpp = " FXP_Q4_FMT " Slice Count = %d\n",
 		    pipe_config->pipe_bpp,
 		    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16),
@@ -2473,7 +2485,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					bool dsc,
 					struct link_config_limits *limits)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2501,7 +2513,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name,
@@ -2571,13 +2583,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
 bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
 			       int num_joined_pipes)
 {
+	struct intel_display *display = &i915->display;
+
 	/*
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
 	 * Ultrajoiner always needs compression.
 	 */
-	return (!HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2) ||
+	return (!HAS_UNCOMPRESSED_JOINER(display) && num_joined_pipes == 2) ||
 		num_joined_pipes == 4;
 }
 
@@ -2587,6 +2601,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct drm_connector_state *conn_state,
 			     bool respect_downstream_limits)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_connector *connector =
@@ -2629,7 +2644,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	}
 
 	if (dsc_needed) {
-		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
+		drm_dbg_kms(display->drm,
+			    "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
@@ -2645,7 +2661,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			return ret;
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " link rate required %d available %d\n",
 		    pipe_config->lane_count, pipe_config->port_clock,
 		    pipe_config->pipe_bpp,
@@ -2691,12 +2707,11 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 	}
 }
 
-static bool intel_dp_port_has_audio(struct drm_i915_private *dev_priv,
-				    enum port port)
+static bool intel_dp_port_has_audio(struct intel_display *display, enum port port)
 {
-	if (IS_G4X(dev_priv))
+	if (display->platform.g4x)
 		return false;
-	if (DISPLAY_VER(dev_priv) < 12 && port == PORT_A)
+	if (DISPLAY_VER(display) < 12 && port == PORT_A)
 		return false;
 
 	return true;
@@ -2706,8 +2721,7 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
 					     const struct drm_connector_state *conn_state,
 					     struct drm_dp_vsc_sdp *vsc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (crtc_state->has_panel_replay) {
 		/*
@@ -2784,7 +2798,7 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
 	vsc->bpc = crtc_state->pipe_bpp / 3;
 
 	/* only RGB pixelformat supports 6 bpc */
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    vsc->bpc == 6 && vsc->pixelformat != DP_PIXELFORMAT_RGB);
 
 	/* all YCbCr are always limited range */
@@ -2874,8 +2888,8 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 					    struct intel_crtc_state *crtc_state,
 					    const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	int ret;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct hdmi_drm_infoframe *drm_infoframe = &crtc_state->infoframes.drm.drm;
 
 	if (!conn_state->hdr_output_metadata)
@@ -2884,7 +2898,8 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 	ret = drm_hdmi_infoframe_set_hdr_metadata(drm_infoframe, conn_state);
 
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm, "couldn't set HDR metadata in infoframe\n");
+		drm_dbg_kms(display->drm,
+			    "couldn't set HDR metadata in infoframe\n");
 		return;
 	}
 
@@ -2926,6 +2941,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
 			     int link_bpp_x16)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *downclock_mode =
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
@@ -2944,7 +2960,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 		return;
 	}
 
-	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
+	if (display->platform.ironlake || display->platform.sandybridge ||
+	    display->platform.ivybridge)
 		pipe_config->msa_timing_delay = connector->panel.vbt.edp.drrs_msa_timing_delay;
 
 	pipe_config->has_drrs = true;
@@ -2966,13 +2983,13 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 static bool intel_dp_has_audio(struct intel_encoder *encoder,
 			       const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 
-	if (!intel_dp_port_has_audio(i915, encoder->port))
+	if (!intel_dp_port_has_audio(display, encoder->port))
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
@@ -2987,7 +3004,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct drm_connector_state *conn_state,
 			       bool respect_downstream_limits)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	const struct drm_display_info *info = &connector->base.display_info;
@@ -2998,7 +3015,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 
 	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	} else {
@@ -3082,6 +3099,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
 			struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -3090,7 +3108,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_connector *connector = intel_dp->attached_connector;
 	int ret = 0, link_bpp_x16;
 
-	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
+	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(display) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
@@ -3110,7 +3128,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
 		return -EINVAL;
 
-	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
+	if (intel_dp_hdisplay_bad(display, adjusted_mode->crtc_hdisplay))
 		return -EINVAL;
 
 	/*
@@ -3150,7 +3168,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->splitter.link_count = n;
 		pipe_config->splitter.pixel_overlap = overlap;
 
-		drm_dbg_kms(&dev_priv->drm, "MSO link count %d, pixel overlap %d\n",
+		drm_dbg_kms(display->drm,
+			    "MSO link count %d, pixel overlap %d\n",
 			    n, overlap);
 
 		adjusted_mode->crtc_hdisplay = adjusted_mode->crtc_hdisplay / n + overlap;
@@ -3175,7 +3194,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (pipe_config->splitter.enable)
 		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
 
-	if (!HAS_DDI(dev_priv))
+	if (!HAS_DDI(display))
 		g4x_dp_set_clock(encoder, pipe_config);
 
 	intel_vrr_compute_config(pipe_config, conn_state);
@@ -3214,13 +3233,13 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(conn_state->best_encoder));
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	drm_dbg_kms(&i915->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	intel_backlight_enable(crtc_state, conn_state);
 	intel_pps_backlight_on(intel_dp);
@@ -3230,12 +3249,12 @@ void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(old_conn_state->best_encoder));
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	drm_dbg_kms(&i915->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	intel_pps_backlight_off(intel_dp);
 	intel_backlight_disable(old_conn_state);
@@ -3278,11 +3297,11 @@ static void
 intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
 				    bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	if (write_dsc_decompression_flag(connector->dp.dsc_decompression_aux,
 					 DP_DECOMPRESSION_EN, enable) < 0)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to %s sink decompression state\n",
 			    str_enable_disable(enable));
 }
@@ -3291,7 +3310,7 @@ static void
 intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
 				  bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_dp_aux *aux = connector->port ?
 				 connector->port->passthrough_aux : NULL;
 
@@ -3300,7 +3319,7 @@ intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
 
 	if (write_dsc_decompression_flag(aux,
 					 DP_DSC_PASSTHROUGH_EN, enable) < 0)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to %s sink compression passthrough state\n",
 			    str_enable_disable(enable));
 }
@@ -3309,7 +3328,7 @@ static int intel_dp_dsc_aux_ref_count(struct intel_atomic_state *state,
 				      const struct intel_connector *connector,
 				      bool for_get_ref)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct drm_connector *_connector_iter;
 	struct drm_connector_state *old_conn_state;
 	struct drm_connector_state *new_conn_state;
@@ -3334,7 +3353,7 @@ static int intel_dp_dsc_aux_ref_count(struct intel_atomic_state *state,
 		if (!connector_iter->dp.dsc_decompression_enabled)
 			continue;
 
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    (for_get_ref && !new_conn_state->crtc) ||
 			    (!for_get_ref && !old_conn_state->crtc));
 
@@ -3381,12 +3400,12 @@ void intel_dp_sink_enable_decompression(struct intel_atomic_state *state,
 					struct intel_connector *connector,
 					const struct intel_crtc_state *new_crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
 	if (!new_crtc_state->dsc.compression_enable)
 		return;
 
-	if (drm_WARN_ON(&i915->drm,
+	if (drm_WARN_ON(display->drm,
 			!connector->dp.dsc_decompression_aux ||
 			connector->dp.dsc_decompression_enabled))
 		return;
@@ -3412,12 +3431,12 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
 					 struct intel_connector *connector,
 					 const struct intel_crtc_state *old_crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
 	if (!old_crtc_state->dsc.compression_enable)
 		return;
 
-	if (drm_WARN_ON(&i915->drm,
+	if (drm_WARN_ON(display->drm,
 			!connector->dp.dsc_decompression_aux ||
 			!connector->dp.dsc_decompression_enabled))
 		return;
@@ -3469,10 +3488,11 @@ void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp)
 
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Performing OUI wait (%u ms)\n",
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s] Performing OUI wait (%u ms)\n",
 		    connector->base.base.id, connector->base.name,
 		    connector->panel.vbt.backlight.hdr_dpcd_refresh_timeout);
 
@@ -3483,8 +3503,8 @@ void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
 /* If the device supports it, try to set the power state appropriately */
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	int ret, i;
 
 	/* Should have a valid DPCD by this point */
@@ -3520,7 +3540,8 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 	}
 
 	if (ret != 1)
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Set power to %s failed\n",
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] Set power to %s failed\n",
 			    encoder->base.base.id, encoder->base.name,
 			    mode == DP_SET_POWER_D0 ? "D0" : "D3");
 }
@@ -3563,7 +3584,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
 bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 				    struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	bool fastset = true;
 
@@ -3573,7 +3594,8 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 	 */
 	if (intel_dp_rate_index(intel_dp->source_rates, intel_dp->num_source_rates,
 				crtc_state->port_clock) < 0) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset due to unsupported link rate\n",
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] Forcing full modeset due to unsupported link rate\n",
 			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.connectors_changed = true;
 		fastset = false;
@@ -3587,14 +3609,15 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 	 * Remove once we have readout for DSC.
 	 */
 	if (crtc_state->dsc.compression_enable) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset due to DSC being enabled\n",
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] Forcing full modeset due to DSC being enabled\n",
 			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.mode_changed = true;
 		fastset = false;
 	}
 
 	if (CAN_PANEL_REPLAY(intel_dp)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] Forcing full modeset to compute panel replay state\n",
 			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.mode_changed = true;
@@ -3606,7 +3629,7 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 
 static void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* Clear the cached register set to avoid using stale values */
 
@@ -3615,10 +3638,10 @@ static void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
 	if (drm_dp_dpcd_read(&intel_dp->aux, DP_PCON_DSC_ENCODER,
 			     intel_dp->pcon_dsc_dpcd,
 			     sizeof(intel_dp->pcon_dsc_dpcd)) < 0)
-		drm_err(&i915->drm, "Failed to read DPCD register 0x%x\n",
+		drm_err(display->drm, "Failed to read DPCD register 0x%x\n",
 			DP_PCON_DSC_ENCODER);
 
-	drm_dbg_kms(&i915->drm, "PCON ENCODER DSC DPCD: %*ph\n",
+	drm_dbg_kms(display->drm, "PCON ENCODER DSC DPCD: %*ph\n",
 		    (int)sizeof(intel_dp->pcon_dsc_dpcd), intel_dp->pcon_dsc_dpcd);
 }
 
@@ -3690,19 +3713,19 @@ intel_dp_pcon_is_frl_trained(struct intel_dp *intel_dp,
 
 static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 #define TIMEOUT_FRL_READY_MS 500
 #define TIMEOUT_HDMI_LINK_ACTIVE_MS 1000
-
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int max_frl_bw, max_pcon_frl_bw, max_edid_frl_bw, ret;
 	u8 max_frl_bw_mask = 0, frl_trained_mask;
 	bool is_active;
 
 	max_pcon_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
-	drm_dbg(&i915->drm, "PCON max rate = %d Gbps\n", max_pcon_frl_bw);
+	drm_dbg(display->drm, "PCON max rate = %d Gbps\n", max_pcon_frl_bw);
 
 	max_edid_frl_bw = intel_dp_hdmi_sink_max_frl(intel_dp);
-	drm_dbg(&i915->drm, "Sink max rate from EDID = %d Gbps\n", max_edid_frl_bw);
+	drm_dbg(display->drm, "Sink max rate from EDID = %d Gbps\n",
+		max_edid_frl_bw);
 
 	max_frl_bw = min(max_edid_frl_bw, max_pcon_frl_bw);
 
@@ -3710,7 +3733,7 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 		return -EINVAL;
 
 	max_frl_bw_mask = intel_dp_pcon_set_frl_mask(max_frl_bw);
-	drm_dbg(&i915->drm, "MAX_FRL_BW_MASK = %u\n", max_frl_bw_mask);
+	drm_dbg(display->drm, "MAX_FRL_BW_MASK = %u\n", max_frl_bw_mask);
 
 	if (intel_dp_pcon_is_frl_trained(intel_dp, max_frl_bw_mask, &frl_trained_mask))
 		goto frl_trained;
@@ -3747,10 +3770,11 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 		return -ETIMEDOUT;
 
 frl_trained:
-	drm_dbg(&i915->drm, "FRL_TRAINED_MASK = %u\n", frl_trained_mask);
+	drm_dbg(display->drm, "FRL_TRAINED_MASK = %u\n", frl_trained_mask);
 	intel_dp->frl.trained_rate_gbps = intel_dp_pcon_get_frl_mask(frl_trained_mask);
 	intel_dp->frl.is_trained = true;
-	drm_dbg(&i915->drm, "FRL trained with : %d Gbps\n", intel_dp->frl.trained_rate_gbps);
+	drm_dbg(display->drm, "FRL trained with : %d Gbps\n",
+		intel_dp->frl.trained_rate_gbps);
 
 	return 0;
 }
@@ -3789,7 +3813,7 @@ int intel_dp_pcon_set_tmds_mode(struct intel_dp *intel_dp)
 
 void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	/*
 	 * Always go for FRL training if:
@@ -3804,14 +3828,16 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 	if (intel_dp_pcon_start_frl_training(intel_dp) < 0) {
 		int ret, mode;
 
-		drm_dbg(&dev_priv->drm, "Couldn't set FRL mode, continuing with TMDS mode\n");
+		drm_dbg(display->drm,
+			"Couldn't set FRL mode, continuing with TMDS mode\n");
 		ret = intel_dp_pcon_set_tmds_mode(intel_dp);
 		mode = drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, NULL);
 
 		if (ret < 0 || mode != DP_PCON_HDMI_MODE_TMDS)
-			drm_dbg(&dev_priv->drm, "Issue with PCON, cannot set TMDS mode\n");
+			drm_dbg(display->drm,
+				"Issue with PCON, cannot set TMDS mode\n");
 	} else {
-		drm_dbg(&dev_priv->drm, "FRL training Completed\n");
+		drm_dbg(display->drm, "FRL training Completed\n");
 	}
 }
 
@@ -3861,9 +3887,9 @@ void
 intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	const struct drm_display_info *info;
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 pps_param[6];
 	int slice_height;
 	int slice_width;
@@ -3911,13 +3937,13 @@ intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 
 	ret = drm_dp_pcon_pps_override_param(&intel_dp->aux, pps_param);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Failed to set pcon DSC\n");
+		drm_dbg_kms(display->drm, "Failed to set pcon DSC\n");
 }
 
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	bool ycbcr444_to_420 = false;
 	bool rgb_to_ycbcr = false;
 	u8 tmp;
@@ -3932,7 +3958,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_PROTOCOL_CONVERTER_CONTROL_0, tmp) != 1)
-		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
+		drm_dbg_kms(display->drm,
+			    "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp_has_hdmi_sink(intel_dp)));
 
 	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
@@ -3967,14 +3994,14 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
 			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
 
 	tmp = rgb_to_ycbcr ? DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
 
 	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to %s protocol converter RGB->YCbCr conversion mode\n",
 			    str_enable_disable(tmp));
 }
@@ -4007,7 +4034,7 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	/*
 	 * Clear the cached register set to avoid using stale values
@@ -4026,11 +4053,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector)
 
 	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux, DP_FEC_CAPABILITY,
 			      &connector->dp.fec_capability) < 0) {
-		drm_err(&i915->drm, "Failed to read FEC DPCD register\n");
+		drm_err(display->drm, "Failed to read FEC DPCD register\n");
 		return;
 	}
 
-	drm_dbg_kms(&i915->drm, "FEC CAPABILITY: %x\n",
+	drm_dbg_kms(display->drm, "FEC CAPABILITY: %x\n",
 		    connector->dp.fec_capability);
 }
 
@@ -4045,10 +4072,10 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
 static void
 intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
-	if (!HAS_DSC(i915))
+	if (!HAS_DSC(display))
 		return;
 
 	if (intel_dp_is_edp(intel_dp))
@@ -4062,8 +4089,8 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *conn
 static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 				     struct drm_display_mode *mode)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int n = intel_dp->mso_link_count;
 	int overlap = intel_dp->mso_pixel_overlap;
 
@@ -4078,7 +4105,7 @@ static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 
 	drm_mode_set_name(mode);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] using generated MSO mode: " DRM_MODE_FMT "\n",
 		    connector->base.base.id, connector->base.name,
 		    DRM_MODE_ARG(mode));
@@ -4086,7 +4113,7 @@ static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_connector *connector = intel_dp->attached_connector;
 
@@ -4104,7 +4131,7 @@ void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp)
 		 * up by the BIOS, and thus we can't get the mode at module
 		 * load.
 		 */
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\n",
 			    pipe_bpp, connector->panel.vbt.edp.bpp);
 		connector->panel.vbt.edp.bpp = pipe_bpp;
@@ -4113,7 +4140,7 @@ void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp)
 
 static void intel_edp_mso_init(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_display_info *info = &connector->base.display_info;
 	u8 mso;
@@ -4122,23 +4149,25 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 		return;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_MSO_LINK_CAPABILITIES, &mso) != 1) {
-		drm_err(&i915->drm, "Failed to read MSO cap\n");
+		drm_err(display->drm, "Failed to read MSO cap\n");
 		return;
 	}
 
 	/* Valid configurations are SST or MSO 2x1, 2x2, 4x1 */
 	mso &= DP_EDP_MSO_NUMBER_OF_LINKS_MASK;
 	if (mso % 2 || mso > drm_dp_max_lane_count(intel_dp->dpcd)) {
-		drm_err(&i915->drm, "Invalid MSO link count cap %u\n", mso);
+		drm_err(display->drm, "Invalid MSO link count cap %u\n", mso);
 		mso = 0;
 	}
 
 	if (mso) {
-		drm_dbg_kms(&i915->drm, "Sink MSO %ux%u configuration, pixel overlap %u\n",
+		drm_dbg_kms(display->drm,
+			    "Sink MSO %ux%u configuration, pixel overlap %u\n",
 			    mso, drm_dp_max_lane_count(intel_dp->dpcd) / mso,
 			    info->mso_pixel_overlap);
-		if (!HAS_MSO(i915)) {
-			drm_err(&i915->drm, "No source MSO support, disabling\n");
+		if (!HAS_MSO(display)) {
+			drm_err(display->drm,
+				"No source MSO support, disabling\n");
 			mso = 0;
 		}
 	}
@@ -4189,11 +4218,10 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
 static bool
 intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* this function is meant to be called only once */
-	drm_WARN_ON(&dev_priv->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
+	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
 
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
 		return false;
@@ -4217,7 +4245,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	if (drm_dp_dpcd_read(&intel_dp->aux, DP_EDP_DPCD_REV,
 			     intel_dp->edp_dpcd, sizeof(intel_dp->edp_dpcd)) ==
 			     sizeof(intel_dp->edp_dpcd)) {
-		drm_dbg_kms(&dev_priv->drm, "eDP DPCD: %*ph\n",
+		drm_dbg_kms(display->drm, "eDP DPCD: %*ph\n",
 			    (int)sizeof(intel_dp->edp_dpcd),
 			    intel_dp->edp_dpcd);
 
@@ -4328,9 +4356,9 @@ static enum drm_dp_mst_mode
 intel_dp_mst_mode_choose(struct intel_dp *intel_dp,
 			 enum drm_dp_mst_mode sink_mst_mode)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (!i915->display.params.enable_dp_mst)
+	if (!display->params.enable_dp_mst)
 		return DRM_DP_SST;
 
 	if (!intel_dp_mst_source_support(intel_dp))
@@ -4346,7 +4374,7 @@ intel_dp_mst_mode_choose(struct intel_dp *intel_dp,
 static enum drm_dp_mst_mode
 intel_dp_mst_detect(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	enum drm_dp_mst_mode sink_mst_mode;
 	enum drm_dp_mst_mode mst_detect;
@@ -4355,12 +4383,12 @@ intel_dp_mst_detect(struct intel_dp *intel_dp)
 
 	mst_detect = intel_dp_mst_mode_choose(intel_dp, sink_mst_mode);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s -> enable: %s\n",
 		    encoder->base.base.id, encoder->base.name,
 		    str_yes_no(intel_dp_mst_source_support(intel_dp)),
 		    intel_dp_mst_mode_str(sink_mst_mode),
-		    str_yes_no(i915->display.params.enable_dp_mst),
+		    str_yes_no(display->params.enable_dp_mst),
 		    intel_dp_mst_mode_str(mst_detect));
 
 	return mst_detect;
@@ -4386,12 +4414,13 @@ intel_dp_mst_configure(struct intel_dp *intel_dp)
 static void
 intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (!intel_dp->is_mst)
 		return;
 
-	drm_dbg_kms(&i915->drm, "MST device may have disappeared %d vs %d\n",
+	drm_dbg_kms(display->drm,
+		    "MST device may have disappeared %d vs %d\n",
 		    intel_dp->is_mst, intel_dp->mst_mgr.mst_state);
 	intel_dp->is_mst = false;
 	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr, intel_dp->is_mst);
@@ -4472,7 +4501,7 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 }
 
 static ssize_t
-intel_dp_hdr_metadata_infoframe_sdp_pack(struct drm_i915_private *i915,
+intel_dp_hdr_metadata_infoframe_sdp_pack(struct intel_display *display,
 					 const struct hdmi_drm_infoframe *drm_infoframe,
 					 struct dp_sdp *sdp,
 					 size_t size)
@@ -4489,12 +4518,13 @@ intel_dp_hdr_metadata_infoframe_sdp_pack(struct drm_i915_private *i915,
 
 	len = hdmi_drm_infoframe_pack_only(drm_infoframe, buf, sizeof(buf));
 	if (len < 0) {
-		drm_dbg_kms(&i915->drm, "buffer size is smaller than hdr metadata infoframe\n");
+		drm_dbg_kms(display->drm,
+			    "buffer size is smaller than hdr metadata infoframe\n");
 		return -ENOSPC;
 	}
 
 	if (len != infoframe_size) {
-		drm_dbg_kms(&i915->drm, "wrong static hdr metadata size\n");
+		drm_dbg_kms(display->drm, "wrong static hdr metadata size\n");
 		return -ENOSPC;
 	}
 
@@ -4552,8 +4582,8 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       unsigned int type)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct dp_sdp sdp = {};
 	ssize_t len;
 
@@ -4566,7 +4596,7 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 		len = drm_dp_vsc_sdp_pack(&crtc_state->infoframes.vsc, &sdp);
 		break;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		len = intel_dp_hdr_metadata_infoframe_sdp_pack(dev_priv,
+		len = intel_dp_hdr_metadata_infoframe_sdp_pack(display,
 							       &crtc_state->infoframes.drm.drm,
 							       &sdp, sizeof(sdp));
 		break;
@@ -4579,7 +4609,7 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 		return;
 	}
 
-	if (drm_WARN_ON(&dev_priv->drm, len < 0))
+	if (drm_WARN_ON(display->drm, len < 0))
 		return;
 
 	dig_port->write_infoframe(encoder, crtc_state, type, &sdp, len);
@@ -4590,20 +4620,19 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(dev_priv,
-					    crtc_state->cpu_transcoder);
+	struct intel_display *display = to_intel_display(encoder);
+	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(display, crtc_state->cpu_transcoder);
 	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
 			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
 			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
 
-	if (HAS_AS_SDP(dev_priv))
+	if (HAS_AS_SDP(display))
 		dip_enable |= VIDEO_DIP_ENABLE_AS_ADL;
 
-	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
+	u32 val = intel_de_read(display, reg) & ~dip_enable;
 
 	/* TODO: Sanitize DSC enabling wrt. intel_dsc_dp_pps_write(). */
-	if (!enable && HAS_DSC(dev_priv))
+	if (!enable && HAS_DSC(display))
 		val &= ~VDIP_ENABLE_PPS;
 
 	/*
@@ -4613,8 +4642,8 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 	if (!enable || !crtc_state->has_psr)
 		val &= ~VIDEO_DIP_ENABLE_VSC_HSW;
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 
 	if (!enable)
 		return;
@@ -4735,8 +4764,8 @@ intel_read_dp_as_sdp(struct intel_encoder *encoder,
 		     struct intel_crtc_state *crtc_state,
 		     struct drm_dp_as_sdp *as_sdp)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	unsigned int type = DP_SDP_ADAPTIVE_SYNC;
 	struct dp_sdp sdp = {};
 	int ret;
@@ -4750,7 +4779,7 @@ intel_read_dp_as_sdp(struct intel_encoder *encoder,
 
 	ret = intel_dp_as_sdp_unpack(as_sdp, &sdp, sizeof(sdp));
 	if (ret)
-		drm_dbg_kms(&dev_priv->drm, "Failed to unpack DP AS SDP\n");
+		drm_dbg_kms(display->drm, "Failed to unpack DP AS SDP\n");
 }
 
 static int
@@ -4803,8 +4832,8 @@ static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state,
 				  struct drm_dp_vsc_sdp *vsc)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	unsigned int type = DP_SDP_VSC;
 	struct dp_sdp sdp = {};
 	int ret;
@@ -4818,15 +4847,15 @@ static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
 	ret = intel_dp_vsc_sdp_unpack(vsc, &sdp, sizeof(sdp));
 
 	if (ret)
-		drm_dbg_kms(&dev_priv->drm, "Failed to unpack DP VSC SDP\n");
+		drm_dbg_kms(display->drm, "Failed to unpack DP VSC SDP\n");
 }
 
 static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encoder,
 						     struct intel_crtc_state *crtc_state,
 						     struct hdmi_drm_infoframe *drm_infoframe)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	unsigned int type = HDMI_PACKET_TYPE_GAMUT_METADATA;
 	struct dp_sdp sdp = {};
 	int ret;
@@ -4842,7 +4871,7 @@ static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encod
 							 sizeof(sdp));
 
 	if (ret)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to unpack DP HDR Metadata Infoframe SDP\n");
 }
 
@@ -4872,8 +4901,8 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 static bool intel_dp_link_ok(struct intel_dp *intel_dp,
 			     u8 link_status[DP_LINK_STATUS_SIZE])
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	bool uhbr = intel_dp->link_rate >= 1000000;
 	bool ok;
 
@@ -4887,7 +4916,7 @@ static bool intel_dp_link_ok(struct intel_dp *intel_dp,
 		return true;
 
 	intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] %s link not ok, retraining\n",
 		    encoder->base.base.id, encoder->base.name,
 		    uhbr ? "128b/132b" : "8b/10b");
@@ -4910,14 +4939,14 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 
 static bool intel_dp_mst_link_status(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 link_status[DP_LINK_STATUS_SIZE] = {};
 	const size_t esi_link_status_size = DP_LINK_STATUS_SIZE - 2;
 
 	if (drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS_ESI, link_status,
 			     esi_link_status_size) != esi_link_status_size) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"[ENCODER:%d:%s] Failed to read link status\n",
 			encoder->base.base.id, encoder->base.name);
 		return false;
@@ -4943,27 +4972,27 @@ static bool intel_dp_mst_link_status(struct intel_dp *intel_dp)
 static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	bool link_ok = true;
 	bool reprobe_needed = false;
 
-	drm_WARN_ON_ONCE(&i915->drm, intel_dp->active_mst_links < 0);
+	drm_WARN_ON_ONCE(display->drm, intel_dp->active_mst_links < 0);
 
 	for (;;) {
 		u8 esi[4] = {};
 		u8 ack[4] = {};
 
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "failed to get ESI - device may have failed\n");
 			link_ok = false;
 
 			break;
 		}
 
-		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
+		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
 		if (intel_dp->active_mst_links > 0 && link_ok &&
 		    esi[3] & LINK_STATUS_CHANGED) {
@@ -4975,7 +5004,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
 		if (esi[3] & DP_TUNNELING_IRQ) {
-			if (drm_dp_tunnel_handle_irq(i915->display.dp_tunnel_mgr,
+			if (drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 						     &intel_dp->aux))
 				reprobe_needed = true;
 			ack[3] |= DP_TUNNELING_IRQ;
@@ -4985,7 +5014,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			break;
 
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
-			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
+			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
 
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
@@ -5073,7 +5102,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder;
 	enum pipe pipe;
 
@@ -5086,7 +5115,7 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
 		return true;
 
 	/* MST */
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		encoder = &intel_dp->mst_encoders[pipe]->base;
 		if (conn_state->best_encoder == &encoder->base)
 			return true;
@@ -5114,14 +5143,14 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	int ret = 0;
 
 	*pipe_mask = 0;
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state =
 			connector->base.state;
@@ -5141,7 +5170,8 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 
 		crtc_state = to_intel_crtc_state(crtc->base.state);
 
-		drm_WARN_ON(&i915->drm, !intel_crtc_has_dp_encoder(crtc_state));
+		drm_WARN_ON(display->drm,
+			    !intel_crtc_has_dp_encoder(crtc_state));
 
 		if (!crtc_state->hw.active)
 			continue;
@@ -5171,6 +5201,7 @@ static bool intel_dp_is_connected(struct intel_dp *intel_dp)
 static int intel_dp_retrain_link(struct intel_encoder *encoder,
 				 struct drm_modeset_acquire_ctx *ctx)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u8 pipe_mask;
@@ -5179,7 +5210,7 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	if (!intel_dp_is_connected(intel_dp))
 		return 0;
 
-	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
+	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex,
 			       ctx);
 	if (ret)
 		return ret;
@@ -5197,7 +5228,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	if (!intel_dp_needs_link_retrain(intel_dp))
 		return 0;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link (forced %s)\n",
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] retraining link (forced %s)\n",
 		    encoder->base.base.id, encoder->base.name,
 		    str_yes_no(intel_dp->link.force_retrain));
 
@@ -5208,7 +5240,7 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	intel_dp->link.force_retrain = false;
 
 	if (ret)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
 			    encoder->base.base.id, encoder->base.name,
 			    ERR_PTR(ret));
@@ -5241,7 +5273,7 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 
 static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
 	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
@@ -5260,12 +5292,12 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
 
 	if (val & DP_SINK_SPECIFIC_IRQ)
-		drm_dbg_kms(&i915->drm, "Sink specific irq unhandled\n");
+		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
 }
 
 static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	bool reprobe_needed = false;
 	u8 val;
 
@@ -5277,7 +5309,7 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 		return false;
 
 	if ((val & DP_TUNNELING_IRQ) &&
-	    drm_dp_tunnel_handle_irq(i915->display.dp_tunnel_mgr,
+	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 				     &intel_dp->aux))
 		reprobe_needed = true;
 
@@ -5346,12 +5378,12 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 static enum drm_connector_status
 intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u8 *dpcd = intel_dp->dpcd;
 	u8 type;
 
-	if (drm_WARN_ON(&i915->drm, intel_dp_is_edp(intel_dp)))
+	if (drm_WARN_ON(display->drm, intel_dp_is_edp(intel_dp)))
 		return connector_status_connected;
 
 	lspcon_resume(dig_port);
@@ -5394,7 +5426,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	}
 
 	/* Anything else is out of spec, warn and ignore */
-	drm_dbg_kms(&i915->drm, "Broken DP branch device, ignoring\n");
+	drm_dbg_kms(display->drm, "Broken DP branch device, ignoring\n");
 	return connector_status_disconnected;
 }
 
@@ -5489,7 +5521,7 @@ static void
 intel_dp_update_dfp(struct intel_dp *intel_dp,
 		    const struct drm_edid *drm_edid)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 
 	intel_dp->dfp.max_bpc =
@@ -5513,7 +5545,7 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
 		drm_dp_get_pcon_max_frl_bw(intel_dp->dpcd,
 					   intel_dp->downstream_ports);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] DFP max bpc %d, max dotclock %d, TMDS clock %d-%d, PCON Max FRL BW %dGbps\n",
 		    connector->base.base.id, connector->base.name,
 		    intel_dp->dfp.max_bpc,
@@ -5546,7 +5578,7 @@ intel_dp_can_ycbcr420(struct intel_dp *intel_dp)
 static void
 intel_dp_update_420(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 
 	intel_dp->dfp.ycbcr420_passthrough =
@@ -5564,7 +5596,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 
 	connector->base.ycbcr_420_allowed = intel_dp_can_ycbcr420(intel_dp);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
 		    connector->base.base.id, connector->base.name,
 		    str_yes_no(intel_dp->dfp.rgb_to_ycbcr),
@@ -5575,7 +5607,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 static void
 intel_dp_set_edid(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	const struct drm_edid *drm_edid;
 	bool vrr_capable;
@@ -5588,7 +5620,7 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
 	drm_edid_connector_update(&connector->base, drm_edid);
 
 	vrr_capable = intel_vrr_is_capable(connector);
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
 		    connector->base.base.id, connector->base.name, str_yes_no(vrr_capable));
 	drm_connector_set_vrr_capable_property(&connector->base, vrr_capable);
 
@@ -5625,9 +5657,9 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 static void
 intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	intel_dp->as_sdp_supported = HAS_AS_SDP(i915) &&
+	intel_dp->as_sdp_supported = HAS_AS_SDP(display) &&
 		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
 }
 
@@ -5645,10 +5677,10 @@ intel_dp_detect(struct drm_connector *_connector,
 	enum drm_connector_status status;
 	int ret;
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.base.id, connector->base.name);
-	drm_WARN_ON(&dev_priv->drm,
-		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
+	drm_WARN_ON(display->drm,
+		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
@@ -5774,12 +5806,13 @@ intel_dp_detect(struct drm_connector *_connector,
 static void
 intel_dp_force(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
 	if (!intel_display_driver_check_access(dev_priv))
@@ -5828,7 +5861,7 @@ static int intel_dp_get_modes(struct drm_connector *_connector)
 static int
 intel_dp_connector_register(struct drm_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
@@ -5838,7 +5871,7 @@ intel_dp_connector_register(struct drm_connector *connector)
 	if (ret)
 		return ret;
 
-	drm_dbg_kms(&i915->drm, "registering %s bus for %s\n",
+	drm_dbg_kms(display->drm, "registering %s bus for %s\n",
 		    intel_dp->aux.name, connector->kdev->kobj.name);
 
 	intel_dp->aux.dev = connector->kdev;
@@ -5875,10 +5908,11 @@ intel_dp_connector_unregister(struct drm_connector *connector)
 void intel_dp_connector_sync_state(struct intel_connector *connector,
 				   const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	if (crtc_state && crtc_state->dsc.compression_enable) {
-		drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
+		drm_WARN_ON(display->drm,
+			    !connector->dp.dsc_decompression_aux);
 		connector->dp.dsc_decompression_enabled = true;
 	} else {
 		connector->dp.dsc_decompression_enabled = false;
@@ -5927,12 +5961,12 @@ void intel_dp_encoder_shutdown(struct intel_encoder *encoder)
 static int intel_modeset_tile_group(struct intel_atomic_state *state,
 				    int tile_group_id)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct drm_connector_list_iter conn_iter;
 	struct drm_connector *connector;
 	int ret = 0;
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state;
 		struct intel_crtc_state *crtc_state;
@@ -5968,13 +6002,13 @@ static int intel_modeset_tile_group(struct intel_atomic_state *state,
 
 static int intel_modeset_affected_transcoders(struct intel_atomic_state *state, u8 transcoders)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
 	if (transcoders == 0)
 		return 0;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
@@ -6001,7 +6035,7 @@ static int intel_modeset_affected_transcoders(struct intel_atomic_state *state,
 		transcoders &= ~BIT(crtc_state->cpu_transcoder);
 	}
 
-	drm_WARN_ON(&dev_priv->drm, transcoders != 0);
+	drm_WARN_ON(display->drm, transcoders != 0);
 
 	return 0;
 }
@@ -6035,7 +6069,7 @@ static int intel_modeset_synced_crtcs(struct intel_atomic_state *state,
 static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 					   struct drm_atomic_state *_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(conn->dev);
+	struct intel_display *display = to_intel_display(conn->dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct drm_connector_state *conn_state = drm_atomic_get_new_connector_state(_state, conn);
 	struct intel_connector *intel_conn = to_intel_connector(conn);
@@ -6065,7 +6099,7 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 	 * We don't enable port sync on BDW due to missing w/as and
 	 * due to not having adjusted the modeset sequence appropriately.
 	 */
-	if (DISPLAY_VER(dev_priv) < 9)
+	if (DISPLAY_VER(display) < 9)
 		return 0;
 
 	if (conn->has_tile) {
@@ -6080,6 +6114,7 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 static void intel_dp_oob_hotplug_event(struct drm_connector *connector,
 				       enum drm_connector_status hpd_state)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	bool hpd_high = hpd_state == connector_status_connected;
@@ -6087,10 +6122,12 @@ static void intel_dp_oob_hotplug_event(struct drm_connector *connector,
 	bool need_work = false;
 
 	spin_lock_irq(&i915->irq_lock);
-	if (hpd_high != test_bit(hpd_pin, &i915->display.hotplug.oob_hotplug_last_state)) {
-		i915->display.hotplug.event_bits |= BIT(hpd_pin);
+	if (hpd_high != test_bit(hpd_pin, &display->hotplug.oob_hotplug_last_state)) {
+		display->hotplug.event_bits |= BIT(hpd_pin);
 
-		__assign_bit(hpd_pin, &i915->display.hotplug.oob_hotplug_last_state, hpd_high);
+		__assign_bit(hpd_pin,
+			     &display->hotplug.oob_hotplug_last_state,
+			     hpd_high);
 		need_work = true;
 	}
 	spin_unlock_irq(&i915->irq_lock);
@@ -6122,6 +6159,7 @@ static const struct drm_connector_helper_funcs intel_dp_connector_helper_funcs =
 enum irqreturn
 intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_dp *intel_dp = &dig_port->dp;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
@@ -6136,7 +6174,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 		 * would end up in an endless cycle of
 		 * "vdd off -> long/short hpd -> vdd on -> detect -> vdd off -> ..."
 		 */
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "ignoring %s hpd on eDP [ENCODER:%d:%s]\n",
 			    long_hpd ? "long" : "short",
 			    dig_port->base.base.base.id,
@@ -6144,7 +6182,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 		return IRQ_HANDLED;
 	}
 
-	drm_dbg_kms(&i915->drm, "got hpd irq on [ENCODER:%d:%s] - %s\n",
+	drm_dbg_kms(display->drm, "got hpd irq on [ENCODER:%d:%s] - %s\n",
 		    dig_port->base.base.base.id,
 		    dig_port->base.base.name,
 		    long_hpd ? "long" : "short");
@@ -6177,7 +6215,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 	return IRQ_HANDLED;
 }
 
-static bool _intel_dp_is_port_edp(struct drm_i915_private *dev_priv,
+static bool _intel_dp_is_port_edp(struct intel_display *display,
 				  const struct intel_bios_encoder_data *devdata,
 				  enum port port)
 {
@@ -6185,10 +6223,10 @@ static bool _intel_dp_is_port_edp(struct drm_i915_private *dev_priv,
 	 * eDP not supported on g4x. so bail out early just
 	 * for a bit extra safety in case the VBT is bonkers.
 	 */
-	if (DISPLAY_VER(dev_priv) < 5)
+	if (DISPLAY_VER(display) < 5)
 		return false;
 
-	if (DISPLAY_VER(dev_priv) < 9 && port == PORT_A)
+	if (DISPLAY_VER(display) < 9 && port == PORT_A)
 		return true;
 
 	return devdata && intel_bios_encoder_supports_edp(devdata);
@@ -6200,26 +6238,26 @@ bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
 	const struct intel_bios_encoder_data *devdata =
 		intel_bios_encoder_data_lookup(display, port);
 
-	return _intel_dp_is_port_edp(i915, devdata, port);
+	return _intel_dp_is_port_edp(display, devdata, port);
 }
 
 bool
 intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
 	if (intel_bios_encoder_is_lspcon(encoder->devdata))
 		return false;
 
-	if (DISPLAY_VER(i915) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		return true;
 
 	if (port == PORT_A)
 		return false;
 
-	if (IS_HASWELL(i915) || IS_BROADWELL(i915) ||
-	    DISPLAY_VER(i915) >= 9)
+	if (display->platform.haswell || display->platform.broadwell ||
+	    DISPLAY_VER(display) >= 9)
 		return true;
 
 	return false;
@@ -6228,19 +6266,19 @@ intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 static void
 intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 
 	if (!intel_dp_is_edp(intel_dp))
 		drm_connector_attach_dp_subconnector_property(connector);
 
-	if (!IS_G4X(dev_priv) && port != PORT_A)
+	if (!display->platform.g4x && port != PORT_A)
 		intel_attach_force_audio_property(connector);
 
 	intel_attach_broadcast_rgb_property(connector);
-	if (HAS_GMCH(dev_priv))
+	if (HAS_GMCH(display))
 		drm_connector_attach_max_bpc_property(connector, 6, 10);
-	else if (DISPLAY_VER(dev_priv) >= 5)
+	else if (DISPLAY_VER(display) >= 5)
 		drm_connector_attach_max_bpc_property(connector, 6, 12);
 
 	/* Register HDMI colorspace for case of lspcon */
@@ -6254,22 +6292,22 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 	if (intel_dp_has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
-	if (HAS_VRR(dev_priv))
+	if (HAS_VRR(display))
 		drm_connector_attach_vrr_capable_property(connector);
 }
 
 static void
 intel_edp_add_properties(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
 
 	intel_attach_scaling_mode_property(&connector->base);
 
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
-						       i915->display.vbt.orientation,
+						       display->vbt.orientation,
 						       fixed_mode->hdisplay,
 						       fixed_mode->vdisplay);
 }
@@ -6277,10 +6315,10 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 				      struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum pipe pipe = INVALID_PIPE;
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+	if (display->platform.valleyview || display->platform.cherryview)
 		pipe = vlv_pps_backlight_initial_pipe(intel_dp);
 
 	intel_backlight_setup(connector, pipe);
@@ -6290,7 +6328,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_display_mode *fixed_mode;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool has_dpcd;
@@ -6306,9 +6344,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 * with an already powered-on LVDS power sequencer.
 	 */
 	if (intel_get_lvds_encoder(dev_priv)) {
-		drm_WARN_ON(&dev_priv->drm,
+		drm_WARN_ON(display->drm,
 			    !(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
-		drm_info(&dev_priv->drm,
+		drm_info(display->drm,
 			 "LVDS was detected, not registering eDP\n");
 
 		return false;
@@ -6318,7 +6356,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				    encoder->devdata);
 
 	if (!intel_pps_init(intel_dp)) {
-		drm_info(&dev_priv->drm,
+		drm_info(display->drm,
 			 "[ENCODER:%d:%s] unusable PPS, disabling eDP\n",
 			 encoder->base.base.id, encoder->base.name);
 		/*
@@ -6345,7 +6383,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	if (!has_dpcd) {
 		/* if this fails, presume the device is a ghost */
-		drm_info(&dev_priv->drm,
+		drm_info(display->drm,
 			 "[ENCODER:%d:%s] failed to retrieve link info, disabling eDP\n",
 			 encoder->base.base.id, encoder->base.name);
 		goto out_vdd_off;
@@ -6368,7 +6406,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		 * DPCD read? Would need sort out the VDD handling...
 		 */
 		if (!intel_digital_port_connected(encoder)) {
-			drm_info(&dev_priv->drm,
+			drm_info(display->drm,
 				 "[ENCODER:%d:%s] HPD is down, disabling eDP\n",
 				 encoder->base.base.id, encoder->base.name);
 			goto out_vdd_off;
@@ -6380,23 +6418,23 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		 * back to checking for a VGA branch device. Only do this
 		 * on known affected platforms to minimize false positives.
 		 */
-		if (DISPLAY_VER(dev_priv) == 9 && drm_dp_is_branch(intel_dp->dpcd) &&
+		if (DISPLAY_VER(display) == 9 && drm_dp_is_branch(intel_dp->dpcd) &&
 		    (intel_dp->dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_TYPE_MASK) ==
 		    DP_DWN_STRM_PORT_TYPE_ANALOG) {
-			drm_info(&dev_priv->drm,
+			drm_info(display->drm,
 				 "[ENCODER:%d:%s] VGA converter detected, disabling eDP\n",
 				 encoder->base.base.id, encoder->base.name);
 			goto out_vdd_off;
 		}
 	}
 
-	mutex_lock(&dev_priv->drm.mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 	drm_edid = drm_edid_read_ddc(&connector->base, connector->base.ddc);
 	if (!drm_edid) {
 		/* Fallback to EDID from ACPI OpRegion, if any */
 		drm_edid = intel_opregion_get_edid(connector);
 		if (drm_edid)
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "[CONNECTOR:%d:%s] Using OpRegion EDID\n",
 				    connector->base.base.id, connector->base.name);
 	}
@@ -6427,10 +6465,10 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	if (!intel_panel_preferred_fixed_mode(connector))
 		intel_panel_add_vbt_lfp_fixed_mode(connector);
 
-	mutex_unlock(&dev_priv->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 
 	if (!intel_panel_preferred_fixed_mode(connector)) {
-		drm_info(&dev_priv->drm,
+		drm_info(display->drm,
 			 "[ENCODER:%d:%s] failed to find fixed mode for the panel, disabling eDP\n",
 			 encoder->base.base.id, encoder->base.name);
 		goto out_vdd_off;
@@ -6506,22 +6544,22 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp->reset_link_params = true;
 
 	/* Preserve the current hw state. */
-	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
+	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
 	intel_dp->attached_connector = connector;
 
-	if (_intel_dp_is_port_edp(dev_priv, encoder->devdata, port)) {
+	if (_intel_dp_is_port_edp(display, encoder->devdata, port)) {
 		/*
 		 * Currently we don't support eDP on TypeC ports for DISPLAY_VER < 30,
 		 * although in theory it could work on TypeC legacy ports.
 		 */
 		drm_WARN_ON(dev, intel_encoder_is_tc(encoder) &&
-			    DISPLAY_VER(dev_priv) < 30);
+			    DISPLAY_VER(display) < 30);
 		type = DRM_MODE_CONNECTOR_eDP;
 		encoder->type = INTEL_OUTPUT_EDP;
 
 		/* eDP only on port B and/or C on vlv/chv */
-		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
-				      IS_CHERRYVIEW(dev_priv)) &&
+		if (drm_WARN_ON(dev, (display->platform.valleyview ||
+				      display->platform.cherryview) &&
 				port != PORT_B && port != PORT_C))
 			return false;
 	} else {
@@ -6531,13 +6569,13 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp_set_default_sink_rates(intel_dp);
 	intel_dp_set_default_max_sink_lane_count(intel_dp);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.valleyview || display->platform.cherryview)
 		vlv_pps_pipe_init(intel_dp);
 
 	intel_dp_aux_init(intel_dp);
 	connector->dp.dsc_decompression_aux = &intel_dp->aux;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Adding %s connector on [ENCODER:%d:%s]\n",
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
 		    encoder->base.base.id, encoder->base.name);
@@ -6546,7 +6584,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 				    type, &intel_dp->aux.ddc);
 	drm_connector_helper_add(&connector->base, &intel_dp_connector_helper_funcs);
 
-	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
+	if (!HAS_GMCH(display) && DISPLAY_VER(display) < 12)
 		connector->base.interlace_allowed = true;
 
 	if (type != DRM_MODE_CONNECTOR_eDP)
@@ -6555,7 +6593,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	intel_connector_attach_encoder(connector, encoder);
 
-	if (HAS_DDI(dev_priv))
+	if (HAS_DDI(display))
 		connector->get_hw_state = intel_ddi_connector_get_hw_state;
 	else
 		connector->get_hw_state = intel_connector_get_hw_state;
@@ -6578,7 +6616,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	if (is_hdcp_supported(display, port) && !intel_dp_is_edp(intel_dp)) {
 		int ret = intel_dp_hdcp_init(dig_port, connector);
 		if (ret)
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "HDCP init failed, skipping.\n");
 	}
 
@@ -6598,12 +6636,13 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 void intel_dp_mst_suspend(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_encoder *encoder;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		struct intel_dp *intel_dp;
 
 		if (encoder->type != INTEL_OUTPUT_DDI)
@@ -6621,12 +6660,13 @@ void intel_dp_mst_suspend(struct drm_i915_private *dev_priv)
 
 void intel_dp_mst_resume(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_encoder *encoder;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		struct intel_dp *intel_dp;
 		int ret;
 
-- 
2.39.5

