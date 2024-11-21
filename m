Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0AB9D4BE0
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 12:28:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7716710E8DD;
	Thu, 21 Nov 2024 11:27:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z5iNCz7F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F3510E3F1;
 Thu, 21 Nov 2024 11:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732188478; x=1763724478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=llOePggoFtBWXpwd7P7/hlJ9relX1JYLAcACCjBxkkw=;
 b=Z5iNCz7F5LIHUAtKOPfdJinbpqLJAMB3+nXPdNyiKssr6x0gA4eEwDU0
 2DeyxOWpRGbS2VKoayOC+/nhHQRvrPS0nxNNskbfBK+86WMdNgGEKYXBO
 sxnBt/XkIbEklSrPuJsOgjX+3yIqt1G8lrOKCbZ39kIBq52qh6+2eijJi
 Umx2bN8+F5PDlqwKRrZBHbjiXwv41jqZvvBlAwzurVyOBqu17i/SdDzqi
 V8ILH0kvSSY5eglayXwxXeF/CvLwytD0ZXABIZlQr4FUlGfSH4UwAJ9I1
 GVasZDi1Jv7MB//TOBT7tKnMKhSovXieB9btRT8BfB756zShsS0kHxK1O w==;
X-CSE-ConnectionGUID: Z3NhCsksRUiHzeC62zIY6g==
X-CSE-MsgGUID: nHrqCYQ3SmSYqtn06EI/kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49821043"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="49821043"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 03:27:57 -0800
X-CSE-ConnectionGUID: S/0Ug3aRSMqqIc0J2/9tQg==
X-CSE-MsgGUID: JGYN+xE1QCeL+8zZBYCuag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="90165785"
Received: from vgovind2-mobl3.fi.intel.com ([10.237.66.37])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 03:27:54 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v2 3/3] drm/i915/xe3: Use hw support for min/interim ddb
 allocations for async flip
Date: Thu, 21 Nov 2024 13:27:26 +0200
Message-Id: <20241121112726.510220-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241121112726.510220-1-vinod.govindapillai@intel.com>
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Xe3 is capable of switching automatically to min ddb allocation
(not using any extra blocks) or interim SAGV-adjusted allocation
in case if async flip is used. Introduce the minimum and interim
ddb allocation configuration for that purpose. Also i915 is
replaced with intel_display within the patch's context

v2: update min/interim ddb declarations and handling (Ville)
    update to register definitions styling
    consolidation of minimal wm0 check with min DDB check

Bspec: 69880, 72053
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  8 ++
 .../drm/i915/display/skl_universal_plane.c    | 26 ++++++
 .../i915/display/skl_universal_plane_regs.h   | 15 ++++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 87 +++++++++++++++----
 4 files changed, 118 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 339e4b0f7698..278b4c21f9d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -769,6 +769,7 @@ struct skl_wm_level {
 	u8 lines;
 	bool enable;
 	bool ignore_lines;
+	bool auto_min_alloc_wm_enable;
 	bool can_sagv;
 };
 
@@ -863,6 +864,13 @@ struct intel_crtc_wm_state {
 			struct skl_ddb_entry plane_ddb[I915_MAX_PLANES];
 			/* pre-icl: for planar Y */
 			struct skl_ddb_entry plane_ddb_y[I915_MAX_PLANES];
+
+			/*
+			 * xe3: Minimum amount of display blocks and minimum
+			 * sagv allocation required for async flip
+			 */
+			u16 plane_min_ddb[I915_MAX_PLANES];
+			u16 plane_interim_ddb[I915_MAX_PLANES];
 		} skl;
 
 		struct {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 4c7bcf6806ff..ff9764cac1e7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -717,6 +717,22 @@ static u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
 		PLANE_BUF_START(entry->start);
 }
 
+static u32 xe3_plane_min_ddb_reg_val(const u16 *min_ddb,
+				     const u16 *interim_ddb)
+{
+	u32 val = 0;
+
+	if (*min_ddb)
+		val |= PLANE_MIN_DBUF_BLOCKS(*min_ddb);
+
+	if (*interim_ddb)
+		val |= PLANE_INTERIM_DBUF_BLOCKS(*interim_ddb);
+
+	val |= val ? PLANE_AUTO_MIN_DBUF_EN : 0;
+
+	return val;
+}
+
 static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
 {
 	u32 val = 0;
@@ -725,6 +741,9 @@ static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
 		val |= PLANE_WM_EN;
 	if (level->ignore_lines)
 		val |= PLANE_WM_IGNORE_LINES;
+	if (level->auto_min_alloc_wm_enable)
+		val |= PLANE_WM_AUTO_MIN_ALLOC_EN;
+
 	val |= REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
 	val |= REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
 
@@ -743,6 +762,9 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 		&crtc_state->wm.skl.plane_ddb[plane_id];
 	const struct skl_ddb_entry *ddb_y =
 		&crtc_state->wm.skl.plane_ddb_y[plane_id];
+	const u16 *min_ddb = &crtc_state->wm.skl.plane_min_ddb[plane_id];
+	const u16 *interim_ddb =
+		&crtc_state->wm.skl.plane_interim_ddb[plane_id];
 	int level;
 
 	for (level = 0; level < display->wm.num_levels; level++)
@@ -767,6 +789,10 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 	if (DISPLAY_VER(display) < 11)
 		intel_de_write_dsb(display, dsb, PLANE_NV12_BUF_CFG(pipe, plane_id),
 				   skl_plane_ddb_reg_val(ddb_y));
+
+	if (DISPLAY_VER(display) >= 30)
+		intel_de_write_dsb(display, dsb, PLANE_MIN_BUF_CFG(pipe, plane_id),
+				   xe3_plane_min_ddb_reg_val(min_ddb, interim_ddb));
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index ff31a00d511e..ca9fdfbbe57c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -322,6 +322,7 @@
 							   _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
 #define   PLANE_WM_EN				REG_BIT(31)
 #define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
+#define   PLANE_WM_AUTO_MIN_ALLOC_EN		REG_BIT(29)
 #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
 #define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
 
@@ -373,12 +374,26 @@
 #define PLANE_BUF_CFG(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
 							_PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B, \
 							_PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
+
 /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
 #define   PLANE_BUF_END_MASK			REG_GENMASK(27, 16)
 #define   PLANE_BUF_END(end)			REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
 #define   PLANE_BUF_START_MASK			REG_GENMASK(11, 0)
 #define   PLANE_BUF_START(start)		REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
 
+#define _PLANE_MIN_BUF_CFG_1_A			0x70274
+#define _PLANE_MIN_BUF_CFG_2_A			0x70374
+#define _PLANE_MIN_BUF_CFG_1_B			0x71274
+#define _PLANE_MIN_BUF_CFG_2_B			0x71374
+#define PLANE_MIN_BUF_CFG(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_MIN_BUF_CFG_1_A, _PLANE_MIN_BUF_CFG_1_B, \
+							_PLANE_MIN_BUF_CFG_2_A, _PLANE_MIN_BUF_CFG_2_B)
+#define	  PLANE_AUTO_MIN_DBUF_EN		REG_BIT(31)
+#define	  PLANE_MIN_DBUF_BLOCKS_MASK		REG_GENMASK(27, 16)
+#define	  PLANE_MIN_DBUF_BLOCKS(val)		REG_FIELD_PREP(PLANE_MIN_DBUF_BLOCKS_MASK, (val))
+#define	  PLANE_INTERIM_DBUF_BLOCKS_MASK	REG_GENMASK(11, 0)
+#define	  PLANE_INTERIM_DBUF_BLOCKS(val)	REG_FIELD_PREP(PLANE_INTERIM_DBUF_BLOCKS_MASK, (val))
+
 /* tgl+ */
 #define _SEL_FETCH_PLANE_CTL_1_A		0x70890
 #define _SEL_FETCH_PLANE_CTL_2_A		0x708b0
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 23ed989f01dc..2d87e02d90e6 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -801,30 +801,40 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *i915,
 			   const enum pipe pipe,
 			   const enum plane_id plane_id,
 			   struct skl_ddb_entry *ddb,
-			   struct skl_ddb_entry *ddb_y)
+			   struct skl_ddb_entry *ddb_y,
+			   u16 *min_ddb, u16 *interim_ddb)
 {
+	struct intel_display *display = &i915->display;
 	u32 val;
 
 	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
 	if (plane_id == PLANE_CURSOR) {
-		val = intel_de_read(i915, CUR_BUF_CFG(pipe));
+		val = intel_de_read(display, CUR_BUF_CFG(pipe));
 		skl_ddb_entry_init_from_hw(ddb, val);
 		return;
 	}
 
-	val = intel_de_read(i915, PLANE_BUF_CFG(pipe, plane_id));
+	val = intel_de_read(display, PLANE_BUF_CFG(pipe, plane_id));
 	skl_ddb_entry_init_from_hw(ddb, val);
 
-	if (DISPLAY_VER(i915) >= 11)
+	if (DISPLAY_VER(display) >= 30) {
+		val = intel_de_read(display, PLANE_MIN_BUF_CFG(pipe, plane_id));
+
+		*min_ddb = REG_FIELD_GET(PLANE_MIN_DBUF_BLOCKS_MASK, val);
+		*interim_ddb = REG_FIELD_GET(PLANE_INTERIM_DBUF_BLOCKS_MASK, val);
+	}
+
+	if (DISPLAY_VER(display) >= 11)
 		return;
 
-	val = intel_de_read(i915, PLANE_NV12_BUF_CFG(pipe, plane_id));
+	val = intel_de_read(display, PLANE_NV12_BUF_CFG(pipe, plane_id));
 	skl_ddb_entry_init_from_hw(ddb_y, val);
 }
 
 static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 				      struct skl_ddb_entry *ddb,
-				      struct skl_ddb_entry *ddb_y)
+				      struct skl_ddb_entry *ddb_y,
+				      u16 *min_ddb, u16 *interim_ddb)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum intel_display_power_domain power_domain;
@@ -841,7 +851,9 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 		skl_ddb_get_hw_plane_state(i915, pipe,
 					   plane_id,
 					   &ddb[plane_id],
-					   &ddb_y[plane_id]);
+					   &ddb_y[plane_id],
+					   &min_ddb[plane_id],
+					   &interim_ddb[plane_id]);
 
 	intel_display_power_put(i915, power_domain, wakeref);
 }
@@ -1376,9 +1388,10 @@ static bool
 use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
 		     struct intel_plane *plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
-	return DISPLAY_VER(i915) >= 13 &&
+	/* Xe3+ are auto minimum DDB capble. So don't force minimal wm0 */
+	return IS_DISPLAY_VER(display, 13, 20) &&
 	       crtc_state->uapi.async_flip &&
 	       plane->async_flip;
 }
@@ -1535,6 +1548,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	const struct intel_dbuf_state *dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 	const struct skl_ddb_entry *alloc = &dbuf_state->ddb[crtc->pipe];
+	struct intel_display *display = to_intel_display(state);
 	int num_active = hweight8(dbuf_state->active_pipes);
 	struct skl_plane_ddb_iter iter;
 	enum plane_id plane_id;
@@ -1545,6 +1559,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	/* Clear the partitioning for disabled planes. */
 	memset(crtc_state->wm.skl.plane_ddb, 0, sizeof(crtc_state->wm.skl.plane_ddb));
 	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state->wm.skl.plane_ddb_y));
+	memset(crtc_state->wm.skl.plane_min_ddb, 0,
+	       sizeof(crtc_state->wm.skl.plane_min_ddb));
+	memset(crtc_state->wm.skl.plane_interim_ddb, 0,
+	       sizeof(crtc_state->wm.skl.plane_interim_ddb));
 
 	if (!crtc_state->hw.active)
 		return 0;
@@ -1617,6 +1635,9 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			&crtc_state->wm.skl.plane_ddb[plane_id];
 		struct skl_ddb_entry *ddb_y =
 			&crtc_state->wm.skl.plane_ddb_y[plane_id];
+		u16 *min_ddb = &crtc_state->wm.skl.plane_min_ddb[plane_id];
+		u16 *interim_ddb =
+			&crtc_state->wm.skl.plane_interim_ddb[plane_id];
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
@@ -1633,6 +1654,11 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			skl_allocate_plane_ddb(&iter, ddb, &wm->wm[level],
 					       crtc_state->rel_data_rate[plane_id]);
 		}
+
+		if (DISPLAY_VER(display) >= 30) {
+			*min_ddb = wm->wm[0].min_ddb_alloc;
+			*interim_ddb = wm->sagv.wm0.min_ddb_alloc;
+		}
 	}
 	drm_WARN_ON(&i915->drm, iter.size != 0 || iter.data_rate != 0);
 
@@ -1676,6 +1702,8 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			&crtc_state->wm.skl.plane_ddb[plane_id];
 		const struct skl_ddb_entry *ddb_y =
 			&crtc_state->wm.skl.plane_ddb_y[plane_id];
+		u16 *interim_ddb =
+			&crtc_state->wm.skl.plane_interim_ddb[plane_id];
 		struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
@@ -1689,6 +1717,9 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		}
 
 		skl_check_wm_level(&wm->sagv.wm0, ddb);
+		if (DISPLAY_VER(display) >= 30)
+			*interim_ddb = wm->sagv.wm0.min_ddb_alloc;
+
 		skl_check_wm_level(&wm->sagv.trans_wm, ddb);
 	}
 
@@ -1767,6 +1798,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      int color_plane, unsigned int pan_x)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 interm_pbpl;
 
@@ -1825,7 +1857,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 					   wp->y_min_scanlines,
 					   wp->dbuf_block_size);
 
-		if (DISPLAY_VER(i915) >= 30)
+		if (DISPLAY_VER(display) >= 30)
 			interm_pbpl += (pan_x != 0);
 		else if (DISPLAY_VER(i915) >= 10)
 			interm_pbpl++;
@@ -1890,6 +1922,12 @@ static int skl_wm_max_lines(struct drm_i915_private *i915)
 		return 31;
 }
 
+static bool xe3_auto_min_alloc_capable(struct intel_display *display,
+				       int level)
+{
+	return DISPLAY_VER(display) >= 30 && level == 0;
+}
+
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct intel_plane *plane,
 				 int level,
@@ -1899,6 +1937,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct skl_wm_level *result /* out */)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	uint_fixed_16_16_t method1, method2;
 	uint_fixed_16_16_t selected_result;
 	u32 blocks, lines, min_ddb_alloc = 0;
@@ -2022,6 +2061,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	/* Bspec says: value >= plane ddb allocation -> invalid, hence the +1 here */
 	result->min_ddb_alloc = max(min_ddb_alloc, blocks) + 1;
 	result->enable = true;
+	result->auto_min_alloc_wm_enable = xe3_auto_min_alloc_capable(display, level);
 
 	if (DISPLAY_VER(i915) < 12 && i915->display.sagv.block_time_us)
 		result->can_sagv = latency >= i915->display.sagv.block_time_us;
@@ -2401,16 +2441,18 @@ static bool skl_wm_level_equals(const struct skl_wm_level *l1,
 	return l1->enable == l2->enable &&
 		l1->ignore_lines == l2->ignore_lines &&
 		l1->lines == l2->lines &&
-		l1->blocks == l2->blocks;
+		l1->blocks == l2->blocks &&
+		l1->auto_min_alloc_wm_enable == l2->auto_min_alloc_wm_enable;
 }
 
 static bool skl_plane_wm_equals(struct drm_i915_private *i915,
 				const struct skl_plane_wm *wm1,
 				const struct skl_plane_wm *wm2)
 {
+	struct intel_display *display = &i915->display;
 	int level;
 
-	for (level = 0; level < i915->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		/*
 		 * We don't check uv_wm as the hardware doesn't actually
 		 * use it. It only gets used for calculating the required
@@ -2950,6 +2992,8 @@ static void skl_wm_level_from_reg_val(struct intel_display *display,
 	level->ignore_lines = val & PLANE_WM_IGNORE_LINES;
 	level->blocks = REG_FIELD_GET(PLANE_WM_BLOCKS_MASK, val);
 	level->lines = REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
+	level->auto_min_alloc_wm_enable = DISPLAY_VER(display) >= 30 ?
+					   val & PLANE_WM_AUTO_MIN_ALLOC_EN : 0;
 }
 
 static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
@@ -3009,11 +3053,11 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 	struct intel_crtc *crtc;
 
 	if (HAS_MBUS_JOINING(display))
-		dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
+		dbuf_state->joined_mbus = intel_de_read(display, MBUS_CTL) & MBUS_JOIN;
 
 	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(display, &display->cdclk.hw);
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
@@ -3034,12 +3078,17 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 				&crtc_state->wm.skl.plane_ddb[plane_id];
 			struct skl_ddb_entry *ddb_y =
 				&crtc_state->wm.skl.plane_ddb_y[plane_id];
+			u16 *min_ddb =
+				&crtc_state->wm.skl.plane_min_ddb[plane_id];
+			u16 *interim_ddb =
+				&crtc_state->wm.skl.plane_interim_ddb[plane_id];
 
 			if (!crtc_state->hw.active)
 				continue;
 
 			skl_ddb_get_hw_plane_state(i915, crtc->pipe,
-						   plane_id, ddb, ddb_y);
+						   plane_id, ddb, ddb_y,
+						   min_ddb, interim_ddb);
 
 			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb);
 			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_y);
@@ -3061,7 +3110,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 		dbuf_state->slices[pipe] =
 			skl_ddb_dbuf_slice_mask(i915, &crtc_state->wm.skl.ddb);
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x, mbus joined: %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    dbuf_state->slices[pipe], dbuf_state->ddb[pipe].start,
@@ -3069,7 +3118,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 			    str_yes_no(dbuf_state->joined_mbus));
 	}
 
-	dbuf_state->enabled_slices = i915->display.dbuf.enabled_slices;
+	dbuf_state->enabled_slices = display->dbuf.enabled_slices;
 }
 
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
@@ -3704,6 +3753,8 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 	struct skl_hw_state {
 		struct skl_ddb_entry ddb[I915_MAX_PLANES];
 		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
+		u16 min_ddb[I915_MAX_PLANES];
+		u16 interim_ddb[I915_MAX_PLANES];
 		struct skl_pipe_wm wm;
 	} *hw;
 	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
@@ -3720,7 +3771,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
 
-	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
+	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y, hw->min_ddb, hw->interim_ddb);
 
 	hw_enabled_slices = intel_enabled_dbuf_slices_mask(i915);
 
-- 
2.34.1

