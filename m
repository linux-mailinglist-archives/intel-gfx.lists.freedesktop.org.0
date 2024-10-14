Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3F499C28E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D94410E3CA;
	Mon, 14 Oct 2024 08:08:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S3KNtbjN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED5310E3CB;
 Mon, 14 Oct 2024 08:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893281; x=1760429281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1RPYjyBmWhirJuaDqmzL+sni2/YKcLa+DsHAPdCyyzg=;
 b=S3KNtbjNPo2mL965fbX0xm8oMX0dg036PtlyIrRtdbPyKf3U+rE91Uro
 rCi7ZmTzQTK5wj/r+RDXMHo8n7zOvTJvta7vjTOVin9IUxLx8kQX+QfNT
 4xDsXVNiqQNKJE3IVmdK0bQBHIW/D8S77VQ0UxXB1o7z/nBscRjNMQw2j
 wsP650kEsZTuUOc3k3Y1CTku6YRXFVe9bzqbrLKx1DT0odyoPkkR8Jleg
 HWKhRjrN0hQcMBCdBBgpHYzCVh61YPSUK9ZZNbhIscVICwp5NkkOoxmhA
 wZVlvJvWl+mhpY0pgr4bVXHQQ/tjj9Dx9pJhYxvrjCvR/x20Rf/h3m493 A==;
X-CSE-ConnectionGUID: ZOzY9PyfRkeH2wfPMnwt8w==
X-CSE-MsgGUID: l1OjxmmYTUmlRE/e+MdR2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784444"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784444"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:08:01 -0700
X-CSE-ConnectionGUID: 8OJxHS26Q66GdaXh9YwmOg==
X-CSE-MsgGUID: M53zjqhpRrmIIPnU+ll3mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834907"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:08:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915/dp: Compute pixel replication count for DSC 12
 slices case
Date: Mon, 14 Oct 2024 13:39:58 +0530
Message-ID: <20241014081000.2844245-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
References: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 61 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +
 3 files changed, 63 insertions(+), 2 deletions(-)

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
index 60baf4072dc9..7ab86688a721 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -149,11 +149,11 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
+				enum intel_output_format output_format,
 				int num_joined_pipes);
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 			      struct intel_connector *connector,
 			      int hdisplay, int clock);
-
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
 	return ~((1 << lane_count) - 1) & 0xf;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4765bda154c1..4cb44d88a642 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -109,6 +109,7 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
 							       adjusted_mode->clock,
 							       adjusted_mode->hdisplay,
+							       crtc_state->output_format,
 							       num_joined_pipes);
 	}
 
@@ -1506,6 +1507,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
+							     INTEL_OUTPUT_FORMAT_RGB,
 							     num_joined_pipes);
 		}
 
-- 
2.45.2

