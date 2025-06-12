Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A88AAAD6FD5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:12:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F215410E802;
	Thu, 12 Jun 2025 12:12:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dTmf3qZe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696E210E801;
 Thu, 12 Jun 2025 12:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730365; x=1781266365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4u9OWzewYtNneBF6cV5GtVwNWz2d5AGKQXk0lHx6h3Y=;
 b=dTmf3qZe+i4k/rW9TaIaPhEdBw9tb6VE4BjX21mSv63t8x3xcBvZDOYA
 ULu2aNUnjj5tZFWd6tO5/ZTmczaETYmnzos6ZQdUuVIL9EZB1Ghn1IfD1
 UWtDI5rDTY2nVjwNXGlWouI3NLer19vfLFGDgR0Xwaobek4GjiO1ENb+/
 G/0KrWtefLjz68UKdLbhW+jPA/fV/WrkiwI5ix62pH+nQXCcMSnT1QJQQ
 Hjscqxx6VgLvww7bVdZU/u/N6AikpqWkTsrE5V+jUnPyDIxkCek3J+UN5
 +xPkHTaq8piN2OkYHvsXhbhw2+gi4h7APGynyBDcFtz6hnB2Fdd3ElYvj g==;
X-CSE-ConnectionGUID: vDB2+XIAToqd2oH+uG+7mg==
X-CSE-MsgGUID: BDV17BsbSJ2ObtrJJkS9vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="63314857"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="63314857"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:45 -0700
X-CSE-ConnectionGUID: Ff7Gzsa0T4OH1i5UbgCAnA==
X-CSE-MsgGUID: MzVMRW/PSTGBw0GPfymxaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="178476975"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/16] drm/i915: move icl_sagv_{pre,
 post}_plane_update() to intel_bw.c
Date: Thu, 12 Jun 2025 15:12:01 +0300
Message-Id: <60d1b90f549df3f7f12380149619c7ae6bed5ea9.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

Prefer only looking at struct intel_bw_state internals inside
intel_bw.c. To that effect, move icl_sagv_{pre,post}_plane_update()
there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 68 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h      |  4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 64 ------------------
 3 files changed, 68 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 2e801ef313c8..05cb1bd65ee0 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -154,8 +154,8 @@ static bool is_sagv_enabled(struct intel_display *display, u16 points_mask)
 			      ICL_PCODE_REQ_QGV_PT_MASK);
 }
 
-int icl_pcode_restrict_qgv_points(struct intel_display *display,
-				  u32 points_mask)
+static int icl_pcode_restrict_qgv_points(struct intel_display *display,
+					 u32 points_mask)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
@@ -974,6 +974,70 @@ static void icl_force_disable_sagv(struct intel_display *display,
 	icl_pcode_restrict_qgv_points(display, bw_state->qgv_points_mask);
 }
 
+void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_bw_state *old_bw_state =
+		intel_atomic_get_old_bw_state(state);
+	const struct intel_bw_state *new_bw_state =
+		intel_atomic_get_new_bw_state(state);
+	u16 old_mask, new_mask;
+
+	if (!new_bw_state)
+		return;
+
+	old_mask = old_bw_state->qgv_points_mask;
+	new_mask = old_bw_state->qgv_points_mask | new_bw_state->qgv_points_mask;
+
+	if (old_mask == new_mask)
+		return;
+
+	WARN_ON(!new_bw_state->base.changed);
+
+	drm_dbg_kms(display->drm, "Restricting QGV points: 0x%x -> 0x%x\n",
+		    old_mask, new_mask);
+
+	/*
+	 * Restrict required qgv points before updating the configuration.
+	 * According to BSpec we can't mask and unmask qgv points at the same
+	 * time. Also masking should be done before updating the configuration
+	 * and unmasking afterwards.
+	 */
+	icl_pcode_restrict_qgv_points(display, new_mask);
+}
+
+void icl_sagv_post_plane_update(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_bw_state *old_bw_state =
+		intel_atomic_get_old_bw_state(state);
+	const struct intel_bw_state *new_bw_state =
+		intel_atomic_get_new_bw_state(state);
+	u16 old_mask, new_mask;
+
+	if (!new_bw_state)
+		return;
+
+	old_mask = old_bw_state->qgv_points_mask | new_bw_state->qgv_points_mask;
+	new_mask = new_bw_state->qgv_points_mask;
+
+	if (old_mask == new_mask)
+		return;
+
+	WARN_ON(!new_bw_state->base.changed);
+
+	drm_dbg_kms(display->drm, "Relaxing QGV points: 0x%x -> 0x%x\n",
+		    old_mask, new_mask);
+
+	/*
+	 * Allow required qgv points after updating the configuration.
+	 * According to BSpec we can't mask and unmask qgv points at the same
+	 * time. Also masking should be done before updating the configuration
+	 * and unmasking afterwards.
+	 */
+	icl_pcode_restrict_qgv_points(display, new_mask);
+}
+
 static int mtl_find_qgv_points(struct intel_display *display,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index ee6e4a7ac89d..68b95c2a0cb9 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -67,8 +67,6 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 void intel_bw_init_hw(struct intel_display *display);
 int intel_bw_init(struct intel_display *display);
 int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms);
-int icl_pcode_restrict_qgv_points(struct intel_display *display,
-				  u32 points_mask);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
 int intel_bw_min_cdclk(struct intel_display *display,
@@ -79,5 +77,7 @@ void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
 bool intel_bw_pmdemand_needs_update(struct intel_atomic_state *state);
 bool intel_bw_can_enable_sagv(struct intel_display *display,
 			      const struct intel_bw_state *bw_state);
+void icl_sagv_pre_plane_update(struct intel_atomic_state *state);
+void icl_sagv_post_plane_update(struct intel_atomic_state *state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ec2838d641fb..95515d69ad68 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -269,70 +269,6 @@ static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
 		skl_sagv_enable(display);
 }
 
-static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
-{
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_bw_state *old_bw_state =
-		intel_atomic_get_old_bw_state(state);
-	const struct intel_bw_state *new_bw_state =
-		intel_atomic_get_new_bw_state(state);
-	u16 old_mask, new_mask;
-
-	if (!new_bw_state)
-		return;
-
-	old_mask = old_bw_state->qgv_points_mask;
-	new_mask = old_bw_state->qgv_points_mask | new_bw_state->qgv_points_mask;
-
-	if (old_mask == new_mask)
-		return;
-
-	WARN_ON(!new_bw_state->base.changed);
-
-	drm_dbg_kms(display->drm, "Restricting QGV points: 0x%x -> 0x%x\n",
-		    old_mask, new_mask);
-
-	/*
-	 * Restrict required qgv points before updating the configuration.
-	 * According to BSpec we can't mask and unmask qgv points at the same
-	 * time. Also masking should be done before updating the configuration
-	 * and unmasking afterwards.
-	 */
-	icl_pcode_restrict_qgv_points(display, new_mask);
-}
-
-static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
-{
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_bw_state *old_bw_state =
-		intel_atomic_get_old_bw_state(state);
-	const struct intel_bw_state *new_bw_state =
-		intel_atomic_get_new_bw_state(state);
-	u16 old_mask, new_mask;
-
-	if (!new_bw_state)
-		return;
-
-	old_mask = old_bw_state->qgv_points_mask | new_bw_state->qgv_points_mask;
-	new_mask = new_bw_state->qgv_points_mask;
-
-	if (old_mask == new_mask)
-		return;
-
-	WARN_ON(!new_bw_state->base.changed);
-
-	drm_dbg_kms(display->drm, "Relaxing QGV points: 0x%x -> 0x%x\n",
-		    old_mask, new_mask);
-
-	/*
-	 * Allow required qgv points after updating the configuration.
-	 * According to BSpec we can't mask and unmask qgv points at the same
-	 * time. Also masking should be done before updating the configuration
-	 * and unmasking afterwards.
-	 */
-	icl_pcode_restrict_qgv_points(display, new_mask);
-}
-
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-- 
2.39.5

