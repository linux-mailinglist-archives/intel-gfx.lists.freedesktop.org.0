Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB08492DF33
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 06:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB9910E1C2;
	Thu, 11 Jul 2024 04:51:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DmewoLlw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A84210E1C2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 04:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720673491; x=1752209491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E10kJeEQlJ2M5iFtLcApITDkfLxQSStUSb8NlDA6c1Q=;
 b=DmewoLlwVhnY0ZK60esrmMpJ0tMjs5PaTg54UZU5balXm4kLxHCoHXKO
 FFkXMxu+llxrkfqPh2OAEqxHv/QaxdJeHnOYRc9GoLndOq2dM3gX4Aym7
 w7WU6WrjUnc3ee4QCx3a30goneTBY1l8MbcY0PUEz8OWyhvKDfMO+di/Y
 Z7IvXYy7sPT335CFQk0IMdn0R7YyUBdRs3fbWfSCotMIcztHWFjPIynMv
 8/6VQ2dD/LK7h5joEkN7l2rLOrrka3xCVVGX4OD6zWin3xxT4e/AbZkRZ
 e77hT7l4TWKUOka5ASuLYFpTr1417yIw9VnlLbkS1UFfgC+swTOxpAIiE Q==;
X-CSE-ConnectionGUID: 3iumTcPeQJunai5NaJQHqA==
X-CSE-MsgGUID: +1C3t4FmTziAdpzxVInERQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="28624120"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="28624120"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 21:51:31 -0700
X-CSE-ConnectionGUID: UMZc7Z0OQei8g5J8MRUB7w==
X-CSE-MsgGUID: innxTGdLTs+osuSX83PFKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="79570565"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 10 Jul 2024 21:51:28 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, jeevan.b@intel.com,
 mitulkumar.ajitkumar.golani@intel.com, ramanaidu.naladala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dpkgc: Add VRR condition for DPKGC Enablement
Date: Thu, 11 Jul 2024 10:19:05 +0530
Message-ID: <20240711044905.3306882-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
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

DPKGC can now be enabled with VRR enabled if Vmin = Vmax = Flipline
is met.

Bspec: 68986
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 24 +++++++++++---------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a2726364b34d..045c7cac166b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2830,17 +2830,17 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 }
 
 /*
- * If Fixed Refresh Rate:
+ * If Fixed Refresh Rate or For VRR case Vmin = Vmax = Flipline:
  * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
  * watermark level1 and up and above. If watermark level 1 is
  * invalid program it with all 1's.
  * Program PKG_C_LATENCY Added Wake Time = DSB execution time
- * If Variable Refresh Rate:
+ * If Variable Refresh Rate where Vmin != Vmax != Flipline:
  * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
 static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool vrr_enabled)
+skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 {
 	u32 max_latency = 0;
 	u32 clear = 0, val = 0;
@@ -2849,15 +2849,15 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool vrr_enabled)
 	if (DISPLAY_VER(i915) < 20)
 		return;
 
-	if (vrr_enabled) {
-		max_latency = LNL_PKG_C_LATENCY_MASK;
-		added_wake_time = 0;
-	} else {
+	if (enable_dpkgc) {
 		max_latency = skl_watermark_max_latency(i915, 1);
 		if (max_latency == 0)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
 		added_wake_time = DSB_EXE_TIME +
 			i915->display.sagv.block_time_us;
+	} else {
+		max_latency = LNL_PKG_C_LATENCY_MASK;
+		added_wake_time = 0;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
@@ -2873,7 +2873,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
-	bool vrr_enabled = false;
+	bool enable_dpkgc = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2899,11 +2899,13 @@ skl_compute_wm(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		if (new_crtc_state->vrr.enable)
-			vrr_enabled = true;
+		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
+		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
+		    !new_crtc_state->vrr.enable)
+			enable_dpkgc = true;
 	}
 
-	skl_program_dpkgc_latency(to_i915(state->base.dev), vrr_enabled);
+	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
 
 	skl_print_wm_changes(state);
 
-- 
2.43.2

