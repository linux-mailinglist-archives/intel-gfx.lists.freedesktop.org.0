Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7EA9C3E73
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 13:33:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B244B10E499;
	Mon, 11 Nov 2024 12:33:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZPSZN7jj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C29410E499;
 Mon, 11 Nov 2024 12:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731328396; x=1762864396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5+TTRjkQYhH99WKTcUDDwqkpeweoVT3uwv8Tb5/FLTA=;
 b=ZPSZN7jjmpO5VKMiInqYclegkfzyJ+HnjMn0Vgo8DW1yekMWxNIeHn3/
 0sZRWwv/Fl4xxMRQaaqR2vIQ6n3f+j8PVrdHWSlmZJVfX5wPe4yLviMhF
 +L53GAKesmaF2220RDcezsuMv16/xGONjf2Uz2isi9YcOU8U2f6Vg8omM
 HpH89pPNv/iubplB3/5QTF76r8Bwf8wy/bJtwLIePszD+XsSqwbsw/SEC
 buQhd+uJLUgL1MPfPYN68BfNqVJs9/aIuCTsqGLwVfi5pTxN3Yz3NEAUo
 7Du8ryHyegYBgJEoo8r7ldVxTdUtnMak2a0R4y1CIv1m9nXh342P05Z9M Q==;
X-CSE-ConnectionGUID: UZuQSHW+SoqheqY/usBhPg==
X-CSE-MsgGUID: FPZ5nBmbSUuyqgQK3tca7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35068049"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="35068049"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:33:16 -0800
X-CSE-ConnectionGUID: o4l5+U5VRh+BMnxTj0Fy7w==
X-CSE-MsgGUID: dHD6uqLeSrKuOWKdnGPL5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="117823242"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 11 Nov 2024 04:33:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Date: Mon, 11 Nov 2024 18:02:58 +0530
Message-Id: <20241111123259.1072534-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241111123259.1072534-1-suraj.kandpal@intel.com>
References: <20241111123259.1072534-1-suraj.kandpal@intel.com>
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

--v2
-Fix commit subject line [Sai Teja]
-Use individual DISPLAY_VER checks instead of range [Sai Teja]
-Initialize max_linetime [Sai Teja]

--v3
-take into account the scenario when adjusted_latency is 0 [Vinod]

WA: 22020299601
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 26 ++++++++++++++------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a97e90ac643f..e061015a89b0 100644
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
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
+	u32 adjusted_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
@@ -2858,15 +2860,22 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 		return;
 
 	if (enable_dpkgc) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
+		adjusted_latency = skl_watermark_max_latency(i915, 1);
+
+		/* Wa_22020299601 */
+		if ((DISPLAY_VER(i915) == 20 || DISPLAY_VER(i915) == 30) &&
+		    adjusted_latency != 0)
+			adjusted_latency = max_linetime *
+				DIV_ROUND_UP(adjusted_latency, max_linetime);
+		else
+			adjusted_latency = LNL_PKG_C_LATENCY_MASK;
+
 		added_wake_time = DSB_EXE_TIME +
 			i915->display.sagv.block_time_us;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, adjusted_latency);
 	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
@@ -2879,6 +2888,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
 	bool enable_dpkgc = false;
+	u32 max_linetime = 0;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2908,9 +2918,11 @@ skl_compute_wm(struct intel_atomic_state *state)
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

