Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5D2644179
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E514410E322;
	Tue,  6 Dec 2022 10:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A02A610E318
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323542; x=1701859542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pSgoqCsBD/EiEIuAWbgSyJ2IiCADSCM6lREKHcKPSf0=;
 b=E+sZMQGHCZx9dG0k/tTVYXN+plIGeKdiwH7hzlB9WuwE0fzCqSAqFkg1
 CrgkpjmgV2yL86S76XGBEl0zPVgmJxL7e3CsNDd+pIxUuMmWLd3pNiIT8
 Z4oyGKh8AHIP8ZnYdUVoa2MdGfNJjZ8FeVQfk0EnN5kufoGK1ZhOgmbIL
 ghJXCujWyjJTr8ri9O0+gbt6/nubndmOumkCwDIlcl0oVPfbF9CRs9Uj6
 J0bi7Y0y64KwkMAKuD6pZTT8xHmJdWc+qWD0Fn+5aWgL93A9cxkhl4tab
 jtk2wzOqtfsbP2czOomJFfCRnVquVnWHAVN3+RJVo5MhWHSvXmvMn8I3i g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735362"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735362"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714757963"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714757963"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:39 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:22 +0530
Message-Id: <20221206104630.1263525-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 04/12] drm/i915/dp: Rename helpers to get DSC
 max pipe bpp and max output bpp
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

Currently we the required dsc output bpp is set to be the largest
compressed bpp supported for max, lane, rate, and bpp.
The helper intel_dp_dsc_get_output_bpp gets the maximum supported
compressed bpp taking into account link configuration, input bpp,
bigjoiner considerations etc.

Append 'max' suffix to the function, and also avoid unnecessary
left shifting by 4, which we are anyway shifting back later.

Similarly, the helper intel_dp_dsc_compute_bpp gives the maximum
pipe bpp that is allowed with DSC. Rename the function to reflect
the same.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 57 +++++++++++--------------
 1 file changed, 26 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 52081eb7bd40..8271a209a30d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -117,7 +117,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 }
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
-static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
+static int intel_dp_dsc_get_bpp_max(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -673,11 +673,11 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
 		return 6144 * 8;
 }
 
-static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
-				       u32 link_clock, u32 lane_count,
-				       u32 mode_clock, u32 mode_hdisplay,
-				       bool bigjoiner,
-				       u32 pipe_bpp)
+static u16 intel_dp_dsc_get_output_bpp_max(struct drm_i915_private *i915,
+					   u32 link_clock, u32 lane_count,
+					   u32 mode_clock, u32 mode_hdisplay,
+					   bool bigjoiner,
+					   u32 pipe_bpp)
 {
 	u32 bits_per_pixel, max_bpp_small_joiner_ram;
 	int i;
@@ -731,11 +731,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 		bits_per_pixel = valid_dsc_bpp[i];
 	}
 
-	/*
-	 * Compressed BPP in U6.4 format so multiply by 16, for Gen 11,
-	 * fractional part is 0
-	 */
-	return bits_per_pixel << 4;
+	return bits_per_pixel;
 }
 
 static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
@@ -1019,7 +1015,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
-		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+		int pipe_bpp_max = intel_dp_dsc_get_bpp_max(intel_dp, U8_MAX);
 
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_output_bpp =
@@ -1029,13 +1025,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 								true);
 		} else if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
 			dsc_max_output_bpp =
-				intel_dp_dsc_get_output_bpp(dev_priv,
-							    max_link_clock,
-							    max_lanes,
-							    target_clock,
-							    mode->hdisplay,
-							    bigjoiner,
-							    pipe_bpp) >> 4;
+				intel_dp_dsc_get_output_bpp_max(dev_priv,
+								max_link_clock,
+								max_lanes,
+								target_clock,
+								mode->hdisplay,
+								bigjoiner,
+								pipe_bpp_max);
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
 							     target_clock,
@@ -1364,7 +1360,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
+static int intel_dp_dsc_get_bpp_max(struct intel_dp *intel_dp, u8 max_req_bpc)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i, num_bpc;
@@ -1487,7 +1483,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * If Force DSC BPC is set, try to use that to compute the pipe bpp,
 	 * otherwise set pipe_bpp to the max bpp.
 	 */
-	pipe_bpp_max = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+	pipe_bpp_max = intel_dp_dsc_get_bpp_max(intel_dp, conn_state->max_requested_bpc);
 
 	if (!intel_dp->force_dsc_bpc) {
 		pipe_bpp = pipe_bpp_max;
@@ -1531,13 +1527,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		u8 dsc_dp_slice_count;
 
 		dsc_max_output_bpp =
-			intel_dp_dsc_get_output_bpp(dev_priv,
-						    pipe_config->port_clock,
-						    pipe_config->lane_count,
-						    adjusted_mode->crtc_clock,
-						    adjusted_mode->crtc_hdisplay,
-						    pipe_config->bigjoiner_pipes,
-						    pipe_bpp);
+			intel_dp_dsc_get_output_bpp_max(dev_priv,
+							pipe_config->port_clock,
+							pipe_config->lane_count,
+							adjusted_mode->crtc_clock,
+							adjusted_mode->crtc_hdisplay,
+							pipe_config->bigjoiner_pipes,
+							pipe_bpp);
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
@@ -1548,9 +1544,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				    "Compressed BPP/Slice Count not supported\n");
 			return -EINVAL;
 		}
-		pipe_config->dsc.compressed_bpp = min_t(u16,
-							       dsc_max_output_bpp >> 4,
-							       pipe_config->pipe_bpp);
+		pipe_config->dsc.compressed_bpp = min_t(u16, dsc_max_output_bpp,
+							pipe_config->pipe_bpp);
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
 
-- 
2.25.1

