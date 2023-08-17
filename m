Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7560C77F8FA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 16:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DF010E4B1;
	Thu, 17 Aug 2023 14:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D478A10E06D;
 Thu, 17 Aug 2023 14:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692282640; x=1723818640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NJ8GFUd1ifeSXgry68wTU/iFg7BHw3M//qavq1ng8Dg=;
 b=AECGFjX1/sTO4hD8FQXAy1AtQ/SflRRRIZ/7IPlTbOK0eGDRy4dykYO7
 nAoJphil98iR7MAhDgNJPhHuoWeQGvyBemOOl+FyGIAL55kcFJB0enL2m
 tTsNWgm8Iuq0fNsiVkUGJX3+r9o/926Wuu5MrJ783V31w9IUzvXAufDSX
 7n1pWzAeqRxXL1SKqITPVid9MQl1dzXz+jOUO1dVHq8rFJK8ve0kZASQk
 4pMC42q2OvbI0LCBRuEV+jvNykAW9RsOrufLLmSjyjwP85EfiorYTTvLr
 2axc8x/X5R5ObqCsA3zMMVaNA4rpGJr0AswIrOcmLmudjb3Vz6iQAdOR3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376581601"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="376581601"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="858244039"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="858244039"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:54:42 +0530
Message-Id: <20230817142459.89764-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
References: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/18] drm/i915/dp: Consider output_format while
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 19 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 964bf0551bdc..29aab055ef11 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -744,6 +744,7 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
 				u32 mode_clock, u32 mode_hdisplay,
 				bool bigjoiner,
+				enum intel_output_format output_format,
 				u32 pipe_bpp,
 				u32 timeslots)
 {
@@ -768,6 +769,10 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
 			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
 
+	/* Bandwidth required for 420 is half, that of 444 format */
+	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		bits_per_pixel *= 2;
+
 	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
 				"total bw %u pixel clock %u\n",
 				bits_per_pixel, timeslots,
@@ -1161,11 +1166,16 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
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
@@ -1185,6 +1195,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 							    target_clock,
 							    mode->hdisplay,
 							    bigjoiner,
+							    output_format,
 							    pipe_bpp, 64) >> 4;
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
@@ -1724,6 +1735,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							    adjusted_mode->crtc_clock,
 							    adjusted_mode->crtc_hdisplay,
 							    pipe_config->bigjoiner_pipes,
+							    pipe_config->output_format,
 							    pipe_bpp,
 							    timeslots);
 			/*
@@ -1759,9 +1771,12 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
index 22099de3ca45..bb4f976af296 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -111,6 +111,7 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
 				u32 mode_clock, u32 mode_hdisplay,
 				bool bigjoiner,
+				enum intel_output_format output_format,
 				u32 pipe_bpp,
 				u32 timeslots);
 u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f176a093d2..aa8d9d570626 100644
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
2.40.1

