Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4375A23DE8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:50:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E68310EA91;
	Fri, 31 Jan 2025 12:50:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VUXlQsoF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A807310EA91;
 Fri, 31 Jan 2025 12:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327844; x=1769863844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HaAZO7VQdUaK1FNzYyzQ131ZB6FpWwdel4iy4nB69HY=;
 b=VUXlQsoFVNNny6j8+f3d2cvT3SexYlyVr9FkLJEh1rs4rQDPZ8fd28qT
 juje7RabsQ8iqT4r+dSNjOaE3XLfIB6Oco06sga1cKR9xoym1dwD3qEXM
 py5FmQzBBVI0YmDk0m8dNHQRnWdCEskt8Vbj7In8KGCy3VXCBGWC4c42+
 oj0m7CUXUn+51VGYtoYboWh17CaA9vsZ4BXJLNzcR/yWgUY9L7qZ8E+bA
 LLP4XmLrRvS5DB6H8IsXeF8PMcLMsWt4h5zVrM+aJEg/+2RQyGAma8huQ
 RpBTSfdBlC+6HQm1Mm87jeMJvglwraWq8KFlGZsb7QJpMXcNYfspe3rhw g==;
X-CSE-ConnectionGUID: zgY2zTCxTHaJRoRC82bX3g==
X-CSE-MsgGUID: /PCRRumISASSjM6yGe+4wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38599498"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38599498"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:44 -0800
X-CSE-ConnectionGUID: lzNMxwA4Qx+1ogQxv9YyIQ==
X-CSE-MsgGUID: AWe4p3j8Qbeex3GSNljDHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114616987"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 05/14] drm/i915/dp: Move max DSC BPP reduction one level higher
Date: Fri, 31 Jan 2025 14:49:58 +0200
Message-Id: <62fa7f18ea49dce24c5d0ee7b2f0cbde9e2b609c.1738327620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738327620.git.jani.nikula@intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Now that {icl,xelpd}_dsc_compute_link_config() take .4 fixed point as
parameter, move the common max DSC BPP reduction one level higher. Use
intel_dp_dsc_bpp_step() to compute the step, and pass on to both
platform specific functions. (Though it's unused for now in
icl_dsc_compute_link_config()).

We can drop the pipe_bpp and connector parameters.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++--------------
 1 file changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b13d806c9de7..4e7b3dd4067c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2079,14 +2079,10 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 			    const struct link_config_limits *limits,
 			    int min_bpp_x16,
 			    int max_bpp_x16,
-			    int pipe_bpp,
+			    int bpp_step_x16,
 			    int timeslots)
 {
 	int i, ret;
-	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
-
-	/* Compressed BPP should be less than the Input DSC bpp */
-	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp - 1));
 
 	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
 		if (valid_dsc_bpp[i] < fxp_q4_to_int(min_bpp_x16) ||
@@ -2116,24 +2112,17 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
  */
 static int
 xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
-			      const struct intel_connector *connector,
 			      struct intel_crtc_state *pipe_config,
 			      const struct link_config_limits *limits,
 			      int min_bpp_x16,
 			      int max_bpp_x16,
-			      int pipe_bpp,
+			      int bpp_step_x16,
 			      int timeslots)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
-	int bpp_x16, bpp_step_x16;
+	int bpp_x16;
 	int ret;
 
-	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
-
-	/* Compressed BPP should be less than the Input DSC bpp */
-	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
-
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (intel_dp->force_dsc_fractional_bpp_en &&
 		    !fxp_q4_to_frac(bpp_x16))
@@ -2165,9 +2154,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	int output_bpp;
 	int dsc_min_bpp;
 	int dsc_max_bpp;
-	int min_bpp_x16, max_bpp_x16;
+	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 
@@ -2182,11 +2172,17 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
 	max_bpp_x16 = fxp_q4_from_int(dsc_max_bpp);
 
+	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
+
+	/* Compressed BPP should be less than the Input DSC bpp */
+	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
+	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
+
 	if (DISPLAY_VER(display) >= 13)
-		return xelpd_dsc_compute_link_config(intel_dp, connector, pipe_config, limits,
-						     min_bpp_x16, max_bpp_x16, pipe_bpp, timeslots);
+		return xelpd_dsc_compute_link_config(intel_dp, pipe_config, limits,
+						     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
 	return icl_dsc_compute_link_config(intel_dp, pipe_config, limits,
-					   min_bpp_x16, max_bpp_x16, pipe_bpp, timeslots);
+					   min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
 }
 
 int intel_dp_dsc_min_src_input_bpc(void)
-- 
2.39.5

