Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B48AE7F63
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B93410E6D0;
	Wed, 25 Jun 2025 10:33:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h4XA5e3E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0841D10E6CD;
 Wed, 25 Jun 2025 10:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847589; x=1782383589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BnkcF1OPXhY5Qogpt90l7oilzxMGZ8LvOgocjfABPjU=;
 b=h4XA5e3E6WEvAhBkrLZbh0GJJoffJZm5zBlmQ0IG9QV0MLz/fS7zXV3Q
 /9EJwidTaFGi1VcWFoB9Ls9tTizWk2kvCeEYz9Lg3WfKB/5lNsyQsp+BH
 0hlkjBpVUVU7LUhFNP9jGh710xViynbQ5dY/WglSlH+CLb+Kj/9e/KVcJ
 hOm8Mb1Il62nFtlV72Ljc6vZwULrlOVH0RfFe8GF6mchLJ0Uoh/WUeDgF
 +IVvLQ/dstv3Kenzh6/gpzhUdusEk2ajMCg0VqOTO/Ew9E2CSs2p77zaa
 qP5tMVjs+7lEuAfOie5yTEu5i0J4iqcMP80E1de3DNXycUPMR0Vf+QQ8L A==;
X-CSE-ConnectionGUID: F8eySSY8SkqKZS34/KRmbg==
X-CSE-MsgGUID: E7YwLBcbQP2I/j0JsPCB1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53080451"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53080451"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:09 -0700
X-CSE-ConnectionGUID: NScRUP+KSKy8ZhuQWCgv4g==
X-CSE-MsgGUID: FDHDtt4sT0Si4KZYNbieQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152476501"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 06/16] drm/i915: move icl_sagv_{pre,
 post}_plane_update() to intel_bw.c
Date: Wed, 25 Jun 2025 13:32:24 +0300
Message-Id: <dedcbeb3389ecd50195aa37de75e9992fae5d197.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
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

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 68 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h      |  4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 64 ------------------
 3 files changed, 68 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 32e38eeb8128..3c3b4dd71ec3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -153,8 +153,8 @@ static bool is_sagv_enabled(struct intel_display *display, u16 points_mask)
 			      ICL_PCODE_REQ_QGV_PT_MASK);
 }
 
-int icl_pcode_restrict_qgv_points(struct intel_display *display,
-				  u32 points_mask)
+static int icl_pcode_restrict_qgv_points(struct intel_display *display,
+					 u32 points_mask)
 {
 	int ret;
 
@@ -981,6 +981,70 @@ static void icl_force_disable_sagv(struct intel_display *display,
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
index 514d9cd45d69..f98c4a0fc7a9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -265,70 +265,6 @@ static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
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

