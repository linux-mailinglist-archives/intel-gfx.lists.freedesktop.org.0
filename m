Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF72E54C8E9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 14:48:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214B410E592;
	Wed, 15 Jun 2022 12:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF8910E592
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 12:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655297290; x=1686833290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vnSH29a8oHlwGtxugN3JoYl9c+4X7whn08wAd6255+M=;
 b=Sx4v5F5rjo/kZje3NHWKSREtvCK+f6vkdO5NN9CVq8XerKuCw9s3J1oO
 WAMMNkeTretiGl5g/L8Xl4onIKjck5956pQ/ApDcIpSr5CUE5eqUO1UcM
 jCFmSIEI3tFOHp8AwYL5uwLSt6ekK0FlcfLaGgfiU6c/hSjPjwB3FXLwX
 vo0Q7gTyk96N/tG/cDOC01HFxmXOqLQDBLA+yTJpRAbxdvDb3RDYDDyZp
 WjJmmIUIvRhgO3/isqbMs6d2GXjl7eztWt5VsJCWnkzos0Wh+9r5WDllT
 z3nAWwVLFGVHP4t42F0h26ozQytb23pM6c2tTUziTD9X8HY99FY45XiU8 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="258800849"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="258800849"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="640976231"
Received: from jazuniga-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.33.103])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 15:47:55 +0300
Message-Id: <b3cfa412e11138540db949dc2f0ba44052a3b92a.1655297182.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655297182.git.jani.nikula@intel.com>
References: <cover.1655297182.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/wm: move wm state verification to
 intel_pm.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

By moving wm state verification to intel_pm.c, we can make a bunch of
functions static, hiding the wm details better. Also declutter
intel_display.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 122 +---------------
 drivers/gpu/drm/i915/intel_pm.c              | 138 +++++++++++++++++--
 drivers/gpu/drm/i915/intel_pm.h              |  14 +-
 3 files changed, 132 insertions(+), 142 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d9c8aeef686..17492f9f94ed 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6424,126 +6424,6 @@ static void intel_pipe_config_sanity_check(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void verify_wm_state(struct intel_crtc *crtc,
-			    struct intel_crtc_state *new_crtc_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct skl_hw_state {
-		struct skl_ddb_entry ddb[I915_MAX_PLANES];
-		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
-		struct skl_pipe_wm wm;
-	} *hw;
-	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
-	int level, max_level = ilk_wm_max_level(dev_priv);
-	struct intel_plane *plane;
-	u8 hw_enabled_slices;
-
-	if (DISPLAY_VER(dev_priv) < 9 || !new_crtc_state->hw.active)
-		return;
-
-	hw = kzalloc(sizeof(*hw), GFP_KERNEL);
-	if (!hw)
-		return;
-
-	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
-
-	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
-
-	hw_enabled_slices = intel_enabled_dbuf_slices_mask(dev_priv);
-
-	if (DISPLAY_VER(dev_priv) >= 11 &&
-	    hw_enabled_slices != dev_priv->dbuf.enabled_slices)
-		drm_err(&dev_priv->drm,
-			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
-			dev_priv->dbuf.enabled_slices,
-			hw_enabled_slices);
-
-	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
-		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
-		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
-
-		/* Watermarks */
-		for (level = 0; level <= max_level; level++) {
-			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
-			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
-
-			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
-				continue;
-
-			drm_err(&dev_priv->drm,
-				"[PLANE:%d:%s] mismatch in WM%d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				plane->base.base.id, plane->base.name, level,
-				sw_wm_level->enable,
-				sw_wm_level->blocks,
-				sw_wm_level->lines,
-				hw_wm_level->enable,
-				hw_wm_level->blocks,
-				hw_wm_level->lines);
-		}
-
-		hw_wm_level = &hw->wm.planes[plane->id].trans_wm;
-		sw_wm_level = skl_plane_trans_wm(sw_wm, plane->id);
-
-		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(&dev_priv->drm,
-				"[PLANE:%d:%s] mismatch in trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				plane->base.base.id, plane->base.name,
-				sw_wm_level->enable,
-				sw_wm_level->blocks,
-				sw_wm_level->lines,
-				hw_wm_level->enable,
-				hw_wm_level->blocks,
-				hw_wm_level->lines);
-		}
-
-		hw_wm_level = &hw->wm.planes[plane->id].sagv.wm0;
-		sw_wm_level = &sw_wm->planes[plane->id].sagv.wm0;
-
-		if (HAS_HW_SAGV_WM(dev_priv) &&
-		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(&dev_priv->drm,
-				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				plane->base.base.id, plane->base.name,
-				sw_wm_level->enable,
-				sw_wm_level->blocks,
-				sw_wm_level->lines,
-				hw_wm_level->enable,
-				hw_wm_level->blocks,
-				hw_wm_level->lines);
-		}
-
-		hw_wm_level = &hw->wm.planes[plane->id].sagv.trans_wm;
-		sw_wm_level = &sw_wm->planes[plane->id].sagv.trans_wm;
-
-		if (HAS_HW_SAGV_WM(dev_priv) &&
-		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(&dev_priv->drm,
-				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-				plane->base.base.id, plane->base.name,
-				sw_wm_level->enable,
-				sw_wm_level->blocks,
-				sw_wm_level->lines,
-				hw_wm_level->enable,
-				hw_wm_level->blocks,
-				hw_wm_level->lines);
-		}
-
-		/* DDB */
-		hw_ddb_entry = &hw->ddb[PLANE_CURSOR];
-		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
-
-		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
-			drm_err(&dev_priv->drm,
-				"[PLANE:%d:%s] mismatch in DDB (expected (%u,%u), found (%u,%u))\n",
-				plane->base.base.id, plane->base.name,
-				sw_ddb_entry->start, sw_ddb_entry->end,
-				hw_ddb_entry->start, hw_ddb_entry->end);
-		}
-	}
-
-	kfree(hw);
-}
-
 static void
 verify_connector_state(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
@@ -6836,7 +6716,7 @@ intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	if (!intel_crtc_needs_modeset(new_crtc_state) && !new_crtc_state->update_pipe)
 		return;
 
-	verify_wm_state(crtc, new_crtc_state);
+	intel_wm_verify_state(crtc, new_crtc_state);
 	verify_connector_state(state, crtc);
 	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
 	verify_shared_dpll_state(crtc, old_crtc_state, new_crtc_state);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 5a61fc3f26c1..0ce65d3a0e79 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4368,9 +4368,9 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
 	skl_ddb_entry_init_from_hw(ddb_y, val);
 }
 
-void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
-			       struct skl_ddb_entry *ddb,
-			       struct skl_ddb_entry *ddb_y)
+static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
+				      struct skl_ddb_entry *ddb,
+				      struct skl_ddb_entry *ddb_y)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum intel_display_power_domain power_domain;
@@ -4950,7 +4950,7 @@ skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
 	return data_rate;
 }
 
-const struct skl_wm_level *
+static const struct skl_wm_level *
 skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
 		   enum plane_id plane_id,
 		   int level)
@@ -4963,7 +4963,7 @@ skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
 	return &wm->wm[level];
 }
 
-const struct skl_wm_level *
+static const struct skl_wm_level *
 skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
 		   enum plane_id plane_id)
 {
@@ -5915,8 +5915,8 @@ void skl_write_cursor_wm(struct intel_plane *plane,
 	skl_ddb_entry_write(dev_priv, CUR_BUF_CFG(pipe), ddb);
 }
 
-bool skl_wm_level_equals(const struct skl_wm_level *l1,
-			 const struct skl_wm_level *l2)
+static bool skl_wm_level_equals(const struct skl_wm_level *l1,
+				const struct skl_wm_level *l2)
 {
 	return l1->enable == l2->enable &&
 		l1->ignore_lines == l2->ignore_lines &&
@@ -6488,8 +6488,8 @@ static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
 	level->lines = REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
 }
 
-void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
-			      struct skl_pipe_wm *out)
+static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
+				     struct skl_pipe_wm *out)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
@@ -7166,6 +7166,126 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
 }
 
+void intel_wm_verify_state(struct intel_crtc *crtc,
+			   struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct skl_hw_state {
+		struct skl_ddb_entry ddb[I915_MAX_PLANES];
+		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
+		struct skl_pipe_wm wm;
+	} *hw;
+	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
+	int level, max_level = ilk_wm_max_level(dev_priv);
+	struct intel_plane *plane;
+	u8 hw_enabled_slices;
+
+	if (DISPLAY_VER(dev_priv) < 9 || !new_crtc_state->hw.active)
+		return;
+
+	hw = kzalloc(sizeof(*hw), GFP_KERNEL);
+	if (!hw)
+		return;
+
+	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
+
+	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
+
+	hw_enabled_slices = intel_enabled_dbuf_slices_mask(dev_priv);
+
+	if (DISPLAY_VER(dev_priv) >= 11 &&
+	    hw_enabled_slices != dev_priv->dbuf.enabled_slices)
+		drm_err(&dev_priv->drm,
+			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
+			dev_priv->dbuf.enabled_slices,
+			hw_enabled_slices);
+
+	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
+		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
+		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
+
+		/* Watermarks */
+		for (level = 0; level <= max_level; level++) {
+			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
+			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
+
+			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
+				continue;
+
+			drm_err(&dev_priv->drm,
+				"[PLANE:%d:%s] mismatch in WM%d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				plane->base.base.id, plane->base.name, level,
+				sw_wm_level->enable,
+				sw_wm_level->blocks,
+				sw_wm_level->lines,
+				hw_wm_level->enable,
+				hw_wm_level->blocks,
+				hw_wm_level->lines);
+		}
+
+		hw_wm_level = &hw->wm.planes[plane->id].trans_wm;
+		sw_wm_level = skl_plane_trans_wm(sw_wm, plane->id);
+
+		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
+			drm_err(&dev_priv->drm,
+				"[PLANE:%d:%s] mismatch in trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				plane->base.base.id, plane->base.name,
+				sw_wm_level->enable,
+				sw_wm_level->blocks,
+				sw_wm_level->lines,
+				hw_wm_level->enable,
+				hw_wm_level->blocks,
+				hw_wm_level->lines);
+		}
+
+		hw_wm_level = &hw->wm.planes[plane->id].sagv.wm0;
+		sw_wm_level = &sw_wm->planes[plane->id].sagv.wm0;
+
+		if (HAS_HW_SAGV_WM(dev_priv) &&
+		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
+			drm_err(&dev_priv->drm,
+				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				plane->base.base.id, plane->base.name,
+				sw_wm_level->enable,
+				sw_wm_level->blocks,
+				sw_wm_level->lines,
+				hw_wm_level->enable,
+				hw_wm_level->blocks,
+				hw_wm_level->lines);
+		}
+
+		hw_wm_level = &hw->wm.planes[plane->id].sagv.trans_wm;
+		sw_wm_level = &sw_wm->planes[plane->id].sagv.trans_wm;
+
+		if (HAS_HW_SAGV_WM(dev_priv) &&
+		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
+			drm_err(&dev_priv->drm,
+				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
+				plane->base.base.id, plane->base.name,
+				sw_wm_level->enable,
+				sw_wm_level->blocks,
+				sw_wm_level->lines,
+				hw_wm_level->enable,
+				hw_wm_level->blocks,
+				hw_wm_level->lines);
+		}
+
+		/* DDB */
+		hw_ddb_entry = &hw->ddb[PLANE_CURSOR];
+		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
+
+		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
+			drm_err(&dev_priv->drm,
+				"[PLANE:%d:%s] mismatch in DDB (expected (%u,%u), found (%u,%u))\n",
+				plane->base.base.id, plane->base.name,
+				sw_ddb_entry->start, sw_ddb_entry->end,
+				hw_ddb_entry->start, hw_ddb_entry->end);
+		}
+	}
+
+	kfree(hw);
+}
+
 void intel_enable_ipc(struct drm_i915_private *dev_priv)
 {
 	u32 val;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 50604cf7398c..070630630f16 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -35,15 +35,12 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void skl_wm_get_hw_state(struct drm_i915_private *dev_priv);
+void intel_wm_verify_state(struct intel_crtc *crtc,
+			   struct intel_crtc_state *new_crtc_state);
 u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv);
-void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
-			       struct skl_ddb_entry *ddb_y,
-			       struct skl_ddb_entry *ddb_uv);
 void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
 u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
 			    const struct skl_ddb_entry *entry);
-void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
-			      struct skl_pipe_wm *out);
 void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
 void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
 void skl_wm_sanitize(struct drm_i915_private *dev_priv);
@@ -51,13 +48,6 @@ bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
 			   const struct intel_bw_state *bw_state);
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
-const struct skl_wm_level *skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
-					      enum plane_id plane_id,
-					      int level);
-const struct skl_wm_level *skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
-					      enum plane_id plane_id);
-bool skl_wm_level_equals(const struct skl_wm_level *l1,
-			 const struct skl_wm_level *l2);
 bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
 				 const struct skl_ddb_entry *entries,
 				 int num_entries, int ignore_idx);
-- 
2.30.2

