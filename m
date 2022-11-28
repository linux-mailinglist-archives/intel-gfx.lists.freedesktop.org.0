Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E67E463A1D3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 08:15:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1DC410E1C6;
	Mon, 28 Nov 2022 07:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBDF10E1C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 07:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669619696; x=1701155696;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YEGFFsMkg9TMSMwzGkrCYalT7aKCzHfANv+6yDdYbLQ=;
 b=XNlXnE8kdrjZvSqe803WMUkha6RUyIQPGyxfHCbNf6hQ6ebqEprJplQz
 6b/imygX+1ssOf5tZMfYsKu1Tb6NY+D9bOjh2Gddy7b0PdyKC5r9KqgpZ
 yuOuSuT4I+jtYjPAPeMW2MBSCZk9WViqNQIgpuUbA2o6BN4sqny+6w+NQ
 pw6CAWRMpp3ro/9TUn3BIh1mTubzRR+ar8zag5f+RKCVF/fdZICOQwBa7
 yezAMZcUIFghUv8yXCSHGnXWd9eDfL6SA2Il+AvhZYDwELQbDSJ61XY+T
 WtLnmzh/0szWwyI7ZOEiXj4OsvUv/HiZTtSpXZZAulqzQ5FvBcCmyfk46 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="315919489"
X-IronPort-AV: E=Sophos;i="5.96,199,1665471600"; d="scan'208";a="315919489"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 23:14:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="785518568"
X-IronPort-AV: E=Sophos;i="5.96,199,1665471600"; d="scan'208";a="785518568"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 23:14:54 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 12:45:36 +0530
Message-Id: <20221128071544.4115881-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
References: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 03/11] drm/i915/dp: Add Scaler constraint for
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
Scaler can be used only when source size smaller than 4096x5120.
So go for native YCbCr420 only if there are no scaler constraints.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3ff9796f83e1..a0e1fbc8eea1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -786,8 +786,15 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static bool
+ycbcr420_scaler_constraints(const struct drm_display_mode *mode)
+{
+	return mode->hdisplay > 4096 || mode->vdisplay > 5120;
+}
+
 static enum intel_output_format
 intel_dp_output_format(struct intel_connector *connector,
+		       const struct drm_display_mode *mode,
 		       enum intel_output_format sink_format)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
@@ -802,8 +809,15 @@ intel_dp_output_format(struct intel_connector *connector,
 
 	if (intel_dp->dfp.ycbcr_444_to_420)
 		return INTEL_OUTPUT_FORMAT_YCBCR444;
-	else
+
+	/*
+	 * For YCbCr420 output, scaler is required for downsampling
+	 * So go for native YCbCr420 only if there are no scaler constraints.
+	 */
+	if (!ycbcr420_scaler_constraints(mode))
 		return INTEL_OUTPUT_FORMAT_YCBCR420;
+
+	return INTEL_OUTPUT_FORMAT_RGB;
 }
 
 int intel_dp_min_bpp(enum intel_output_format output_format)
@@ -839,7 +853,7 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 	else
 		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	output_format = intel_dp_output_format(connector, sink_format);
+	output_format = intel_dp_output_format(connector, mode, sink_format);
 
 	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
 }
@@ -2002,7 +2016,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
-	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
+	crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
+							   crtc_state->sink_format);
 
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
@@ -2012,7 +2027,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 			return ret;
 
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		crtc_state->output_format = intel_dp_output_format(connector,
+		crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
 								   crtc_state->sink_format);
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 						   respect_downstream_limits);
-- 
2.25.1

