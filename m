Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BC4640422
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:09:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EDDC10E6C0;
	Fri,  2 Dec 2022 10:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E14610E6C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975780; x=1701511780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UDoHwtcFCskmy/Mvfa6kCMOmgCRNwaXY1s7L7h3+6yg=;
 b=jf2BVOkhDAOAw/EEGwTk/oWOgr2rx8kJ4qrQ5TMKVA0gibZwN6uveZ03
 NZKsvbCT0sSBOxEiLQPS9QZyuIee65f/2tXS/h0OITG8feiuZeAucJriq
 8lPY8MmmfWYnMtWJIFjGJCshPhXM30PPD0GhmCTvgqgPRGdaPkJ+AjT9h
 5LvK4p+0JqjPTL/SL5ZtqcziUFPIeanDyhQbKFxnL0mQ6Rs2YS86ZGErk
 1geDRQ02x5LOJ4n8sWkW/lYiDHsRdPaQb889FocVxbWA3zJB3xyXMQzAH
 UYcPgNxjUXLVG1tYyiK9PmB3PlTrWOx+zYQIMbftvjlY4Fl+GZdEA8mkH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313564568"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="313564568"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647115750"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="647115750"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:35 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:40:17 +0530
Message-Id: <20221202101028.803630-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/14] drm/i915/dp: Add Scaler constraint for
 YCbCr420 output
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

For YCbCr420 output, scaler is required for downsampling.
Scaler can be used only when source size smaller than 5120x4096.
So go for native YCbCr420 only if there are no scaler constraints.

v2: Corrected max-width based on Display Version.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++++++++++++----
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3ec8a248a928..b22018fa1230 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -786,11 +786,27 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static bool
+ycbcr420_scaler_constraints(struct drm_i915_private *i915,
+			    const struct drm_display_mode *mode)
+{
+	/* FIXME: Use macros for max_w and max_h from intel_scaler */
+	int max_w = 4096;
+	int max_h = 4096;
+
+	if (DISPLAY_VER(i915) > 11)
+		max_w = 5120;
+
+	return mode->hdisplay > max_w || mode->vdisplay > max_h;
+}
+
 static enum intel_output_format
 intel_dp_output_format(struct intel_connector *connector,
+		       const struct drm_display_mode *mode,
 		       enum intel_output_format sink_format)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (!connector->base.ycbcr_420_allowed ||
 	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
@@ -802,8 +818,15 @@ intel_dp_output_format(struct intel_connector *connector,
 
 	if (intel_dp->dfp.ycbcr_444_to_420)
 		return INTEL_OUTPUT_FORMAT_YCBCR444;
-	else
+
+	/*
+	 * For YCbCr420 output, scaler is required for downsampling
+	 * So go for native YCbCr420 only if there are no scaler constraints.
+	 */
+	if (!ycbcr420_scaler_constraints(i915, mode))
 		return INTEL_OUTPUT_FORMAT_YCBCR420;
+
+	return INTEL_OUTPUT_FORMAT_RGB;
 }
 
 int intel_dp_min_bpp(enum intel_output_format output_format)
@@ -839,7 +862,7 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 	else
 		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	output_format = intel_dp_output_format(connector, sink_format);
+	output_format = intel_dp_output_format(connector, mode, sink_format);
 
 	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
 }
@@ -2002,7 +2025,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
-	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
+	crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
+							   crtc_state->sink_format);
 
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
@@ -2012,7 +2036,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 			return ret;
 
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		crtc_state->output_format = intel_dp_output_format(connector,
+		crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
 								   crtc_state->sink_format);
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 						   respect_downstream_limits);
-- 
2.25.1

