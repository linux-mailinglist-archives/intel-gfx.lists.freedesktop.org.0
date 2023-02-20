Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 057EC69C986
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 12:15:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D294510E684;
	Mon, 20 Feb 2023 11:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D85A10E67E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 11:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676891732; x=1708427732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lVf9sYPrrRupeyd1y4tjX2CvB4GMEVr48qzJcjaFayg=;
 b=I1oUrk6C0UHKmxXx77QBRXEdifXua1VqaGMPndABUlnRNTpdxjoA3U3a
 xGVRH9lDAqSDjVyjiDMmNhu1JEsPxcYDCJO3K597kBaXv8UeoIFr1rkOP
 JZlcKNO4vOcBU6K5j/Fp7/YRx3oRsYGtdX+QC4Wi1bAdz9+bRKF0maNnx
 EXudNcOXR4KtEAa0cbhRXXjJyDodFI6Gf+CgMHSlJ0+pWsxTd77V8qQEP
 N6IZYOuXdXf7V54YuTPUrt4VcTE/y2vLE72fZUdgr4HHi/6R9kAk8IsDC
 Nr0TtX2uCvuy8kuJ3WnmIy6hOuN71ykfrA0g5G0dQNmfobGXWX8VbwLrG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397061780"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397061780"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="740013087"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="740013087"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:30 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 16:42:26 +0530
Message-Id: <20230220111232.3383820-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
References: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/14] drm/i915/dp: Consider output_format while
 computing dsc bpp for mode_valid
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

During modevalid step, the pipe bpp is computed assuming RGB output
format. When checking with DSC, consider the output_format and compute
the input bpp for DSC appropriately.

v2: For DP-MST we currently use RGB output format only, so continue
using RGB while computing dsc_bpp for MST case.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 28 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
 3 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ff88d3e734df..81808181cbbf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1148,11 +1148,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
+		int pipe_bpp;
+		enum intel_output_format output_format, sink_format;
+		const struct drm_display_info *info = &connector->base.display_info;
+
+		if (drm_mode_is_420_only(info, mode))
+			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		else
+			sink_format = INTEL_OUTPUT_FORMAT_RGB;
+
+		output_format = intel_dp_output_format(connector, mode, sink_format, true);
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
-		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, output_format, U8_MAX);
 
 		/*
 		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
@@ -1492,12 +1502,15 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
+int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
+			     enum intel_output_format output_format,
+			     u8 max_req_bpc)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {0};
 	u8 dsc_max_bpc;
+	int pipe_bpp = 0;
 
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
@@ -1508,11 +1521,13 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
 						       dsc_bpc);
 	for (i = 0; i < num_bpc; i++) {
-		if (dsc_max_bpc >= dsc_bpc[i])
-			return dsc_bpc[i] * 3;
+		if (dsc_max_bpc >= dsc_bpc[i]) {
+			pipe_bpp = dsc_bpc[i] * 3;
+			break;
+		}
 	}
 
-	return 0;
+	return intel_dp_output_bpp(output_format, pipe_bpp);
 }
 
 static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
@@ -1614,7 +1629,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		return -EINVAL;
 
 	if (compute_pipe_bpp)
-		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
+						    conn_state->max_requested_bpc);
 	else
 		pipe_bpp = pipe_config->pipe_bpp;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ef39e4f7a329..2f4136e43f38 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -102,7 +102,9 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 		       struct intel_crtc_state *crtc_state,
 		       unsigned int type);
 bool intel_digital_port_connected(struct intel_encoder *encoder);
-int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
+int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
+			     enum intel_output_format output_format,
+			     u8 dsc_max_bpc);
 u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
 				u32 mode_clock, u32 mode_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2e1e4de95627..68d94200b655 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -904,7 +904,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
-		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, INTEL_OUTPUT_FORMAT_RGB, U8_MAX);
 
 		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
 			dsc_max_output_bpp =
-- 
2.25.1

