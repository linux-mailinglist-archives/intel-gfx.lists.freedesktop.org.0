Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3950A7B2DAA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 10:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28EA10E6E1;
	Fri, 29 Sep 2023 08:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B09310E6D4;
 Fri, 29 Sep 2023 08:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695975468; x=1727511468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z6FkPaqMkg/6woUN36s9aEbIOUNU3QP134DGb6Ra/1M=;
 b=EU3QHu0khj/rmBcVM7XZKf2BPJCqdOYtDnLU0B2D9IvWUMOVbQBWP3e2
 Msa00iFbegUNWjo2OuFRr4yx5eM4WrdbtBF7+5PwKPiuNhOp2wksNgluS
 B/trnMXCHEy9ZeX2rB2MNtnmGkWHEDZS1J6fcK8afPr6N1JPrhGUaCCJL
 +cXFrw/QloXQUz1ZIKjz6vVWRTYrUKl8VQ3ONm0dtmZzY+Q1jTjLweBfC
 O7h/yEKOhH/tEUKhqmslDgHbWtQDgl0Gt57eOnThoFkNxix2JJl8pc6YZ
 BH6yeEePBJPvpM+lVfFbrbF6AmQdfpAyWiVehZ7TQ7g2wKFEWhwKsnsr6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="379520294"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="379520294"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 00:19:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="815517438"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="815517438"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga008.fm.intel.com with ESMTP; 29 Sep 2023 00:19:22 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 12:43:20 +0530
Message-Id: <20230929071322.945521-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230929071322.945521-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230929071322.945521-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/dp: Iterate over output bpp with
 fractional step size
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
Cc: suijingfeng@loongson.cn, jani.nikula@intel.com, mripard@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

This patch adds support to iterate over compressed output bpp as per the
fractional step, supported by DP sink.

v2:
-Avoid ending up with compressed bpp, same as pipe bpp. (Stan)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Sui Jingfeng <suijingfeng@loongson.cn>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 38 +++++++++++++++----------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c4cb2b763161..bc4ea1c21562 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1718,15 +1718,15 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
 	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd, sink_dsc_format);
 }
 
-static bool is_bw_sufficient_for_dsc_config(u16 compressed_bpp, u32 link_clock,
+static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_clock,
 					    u32 lane_count, u32 mode_clock,
 					    enum intel_output_format output_format,
 					    int timeslots)
 {
 	u32 available_bw, required_bw;
 
-	available_bw = (link_clock * lane_count * timeslots)  / 8;
-	required_bw = compressed_bpp * (intel_dp_mode_to_fec_clock(mode_clock));
+	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
+	required_bw = compressed_bppx16 * (intel_dp_mode_to_fec_clock(mode_clock));
 
 	return available_bw > required_bw;
 }
@@ -1734,7 +1734,7 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bpp, u32 link_clock,
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
 				   struct link_config_limits *limits,
-				   u16 compressed_bpp,
+				   u16 compressed_bppx16,
 				   int timeslots)
 {
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -1749,8 +1749,8 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 		for (lane_count = limits->min_lane_count;
 		     lane_count <= limits->max_lane_count;
 		     lane_count <<= 1) {
-			if (!is_bw_sufficient_for_dsc_config(compressed_bpp, link_rate, lane_count,
-							     adjusted_mode->clock,
+			if (!is_bw_sufficient_for_dsc_config(compressed_bppx16, link_rate,
+							     lane_count, adjusted_mode->clock,
 							     pipe_config->output_format,
 							     timeslots))
 				continue;
@@ -1863,7 +1863,7 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
-					      valid_dsc_bpp[i],
+					      valid_dsc_bpp[i] << 4,
 					      timeslots);
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp_x16 =
@@ -1890,23 +1890,31 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 			      int pipe_bpp,
 			      int timeslots)
 {
-	u16 compressed_bpp;
+	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(intel_dp->dsc_dpcd);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u16 compressed_bppx16;
+	u8 bppx16_step;
 	int ret;
 
+	if (DISPLAY_VER(i915) < 14 || bppx16_incr <= 1)
+		bppx16_step = 16;
+	else
+		bppx16_step = 16 / bppx16_incr;
+
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
+	dsc_max_bpp = min(dsc_max_bpp << 4, (pipe_bpp << 4) - bppx16_step);
+	dsc_min_bpp = dsc_min_bpp << 4;
 
-	for (compressed_bpp = dsc_max_bpp;
-	     compressed_bpp >= dsc_min_bpp;
-	     compressed_bpp--) {
+	for (compressed_bppx16 = dsc_max_bpp;
+	     compressed_bppx16 >= dsc_min_bpp;
+	     compressed_bppx16 -= bppx16_step) {
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
-					      compressed_bpp,
+					      compressed_bppx16,
 					      timeslots);
 		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp_x16 =
-				intel_fractional_bpp_to_x16(compressed_bpp);
+			pipe_config->dsc.compressed_bpp_x16 = compressed_bppx16;
 			return 0;
 		}
 	}
-- 
2.25.1

