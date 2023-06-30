Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 246C4743C44
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 14:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C292C10E481;
	Fri, 30 Jun 2023 12:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA7E10E47D;
 Fri, 30 Jun 2023 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688129487; x=1719665487;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yJh5UNcgSINfVRbQ/a4mgki1BI1Bday8he0Fr1QFwoI=;
 b=TH3K4RGgJZ4VXLlISn6l7RUbd6Az9wyagcqmuh8PFEWE1N4RyxMJkFuq
 Z4bxEAUUZLjv2Rbuwac6i4bAjQMwXu4kfFpwvnRvDATx8Yyo4390QU7Kq
 ikzkJssq8J3fXWS5vi5TB/tAdlcIDkIv5AzEU5bN0of+IOXYZe0WxqaBt
 seueMryPJzhhV3xloGdmeJQ3K7KopJIXAlRuqTM3yQbM7cRFyWiJ4yTXf
 XcegCm6+Ms16BrEtp6CLPz0NsXnjIsQNdjW13sd4tx9DafRM3Z1ljSbAN
 2x9f+oGeugqasl+YrX/BIzwewWrEqxwGAIPPT6pBR1QFLAowzleCyPcPy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="361232261"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="361232261"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 05:51:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="1048219138"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="1048219138"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 05:51:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:16:50 +0530
Message-Id: <20230630124652.4140932-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230630124652.4140932-1-ankit.k.nautiyal@intel.com>
References: <20230630124652.4140932-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/19] drm/i915/dp: Get optimal link config to
 have best compressed bpp
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

Currently, we take the max lane, rate and pipe bpp, to get the maximum
compressed bpp possible. We then set the output bpp to this value.
This patch provides support to have max bpp, min rate and min lanes,
that can support the min compressed bpp.

v2:
-Avoid ending up with compressed bpp, same as pipe bpp. (Stan)
-Fix the checks for limits->max/min_bpp while iterating over list of
 valid DSC bpcs. (Stan)

v3:
-Refactor the code to have pipe bpp/compressed bpp computation and slice
count calculation separately for different cases.

v4:
-Separate the pipe_bpp calculation for eDP and DP.

v5:
-Get rid of magic numbers for max and min bpp,
and improve documentation. (Stan).
-Use functions for {src_sink}_{min_max}_compressed_bpp (Ville).

v6:
-Remove lines to set link config to max.

v7:
-Split the part to separate edp and dp functions for computing DSC BPP
into separate patch.

v8:
-Separate mechanism to get compressed bpp for ICL,TGL and XELPD+.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 294 +++++++++++++++++++++---
 1 file changed, 261 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 01fdab148d74..119a1eff8e6c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1679,6 +1679,231 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
 	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd, sink_dsc_format);
 }
 
+static bool is_bw_sufficient_for_dsc_config(u16 compressed_bpp, u32 link_clock,
+					    u32 lane_count, u32 mode_clock,
+					    enum intel_output_format output_format,
+					    int timeslots)
+{
+	u32 available_bw, required_bw;
+
+	available_bw = (link_clock * lane_count * timeslots)  / 8;
+	required_bw = compressed_bpp * (intel_dp_mode_to_fec_clock(mode_clock));
+
+	return available_bw > required_bw;
+}
+
+static int dsc_compute_link_config(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *pipe_config,
+				   struct link_config_limits *limits,
+				   u16 compressed_bpp,
+				   int timeslots)
+{
+	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	int link_rate, lane_count;
+	int i;
+
+	for (i = 0; i < intel_dp->num_common_rates; i++) {
+		link_rate = intel_dp_common_rate(intel_dp, i);
+		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
+			continue;
+
+		for (lane_count = limits->min_lane_count;
+		     lane_count <= limits->max_lane_count;
+		     lane_count <<= 1) {
+			if (!is_bw_sufficient_for_dsc_config(compressed_bpp, link_rate, lane_count,
+							     adjusted_mode->clock,
+							     pipe_config->output_format,
+							     timeslots))
+				continue;
+
+			pipe_config->lane_count = lane_count;
+			pipe_config->port_clock = link_rate;
+
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static
+u16 intel_dp_dsc_max_sink_compressed_bppx16(struct intel_dp *intel_dp,
+					    struct intel_crtc_state *pipe_config,
+					    int bpc)
+{
+	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd);
+
+	if (max_bppx16)
+		return max_bppx16;
+	/*
+	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
+	 * values as given in spec Table 2-157 DP v2.0
+	 */
+	switch (pipe_config->output_format) {
+	case INTEL_OUTPUT_FORMAT_RGB:
+	case INTEL_OUTPUT_FORMAT_YCBCR444:
+		return (3 * bpc) << 4;
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		return (3 * (bpc / 2)) << 4;
+	default:
+		MISSING_CASE(pipe_config->output_format);
+		break;
+	}
+
+	return 0;
+}
+
+static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
+{
+	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
+	switch (pipe_config->output_format) {
+	case INTEL_OUTPUT_FORMAT_RGB:
+	case INTEL_OUTPUT_FORMAT_YCBCR444:
+		return 8;
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		return 6;
+	default:
+		MISSING_CASE(pipe_config->output_format);
+		break;
+	}
+
+	return 0;
+}
+
+static int dsc_sink_max_compressed_bpp(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *pipe_config,
+				       int bpc)
+{
+	return intel_dp_dsc_max_sink_compressed_bppx16(intel_dp,
+						       pipe_config, bpc) >> 4;
+}
+
+static int dsc_src_min_compressed_bpp(void)
+{
+	/* Min Compressed bpp supported by source is 8 */
+	return 8;
+}
+
+static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	/*
+	 * Max Compressed bpp for Gen 13+ is 27bpp.
+	 * For earlier platform is 23bpp. (Bspec:49259).
+	 */
+	if (DISPLAY_VER(i915) <= 12)
+		return 23;
+	else
+		return 27;
+}
+
+/*
+ * From a list of valid compressed bpps try different compressed bpp and find a
+ * suitable link configuration that can support it.
+ */
+static int
+icl_dsc_compute_link_config(struct intel_dp *intel_dp,
+			    struct intel_crtc_state *pipe_config,
+			    struct link_config_limits *limits,
+			    int dsc_max_bpp,
+			    int dsc_min_bpp,
+			    int pipe_bpp,
+			    int timeslots)
+{
+	int i, ret;
+
+	/* Compressed BPP should be less than the Input DSC bpp */
+	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
+
+	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
+		if (valid_dsc_bpp[i] < dsc_min_bpp ||
+		    valid_dsc_bpp[i] > dsc_max_bpp)
+			break;
+
+		ret = dsc_compute_link_config(intel_dp,
+					      pipe_config,
+					      limits,
+					      valid_dsc_bpp[i],
+					      timeslots);
+		if (ret == 0) {
+			pipe_config->dsc.compressed_bpp = valid_dsc_bpp[i];
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+/*
+ * From XE_LPD onwards we supports compression bpps in steps of 1 up to
+ * uncompressed bpp-1. So we start from max compressed bpp and see if any
+ * link configuration is able to support that compressed bpp, if not we
+ * step down and check for lower compressed bpp.
+ */
+static int
+xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
+			      struct intel_crtc_state *pipe_config,
+			      struct link_config_limits *limits,
+			      int dsc_max_bpp,
+			      int dsc_min_bpp,
+			      int pipe_bpp,
+			      int timeslots)
+{
+	u16 compressed_bpp;
+	int ret;
+
+	/* Compressed BPP should be less than the Input DSC bpp */
+	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
+
+	for (compressed_bpp = dsc_max_bpp;
+	     compressed_bpp >= dsc_min_bpp;
+	     compressed_bpp--) {
+		ret = dsc_compute_link_config(intel_dp,
+					      pipe_config,
+					      limits,
+					      compressed_bpp,
+					      timeslots);
+		if (ret == 0) {
+			pipe_config->dsc.compressed_bpp = compressed_bpp;
+			return 0;
+		}
+	}
+	return -EINVAL;
+}
+
+static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
+				      struct intel_crtc_state *pipe_config,
+				      struct link_config_limits *limits,
+				      int pipe_bpp,
+				      int timeslots)
+{
+	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
+	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+	int dsc_joiner_max_bpp;
+
+	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
+	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
+	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
+
+	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
+	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
+	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+
+	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
+								adjusted_mode->hdisplay,
+								pipe_config->bigjoiner_pipes);
+	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
+
+	if (DISPLAY_VER(i915) >= 13)
+		return xelpd_dsc_compute_link_config(intel_dp, pipe_config, limits,
+						     dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
+	return icl_dsc_compute_link_config(intel_dp, pipe_config, limits,
+					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
+}
+
 static
 u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
 {
@@ -1736,52 +1961,55 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct link_config_limits *limits,
 					 int timeslots)
 {
-	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u16 output_bpp, dsc_max_compressed_bpp = 0;
+	u8 max_req_bpc = conn_state->max_requested_bpc;
+	u8 dsc_max_bpc, dsc_max_bpp;
+	u8 dsc_min_bpc, dsc_min_bpp;
+	u8 dsc_bpc[3] = {0};
 	int forced_bpp, pipe_bpp;
+	int num_bpc, i, ret;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state, limits);
 
 	if (forced_bpp) {
-		pipe_bpp = forced_bpp;
-	} else {
-		pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp, conn_state->max_requested_bpc);
-
-		if (!is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, pipe_bpp)) {
-			drm_dbg_kms(&i915->drm,
-				    "Computed BPC is not in DSC BPC limits\n");
-			return -EINVAL;
+		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
+						 limits, forced_bpp, timeslots);
+		if (ret == 0) {
+			pipe_config->pipe_bpp = forced_bpp;
+			return 0;
 		}
 	}
-	/*
-	 * For now enable DSC for max link rate, max lane count.
-	 * Optimize this later for the minimum possible link rate/lane count
-	 * with DSC enabled for the requested mode.
-	 */
-	pipe_config->port_clock = limits->max_rate;
-	pipe_config->lane_count = limits->max_lane_count;
-	dsc_max_compressed_bpp = intel_dp_dsc_get_max_compressed_bpp(i915,
-								     pipe_config->port_clock,
-								     pipe_config->lane_count,
-								     adjusted_mode->crtc_clock,
-								     adjusted_mode->crtc_hdisplay,
-								     pipe_config->bigjoiner_pipes,
-								     pipe_config->output_format,
-								     pipe_bpp,
-								     timeslots);
-	if (!dsc_max_compressed_bpp) {
-		drm_dbg_kms(&i915->drm, "Compressed BPP not supported\n");
+
+	dsc_max_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	if (!dsc_max_bpc)
 		return -EINVAL;
-	}
 
-	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
+	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpp = min(dsc_max_bpc * 3, limits->max_bpp);
 
-	pipe_config->dsc.compressed_bpp = min_t(u16, dsc_max_compressed_bpp, output_bpp);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_min_bpp = max(dsc_min_bpc * 3, limits->min_bpp);
 
-	pipe_config->pipe_bpp = pipe_bpp;
+	/*
+	 * Get the maximum DSC bpc that will be supported by any valid
+	 * link configuration and compressed bpp.
+	 */
+	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd, dsc_bpc);
+	for (i = 0; i < num_bpc; i++) {
+		pipe_bpp = dsc_bpc[i] * 3;
+		if (pipe_bpp < dsc_min_bpp)
+			break;
+		if (pipe_bpp > dsc_max_bpp)
+			continue;
+		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
+						 limits, pipe_bpp, timeslots);
+		if (ret == 0) {
+			pipe_config->pipe_bpp = pipe_bpp;
+			return 0;
+		}
+	}
 
-	return 0;
+	return -EINVAL;
 }
 
 static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
-- 
2.40.1

