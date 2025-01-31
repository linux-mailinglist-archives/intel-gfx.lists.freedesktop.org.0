Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5002A23DE7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4101310EA90;
	Fri, 31 Jan 2025 12:50:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j8G21QMg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B43310E1EA;
 Fri, 31 Jan 2025 12:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327839; x=1769863839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x7oZM0yVKu+/W6owRoSK4agZYG7z6TnAWIFl1vUFzFc=;
 b=j8G21QMgeYDh8x3Cy67/NYZ8gkR62g+8PRWxjaGJCdPK1fKA1DA+YT2n
 j7zvtsAnuUDlyIRw8LXxau9M5uG1DkWPjGacjgB47Q+hTuLAev3xLLD+G
 EpSdrta7V396/6sYvLvZvRFWxKF9T+7xidiHv2NOqHEycUyHDr/nsm4x6
 x6mJjIIM5oiUsJrV6tQ2tP+sPZwgy7FWASpAJGE2GQVZ+4NCbj8gxHRGm
 06jgZ+0ndYp2halR4AamP13yhyyJY+aFhga8u1pCBeHPvswhS3wS7rzkQ
 K+6nLezsiVGDsJ0a8bqlTrnRfOBnUeyjtD0NUmLUfh08JWrfMSdZZwEPL Q==;
X-CSE-ConnectionGUID: whyQSgD6R9CFEo2R/2C6wQ==
X-CSE-MsgGUID: zgO31/1cRdWrjlRKSbQYog==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38599491"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38599491"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:38 -0800
X-CSE-ConnectionGUID: irHD9ghtSlioJWLmRhfWmQ==
X-CSE-MsgGUID: pgAY2xtHSP2iwLr8ULmwUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114616980"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 04/14] drm/i915/dp: Pass .4 BPP values to {icl,
 xelpd}_dsc_compute_link_config()
Date: Fri, 31 Jan 2025 14:49:57 +0200
Message-Id: <e72f153fd28755e41ee8c5a7b9e6de257c3b27ac.1738327620.git.jani.nikula@intel.com>
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

Try to keep the variables in the same domain a bit longer to reduce
juggling between integers and .4 fixed point. Change parameter order to
min, max while at it.

For now, keep the juggling in dsc_compute_compressed_bpp() ensure
min/max will always have 0 fractional part. To be fixed later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++-----------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 02d1a5453b46..b13d806c9de7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2077,8 +2077,8 @@ static int
 icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 			    struct intel_crtc_state *pipe_config,
 			    const struct link_config_limits *limits,
-			    int dsc_max_bpp,
-			    int dsc_min_bpp,
+			    int min_bpp_x16,
+			    int max_bpp_x16,
 			    int pipe_bpp,
 			    int timeslots)
 {
@@ -2086,11 +2086,11 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp, output_bpp - 1);
+	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp - 1));
 
 	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
-		if (valid_dsc_bpp[i] < dsc_min_bpp ||
-		    valid_dsc_bpp[i] > dsc_max_bpp)
+		if (valid_dsc_bpp[i] < fxp_q4_to_int(min_bpp_x16) ||
+		    valid_dsc_bpp[i] > fxp_q4_to_int(max_bpp_x16))
 			continue;
 
 		ret = dsc_compute_link_config(intel_dp,
@@ -2119,8 +2119,8 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 			      const struct intel_connector *connector,
 			      struct intel_crtc_state *pipe_config,
 			      const struct link_config_limits *limits,
-			      int dsc_max_bpp,
-			      int dsc_min_bpp,
+			      int min_bpp_x16,
+			      int max_bpp_x16,
 			      int pipe_bpp,
 			      int timeslots)
 {
@@ -2132,10 +2132,9 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
-	dsc_max_bpp = min(dsc_max_bpp << 4, (output_bpp << 4) - bpp_step_x16);
-	dsc_min_bpp = dsc_min_bpp << 4;
+	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
 
-	for (bpp_x16 = dsc_max_bpp; bpp_x16 >= dsc_min_bpp; bpp_x16 -= bpp_step_x16) {
+	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (intel_dp->force_dsc_fractional_bpp_en &&
 		    !fxp_q4_to_frac(bpp_x16))
 			continue;
@@ -2168,6 +2167,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int dsc_min_bpp;
 	int dsc_max_bpp;
+	int min_bpp_x16, max_bpp_x16;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 
@@ -2178,11 +2178,15 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 								num_joined_pipes);
 	dsc_max_bpp = min(dsc_joiner_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
+	/* FIXME: remove the round trip via integers */
+	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
+	max_bpp_x16 = fxp_q4_from_int(dsc_max_bpp);
+
 	if (DISPLAY_VER(display) >= 13)
 		return xelpd_dsc_compute_link_config(intel_dp, connector, pipe_config, limits,
-						     dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
+						     min_bpp_x16, max_bpp_x16, pipe_bpp, timeslots);
 	return icl_dsc_compute_link_config(intel_dp, pipe_config, limits,
-					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
+					   min_bpp_x16, max_bpp_x16, pipe_bpp, timeslots);
 }
 
 int intel_dp_dsc_min_src_input_bpc(void)
-- 
2.39.5

