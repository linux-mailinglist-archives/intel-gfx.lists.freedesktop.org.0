Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F0A9C0416
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 12:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C6310E806;
	Thu,  7 Nov 2024 11:32:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eatBtcpg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67EA10E806;
 Thu,  7 Nov 2024 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730979174; x=1762515174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=URCCoCJtMS1GSdi5drU05RHYAzls2m6y4/qERNn2Qlk=;
 b=eatBtcpg3WvvO9fNL2KDnOcv8ENdkkBfdzBdsyiXVJtmIZkDJyOHmlSI
 rzETdVqFgoWb/QNWSMPoikrXjJ6u7zUVmt+a42TnXTf6+3Mh1YyqS7jQG
 +9hXCmReriDl4IyeqaGKWJVHzTFXGBqAEIenPUXF/Op/63yBNZbVV/1G9
 gJUI6v7CQAgreMNXBhfcKlTBhJAgmgQbtlipgr1hg9xrQLijQT0Ll+A/1
 ZC4AYAkXCqrEtQ8MBwvDr+g0O5tOyVrbE0Hk9w+cH3Fnscb4KAD3nS+V8
 9bfkfIm/TW2zD2RfycDa08bWYztGWl4b24ucjBWjfGlPjwhUS20YOcRL1 w==;
X-CSE-ConnectionGUID: /v0Ro7WITQyl3ttYq9zSBQ==
X-CSE-MsgGUID: o/KBy4V2SKqYWo3Hml9UEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30989772"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30989772"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 03:32:53 -0800
X-CSE-ConnectionGUID: aMXjSg0mTMGeDY61n4RROQ==
X-CSE-MsgGUID: hnZ4PsO3SyCh/RD+8ooZ+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="115876316"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 07 Nov 2024 03:32:52 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i914/watermark: Modify latency programmed into
 PKG_C_LATENCY
Date: Thu,  7 Nov 2024 17:02:40 +0530
Message-Id: <20241107113240.887316-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Increase the latency programmed into PKG_C_LATENCY latency to be
a multiple of line time which is written into WM_LINETIME.

WA: 22020299601
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 26 ++++++++++++++------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3bbf335c749..856b20a683fd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2848,9 +2848,11 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
 static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
+skl_program_dpkgc_latency(struct drm_i915_private *i915,
+			  bool enable_dpkgc,
+			  u32 max_linetime)
 {
-	u32 max_latency = 0;
+	u32 adjusted_latency = 0;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
@@ -2858,18 +2860,23 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 		return;
 
 	if (enable_dpkgc) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
+		adjusted_latency = skl_watermark_max_latency(i915, 1);
+		if (adjusted_latency == 0)
+			adjusted_latency = LNL_PKG_C_LATENCY_MASK;
+
+		/* Wa_22020299601 */
+		if (IS_DISPLAY_VERx100(i915, 2000, 3000))
+			adjusted_latency = max_linetime *
+				DIV_ROUND_UP(adjusted_latency, max_linetime);
 		added_wake_time = DSB_EXE_TIME +
 			i915->display.sagv.block_time_us;
 	} else {
-		max_latency = LNL_PKG_C_LATENCY_MASK;
+		adjusted_latency = LNL_PKG_C_LATENCY_MASK;
 		added_wake_time = 0;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, adjusted_latency);
 	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
@@ -2882,6 +2889,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
 	bool enable_dpkgc = false;
+	u32 max_linetime;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2911,9 +2919,11 @@ skl_compute_wm(struct intel_atomic_state *state)
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
 		    !new_crtc_state->vrr.enable)
 			enable_dpkgc = true;
+
+		max_linetime = max(new_crtc_state->linetime, max_linetime);
 	}
 
-	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
+	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc, max_linetime);
 
 	skl_print_wm_changes(state);
 
-- 
2.34.1

