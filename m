Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4F778407D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423A610E344;
	Tue, 22 Aug 2023 12:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B02510E343
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692706438; x=1724242438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ysgK0WlUVQPNo2yVPChfdy505RUbV33bAH70LS5RBPA=;
 b=UuBtDSPXJVI5yRdu6hEPJd8BaFmxtZ85LOlyexB+VNflo+6tUC1xeQN9
 XXPrZi8HvuKjfcrRLhqBk+2lszrJ558P/qhpTg/QcMtf0BxmVytovjBqy
 4MvmeSlyZV0WQn0KyvA4u9Z7yIqAQ/4peB28WfRBUAJKhZR81v14haHDM
 lQjTAy44odmtOofs0rrVJjVJZoIID2ep3JGb7aVQleGYdrKcnWmBXzoQl
 oFgDMeECjwtz9Upy82fCnHMZA5OvBXoN+zXr88bQdvT0X6qrWVxmFHjlN
 s5ZgxVIhPuDcD3KXKzKfPUODHSUOZfFv9ZaIgdJrbFrOC/yhB/dCohmR0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440230327"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="440230327"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771335296"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771335296"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 17:40:31 +0530
Message-Id: <20230822121033.597447-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/dp: Iterate over output bpp with
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
Cc: manasi.d.navare@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch adds support to iterate over compressed output bpp as per the
fractional step, supported by DP sink.

v2:
-Avoid ending up with compressed bpp, same as pipe bpp. (Stan)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++++++++---------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 436889c601b1..011bcfe2ecc5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1715,15 +1715,15 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
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
@@ -1731,7 +1731,7 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bpp, u32 link_clock,
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
 				   struct link_config_limits *limits,
-				   u16 compressed_bpp,
+				   u16 compressed_bppx16,
 				   int timeslots)
 {
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -1746,7 +1746,8 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 		for (lane_count = limits->min_lane_count;
 		     lane_count <= limits->max_lane_count;
 		     lane_count <<= 1) {
-			if (!is_bw_sufficient_for_dsc_config(compressed_bpp, link_rate, lane_count,
+
+			if (!is_bw_sufficient_for_dsc_config(compressed_bppx16, link_rate, lane_count,
 							     adjusted_mode->clock,
 							     pipe_config->output_format,
 							     timeslots))
@@ -1860,7 +1861,7 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
-					      valid_dsc_bpp[i],
+					      valid_dsc_bpp[i] << 4,
 					      timeslots);
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp = valid_dsc_bpp[i];
@@ -1886,22 +1887,31 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
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
-			pipe_config->dsc.compressed_bpp = compressed_bpp << 4;
+			pipe_config->dsc.compressed_bpp = compressed_bppx16;
 			return 0;
 		}
 	}
-- 
2.40.1

