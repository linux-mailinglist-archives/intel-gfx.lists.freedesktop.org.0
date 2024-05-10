Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9738C27A5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 311EA10EDC9;
	Fri, 10 May 2024 15:24:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1DW2eVZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F2F10EDC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354662; x=1746890662;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O1tJHP9g3qK7Pltz7itDT/wkakfaTi9DiBBd1HHfdaM=;
 b=C1DW2eVZVtiF6MPJLZmHyucwQUvpKbStm/csmXhnibEKrpqjZ1KPmX4c
 9yLDLEkur5vKo9TXyQUKxe/PztDrfReEtRBlSDVBnkroqgTfIa0R2mjvu
 jmYiGc1rr6ZDZeG18KhbpYozfluVJZvk764i+FHc9Ce71bU1cguXU+TCl
 qwbUqq8O7lRvnSuQ01ldp/Eief3y9Gca11fdHUKHJYXPomqKxMNsHdHrS
 wKINSoyKVRxPCmrsgp0dSYUOmiGNAEl1KCbsP1RAJkj63wYunCIM4wO7J
 dZqKZS7/sFGHcxdCIzMYcLf5sGb+KadnsKIuDm/NGqcvNsA8nR36O0frb Q==;
X-CSE-ConnectionGUID: fL7Y9qCLSqu7ad/UPOgIwQ==
X-CSE-MsgGUID: 0/OTnVHWS0mJs+MpmO8imQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468877"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468877"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:24:22 -0700
X-CSE-ConnectionGUID: r//nc0i1Qj+BtCuS1pvsAg==
X-CSE-MsgGUID: SZTIWnwaTBu4naxtsgs7Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29595085"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:24:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:24:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 16/16] drm/i915: Handle SKL+ WM/DDB registers next to all
 other plane registers
Date: Fri, 10 May 2024 18:23:29 +0300
Message-ID: <20240510152329.24098-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
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

Having the plane WM/DDB regitster write functions in skl_watermarks.c
is rather annoying when trying to implement DSB based plane updates.
Move them into the respective files that handle all other plane
register writes. Less places where I need to worry about the DSB
vs. MMIO decisions.

The downside is that we spread the wm struct details a bit further
afield. But if that becomes too annoying we can probably abstract
things a bit more with a few extra functions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 32 +++++++
 .../drm/i915/display/skl_universal_plane.c    | 60 ++++++++++++
 .../drm/i915/display/skl_universal_plane.h    |  5 +
 drivers/gpu/drm/i915/display/skl_watermark.c  | 95 +------------------
 drivers/gpu/drm/i915/display/skl_watermark.h  | 13 ++-
 5 files changed, 107 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index d2b459634732..3ecab15d1431 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -24,6 +24,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_vblank.h"
+#include "skl_universal_plane.h"
 #include "skl_watermark.h"
 
 #include "gem/i915_gem_object.h"
@@ -556,6 +557,37 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
 	}
 }
 
+static void skl_write_cursor_wm(struct intel_plane *plane,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	enum plane_id plane_id = plane->id;
+	enum pipe pipe = plane->pipe;
+	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
+	const struct skl_ddb_entry *ddb =
+		&crtc_state->wm.skl.plane_ddb[plane_id];
+	int level;
+
+	for (level = 0; level < i915->display.wm.num_levels; level++)
+		intel_de_write_fw(i915, CUR_WM(pipe, level),
+				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
+
+	intel_de_write_fw(i915, CUR_WM_TRANS(pipe),
+			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
+
+	if (HAS_HW_SAGV_WM(i915)) {
+		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
+
+		intel_de_write_fw(i915, CUR_WM_SAGV(pipe),
+				  skl_plane_wm_reg_val(&wm->sagv.wm0));
+		intel_de_write_fw(i915, CUR_WM_SAGV_TRANS(pipe),
+				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
+	}
+
+	intel_de_write_fw(i915, CUR_BUF_CFG(pipe),
+			  skl_plane_ddb_reg_val(ddb));
+}
+
 /* TODO: split into noarm+arm pair */
 static void i9xx_cursor_update_arm(struct intel_plane *plane,
 				   const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ab560820bb23..a9914cb31631 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -617,6 +617,66 @@ static u32 skl_plane_stride(const struct intel_plane_state *plane_state,
 	return stride / skl_plane_stride_mult(fb, color_plane, rotation);
 }
 
+u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
+{
+	if (!entry->end)
+		return 0;
+
+	return PLANE_BUF_END(entry->end - 1) |
+		PLANE_BUF_START(entry->start);
+}
+
+u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
+{
+	u32 val = 0;
+
+	if (level->enable)
+		val |= PLANE_WM_EN;
+	if (level->ignore_lines)
+		val |= PLANE_WM_IGNORE_LINES;
+	val |= REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
+	val |= REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
+
+	return val;
+}
+
+static void skl_write_plane_wm(struct intel_plane *plane,
+			       const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	enum plane_id plane_id = plane->id;
+	enum pipe pipe = plane->pipe;
+	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
+	const struct skl_ddb_entry *ddb =
+		&crtc_state->wm.skl.plane_ddb[plane_id];
+	const struct skl_ddb_entry *ddb_y =
+		&crtc_state->wm.skl.plane_ddb_y[plane_id];
+	int level;
+
+	for (level = 0; level < i915->display.wm.num_levels; level++)
+		intel_de_write_fw(i915, PLANE_WM(pipe, plane_id, level),
+				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
+
+	intel_de_write_fw(i915, PLANE_WM_TRANS(pipe, plane_id),
+			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
+
+	if (HAS_HW_SAGV_WM(i915)) {
+		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
+
+		intel_de_write_fw(i915, PLANE_WM_SAGV(pipe, plane_id),
+				  skl_plane_wm_reg_val(&wm->sagv.wm0));
+		intel_de_write_fw(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
+				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
+	}
+
+	intel_de_write_fw(i915, PLANE_BUF_CFG(pipe, plane_id),
+			  skl_plane_ddb_reg_val(ddb));
+
+	if (DISPLAY_VER(i915) < 11)
+		intel_de_write_fw(i915, PLANE_NV12_BUF_CFG(pipe, plane_id),
+				  skl_plane_ddb_reg_val(ddb_y));
+}
+
 static void
 skl_plane_disable_arm(struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
index e92e00c01b29..8eb4521ee851 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
@@ -12,6 +12,8 @@ struct drm_i915_private;
 struct intel_crtc;
 struct intel_initial_plane_config;
 struct intel_plane_state;
+struct skl_ddb_entry;
+struct skl_wm_level;
 
 enum pipe;
 enum plane_id;
@@ -35,4 +37,7 @@ bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
 u8 icl_hdr_plane_mask(void);
 bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id);
 
+u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry);
+u32 skl_plane_wm_reg_val(const struct skl_wm_level *level);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1daceb8ef9de..2064f72da675 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1396,7 +1396,7 @@ skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
 	return data_rate;
 }
 
-static const struct skl_wm_level *
+const struct skl_wm_level *
 skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
 		   enum plane_id plane_id,
 		   int level)
@@ -1409,7 +1409,7 @@ skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
 	return &wm->wm[level];
 }
 
-static const struct skl_wm_level *
+const struct skl_wm_level *
 skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
 		   enum plane_id plane_id)
 {
@@ -2365,97 +2365,6 @@ static int skl_build_pipe_wm(struct intel_atomic_state *state,
 	return skl_wm_check_vblank(crtc_state);
 }
 
-static u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
-{
-	if (!entry->end)
-		return 0;
-
-	return PLANE_BUF_END(entry->end - 1) |
-		PLANE_BUF_START(entry->start);
-}
-
-static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
-{
-	u32 val = 0;
-
-	if (level->enable)
-		val |= PLANE_WM_EN;
-	if (level->ignore_lines)
-		val |= PLANE_WM_IGNORE_LINES;
-	val |= REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
-	val |= REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
-
-	return val;
-}
-
-void skl_write_plane_wm(struct intel_plane *plane,
-			const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	enum plane_id plane_id = plane->id;
-	enum pipe pipe = plane->pipe;
-	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
-	const struct skl_ddb_entry *ddb =
-		&crtc_state->wm.skl.plane_ddb[plane_id];
-	const struct skl_ddb_entry *ddb_y =
-		&crtc_state->wm.skl.plane_ddb_y[plane_id];
-	int level;
-
-	for (level = 0; level < i915->display.wm.num_levels; level++)
-		intel_de_write_fw(i915, PLANE_WM(pipe, plane_id, level),
-				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
-
-	intel_de_write_fw(i915, PLANE_WM_TRANS(pipe, plane_id),
-			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
-
-	if (HAS_HW_SAGV_WM(i915)) {
-		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
-
-		intel_de_write_fw(i915, PLANE_WM_SAGV(pipe, plane_id),
-				  skl_plane_wm_reg_val(&wm->sagv.wm0));
-		intel_de_write_fw(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
-				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
-	}
-
-	intel_de_write_fw(i915, PLANE_BUF_CFG(pipe, plane_id),
-			  skl_plane_ddb_reg_val(ddb));
-
-	if (DISPLAY_VER(i915) < 11)
-		intel_de_write_fw(i915, PLANE_NV12_BUF_CFG(pipe, plane_id),
-				  skl_plane_ddb_reg_val(ddb_y));
-}
-
-void skl_write_cursor_wm(struct intel_plane *plane,
-			 const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	enum plane_id plane_id = plane->id;
-	enum pipe pipe = plane->pipe;
-	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
-	const struct skl_ddb_entry *ddb =
-		&crtc_state->wm.skl.plane_ddb[plane_id];
-	int level;
-
-	for (level = 0; level < i915->display.wm.num_levels; level++)
-		intel_de_write_fw(i915, CUR_WM(pipe, level),
-				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
-
-	intel_de_write_fw(i915, CUR_WM_TRANS(pipe),
-			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
-
-	if (HAS_HW_SAGV_WM(i915)) {
-		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
-
-		intel_de_write_fw(i915, CUR_WM_SAGV(pipe),
-				  skl_plane_wm_reg_val(&wm->sagv.wm0));
-		intel_de_write_fw(i915, CUR_WM_SAGV_TRANS(pipe),
-				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
-	}
-
-	intel_de_write_fw(i915, CUR_BUF_CFG(pipe),
-			  skl_plane_ddb_reg_val(ddb));
-}
-
 static bool skl_wm_level_equals(const struct skl_wm_level *l1,
 				const struct skl_wm_level *l2)
 {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 91f92c0e706e..78b121941237 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -18,6 +18,8 @@ struct intel_bw_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_plane;
+struct skl_pipe_wm;
+struct skl_wm_level;
 
 u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915);
 
@@ -30,11 +32,6 @@ bool intel_has_sagv(struct drm_i915_private *i915);
 u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
 			    const struct skl_ddb_entry *entry);
 
-void skl_write_plane_wm(struct intel_plane *plane,
-			const struct intel_crtc_state *crtc_state);
-void skl_write_cursor_wm(struct intel_plane *plane,
-			 const struct intel_crtc_state *crtc_state);
-
 bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
 				 const struct skl_ddb_entry *entries,
 				 int num_entries, int ignore_idx);
@@ -51,6 +48,12 @@ unsigned int skl_watermark_max_latency(struct drm_i915_private *i915,
 				       int initial_wm_level);
 void skl_wm_init(struct drm_i915_private *i915);
 
+const struct skl_wm_level *skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
+					      enum plane_id plane_id,
+					      int level);
+const struct skl_wm_level *skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
+					      enum plane_id plane_id);
+
 struct intel_dbuf_state {
 	struct intel_global_state base;
 
-- 
2.43.2

