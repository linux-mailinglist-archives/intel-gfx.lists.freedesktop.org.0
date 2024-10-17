Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0549A1D0E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B27410E7CD;
	Thu, 17 Oct 2024 08:21:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G+JBTRRQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BF5610E7C1;
 Thu, 17 Oct 2024 08:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729153308; x=1760689308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RZzaMbKgRsJO+amcB2iCFpvvh2oJzydS+1fndu9Fd6w=;
 b=G+JBTRRQ1N0s82OEg1uGsNT1Rpr3rUhQ+BLGpsnE1zZFkJkFmDzH/Lbb
 FaVPx/v+AIqvOLG6u2YTx+45XZHFex13a0CQxyOSRBU3UgZiHLmsV96wQ
 XkypkfEEyZaWaesLI0ruFBpIrTD+HrbyNVoecrWxu/BRGSkFRY1e+XAdT
 +yJ65m3cOZqnnlIeVBPMQ6ZcCXvCRGQXsilj3upOwfw9h47tyOcVWbS+S
 pDW6BAPDc1a7YJ6oNOJxO9kto9T8YeNiI28N7WAF+5WUfpDBKBu4bLotl
 lonUDtL2qfyZPVk+IfOvyTU8ityGG460AaDu8+KeBPCYKYhw5IDDg49Lo A==;
X-CSE-ConnectionGUID: kvoSoIoRTIe42LFJ5bf18A==
X-CSE-MsgGUID: hUtN1j0fRE2cHoER3VOY6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28724874"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28724874"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:48 -0700
X-CSE-ConnectionGUID: eGJ8w4XvR16EMTNdNsBQkQ==
X-CSE-MsgGUID: 0jlie8iMS8K4UzlZR9S5jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78086255"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 07/10] drm/i915/dp: Compute pixel replication count for DSC 12
 slices case
Date: Thu, 17 Oct 2024 13:53:45 +0530
Message-ID: <20241017082348.3413727-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
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

Add check if pixel replication is required while computing slice count
and fill the pixel replication count in crtc_state.
For MST currently 12 slices case is skipped, as it needs the extra
pixels for bandwidth computation.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 61 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 20 +++++--
 3 files changed, 77 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6cfc7d1c96ea..ef96b9235636 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -981,13 +981,37 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 	return bits_per_pixel;
 }
 
+static
+bool can_use_pixel_replication(int mode_hdisplay, u8 slice_count,
+			       enum intel_output_format output_format,
+			       bool ultrajoiner)
+{
+	int slice_width;
+
+	if (!(mode_hdisplay % slice_count))
+		return false;
+
+	if (!ultrajoiner)
+		return false;
+
+	slice_width = DIV_ROUND_UP(mode_hdisplay, slice_count);
+
+	/* Odd slice width is not supported by YCbCr420/422 formats */
+	if (slice_width % 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return false;
+
+	return true;
+}
+
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
+				enum intel_output_format output_format,
 				int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 min_slice_count, i;
 	int max_slice_width;
+	bool ultrajoiner = num_joined_pipes == 4 ? true : false;
 
 	if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
 		min_slice_count = DIV_ROUND_UP(mode_clock,
@@ -1031,7 +1055,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
 			continue;
 
-		if (mode_hdisplay % test_slice_count)
+		if (mode_hdisplay % test_slice_count &&
+		    !can_use_pixel_replication(mode_hdisplay,
+					       test_slice_count,
+					       output_format, ultrajoiner))
 			continue;
 
 		if (min_slice_count <= test_slice_count)
@@ -1458,6 +1485,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 				intel_dp_dsc_get_slice_count(connector,
 							     target_clock,
 							     mode->hdisplay,
+							     output_format,
 							     num_joined_pipes);
 		}
 
@@ -2322,6 +2350,33 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static
+int intel_dp_dsc_get_pixel_replication(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *pipe_config)
+{
+	int mode_hdisplay = pipe_config->hw.adjusted_mode.hdisplay;
+	int slice_count = pipe_config->dsc.slice_count;
+	int pixel_replication_count;
+	int slice_width;
+	bool ultrajoiner = false;
+
+	if (intel_crtc_num_joined_pipes(pipe_config) == 4)
+		ultrajoiner = true;
+
+	if (!can_use_pixel_replication(mode_hdisplay, slice_count,
+				       pipe_config->output_format, ultrajoiner))
+		return 0;
+
+	slice_width = DIV_ROUND_UP(mode_hdisplay, slice_count);
+
+	pixel_replication_count = (slice_width * slice_count) - mode_hdisplay;
+
+	if (pixel_replication_count >= 0)
+		return pixel_replication_count;
+
+	return 0;
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -2391,6 +2446,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
+						     pipe_config->output_format,
 						     num_joined_pipes);
 		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
@@ -2400,6 +2456,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
+
+	pipe_config->dsc.pixel_replication_count =
+		intel_dp_dsc_get_pixel_replication(intel_dp, pipe_config);
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 60baf4072dc9..bd7a8232572b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -149,6 +149,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
+				enum intel_output_format output_format,
 				int num_joined_pipes);
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 			      struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1a2ff3e1cb68..f1f19e1c4df8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -154,11 +154,22 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
+	int slice_count;
 
-	return intel_dp_dsc_get_slice_count(connector,
-					    adjusted_mode->clock,
-					    adjusted_mode->hdisplay,
-					    num_joined_pipes);
+	slice_count = intel_dp_dsc_get_slice_count(connector,
+						   adjusted_mode->clock,
+						   adjusted_mode->hdisplay,
+						   crtc_state->output_format,
+						   num_joined_pipes);
+	/*
+	 * FIXME: With 12 slice count, extra pixels are added.
+	 * Take pixel replication into account for MST BW calculation?
+	 * Avoid slice count of 12 for now.
+	 */
+	if (slice_count == 12)
+		return 0;
+
+	return slice_count;
 }
 
 static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
@@ -1524,6 +1535,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
+							     INTEL_OUTPUT_FORMAT_RGB,
 							     num_joined_pipes);
 		}
 
-- 
2.45.2

