Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF5479A2B6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 07:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A2710E128;
	Mon, 11 Sep 2023 05:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F6110E10C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 05:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694409096; x=1725945096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=naB82RsMqOu0ideJWUuRTmVi0whH441E+49lOWTb56Q=;
 b=PDM9iW6IuNtl1I76svqekd0X1bsmgEahwFBgxb4nY9qhchk3K51LaUYS
 DE/RpLJqICU6p9E8bmbT6jLUuXaSI5K7F825YamW7Tg5CRfC2hsopRq+L
 Pmf/16cuJYIZsMrW1+9P3XeYE4KQN59cyatF799Mhx7PlQ78GpO04M9pc
 aMHlKwwdJjAB/AOeyuqfgx3kOIsg4VFKvs5DjgcK0VxMccCwihnXOUPq8
 M85IdUdNH8kbZg2DJCW2sPQeTcxJ3EXTXoquf0INTv0171NwH1vuszl/X
 lgN8D2Kyc4QReSfhWXhwHT3s7giwMnXAxLyHTxdWHC2XXWwLyoK47LNR3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="377911993"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="377911993"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 22:11:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="808692871"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="808692871"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga008.fm.intel.com with ESMTP; 10 Sep 2023 22:11:22 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 10:35:47 +0530
Message-Id: <20230911050549.763538-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

This patch adds support to iterate over compressed output bpp as per the
fractional step, supported by DP sink.

v2:
-Avoid ending up with compressed bpp, same as pipe bpp. (Stan)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 +++++++++++++++----------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d13fa2749eaf..90c92f3dc62a 100644
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
@@ -1746,8 +1746,8 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
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
@@ -1860,7 +1860,7 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
-					      valid_dsc_bpp[i],
+					      valid_dsc_bpp[i] << 4,
 					      timeslots);
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp_x16 = to_bpp_x16(valid_dsc_bpp[i]);
@@ -1886,22 +1886,31 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
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
-			pipe_config->dsc.compressed_bpp_x16 = to_bpp_x16(compressed_bpp);
+			pipe_config->dsc.compressed_bpp_x16 = compressed_bppx16;
 			return 0;
 		}
 	}
-- 
2.25.1

