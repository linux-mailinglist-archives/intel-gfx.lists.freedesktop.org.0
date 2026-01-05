Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 672AECF30BF
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 11:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7B810E2DC;
	Mon,  5 Jan 2026 10:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RMlhg/qc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E52810E2DC;
 Mon,  5 Jan 2026 10:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767610154; x=1799146154;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gxD1knuSgyYkFo0kYs8n7/6fwcsGu/nk2Tu/RzW/yko=;
 b=RMlhg/qc8/QFT2r9u5ugF4/Q2s2eIjhK2VQzQaCz37H4AqsEEVzDH9we
 9zc0eGMtKUOVGYj2/wKH9XcQ8bKH4XX9GoWEfDxD7xwfNE8ei4OYhULoo
 J5RaDlJhknAaDWGwviCFwi5r4kMoTdFeFExbE1AIFP9e5NTXIb+Z+MNUl
 hEDUZKquKXjTksAFRoLKlogDy4gCveNI6c86xdP65bgJaRlUOA0vNwszt
 Rd5KtJqpEwq62YhTrOgesJegKr6edHVRLG5w6CgdGDHA68IRxnTB3Wv+q
 YPHv0Im3UpWtHCh/APx3D15QS3Nskh2087NV0+dd6YAfUCy1AnY1UCd/a w==;
X-CSE-ConnectionGUID: UYmBDTphR6yO/91wBNvuPw==
X-CSE-MsgGUID: 8FDm0x2oRv6PuQmleQzVDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="79279145"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="79279145"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 02:49:13 -0800
X-CSE-ConnectionGUID: JLMq+cTAQS+NWlafUpI0/g==
X-CSE-MsgGUID: FaeIxO2ESAm2W+x309gAww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="207244560"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.187])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 02:49:11 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 ville.syrjala@intel.com
Subject: [PATCH v2] drm/i915/display: update the wa_22014263786
Date: Mon,  5 Jan 2026 12:48:58 +0200
Message-ID: <20260105104858.283686-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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

For DG2, wa_22014263786 is applicable only if the number of active
planes is greater than 1 in pipe A and pipe B. Cursor planes and
any planes on pipe C or pipe D are not considered for this. As for
DG2 this wa condition is based on the number of active planes, the
check is moved to the fbc post plane update calls. The force slb
invalidation chicken bit is set/unset based on the condition. For
the other platforms where this wa is valid, the wa applied before
enabling the FBC Unconditionally as before.

v2: wrong version send as the initial patchset
    for DG2, active planes check should be done all pipes not just
    the FBC pipe  (Matt)

Bspec: 54077, 72197
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 62 ++++++++++++++++++++++--
 1 file changed, 59 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 155b308ed66f..b01f9622510e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -915,6 +915,15 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
 	fbc->funcs->program_cfb(fbc);
 }
 
+static void fbc_slb_invalidation_wa(struct intel_fbc *fbc,
+				    bool force_invalidation)
+{
+	u32 set = force_invalidation ? DPFC_CHICKEN_FORCE_SLB_INVALIDATION : 0;
+	u32 clear = force_invalidation ? 0 : DPFC_CHICKEN_FORCE_SLB_INVALIDATION;
+
+	intel_de_rmw(fbc->display, ILK_DPFC_CHICKEN(fbc->id), clear, set);
+}
+
 static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
@@ -946,10 +955,13 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 	 * Wa_22014263786
 	 * Fixes: Screen flicker with FBC and Package C state enabled
 	 * Workaround: Forced SLB invalidation before start of new frame.
+	 *             For DG2, wa is applied only if the number of planes in
+	 *             PIPE A and PIPE B is > 1. This wa criteria is assessed
+	 *             seprately on every post plane update call to check if
+	 *             the number of active planes condition is met.
 	 */
-	if (intel_display_wa(display, 22014263786))
-		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
-			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
+	if (intel_display_wa(display, 22014263786) && !display->platform.dg2)
+		fbc_slb_invalidation_wa(fbc, true);
 
 	/* wa_18038517565 Disable DPFC clock gating before FBC enable */
 	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
@@ -1887,13 +1899,57 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
 	intel_fbc_activate(fbc);
 }
 
+static void
+dg2_fbc_update_slb_invalidation(const struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	int i, num_active_planes = 0;
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	enum intel_fbc_id fbc_id;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		u8 active_planes;
+
+		if (crtc->pipe != PIPE_A && crtc->pipe != PIPE_B)
+			continue;
+
+		active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
+		num_active_planes += hweight8(active_planes);
+	}
+
+	for_each_fbc_id(display, fbc_id) {
+		struct intel_fbc *fbc = display->fbc.instances[fbc_id];
+
+		mutex_lock(&fbc->lock);
+
+		if (fbc->state.plane)
+			fbc_slb_invalidation_wa(fbc, num_active_planes > 1);
+
+		mutex_unlock(&fbc->lock);
+	}
+}
+
 void intel_fbc_post_update(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	int i;
 
+	/*
+	 * Wa_22014263786
+	 * Fixes: Screen flicker with FBC and Package C state enabled
+	 * Workaround: Forced SLB invalidation before start of new frame.
+	 *             For DG2, wa is applied only if the number of planes in
+	 *             PIPE A and PIPE B is > 1. This wa criteria is assessed
+	 *             seprately on every post plane update call to check if
+	 *             the number of active planes condition is met.
+	 */
+	if (display->platform.dg2)
+		dg2_fbc_update_slb_invalidation(state);
+
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
 		struct intel_fbc *fbc = plane->fbc;
 
-- 
2.43.0

