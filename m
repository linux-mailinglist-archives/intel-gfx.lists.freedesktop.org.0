Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFFD6FB09E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 14:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866A310E281;
	Mon,  8 May 2023 12:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0953510E27E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 12:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683550317; x=1715086317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XqgeCestFlTlWqj3F4Q7RCVmHUWZ4b3AHXnkF/UhdX0=;
 b=nBH0B9bO0eEdZ9PeHO+dYCLt1fidB2uH80fh1wg6eBUEwijcSvv3Wgn8
 IKAvya8GLC+GOpwWYK5VwWs06l9yduRMrrpRwC78v0EGJ18lEAhQ1RbLO
 0jsLVFRpjXk0NGUB3/Tuy9nBI2tYrLHfwbXfTSLF48kYxkDT68TyZW0fI
 bmb0fy1rq/zC5uNWm8dU1q95LMwoMO4ZvbhEeHGi6gOvbIyn6HNkAwipX
 We09NPf85+ot98MVnZS2SNxS2K9C6/4gcAT4Vt0c9ViucLlZbEGYoQUDY
 qNpHJc7kj6+plXnaj422hJBiEKOKCv9P/yHo1WatmAHKBi35Nl86Myfw3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="329994799"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="329994799"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:51:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="842675300"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="842675300"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:51:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 May 2023 18:17:10 +0530
Message-Id: <20230508124715.2242478-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230508124715.2242478-1-ankit.k.nautiyal@intel.com>
References: <20230508124715.2242478-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/dp: Consider output_format while
 computing dsc bpp
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

While using DSC the compressed bpp is computed assuming RGB output
format. Consider the output_format and compute the compressed bpp
during mode valid and compute config steps.

For DP-MST we currently use RGB output format only, so continue
using RGB while computing compressed bpp for MST case.

v2: Use output_bpp instead for pipe_bpp to clamp compressed_bpp. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 19 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0cc57681dc4d..263c30948117 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -734,6 +734,7 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
 				u32 mode_clock, u32 mode_hdisplay,
 				bool bigjoiner,
+				enum intel_output_format output_format,
 				u32 pipe_bpp,
 				u32 timeslots)
 {
@@ -758,6 +759,10 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
 			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
 
+	/* Bandwidth required for 420 is half, that of 444 format */
+	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		bits_per_pixel *= 2;
+
 	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
 				"total bw %u pixel clock %u\n",
 				bits_per_pixel, timeslots,
@@ -1151,11 +1156,16 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
+		enum intel_output_format sink_format, output_format;
+		int pipe_bpp;
+
+		sink_format = intel_dp_sink_format(connector, mode);
+		output_format = intel_dp_output_format(connector, sink_format);
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
-		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
 
 		/*
 		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
@@ -1175,6 +1185,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 							    target_clock,
 							    mode->hdisplay,
 							    bigjoiner,
+							    output_format,
 							    pipe_bpp, 64) >> 4;
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
@@ -1707,6 +1718,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							    adjusted_mode->crtc_clock,
 							    adjusted_mode->crtc_hdisplay,
 							    pipe_config->bigjoiner_pipes,
+							    pipe_config->output_format,
 							    pipe_bpp,
 							    timeslots);
 			/*
@@ -1742,9 +1754,12 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		 * calculation procedure is bit different for MST case.
 		 */
 		if (compute_pipe_bpp) {
+			u16 output_bpp = intel_dp_output_bpp(pipe_config->output_format,
+							     pipe_config->pipe_bpp);
+
 			pipe_config->dsc.compressed_bpp = min_t(u16,
 								dsc_max_output_bpp >> 4,
-								pipe_config->pipe_bpp);
+								output_bpp);
 		}
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 		drm_dbg_kms(&dev_priv->drm, "DSC: compressed bpp %d slice count %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ef39e4f7a329..db86c2b71c1f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -107,6 +107,7 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
 				u32 mode_clock, u32 mode_hdisplay,
 				bool bigjoiner,
+				enum intel_output_format output_format,
 				u32 pipe_bpp,
 				u32 timeslots);
 u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 63d61e610210..ee28bb89bffe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -973,6 +973,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 							    target_clock,
 							    mode->hdisplay,
 							    bigjoiner,
+							    INTEL_OUTPUT_FORMAT_RGB,
 							    pipe_bpp, 64) >> 4;
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
-- 
2.25.1

