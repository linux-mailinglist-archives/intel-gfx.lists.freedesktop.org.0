Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9AF7662EC
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 06:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC71710E653;
	Fri, 28 Jul 2023 04:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E301310E64C;
 Fri, 28 Jul 2023 04:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690517755; x=1722053755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eoeM0iPHzH01BDvlkRCU0UhvkFKehbPLPcGsaszG0t8=;
 b=eQoyI7yg4w1E1Q/8UQ9Shdz/Kk4ad7+KX3r7DYw7vzMvIT7wJ7+z01+p
 ceElgI25HoteWR6pDXeA8iEcs5LQKYXBmszovmjyHINBRHM1VggcwndvX
 TOuxMEbs8wegetHqkZgXnwpZngByjL3Qi7ZFGM5mVBXd3jNl2yLbMc4k9
 iR86ubWGlB9UOEeicbdyrgeX9jV1ygENnli1fYewMGQ1dFlPCoLbAhZY9
 Di0p3cNQLezqCTHHaPTRwEiSVibwiFv7aECntIT0WqHrgrciMVs6Agzls
 GbktK7HK9yXp1Pa12OZW480XOw2EGyDI1fztCJ5kBTIqB+4mLygelcpdU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="348104201"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="348104201"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 21:15:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="797276446"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="797276446"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 21:15:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 28 Jul 2023 09:41:45 +0530
Message-Id: <20230728041150.2524032-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230728041150.2524032-1-ankit.k.nautiyal@intel.com>
References: <20230728041150.2524032-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/20] drm/i915/dp: Add DSC BPC/BPP constraints
 while selecting pipe bpp with DSC
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

Currently we check if the pipe_bpp selected is >= the
min DSC bpc/bpp requirement. We do not check if it is <= the max DSC
bpc/bpp requirement.

Add checks for max DSC BPC/BPP constraints while computing the
pipe_bpp when DSC is in use.

v2: Fix the commit message.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 34 +++++++++++++++++--------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c87c3836966c..b296db026fd8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1694,13 +1694,27 @@ u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
 }
 
 static
-bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915, int pipe_bpp)
+bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
+				struct drm_connector_state *conn_state,
+				struct link_config_limits *limits,
+				int pipe_bpp)
 {
-	return pipe_bpp >= intel_dp_dsc_min_src_input_bpc(i915) * 3;
+	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
+
+	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+
+	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->max_bpp);
+	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->min_bpp);
+
+	return pipe_bpp >= dsc_min_pipe_bpp &&
+	       pipe_bpp <= dsc_max_pipe_bpp;
 }
 
 static
-int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp)
+int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
+				struct drm_connector_state *conn_state,
+				struct link_config_limits *limits)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int forced_bpp;
@@ -1710,7 +1724,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp)
 
 	forced_bpp = intel_dp->force_dsc_bpc * 3;
 
-	if (is_dsc_pipe_bpp_sufficient(i915, forced_bpp)) {
+	if (is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, forced_bpp)) {
 		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
 		return forced_bpp;
 	}
@@ -1732,16 +1746,16 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	u16 output_bpp, dsc_max_compressed_bpp = 0;
 	int forced_bpp, pipe_bpp;
 
-	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp);
+	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state, limits);
 
 	if (forced_bpp) {
 		pipe_bpp = forced_bpp;
 	} else {
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp, conn_state->max_requested_bpc);
 
-		if (!is_dsc_pipe_bpp_sufficient(i915, pipe_bpp)) {
+		if (!is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, pipe_bpp)) {
 			drm_dbg_kms(&i915->drm,
-				    "Computed BPC less than min supported by source for DSC\n");
+				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
 		}
 	}
@@ -1783,7 +1797,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int pipe_bpp, forced_bpp;
 
-	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp);
+	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state, limits);
 
 	if (forced_bpp) {
 		pipe_bpp = forced_bpp;
@@ -1791,9 +1805,9 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		/* For eDP use max bpp that can be supported with DSC. */
 		pipe_bpp = intel_dp_dsc_compute_max_bpp(intel_dp,
 							conn_state->max_requested_bpc);
-		if (!is_dsc_pipe_bpp_sufficient(i915, pipe_bpp)) {
+		if (!is_dsc_pipe_bpp_sufficient(i915, conn_state, limits, pipe_bpp)) {
 			drm_dbg_kms(&i915->drm,
-				    "Computed BPC less than min supported by source for DSC\n");
+				    "Computed BPC is not in DSC BPC limits\n");
 			return -EINVAL;
 		}
 	}
-- 
2.40.1

