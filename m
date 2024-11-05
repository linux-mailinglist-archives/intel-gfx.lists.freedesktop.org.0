Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B4F9BC6C3
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 08:16:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E0910E537;
	Tue,  5 Nov 2024 07:16:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OG16+G+C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCB710E536;
 Tue,  5 Nov 2024 07:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730791002; x=1762327002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E4Il8PauRGpJIoCoz6LCKq6Aq4nHCinOkeXdHKLZtWA=;
 b=OG16+G+C2W14pM26oRl2N8CiWXcS7LoHokKwOmVcQDQcCIotENnsz+dA
 6XLQswI0nJEMQjEW8x95Jq5pRYA6PNFIMAx4bGeqb1iGOjMl6QOsOdjo6
 +xbV8U0bCNGq2i+Ip9fC+yUnsWhv1Hh1sujmd6ApGZDBpl8QwXZlXzuzU
 5TVSElxPUp2/F0gNj/Ch8PQRF++Nl8NlrQapPPrqZ9lZ0qUJgH/B1qK2v
 elvPGP1Y5rLWdKigUjLwCeVLWSoQE03b2ypu5R6DX0koNByi7o/jN1+x8
 EQRfkrQnJybxt/01eP1NRzhyl31a3oAs9Pq16d418L+/a0FCPyBNaA0RD w==;
X-CSE-ConnectionGUID: RHg1JPAfQv+7lGk2qm5VWw==
X-CSE-MsgGUID: HYEfaEF6RRibEbbP3remQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34449553"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="34449553"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:42 -0800
X-CSE-ConnectionGUID: vT9MoLc/T6C/yjkPeZQ1gQ==
X-CSE-MsgGUID: xLh5fJrLRxG89MabvANfHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="87835648"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO vgovind2-mobl3..)
 ([10.245.245.146])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:38 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH 7/8] drm/i915/xe3: Use hw support for min/interim ddb
 allocations for async flip
Date: Tue,  5 Nov 2024 09:15:59 +0200
Message-Id: <20241105071600.235338-8-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241105071600.235338-1-vinod.govindapillai@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
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

Starting from xe3, hw now is capable of switching automatically to min
ddb allocation(not using any extra blocks) or interim SAGV-adjusted
allocation in case if async flip is used.
For that purpose there is now additional register, where correspodent
values have to be programmed.

Bspec: 69880, 72053
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  9 ++
 .../drm/i915/display/intel_display_types.h    |  8 ++
 .../drm/i915/display/skl_universal_plane.c    | 31 +++++++
 .../i915/display/skl_universal_plane_regs.h   | 13 +++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 85 +++++++++++++++++--
 5 files changed, 140 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 2c8fae8de4da..7940cb911889 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -213,6 +213,15 @@ use_min_ddb(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(plane);
 
+	/*
+	 * For xe3 onwards this feature is implemented in
+	 * hardware, so no need to force relative data rate to 0,
+	 * we will update a specific register with min_ddb without
+	 * extra blocks.
+	 */
+	if (DISPLAY_VER(display) >= 30)
+		return false;
+
 	return DISPLAY_VER(display) >= 13 &&
 	       crtc_state->uapi.async_flip &&
 	       plane->async_flip;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d2b68505f088..c0548db0061c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -770,6 +770,7 @@ struct skl_wm_level {
 	bool enable;
 	bool ignore_lines;
 	bool can_sagv;
+	bool auto_min_ddb_allowed;
 };
 
 struct skl_plane_wm {
@@ -863,6 +864,13 @@ struct intel_crtc_wm_state {
 			struct skl_ddb_entry plane_ddb[I915_MAX_PLANES];
 			/* pre-icl: for planar Y */
 			struct skl_ddb_entry plane_ddb_y[I915_MAX_PLANES];
+
+			/*
+			 * xe3: Minimum amount of display blocks and minimum
+			 * sagv allocation required for async flip
+			 */
+			struct skl_ddb_entry plane_min_ddb[I915_MAX_PLANES];
+			struct skl_ddb_entry plane_interim_ddb[I915_MAX_PLANES];
 		} skl;
 
 		struct {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 038ca2ec5d7a..69d5ca74c594 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -715,6 +715,26 @@ static u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
 		PLANE_BUF_START(entry->start);
 }
 
+static u32 ptl_plane_min_ddb_reg_val(const struct skl_ddb_entry *min_ddb_entry,
+				     const struct skl_ddb_entry *interim_ddb_entry)
+{
+	u32 val = 0;
+
+	if (min_ddb_entry->end) {
+		val |= PLANE_AUTO_MIN_DBUF_EN;
+		val |= REG_FIELD_PREP(PLANE_MIN_DDB_BLOCKS_MASK,
+				      min_ddb_entry->end - min_ddb_entry->start);
+	}
+
+	if (interim_ddb_entry->end) {
+		val |= PLANE_AUTO_MIN_DBUF_EN;
+		val |= REG_FIELD_PREP(PLANE_INTERIM_DDB_BLOCKS_MASK,
+				      interim_ddb_entry->end - interim_ddb_entry->start);
+	}
+
+	return val;
+}
+
 static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
 {
 	u32 val = 0;
@@ -723,6 +743,9 @@ static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
 		val |= PLANE_WM_EN;
 	if (level->ignore_lines)
 		val |= PLANE_WM_IGNORE_LINES;
+	if (level->auto_min_ddb_allowed)
+		val |= PLANE_WM_AUTO_MIN_ALLOC_EN;
+
 	val |= REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
 	val |= REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
 
@@ -742,6 +765,10 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 		&crtc_state->wm.skl.plane_ddb[plane_id];
 	const struct skl_ddb_entry *ddb_y =
 		&crtc_state->wm.skl.plane_ddb_y[plane_id];
+	const struct skl_ddb_entry *min_ddb =
+		&crtc_state->wm.skl.plane_min_ddb[plane_id];
+	const struct skl_ddb_entry *interim_ddb =
+		&crtc_state->wm.skl.plane_interim_ddb[plane_id];
 	int level;
 
 	for (level = 0; level < i915->display.wm.num_levels; level++)
@@ -766,6 +793,10 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 	if (DISPLAY_VER(i915) < 11)
 		intel_de_write_dsb(display, dsb, PLANE_NV12_BUF_CFG(pipe, plane_id),
 				   skl_plane_ddb_reg_val(ddb_y));
+
+	if (DISPLAY_VER(display) >= 30)
+		intel_de_write_dsb(display, dsb, PLANE_MIN_BUF_CFG(pipe, plane_id),
+				   ptl_plane_min_ddb_reg_val(min_ddb, interim_ddb));
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index ff31a00d511e..65a5482fae60 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -322,6 +322,7 @@
 							   _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
 #define   PLANE_WM_EN				REG_BIT(31)
 #define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
+#define   PLANE_WM_AUTO_MIN_ALLOC_EN		REG_BIT(29)
 #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
 #define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
 
@@ -373,12 +374,24 @@
 #define PLANE_BUF_CFG(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
 							_PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B, \
 							_PLANE_BUF_CFG_2_A, _PLANE_BUF_CFG_2_B)
+#define _PLANE_MIN_BUF_CFG_1_A			0x70274
+#define _PLANE_MIN_BUF_CFG_2_A			0x70374
+#define _PLANE_MIN_BUF_CFG_1_B			0x71274
+#define _PLANE_MIN_BUF_CFG_2_B			0x71374
+#define PLANE_MIN_BUF_CFG(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
+							_PLANE_MIN_BUF_CFG_1_A, _PLANE_MIN_BUF_CFG_1_B, \
+							_PLANE_MIN_BUF_CFG_2_A, _PLANE_MIN_BUF_CFG_2_B)
+
 /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
 #define   PLANE_BUF_END_MASK			REG_GENMASK(27, 16)
 #define   PLANE_BUF_END(end)			REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
 #define   PLANE_BUF_START_MASK			REG_GENMASK(11, 0)
 #define   PLANE_BUF_START(start)		REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
 
+#define PLANE_AUTO_MIN_DBUF_EN			REG_BIT(31)
+#define PLANE_MIN_DDB_BLOCKS_MASK		REG_GENMASK(27, 16)
+#define PLANE_INTERIM_DDB_BLOCKS_MASK		REG_GENMASK(11, 0)
+
 /* tgl+ */
 #define _SEL_FETCH_PLANE_CTL_1_A		0x70890
 #define _SEL_FETCH_PLANE_CTL_2_A		0x708b0
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d961d01343b3..4e6433374e0d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -797,7 +797,9 @@ skl_ddb_get_hw_plane_state(struct intel_display *display,
 			   const enum pipe pipe,
 			   const enum plane_id plane_id,
 			   struct skl_ddb_entry *ddb,
-			   struct skl_ddb_entry *ddb_y)
+			   struct skl_ddb_entry *ddb_y,
+			   struct skl_ddb_entry *min_ddb,
+			   struct skl_ddb_entry *interim_ddb)
 {
 	u32 val;
 
@@ -811,6 +813,17 @@ skl_ddb_get_hw_plane_state(struct intel_display *display,
 	val = intel_de_read(display, PLANE_BUF_CFG(pipe, plane_id));
 	skl_ddb_entry_init_from_hw(ddb, val);
 
+	if (DISPLAY_VER(display) >= 30) {
+		val = intel_de_read(display, PLANE_MIN_BUF_CFG(pipe, plane_id));
+
+		skl_ddb_entry_init(min_ddb, 0,
+				   REG_FIELD_GET(PLANE_MIN_DDB_BLOCKS_MASK,
+						 val));
+		skl_ddb_entry_init(interim_ddb, 0,
+				   REG_FIELD_GET(PLANE_INTERIM_DDB_BLOCKS_MASK,
+						 val));
+	}
+
 	if (DISPLAY_VER(display) >= 11)
 		return;
 
@@ -820,7 +833,9 @@ skl_ddb_get_hw_plane_state(struct intel_display *display,
 
 static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 				      struct skl_ddb_entry *ddb,
-				      struct skl_ddb_entry *ddb_y)
+				      struct skl_ddb_entry *ddb_y,
+				      struct skl_ddb_entry *min_ddb,
+				      struct skl_ddb_entry *interim_ddb)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum intel_display_power_domain power_domain;
@@ -837,7 +852,9 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 		skl_ddb_get_hw_plane_state(&i915->display, pipe,
 					   plane_id,
 					   &ddb[plane_id],
-					   &ddb_y[plane_id]);
+					   &ddb_y[plane_id],
+					   &min_ddb[plane_id],
+					   &interim_ddb[plane_id]);
 
 	intel_display_power_put(i915, power_domain, wakeref);
 }
@@ -1374,7 +1391,9 @@ use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(plane);
 
+	/* Xe3 (ver >= 30) has auto minimum DDB enabled */
 	return DISPLAY_VER(display) >= 13 &&
+	       DISPLAY_VER(display) < 30 &&
 	       crtc_state->uapi.async_flip &&
 	       plane->async_flip;
 }
@@ -1515,6 +1534,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	const struct intel_dbuf_state *dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 	const struct skl_ddb_entry *alloc = &dbuf_state->ddb[crtc->pipe];
+	struct intel_display *display = to_intel_display(state);
 	int num_active = hweight8(dbuf_state->active_pipes);
 	struct skl_plane_ddb_iter iter;
 	enum plane_id plane_id;
@@ -1525,6 +1545,8 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	/* Clear the partitioning for disabled planes. */
 	memset(crtc_state->wm.skl.plane_ddb, 0, sizeof(crtc_state->wm.skl.plane_ddb));
 	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state->wm.skl.plane_ddb_y));
+	memset(crtc_state->wm.skl.plane_min_ddb, 0, sizeof(crtc_state->wm.skl.plane_min_ddb));
+	memset(crtc_state->wm.skl.plane_interim_ddb, 0, sizeof(crtc_state->wm.skl.plane_interim_ddb));
 
 	if (!crtc_state->hw.active)
 		return 0;
@@ -1597,6 +1619,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			&crtc_state->wm.skl.plane_ddb[plane_id];
 		struct skl_ddb_entry *ddb_y =
 			&crtc_state->wm.skl.plane_ddb_y[plane_id];
+		struct skl_ddb_entry *min_ddb =
+			&crtc_state->wm.skl.plane_min_ddb[plane_id];
+		struct skl_ddb_entry *interim_ddb =
+			&crtc_state->wm.skl.plane_interim_ddb[plane_id];
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
@@ -1612,6 +1638,20 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		} else {
 			skl_allocate_plane_ddb(&iter, ddb, &wm->wm[level],
 					       crtc_state->rel_data_rate[plane_id]);
+
+			/*
+			 * xe3: Handle min_ddb and interim_ddb. Unlike the
+			 * normal ddb allocation, min_ddb and interim_ddb config
+			 * expects only the number of blocks from 0. The buffer
+			 * start is found in PLANE_BUF_CFG
+			 * Bspec: 72053
+			 */
+			if (DISPLAY_VER(display) >= 30) {
+				skl_ddb_entry_init(min_ddb, 0,
+						   wm->wm[0].min_ddb_alloc);
+				skl_ddb_entry_init(interim_ddb, 0,
+						   wm->sagv.wm0.min_ddb_alloc);
+			}
 		}
 	}
 	drm_WARN_ON(&i915->drm, iter.size != 0 || iter.data_rate != 0);
@@ -1656,6 +1696,8 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			&crtc_state->wm.skl.plane_ddb[plane_id];
 		const struct skl_ddb_entry *ddb_y =
 			&crtc_state->wm.skl.plane_ddb_y[plane_id];
+		struct skl_ddb_entry *interim_ddb =
+			&crtc_state->wm.skl.plane_interim_ddb[plane_id];
 		struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
@@ -1669,6 +1711,11 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		}
 
 		skl_check_wm_level(&wm->sagv.wm0, ddb);
+		/* update the interim ddb, in case if it is changed */
+		if (DISPLAY_VER(display) >= 30)
+			skl_ddb_entry_init(interim_ddb, 0,
+					   wm->sagv.wm0.min_ddb_alloc);
+
 		skl_check_wm_level(&wm->sagv.trans_wm, ddb);
 	}
 
@@ -1747,6 +1794,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      int color_plane, unsigned int pan_x)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 interm_pbpl;
 
@@ -1805,7 +1853,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 					   wp->y_min_scanlines,
 					   wp->dbuf_block_size);
 
-		if (DISPLAY_VER(i915) >= 30)
+		if (DISPLAY_VER(display) >= 30)
 			interm_pbpl += (pan_x != 0);
 		else if (DISPLAY_VER(i915) >= 10)
 			interm_pbpl++;
@@ -1870,6 +1918,11 @@ static int skl_wm_max_lines(struct drm_i915_private *i915)
 		return 31;
 }
 
+static bool can_use_min_ddb(struct intel_display *display, int level)
+{
+	return DISPLAY_VER(display) >= 30 && level == 0;
+}
+
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct intel_plane *plane,
 				 int level,
@@ -1879,6 +1932,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct skl_wm_level *result /* out */)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	uint_fixed_16_16_t method1, method2;
 	uint_fixed_16_16_t selected_result;
 	u32 blocks, lines, min_ddb_alloc = 0;
@@ -2002,6 +2056,11 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	/* Bspec says: value >= plane ddb allocation -> invalid, hence the +1 here */
 	result->min_ddb_alloc = max(min_ddb_alloc, blocks) + 1;
 	result->enable = true;
+	/*
+	 * For Xe3, when auto min DDB is enabled, it automatically switches to
+	 * the wm level where this auto min ddb is enabled
+	 */
+	result->auto_min_ddb_allowed = can_use_min_ddb(display, level);
 
 	if (DISPLAY_VER(i915) < 12 && i915->display.sagv.block_time_us)
 		result->can_sagv = latency >= i915->display.sagv.block_time_us;
@@ -2398,6 +2457,10 @@ static bool skl_plane_wm_equals(struct intel_display *display,
 		 */
 		if (!skl_wm_level_equals(&wm1->wm[level], &wm2->wm[level]))
 			return false;
+
+		if (DISPLAY_VER(display) >= 30 &&
+		    wm1->wm[level].auto_min_ddb_allowed != wm2->wm[level].auto_min_ddb_allowed)
+			return false;
 	}
 
 	return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm) &&
@@ -2929,6 +2992,8 @@ static void skl_wm_level_from_reg_val(struct intel_display *display,
 	level->ignore_lines = val & PLANE_WM_IGNORE_LINES;
 	level->blocks = REG_FIELD_GET(PLANE_WM_BLOCKS_MASK, val);
 	level->lines = REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
+	level->auto_min_ddb_allowed = DISPLAY_VER(display) >= 30 &&
+					val & PLANE_WM_AUTO_MIN_ALLOC_EN;
 }
 
 static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
@@ -3014,12 +3079,17 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 				&crtc_state->wm.skl.plane_ddb[plane_id];
 			struct skl_ddb_entry *ddb_y =
 				&crtc_state->wm.skl.plane_ddb_y[plane_id];
+			struct skl_ddb_entry *min_ddb =
+				&crtc_state->wm.skl.plane_min_ddb[plane_id];
+			struct skl_ddb_entry *interim_ddb =
+				&crtc_state->wm.skl.plane_interim_ddb[plane_id];
 
 			if (!crtc_state->hw.active)
 				continue;
 
 			skl_ddb_get_hw_plane_state(display, crtc->pipe,
-						   plane_id, ddb, ddb_y);
+						   plane_id, ddb, ddb_y,
+						   min_ddb, interim_ddb);
 
 			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb);
 			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_y);
@@ -3136,6 +3206,8 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 	struct skl_hw_state {
 		struct skl_ddb_entry ddb[I915_MAX_PLANES];
 		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
+		struct skl_ddb_entry min_ddb[I915_MAX_PLANES];
+		struct skl_ddb_entry interim_ddb[I915_MAX_PLANES];
 		struct skl_pipe_wm wm;
 	} *hw;
 	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
@@ -3152,7 +3224,8 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
 
-	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
+	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y, hw->min_ddb,
+				  hw->interim_ddb);
 
 	hw_enabled_slices = intel_enabled_dbuf_slices_mask(display);
 
-- 
2.34.1

