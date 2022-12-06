Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCC164417F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1327210E329;
	Tue,  6 Dec 2022 10:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C45410E31E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323555; x=1701859555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tw1m4kU1bEc2LWDLG5vYQjEI0QJwCJr92MuuDiJ+l34=;
 b=joe46OXx9YMWAXKsQ0AhXXrrhp+/lW1gLwiaoJcpQhCqu0Y8LGx8Td+u
 CSNIbtR7u3v4YvVs8p89uWdySc5xAM8bSlHtb+eH2eYrIhX0bKegDnxIi
 UfZ7uPfvhCtsYZbuP8F5WxIo8/ezL1TcTwudu+peO4lKlIVz/Zie+QT9f
 9DjCwnlCB1vfXf+pCwGn5IXsi6Z/7e5cw1FyaARBhNrf/xcA7cramtYde
 BkBrXVSX/MOyd3ZJzQKVtcJAAwSMRBsnE9weEqkm8VYAjczxOTBB8gPOY
 5S8NpV4GKMW73zW0uRN6ss1Uc3RVDEQPpeHCeNCSgushy99JzgeKEtAbq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735444"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735444"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714758044"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714758044"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:28 +0530
Message-Id: <20221206104630.1263525-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/12] drm/i915/dp: Iterate over output bpp
 with fractional step size
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

This patch adds support to iterate over compressed output bpp as per the
fractional step, supported by DP sink.

v2:
-Avoid ending up with compressed bpp, same as pipe bpp. (Stan)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++----------
 1 file changed, 28 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f1ccebe946b2..be94580e4514 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1461,10 +1461,11 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	return drm_dsc_compute_rc_parameters(vdsc_cfg);
 }
 
-static bool is_dsc_bw_sufficient(int link_rate, int lane_count, int compressed_bpp,
+static bool is_dsc_bw_sufficient(int link_rate, int lane_count, int compressed_bppx16,
 				 const struct drm_display_mode *adjusted_mode)
 {
-	int mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock, compressed_bpp);
+	int mode_rate = DIV_ROUND_UP(intel_dp_link_required(adjusted_mode->crtc_clock,
+							    compressed_bppx16), 16);
 	int link_avail = intel_dp_max_data_rate(link_rate, lane_count);
 
 	return mode_rate <= link_avail;
@@ -1474,7 +1475,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
 				   struct link_config_limits *limits,
 				   int pipe_bpp,
-				   u16 compressed_bpp)
+				   u16 compressed_bppx16)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -1498,11 +1499,11 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 								      adjusted_mode->crtc_hdisplay,
 								      pipe_config->bigjoiner_pipes,
 								      pipe_bpp);
-			if (compressed_bpp > dsc_max_bpp)
+			if (compressed_bppx16 > dsc_max_bpp << 16)
 				continue;
 
 			if (!is_dsc_bw_sufficient(link_rate, lane_count,
-						  compressed_bpp, adjusted_mode))
+						  compressed_bppx16, adjusted_mode))
 				continue;
 
 			pipe_config->lane_count = lane_count;
@@ -1565,33 +1566,41 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 				      int pipe_bpp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u16 compressed_bpp;
-	int dsc_min_bpp, dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+	u16 compressed_bppx16;
+	int dsc_min_bppx16, dsc_src_max_bppx16, dsc_sink_max_bppx16, dsc_max_bppx16;
+	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(intel_dp->dsc_dpcd);
+	u8 bppx16_step;
 	int ret;
 
-	dsc_min_bpp = max(dsc_min_compressed_bppx16(pipe_config) >> 4, 8);
+	if (DISPLAY_VER(dev_priv) < 14 || bppx16_incr <= 1)
+		bppx16_step = 16;
+	else
+		bppx16_step = 16 / bppx16_incr;
+
+	dsc_min_bppx16 = max((int)dsc_min_compressed_bppx16(pipe_config), 8 << 4);
 	if (DISPLAY_VER(dev_priv) <= 12)
-		dsc_src_max_bpp = 23;
+		dsc_src_max_bppx16 = 23 << 4;
 	else
-		dsc_src_max_bpp = 27;
-	dsc_sink_max_bpp = dsc_max_sink_compressed_bppx16(intel_dp->dsc_dpcd,
-							  pipe_config, pipe_bpp / 3) >> 4;
+		dsc_src_max_bppx16 = 27 << 4;
+	dsc_sink_max_bppx16 = dsc_max_sink_compressed_bppx16(intel_dp->dsc_dpcd,
+							     pipe_config, pipe_bpp / 3);
 
-	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
+	dsc_max_bppx16 = dsc_sink_max_bppx16 ?
+		min(dsc_sink_max_bppx16, dsc_src_max_bppx16) : dsc_src_max_bppx16;
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
+	dsc_max_bppx16 = min(dsc_max_bppx16, (pipe_bpp << 4) - bppx16_step);
 
-	for (compressed_bpp = dsc_max_bpp;
-	     compressed_bpp >= dsc_min_bpp;
-	     compressed_bpp--) {
+	for (compressed_bppx16 = dsc_max_bppx16;
+	     compressed_bppx16 >= dsc_min_bppx16;
+	     compressed_bppx16 -= bppx16_step) {
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
 					      pipe_bpp,
-					      compressed_bpp);
+					      compressed_bppx16);
 		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp = compressed_bpp << 4;
+			pipe_config->dsc.compressed_bpp = compressed_bppx16;
 			return 0;
 		}
 	}
-- 
2.25.1

