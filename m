Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC3D8528F2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 07:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A8F10E177;
	Tue, 13 Feb 2024 06:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBJf8Guy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1968210E177
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 06:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707805859; x=1739341859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jYW32gXyTpE9cH/VRCRX4JwrFgn2oZ/cQ/gY5yDXAM4=;
 b=nBJf8GuyvAlfmZSyvRfIT+YKXJFSEyZgxkze9zuKAFYh9zQeKPcOsdY1
 WO+T96YTpV9eu77k6Fqi0zlhkjjz3koQ3u+o9kYV7VmQuqvHQxNYDpzMq
 5v5HuuhyZdH730iXu+kAwEVkIEOoSjT8DF2VfT24Flnt8Av11IIW443wH
 zgegU7u4lZckfPLXeWd8ZLhNB+UJ3I5PbOPXQOjlCWFbkUqR6WGpQS5Sv
 14pPe3il8Q6LmBKNbpmdB6cI4vjT8arq+9Hr0d8VwOQiH4OI0kq4VevNL
 o4t9xzq1AfVDIZzEYmUfF21apWsoLngfe3Vy2xgyByeW44L1RTJUwad1d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1949085"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="1949085"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 22:30:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="911705375"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="911705375"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 12 Feb 2024 22:30:56 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Date: Tue, 13 Feb 2024 11:58:54 +0530
Message-Id: <20240213062854.1377241-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240205080126.1159496-1-suraj.kandpal@intel.com>
References: <20240205080126.1159496-1-suraj.kandpal@intel.com>
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

If fixed refresh rate program the PKGC_LATENCY register
with the highest latency from level 1 and above LP registers
and program ADDED_WAKE_TIME = DSB execution time.
else program PKGC_LATENCY with all 1's and ADDED_WAKE_TIME as 0.
This is used to improve package C residency by sending the highest
latency tolerance requirement (LTR) when the planes are done with the
frame until the next frame programming window (set context latency,
window 2) starts.
Bspec: 68986

--v2
-Fix indentation [Chaitanya]

--v3
-Take into account if fixed refrersh rate or not [Vinod]
-Added wake time dependengt on DSB execution time [Vinod]
-Use REG_FIELD_PREP [Jani]
-Call program_pkgc_latency from appropriate place [Jani]
-no need for the ~0 while setting max latency [Jani]
-change commit message to add the new changes made in.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c     |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 59 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/skl_watermark.h |  4 +-
 3 files changed, 60 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index a6c7122fd671..d62e050185e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -325,7 +325,7 @@ static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	unsigned int latency = skl_watermark_max_latency(i915);
+	unsigned int latency = skl_watermark_max_latency(i915, 0);
 	int vblank_start;
 
 	if (crtc_state->vrr.enable) {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 614f319d754e..1d423ce0f42d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -23,6 +23,12 @@
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 
+/*It is expected that DSB can do posted writes to every register in
+ * the pipe and planes within 100us. For flip queue use case, the
+ * recommended DSB execution time is 100us + one SAGV block time.
+ */
+#define DSB_EXE_TIME 100
+
 static void skl_sagv_disable(struct drm_i915_private *i915);
 
 /* Stores plane specific WM parameters */
@@ -2904,12 +2910,51 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 	return 0;
 }
 
+/*
+ * If Fixed Refresh Rate:
+ * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
+ * watermark level1 and up and above. If watermark level 1 is
+ * invalid program it with all 1's.
+ * Program PKG_C_LATENCY Added Wake Time = DSB execution time
+ * If Variable Refresh Rate:
+ * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
+ * Program PKG_C_LATENCY Added Wake Time = 0
+ */
+static void
+skl_program_dpkgc_latency(struct drm_i915_private *i915, bool vrr_enabled)
+{
+	u32 max_latency = 0;
+	u32 clear = 0, val = 0;
+	u32 added_wake_time = 0;
+
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
+	if (vrr_enabled) {
+		max_latency = LNL_PKG_C_LATENCY_MASK;
+		added_wake_time = 0;
+	} else {
+		max_latency = skl_watermark_max_latency(i915, 1);
+		if (max_latency == 0)
+			max_latency = LNL_PKG_C_LATENCY_MASK;
+		added_wake_time = DSB_EXE_TIME +
+			i915->display.sagv.block_time_us;
+	}
+
+	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
+	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
+
+	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
+}
+
 static int
 skl_compute_wm(struct intel_atomic_state *state)
 {
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
+	bool vrr_enabled = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2936,6 +2981,15 @@ skl_compute_wm(struct intel_atomic_state *state)
 			return ret;
 	}
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (new_crtc_state->vrr.enable) {
+			vrr_enabled = true;
+			break;
+		}
+	}
+
+	skl_program_dpkgc_latency(to_i915(state->base.dev), vrr_enabled);
+
 	skl_print_wm_changes(state);
 
 	return 0;
@@ -3415,6 +3469,7 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
 		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
 
 	intel_print_wm_latency(i915, "Gen9 Plane", i915->display.wm.skl_latency);
+
 }
 
 static const struct intel_wm_funcs skl_wm_funcs = {
@@ -3731,11 +3786,11 @@ void skl_watermark_debugfs_register(struct drm_i915_private *i915)
 				    &intel_sagv_status_fops);
 }
 
-unsigned int skl_watermark_max_latency(struct drm_i915_private *i915)
+unsigned int skl_watermark_max_latency(struct drm_i915_private *i915, int initial_wm_level)
 {
 	int level;
 
-	for (level = i915->display.wm.num_levels - 1; level >= 0; level--) {
+	for (level = i915->display.wm.num_levels - 1; level >= initial_wm_level; level--) {
 		unsigned int latency = skl_wm_latency(i915, level, NULL);
 
 		if (latency)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index fb0da36fd3ec..e3d1d74a7b17 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -46,8 +46,8 @@ void skl_watermark_ipc_update(struct drm_i915_private *i915);
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
 void skl_watermark_debugfs_register(struct drm_i915_private *i915);
 
-unsigned int skl_watermark_max_latency(struct drm_i915_private *i915);
-
+unsigned int skl_watermark_max_latency(struct drm_i915_private *i915,
+				       int initial_wm_level);
 void skl_wm_init(struct drm_i915_private *i915);
 
 struct intel_dbuf_state {
-- 
2.25.1

