Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25896F4D3
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D3F110EA50;
	Fri,  6 Sep 2024 12:56:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iElfsY0z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E42B10EA4F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627409; x=1757163409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JWqGecQkAhnwX8t5z7/T9J3hE7P+OZMmLF7JhazMssY=;
 b=iElfsY0zaevbioMjuB79v0XTxrz6Rwe7H//VawGo1h46RgDNrOJlT5YK
 Dg/Fk8BCRylO0noL2+hJSMQPxKWrQtTTtNYfQXyatkXRKxdHMXoWuVZyW
 Pd2ABQtmuM/ukXlQePeDQKZ29lDWlclqOVJb43mbzVzoYRhObVU6OpdMl
 aTFXdqGMttFM/92l2dGpW7HkHq4p9XsAJH0JYInrpsJa3xtcEn1dE50vX
 Cu6TEncRpYGXy0U4fVcqChDWwNo+aMwGfIhQdWB7hqdeITtlkKy9tVeRz
 hf4Z9pKD39CuoYPK6cHWjHM/M3WWtSEQ8qI6kScUng6vffUntTkKgUxOM w==;
X-CSE-ConnectionGUID: 4dTbhsTkQQq8jxyaCEgUEw==
X-CSE-MsgGUID: 3W8qMzubTjW/YdUU5mxK6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257416"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257416"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:48 -0700
X-CSE-ConnectionGUID: 088MzyqWQKSIEQ/3OFvb5w==
X-CSE-MsgGUID: Yb2wlQ3IQqWvsAlmzQ1+dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691094"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 12/14] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Date: Fri,  6 Sep 2024 18:28:05 +0530
Message-ID: <20240906125807.3960642-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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

v3:
-Fix check in can_ultrajoiner. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 72 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  7 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 +++--
 3 files changed, 71 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 942431a470c3..f8e642a57ec7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -862,24 +862,34 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       enum intel_joiner_pipe_count joined_pipes)
 {
 	u32 max_bpp_small_joiner_ram;
+	u32 max_bpp_joiner;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
+	max_bpp_joiner = max_bpp_small_joiner_ram;
 
-	if (joined_pipes == INTEL_BIG_JOINER_PIPES) {
-		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
+	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
+	if (joined_pipes == INTEL_BIG_JOINER_PIPES ||
+	    joined_pipes == INTEL_ULTRA_JOINER_PIPES) {
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
 	}
+	if (joined_pipes == INTEL_ULTRA_JOINER_PIPES) {
+		/* TODO: Check for ultrajoiner ram constraints */
 
-	return max_bpp_small_joiner_ram;
+		/* both get multiplied by 2, because ram bits/ppc now doubled */
+		max_bpp_small_joiner_ram *= 2;
+		max_bpp_joiner *= 2;
+	}
+
+	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
 }
 
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
@@ -985,6 +995,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (joined_pipes == INTEL_BIG_JOINER_PIPES && test_slice_count < 4)
 			continue;
 
+		/* ultrajoiner needs 2 bigjoiners to be enabled */
+		if (joined_pipes == INTEL_ULTRA_JOINER_PIPES && test_slice_count < 8)
+			continue;
+
 		if (min_slice_count <= test_slice_count)
 			return test_slice_count;
 	}
@@ -1261,9 +1275,9 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
 
@@ -1294,6 +1308,26 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
+static bool intel_display_can_use_ultrajoiner(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return ((DISPLAY_VER(display) == 14 && IS_DGFX(i915)) ||
+		DISPLAY_VER(display) > 14);
+}
+
+bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
+{
+	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
+
+	if (!intel_display_can_use_ultrajoiner(display))
+		return false;
+
+	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    struct drm_display_mode *mode)
@@ -1330,11 +1364,15 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	if (intel_dp_need_joiner(intel_dp, connector,
-				 mode->hdisplay, target_clock)) {
+	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
+		joined_pipes = INTEL_ULTRA_JOINER_PIPES;
+		max_dotclk *= INTEL_ULTRA_JOINER_PIPES;
+	} else if (intel_dp_need_bigjoiner(intel_dp, connector,
+					   mode->hdisplay, target_clock)) {
 		joined_pipes = INTEL_BIG_JOINER_PIPES;
 		max_dotclk *= INTEL_BIG_JOINER_PIPES;
 	}
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -2508,8 +2546,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
 	 * compression.
+	 * Ultrajoiner always needs compression.
 	 */
-	return DISPLAY_VER(i915) < 13 && (joined_pipes == INTEL_BIG_JOINER_PIPES);
+	return (DISPLAY_VER(i915) < 13 && (joined_pipes == INTEL_BIG_JOINER_PIPES)) ||
+		joined_pipes == INTEL_ULTRA_JOINER_PIPES;
 }
 
 static int
@@ -2534,9 +2574,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
index f284058f5148..b413b9f5fdf8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -155,9 +155,10 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
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
index 5513ed3f39e4..1f2a6d275114 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -580,9 +580,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
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
@@ -1477,8 +1479,11 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (intel_dp_need_joiner(intel_dp, intel_connector,
-				 mode->hdisplay, target_clock)) {
+	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
+		joined_pipes = INTEL_BIG_JOINER_PIPES;
+		max_dotclk *= INTEL_BIG_JOINER_PIPES;
+	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
+					   mode->hdisplay, target_clock)) {
 		joined_pipes = INTEL_BIG_JOINER_PIPES;
 		max_dotclk *= INTEL_BIG_JOINER_PIPES;
 	}
-- 
2.45.2

