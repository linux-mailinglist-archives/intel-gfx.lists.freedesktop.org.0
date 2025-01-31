Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FF2A23DF0
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C4010EA9D;
	Fri, 31 Jan 2025 12:51:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O7NBIvIH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD6810EA9C;
 Fri, 31 Jan 2025 12:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327864; x=1769863864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fmIYes2lneqc3XBA0BaMB3UA/YCuxW5mlLPSf1PyDfw=;
 b=O7NBIvIHJPyBk9t76BKyT+xjQW2cdgnY8o1hPyhh4/AAjzp+yk11ncC3
 ptZh8koIWZ2/sW2qhb7Ur3uBw1oSACnp4FfgcWDPhY4UoDGllTt8sBbjl
 xNSwB6FmEvUJk2ahXZwRZfz304r2z8W9wXxKD4pX99ImsUIAVrARjehcQ
 6/j1mfgNth3JPPjdnvg2zHfxhHiHrAHOAQu3ivJLZQ/q+KBoAi/IhJLlM
 1xLFvidR5un5loXcJVoUZNwYkjyOwjthAIGQPIcaUraQ49esWj0Bovkip
 JLk1C0/AYtWb6RxW+eGz0Aq/1R+HmM0PYmhoFhPkkDvUOCw9EsMtn47tw A==;
X-CSE-ConnectionGUID: W0pCzgaLQDKi8Bf/L/5RQQ==
X-CSE-MsgGUID: mLioM2COTiqa+3ijKtMNSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38599536"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38599536"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:04 -0800
X-CSE-ConnectionGUID: TbStuoxMSI6kGZctckYbdA==
X-CSE-MsgGUID: LJPL37VpRNKcZB3zWaxTCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114617075"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 09/14] drm/i915/dp: Inline do_dsc_compute_compressed_bpp()
Date: Fri, 31 Jan 2025 14:50:02 +0200
Message-Id: <91ae42cbdffe4938a665667955c577f887b92b9d.1738327620.git.jani.nikula@intel.com>
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

With just the one platform independent loop left in
do_dsc_compute_compressed_bpp(), we don't really need the extra function
that is simply becoming increasingly hard to even figure out a decent
name for. Just merge the whole thing to
dsc_compute_compressed_bpp(). Good riddance to the short lived
do_dsc_compute_compressed_bpp().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 60 ++++++++++---------------
 1 file changed, 23 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 11a1ac28e21e..185c9f7e8538 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2097,41 +2097,6 @@ static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
  * Find the max compressed BPP we can find a link configuration for. The BPPs to
  * try depend on the source (platform) and sink.
  */
-static int
-do_dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
-			      struct intel_crtc_state *pipe_config,
-			      const struct link_config_limits *limits,
-			      int min_bpp_x16,
-			      int max_bpp_x16,
-			      int bpp_step_x16,
-			      int timeslots)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	int bpp_x16;
-	int ret;
-
-	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
-		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
-			continue;
-
-		ret = dsc_compute_link_config(intel_dp,
-					      pipe_config,
-					      limits,
-					      bpp_x16,
-					      timeslots);
-		if (ret == 0) {
-			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
-			if (intel_dp->force_dsc_fractional_bpp_en &&
-			    fxp_q4_to_frac(bpp_x16))
-				drm_dbg_kms(display->drm,
-					    "Forcing DSC fractional bpp\n");
-
-			return 0;
-		}
-	}
-	return -EINVAL;
-}
-
 static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 				      const struct intel_connector *connector,
 				      struct intel_crtc_state *pipe_config,
@@ -2147,6 +2112,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
+	int bpp_x16;
+	int ret;
 
 	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
 
@@ -2165,8 +2132,27 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
 
-	return do_dsc_compute_compressed_bpp(intel_dp, pipe_config, limits,
-					     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
+	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
+		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
+			continue;
+
+		ret = dsc_compute_link_config(intel_dp,
+					      pipe_config,
+					      limits,
+					      bpp_x16,
+					      timeslots);
+		if (ret == 0) {
+			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
+			if (intel_dp->force_dsc_fractional_bpp_en &&
+			    fxp_q4_to_frac(bpp_x16))
+				drm_dbg_kms(display->drm,
+					    "Forcing DSC fractional bpp\n");
+
+			return 0;
+		}
+	}
+
+	return -EINVAL;
 }
 
 int intel_dp_dsc_min_src_input_bpc(void)
-- 
2.39.5

