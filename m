Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C090859C51
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 07:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D5910E150;
	Mon, 19 Feb 2024 06:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iNzSQYC0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D31AD10E150
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 06:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708324719; x=1739860719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MjHcs3K+0jb65z+/hZ4fhVtxGwi8TlbPgLOt3zpiYZA=;
 b=iNzSQYC08tPbJZV+TFRfWRIAOCw3Dfyo0dYcmCDTF4hxollJwZ300xng
 exBUZTw9DNn65u6RSTLOvTS5Xn7CuXC3reiJcJrZfc+p4F9WtO21PCvmc
 ovnlH2mX+HOAqzoAK1PJy32yCyCz3wP80hgupFSG+rFepD1fjP7aRoguS
 2jb5W20//hICs63c80Gtmue+QUIw3sCx7bkbfSbYNzFk+sQ2HcjeYVOwf
 QXygtrBAuqOEOXGGSfPquFESL0C91y+AOMEF/v9xaaJcmBqt8THz3hqvG
 Pxy7rvGUzNNM7SPXNlICJLqlU1XTjKAOHR5PX5FQsz/rU3KXSN4aYUzix Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="2252855"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="2252855"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2024 22:38:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="4658321"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 18 Feb 2024 22:38:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Date: Mon, 19 Feb 2024 12:06:38 +0530
Message-Id: <20240219063638.1467114-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240213062854.1377241-1-suraj.kandpal@intel.com>
References: <20240213062854.1377241-1-suraj.kandpal@intel.com>
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

--v4
-Remove extra blank line [Vinod]
-move the vrr.enable check to previous loop [Vinod]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c     |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 54 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/skl_watermark.h |  4 +-
 3 files changed, 55 insertions(+), 5 deletions(-)

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
index 614f319d754e..c6b9be80d83c 100644
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
@@ -2934,8 +2979,13 @@ skl_compute_wm(struct intel_atomic_state *state)
 		ret = skl_wm_add_affected_planes(state, crtc);
 		if (ret)
 			return ret;
+
+		if (new_crtc_state->vrr.enable)
+			vrr_enabled = true;
 	}
 
+	skl_program_dpkgc_latency(to_i915(state->base.dev), vrr_enabled);
+
 	skl_print_wm_changes(state);
 
 	return 0;
@@ -3731,11 +3781,11 @@ void skl_watermark_debugfs_register(struct drm_i915_private *i915)
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

