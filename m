Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D639B7F60
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D2A10E8D4;
	Thu, 31 Oct 2024 15:56:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eFCs4RcI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BD7D10E8D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730390212; x=1761926212;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pgNuoX7KZnyKMhUAj+U8BmaVTrEDLgvPkQkQRR6owZ0=;
 b=eFCs4RcIr85vL5XFoP8Q5ivGPogW27haLr/BehItohSOxWUO3LuDbbP5
 tRbijnfvbI81+c6Q0XGNJEs54h0h5WANYWtM7jB6m51TcKgdOe7DtmlLD
 7R5YfOKf6x8GolDTW+HEDG2D0kklAwiBBQSqsYcelgFsAyumRw65Px4Sm
 Oesbb4KKWhRUQYuEuVstWyuwMADqiyBE/GTQFXuHOzA+ufgfej6FXqUSL
 SJYsOdt0TCqAu+OxPZ8HfsLSBbrbK6eIfRf+a+/mYkJ9fqNgvkWT4V0h/
 jI1H7dcPU3QzIPVf3sUOhHTpQse3cfwRAnNPE1cKk212IawIgkt32sD23 w==;
X-CSE-ConnectionGUID: 01iY0MRcRB25QcZE+sHQfQ==
X-CSE-MsgGUID: Hb17K0qYSrKQpCAi0Pbsyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29575321"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29575321"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:56:52 -0700
X-CSE-ConnectionGUID: iZYi71RVRimlB6/eUnu6Ww==
X-CSE-MsgGUID: 34ygDVe9Rva7fH0++veeGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82791562"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 08:56:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 17:56:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915: Relocate the SKL wm sanitation code
Date: Thu, 31 Oct 2024 17:56:41 +0200
Message-ID: <20241031155646.15165-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

In order to add more MBUS sanitation into the code we'll want
to reuse a bunch of the code that performs the MBUS/related
hardware programming. Currently that code comes after the
main skl_wm_get_hw_state_and_sanitize() entrypoint. In order
to avoid annoying forward declarations relocate the
skl_wm_get_hw_state_and_sanitize() and related stuff nearer to
the end of the file.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 420 +++++++++----------
 1 file changed, 210 insertions(+), 210 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3b0e87edbacf..92794dfbd3bd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3048,202 +3048,6 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 	dbuf_state->enabled_slices = i915->display.dbuf.enabled_slices;
 }
 
-static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
-{
-	const struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
-	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(&i915->drm, crtc) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-
-		entries[crtc->pipe] = crtc_state->wm.skl.ddb;
-	}
-
-	for_each_intel_crtc(&i915->drm, crtc) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-		u8 slices;
-
-		slices = skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
-						 dbuf_state->joined_mbus);
-		if (dbuf_state->slices[crtc->pipe] & ~slices)
-			return true;
-
-		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.ddb, entries,
-						I915_MAX_PIPES, crtc->pipe))
-			return true;
-	}
-
-	return false;
-}
-
-static void skl_wm_sanitize(struct drm_i915_private *i915)
-{
-	struct intel_crtc *crtc;
-
-	/*
-	 * On TGL/RKL (at least) the BIOS likes to assign the planes
-	 * to the wrong DBUF slices. This will cause an infinite loop
-	 * in skl_commit_modeset_enables() as it can't find a way to
-	 * transition between the old bogus DBUF layout to the new
-	 * proper DBUF layout without DBUF allocation overlaps between
-	 * the planes (which cannot be allowed or else the hardware
-	 * may hang). If we detect a bogus DBUF layout just turn off
-	 * all the planes so that skl_commit_modeset_enables() can
-	 * simply ignore them.
-	 */
-	if (!skl_dbuf_is_misconfigured(i915))
-		return;
-
-	drm_dbg_kms(&i915->drm, "BIOS has misprogrammed the DBUF, disabling all planes\n");
-
-	for_each_intel_crtc(&i915->drm, crtc) {
-		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-		const struct intel_plane_state *plane_state =
-			to_intel_plane_state(plane->base.state);
-		struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-
-		if (plane_state->uapi.visible)
-			intel_plane_disable_noatomic(crtc, plane);
-
-		drm_WARN_ON(&i915->drm, crtc_state->active_planes != 0);
-
-		memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
-	}
-}
-
-static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
-{
-	skl_wm_get_hw_state(i915);
-	skl_wm_sanitize(i915);
-}
-
-void intel_wm_state_verify(struct intel_atomic_state *state,
-			   struct intel_crtc *crtc)
-{
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct skl_hw_state {
-		struct skl_ddb_entry ddb[I915_MAX_PLANES];
-		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
-		struct skl_pipe_wm wm;
-	} *hw;
-	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
-	struct intel_plane *plane;
-	u8 hw_enabled_slices;
-	int level;
-
-	if (DISPLAY_VER(i915) < 9 || !new_crtc_state->hw.active)
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
-	hw_enabled_slices = intel_enabled_dbuf_slices_mask(i915);
-
-	if (DISPLAY_VER(i915) >= 11 &&
-	    hw_enabled_slices != i915->display.dbuf.enabled_slices)
-		drm_err(&i915->drm,
-			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
-			i915->display.dbuf.enabled_slices,
-			hw_enabled_slices);
-
-	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
-		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
-		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
-
-		/* Watermarks */
-		for (level = 0; level < i915->display.wm.num_levels; level++) {
-			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
-			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
-
-			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
-				continue;
-
-			drm_err(&i915->drm,
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
-			drm_err(&i915->drm,
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
-		if (HAS_HW_SAGV_WM(i915) &&
-		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(&i915->drm,
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
-		if (HAS_HW_SAGV_WM(i915) &&
-		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(&i915->drm,
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
-			drm_err(&i915->drm,
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
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
 {
 	return i915->display.wm.ipc_enabled;
@@ -3399,20 +3203,6 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
 	intel_print_wm_latency(i915, "Gen9 Plane", i915->display.wm.skl_latency);
 }
 
-static const struct intel_wm_funcs skl_wm_funcs = {
-	.compute_global_watermarks = skl_compute_wm,
-	.get_hw_state = skl_wm_get_hw_state_and_sanitize,
-};
-
-void skl_wm_init(struct drm_i915_private *i915)
-{
-	intel_sagv_init(i915);
-
-	skl_setup_wm_latency(i915);
-
-	i915->display.funcs.wm = &skl_wm_funcs;
-}
-
 static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
 {
 	struct intel_dbuf_state *dbuf_state;
@@ -3757,6 +3547,216 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 	gen9_dbuf_slices_update(i915, new_slices);
 }
 
+static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
+{
+	const struct intel_dbuf_state *dbuf_state =
+		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		entries[crtc->pipe] = crtc_state->wm.skl.ddb;
+	}
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+		u8 slices;
+
+		slices = skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
+						 dbuf_state->joined_mbus);
+		if (dbuf_state->slices[crtc->pipe] & ~slices)
+			return true;
+
+		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.ddb, entries,
+						I915_MAX_PIPES, crtc->pipe))
+			return true;
+	}
+
+	return false;
+}
+
+static void skl_wm_sanitize(struct drm_i915_private *i915)
+{
+	struct intel_crtc *crtc;
+
+	/*
+	 * On TGL/RKL (at least) the BIOS likes to assign the planes
+	 * to the wrong DBUF slices. This will cause an infinite loop
+	 * in skl_commit_modeset_enables() as it can't find a way to
+	 * transition between the old bogus DBUF layout to the new
+	 * proper DBUF layout without DBUF allocation overlaps between
+	 * the planes (which cannot be allowed or else the hardware
+	 * may hang). If we detect a bogus DBUF layout just turn off
+	 * all the planes so that skl_commit_modeset_enables() can
+	 * simply ignore them.
+	 */
+	if (!skl_dbuf_is_misconfigured(i915))
+		return;
+
+	drm_dbg_kms(&i915->drm, "BIOS has misprogrammed the DBUF, disabling all planes\n");
+
+	for_each_intel_crtc(&i915->drm, crtc) {
+		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+		const struct intel_plane_state *plane_state =
+			to_intel_plane_state(plane->base.state);
+		struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		if (plane_state->uapi.visible)
+			intel_plane_disable_noatomic(crtc, plane);
+
+		drm_WARN_ON(&i915->drm, crtc_state->active_planes != 0);
+
+		memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
+	}
+}
+
+static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
+{
+	skl_wm_get_hw_state(i915);
+	skl_wm_sanitize(i915);
+}
+
+void intel_wm_state_verify(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct skl_hw_state {
+		struct skl_ddb_entry ddb[I915_MAX_PLANES];
+		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
+		struct skl_pipe_wm wm;
+	} *hw;
+	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
+	struct intel_plane *plane;
+	u8 hw_enabled_slices;
+	int level;
+
+	if (DISPLAY_VER(i915) < 9 || !new_crtc_state->hw.active)
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
+	hw_enabled_slices = intel_enabled_dbuf_slices_mask(i915);
+
+	if (DISPLAY_VER(i915) >= 11 &&
+	    hw_enabled_slices != i915->display.dbuf.enabled_slices)
+		drm_err(&i915->drm,
+			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
+			i915->display.dbuf.enabled_slices,
+			hw_enabled_slices);
+
+	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
+		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
+
+		/* Watermarks */
+		for (level = 0; level < i915->display.wm.num_levels; level++) {
+			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
+			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
+
+			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
+				continue;
+
+			drm_err(&i915->drm,
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
+			drm_err(&i915->drm,
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
+		if (HAS_HW_SAGV_WM(i915) &&
+		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
+			drm_err(&i915->drm,
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
+		if (HAS_HW_SAGV_WM(i915) &&
+		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
+			drm_err(&i915->drm,
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
+			drm_err(&i915->drm,
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
+static const struct intel_wm_funcs skl_wm_funcs = {
+	.compute_global_watermarks = skl_compute_wm,
+	.get_hw_state = skl_wm_get_hw_state_and_sanitize,
+};
+
+void skl_wm_init(struct drm_i915_private *i915)
+{
+	intel_sagv_init(i915);
+
+	skl_setup_wm_latency(i915);
+
+	i915->display.funcs.wm = &skl_wm_funcs;
+}
+
 static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = m->private;
-- 
2.45.2

