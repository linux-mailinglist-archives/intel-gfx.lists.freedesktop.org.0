Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3B9BDD1EB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708F610E72B;
	Wed, 15 Oct 2025 07:35:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F3OG7lBS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8181A10E72B;
 Wed, 15 Oct 2025 07:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760513738; x=1792049738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UVg+FAyo5G3O9uBdyA9r79c87Ff8SUhfyexPLb0h78Y=;
 b=F3OG7lBSdVUcAgP8GumgldsJXY0QrLcAW1FAvZVis9rutFX//tSSSbGf
 k2WC+bnwBEp8tINpNsaLsvUgOCHGvQEREKlcGUJgMtR3h12AnBnG8ShxJ
 NoXlFm8gSyz2g41lBq5I+hHkaZaicyh6woawQAp/CbxcjGk+A6SpZQv8v
 hzbPCY5nha6Ukyx57bu1MibYA9I0nwFS5EIUskir4fs/STwwGFury9MaD
 LkZvKeK+wJ1zBDO7yuEkUMswHl8of8wjklvqeOvi96F94oedLr7cdPpIT
 FwUL9yxchhfHsdalPjJV/MvEhcBXOPwB6vWN18bPDb0U8Nz87wHyFh7fq g==;
X-CSE-ConnectionGUID: 2fWHEx6vSEqCl9ruT+VljA==
X-CSE-MsgGUID: wBKQz6qdQtKt8LYmFSRBZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62573626"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62573626"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:38 -0700
X-CSE-ConnectionGUID: HuiKW+FtTTKHAQ2O5wo6ww==
X-CSE-MsgGUID: 00+395eATf6xs2NVRnq6Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="182882305"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 06/10] drm/i915/psr: Introduce helper
 intel_psr_set_non_psr_pipes()
Date: Wed, 15 Oct 2025 12:52:13 +0530
Message-ID: <20251015072217.1710717-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
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

Add a function to set non-psr pipes in crtc_state based on psr features.
This will help to move this part later where we re-evaluate psr features
and update the non-psr pipes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 49 ++++++++++++++----------
 1 file changed, 29 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1d06011a97ce..e97dcfa7673c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1711,15 +1711,40 @@ static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
 		!crtc_state->has_sel_update);
 }
 
+static
+void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
+				 struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	struct intel_crtc *crtc;
+	u8 active_pipes = 0;
+
+	/* Wa_16025596647 */
+	if (DISPLAY_VER(display) != 20 &&
+	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+		return;
+
+	/* Not needed by Panel Replay  */
+	if (crtc_state->has_panel_replay)
+		return;
+
+	/* We ignore possible secondary PSR/Panel Replay capable eDP */
+	for_each_intel_crtc(display->drm, crtc)
+		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
+
+	active_pipes = intel_calc_active_pipes(state, active_pipes);
+
+	crtc_state->active_non_psr_pipes = active_pipes &
+		~BIT(to_intel_crtc(crtc_state->uapi.crtc)->pipe);
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
-	struct intel_crtc *crtc;
-	u8 active_pipes = 0;
 
 	if (!psr_global_enabled(intel_dp)) {
 		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
@@ -1768,23 +1793,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 			    "PSR disabled to workaround PSR FSM hang issue\n");
 	}
 
-	/* Rest is for Wa_16025596647 */
-	if (DISPLAY_VER(display) != 20 &&
-	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
-		return;
-
-	/* Not needed by Panel Replay  */
-	if (crtc_state->has_panel_replay)
-		return;
-
-	/* We ignore possible secondary PSR/Panel Replay capable eDP */
-	for_each_intel_crtc(display->drm, crtc)
-		active_pipes |= crtc->active ? BIT(crtc->pipe) : 0;
-
-	active_pipes = intel_calc_active_pipes(state, active_pipes);
-
-	crtc_state->active_non_psr_pipes = active_pipes &
-		~BIT(to_intel_crtc(crtc_state->uapi.crtc)->pipe);
+	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.45.2

