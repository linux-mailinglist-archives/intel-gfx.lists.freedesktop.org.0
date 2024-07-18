Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D539349B1
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990C210E5DD;
	Thu, 18 Jul 2024 08:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GItO/O/m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB2C210E5DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290642; x=1752826642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OFX1kabjRFTs4wBtEp4xcgryxd4re9Soai+5/V5ciP0=;
 b=GItO/O/miECTen1SoR+8enReiHgnc4MyUfhfATTAEW8GXUNLkWNQxNKo
 bH/0noNtxMhyxXe5N+t8WVXY10UbE8RRHsAgKa+6zrl0Rs+1pG+e06nnP
 X1EhYDELlQfEAS75KlVZfa0wvILQkfr+USua+RlJx4MzLt8Q3LoPgOll8
 4hwaiJ+T3oXkUWUmrx1Wxj+FaUXBSa/fGHCIdlQK9stplck/zs3QsfKIP
 e14Gd8PP2cPDgqE46k1CyKoHoB6noeKr/JeLhA67u7dsEVv2O7nT6wi18
 5E5n2agwxXA4fchb44+NjbSBT3QetTC3uOK5oY9dRFmUsZ/XsEbds1Jwf A==;
X-CSE-ConnectionGUID: qYEkPt/PQgmxiY3suwRytA==
X-CSE-MsgGUID: nz/2XsO9S1uAD2iFkmCqmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706079"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706079"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:21 -0700
X-CSE-ConnectionGUID: fPWFfjuPSRuCwRW/S/nj8A==
X-CSE-MsgGUID: FJ5LA0QcSnutfWFfyOafEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400677"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 10/12] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Date: Thu, 18 Jul 2024 13:48:01 +0530
Message-ID: <20240718081803.3338564-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Implement required changes for mode validation and compute config,
to support Ultrajoiner.
This also includes required DSC changes and checks.

v2:
-Use enum for Ultrajoiner pipes.
-Drop changes for HDMI.
-Separate out DSC changes into another patch.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 70 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |  7 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 15 ++--
 4 files changed, 70 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 14c78b18ffa1..a36881b047e3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -616,6 +616,7 @@ struct intel_hdcp {
 enum intel_joiner_pipe_count {
 	INTEL_PIPE_JOINER_NONE = 0,
 	INTEL_PIPE_JOINER_BIG = 2,
+	INTEL_PIPE_JOINER_ULTRA = 4,
 	INTEL_PIPE_JOINER_INVALID,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ff4c123de0ed..c0a1f2603274 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -755,24 +755,33 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       enum intel_joiner_pipe_count joined_pipes)
 {
 	u32 max_bpp_small_joiner_ram;
+	u32 max_bpp_joiner;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
+	max_bpp_joiner = max_bpp_small_joiner_ram;
 
-	if (joined_pipes == INTEL_PIPE_JOINER_BIG) {
-		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
+	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
+	if (joined_pipes == INTEL_PIPE_JOINER_BIG ||
+	    joined_pipes == INTEL_PIPE_JOINER_ULTRA) {
+		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
 		int ppc = 2;
-		u32 max_bpp_bigjoiner =
-			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
+		max_bpp_joiner =
+			i915->display.cdclk.max_cdclk_freq * ppc * joiner_interface_bits /
 			intel_dp_mode_to_fec_clock(mode_clock);
 
 		max_bpp_small_joiner_ram *= 2;
 
-		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
+		return min(max_bpp_small_joiner_ram, max_bpp_joiner);
+	}
+	if (joined_pipes == INTEL_PIPE_JOINER_ULTRA) {
+		/* both get multiplied by 2, because ram bits/ppc now doubled */
+		max_bpp_small_joiner_ram *= 2;
+		max_bpp_joiner *= 2;
 	}
 
-	return max_bpp_small_joiner_ram;
+	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
 }
 
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
@@ -878,6 +887,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (joined_pipes == INTEL_PIPE_JOINER_BIG && test_slice_count < 4)
 			continue;
 
+		/* ultrajoiner needs 2 bigjoiners to be enabled */
+		if (joined_pipes == INTEL_PIPE_JOINER_ULTRA && test_slice_count < 8)
+			continue;
+
 		if (min_slice_count <= test_slice_count)
 			return test_slice_count;
 	}
@@ -1154,9 +1167,9 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
-bool intel_dp_need_joiner(struct intel_dp *intel_dp,
-			  struct intel_connector *connector,
-			  int hdisplay, int clock)
+bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
+			     struct intel_connector *connector,
+			     int hdisplay, int clock)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
@@ -1187,6 +1200,25 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
+static
+bool intel_can_ultrajoiner(const struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return IS_DGFX(i915) && DISPLAY_VER(i915) >= 14;
+}
+
+bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
+{
+	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (!intel_can_ultrajoiner(encoder))
+		return false;
+
+	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    struct drm_display_mode *mode)
@@ -1223,11 +1255,15 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 mode->hdisplay, target_clock)) {
+	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
+		joined_pipes = INTEL_PIPE_JOINER_ULTRA;
+		max_dotclk *= INTEL_PIPE_JOINER_ULTRA;
+	} else if (intel_dp_need_bigjoiner(intel_dp, connector,
+					   mode->hdisplay, target_clock)) {
 		joined_pipes = INTEL_PIPE_JOINER_BIG;
 		max_dotclk *= INTEL_PIPE_JOINER_BIG;
 	}
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -2401,8 +2437,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
+	 * Ultrajoiner always needs compression.
 	 */
-	return DISPLAY_VER(i915) < 13 && (joined_pipes == INTEL_PIPE_JOINER_BIG);
+	return (DISPLAY_VER(i915) < 13 && (joined_pipes == INTEL_PIPE_JOINER_BIG)) ||
+		joined_pipes == INTEL_PIPE_JOINER_ULTRA;
 }
 
 static int
@@ -2427,9 +2465,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 adjusted_mode->crtc_hdisplay,
-				 adjusted_mode->crtc_clock))
+	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
+	else if (intel_dp_need_bigjoiner(intel_dp, connector,
+					 adjusted_mode->crtc_hdisplay,
+					 adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
 	joined_pipes = intel_joiner_num_pipes(pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index acd05dc7b8ad..6c607a218fbc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -153,9 +153,10 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				enum intel_joiner_pipe_count joined_pipes);
-bool intel_dp_need_joiner(struct intel_dp *intel_dp,
-			  struct intel_connector *connector,
-			  int hdisplay, int clock);
+bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
+			     struct intel_connector *connector,
+			     int hdisplay, int clock);
+bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp, int clock);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 31a2acb7fa11..21b23f8eb5e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -579,9 +579,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 adjusted_mode->crtc_hdisplay,
-				 adjusted_mode->crtc_clock))
+	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
+		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
+	else if (intel_dp_need_bigjoiner(intel_dp, connector,
+					 adjusted_mode->crtc_hdisplay,
+					 adjusted_mode->crtc_clock))
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -1439,8 +1441,11 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (intel_dp_need_joiner(intel_dp, intel_connector,
-				 mode->hdisplay, target_clock)) {
+	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
+		joined_pipes = INTEL_PIPE_JOINER_BIG;
+		max_dotclk *= INTEL_PIPE_JOINER_BIG;
+	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
+					   mode->hdisplay, target_clock)) {
 		joined_pipes = INTEL_PIPE_JOINER_BIG;
 		max_dotclk *= INTEL_PIPE_JOINER_BIG;
 	}
-- 
2.45.2

