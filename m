Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D934BD6096
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:12:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4303310E520;
	Mon, 13 Oct 2025 20:12:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F+sw7s48";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821D910E51D;
 Mon, 13 Oct 2025 20:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386365; x=1791922365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vxQjEF+3qHlngF4ZZhZjOFrED3EOzGk5hpek/WtLPHA=;
 b=F+sw7s48tUqQ/xA1z4vYMEjPJu6y0EcGsV32N5GFrGJZne8ipK/wNNO7
 ihLyNJPuBmYBhpEJKp8uZu4JGtEkCrqaUCH/Aq+p0LoORwmW+8xrUvqHu
 yt1vct7E+K2NoyfvzcBMnYL9Si8GK3bL1tvOmMHBXyy0ej2M2qg3WRXIo
 bXIwcLVzv/lkogBnOhANn89ffEfUKfc6c9wH9K+3zsOJnq3n8B+W7Hk9d
 tAFqzvh19FAGCwpu7lvncfti6a2a15C9vElsjBQv6EFmE9797cF7k710e
 avpYA7GDcrG9QDOY8Il9RL7ZZ7rMnjE0a/FhOj4TErLr77wB2O/+juEh8 Q==;
X-CSE-ConnectionGUID: kxts8K1gSbSmZgGdhGa0vg==
X-CSE-MsgGUID: CJs4mb2ISISEZ5MokZE7YQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="65159144"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="65159144"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:12:45 -0700
X-CSE-ConnectionGUID: raCikE1uQta2aqlmUAcqKw==
X-CSE-MsgGUID: dH8e3oYsQ4mid9Dzzz++Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181250681"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:12:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915/bw: Untangle dbuf bw from the sagv/mem bw stuff
Date: Mon, 13 Oct 2025 23:12:28 +0300
Message-ID: <20251013201236.30084-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently intel_bw.c contains basically three completely independent
parts:
- SAGV/memory bandwidth handling
- DBuf bandwidth handling
- "Maximum pipe read bandwidth" calculation, which is some kind
  of internal per-pipe bandwidth limit.

Carve out the DBuf bandwdith handling into a separate file since
there is no actual dependency between it and the rest of intel_bw.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_bw.c       | 191 ------------
 drivers/gpu/drm/i915/display/intel_bw.h       |   4 -
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  32 +-
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_dbuf_bw.c  | 295 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dbuf_bw.h  |  37 +++
 .../gpu/drm/i915/display/intel_display_core.h |   4 +
 .../drm/i915/display/intel_display_driver.c   |   5 +
 .../drm/i915/display/intel_modeset_setup.c    |   3 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 11 files changed, 363 insertions(+), 217 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dbuf_bw.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dbuf_bw.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6d7800e25e55..dbdf88b42919 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -241,6 +241,7 @@ i915-y += \
 	display/intel_crtc.o \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
+	display/intel_dbuf_bw.o \
 	display/intel_display.o \
 	display/intel_display_conversion.o \
 	display/intel_display_driver.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b53bcb693e79..a4d16711d336 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -3,16 +3,12 @@
  * Copyright © 2019 Intel Corporation
  */
 
-#include <drm/drm_atomic_state_helper.h>
-
 #include "soc/intel_dram.h"
 
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
-#include "intel_atomic.h"
 #include "intel_bw.h"
-#include "intel_cdclk.h"
 #include "intel_crtc.h"
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
@@ -22,14 +18,8 @@
 #include "intel_uncore.h"
 #include "skl_watermark.h"
 
-struct intel_dbuf_bw {
-	unsigned int max_bw[I915_MAX_DBUF_SLICES];
-	u8 active_planes[I915_MAX_DBUF_SLICES];
-};
-
 struct intel_bw_state {
 	struct intel_global_state base;
-	struct intel_dbuf_bw dbuf_bw[I915_MAX_PIPES];
 
 	/*
 	 * Contains a bit mask, used to determine, whether correspondent
@@ -1264,184 +1254,6 @@ static int intel_bw_check_qgv_points(struct intel_display *display,
 					   old_bw_state, new_bw_state);
 }
 
-static bool intel_dbuf_bw_changed(struct intel_display *display,
-				  const struct intel_dbuf_bw *old_dbuf_bw,
-				  const struct intel_dbuf_bw *new_dbuf_bw)
-{
-	enum dbuf_slice slice;
-
-	for_each_dbuf_slice(display, slice) {
-		if (old_dbuf_bw->max_bw[slice] != new_dbuf_bw->max_bw[slice] ||
-		    old_dbuf_bw->active_planes[slice] != new_dbuf_bw->active_planes[slice])
-			return true;
-	}
-
-	return false;
-}
-
-static bool intel_bw_state_changed(struct intel_display *display,
-				   const struct intel_bw_state *old_bw_state,
-				   const struct intel_bw_state *new_bw_state)
-{
-	enum pipe pipe;
-
-	for_each_pipe(display, pipe) {
-		const struct intel_dbuf_bw *old_dbuf_bw =
-			&old_bw_state->dbuf_bw[pipe];
-		const struct intel_dbuf_bw *new_dbuf_bw =
-			&new_bw_state->dbuf_bw[pipe];
-
-		if (intel_dbuf_bw_changed(display, old_dbuf_bw, new_dbuf_bw))
-			return true;
-	}
-
-	return false;
-}
-
-static void skl_plane_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
-				   struct intel_crtc *crtc,
-				   enum plane_id plane_id,
-				   const struct skl_ddb_entry *ddb,
-				   unsigned int data_rate)
-{
-	struct intel_display *display = to_intel_display(crtc);
-	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(display, ddb);
-	enum dbuf_slice slice;
-
-	/*
-	 * The arbiter can only really guarantee an
-	 * equal share of the total bw to each plane.
-	 */
-	for_each_dbuf_slice_in_mask(display, slice, dbuf_mask) {
-		dbuf_bw->max_bw[slice] = max(dbuf_bw->max_bw[slice], data_rate);
-		dbuf_bw->active_planes[slice] |= BIT(plane_id);
-	}
-}
-
-static void skl_crtc_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
-				  const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum plane_id plane_id;
-
-	memset(dbuf_bw, 0, sizeof(*dbuf_bw));
-
-	if (!crtc_state->hw.active)
-		return;
-
-	for_each_plane_id_on_crtc(crtc, plane_id) {
-		/*
-		 * We assume cursors are small enough
-		 * to not cause bandwidth problems.
-		 */
-		if (plane_id == PLANE_CURSOR)
-			continue;
-
-		skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
-				       &crtc_state->wm.skl.plane_ddb[plane_id],
-				       crtc_state->data_rate[plane_id]);
-
-		if (DISPLAY_VER(display) < 11)
-			skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
-					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
-					       crtc_state->data_rate[plane_id]);
-	}
-}
-
-/* "Maximum Data Buffer Bandwidth" */
-static int
-intel_bw_dbuf_min_cdclk(struct intel_display *display,
-			const struct intel_bw_state *bw_state)
-{
-	unsigned int total_max_bw = 0;
-	enum dbuf_slice slice;
-
-	for_each_dbuf_slice(display, slice) {
-		int num_active_planes = 0;
-		unsigned int max_bw = 0;
-		enum pipe pipe;
-
-		/*
-		 * The arbiter can only really guarantee an
-		 * equal share of the total bw to each plane.
-		 */
-		for_each_pipe(display, pipe) {
-			const struct intel_dbuf_bw *dbuf_bw = &bw_state->dbuf_bw[pipe];
-
-			max_bw = max(dbuf_bw->max_bw[slice], max_bw);
-			num_active_planes += hweight8(dbuf_bw->active_planes[slice]);
-		}
-		max_bw *= num_active_planes;
-
-		total_max_bw = max(total_max_bw, max_bw);
-	}
-
-	return DIV_ROUND_UP(total_max_bw, 64);
-}
-
-int intel_bw_min_cdclk(struct intel_display *display,
-		       const struct intel_bw_state *bw_state)
-{
-	int min_cdclk;
-
-	min_cdclk = intel_bw_dbuf_min_cdclk(display, bw_state);
-
-	return min_cdclk;
-}
-
-int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
-			    bool *need_cdclk_calc)
-{
-	struct intel_display *display = to_intel_display(state);
-	struct intel_bw_state *new_bw_state = NULL;
-	const struct intel_bw_state *old_bw_state = NULL;
-	const struct intel_crtc_state *old_crtc_state;
-	const struct intel_crtc_state *new_crtc_state;
-	struct intel_crtc *crtc;
-	int ret, i;
-
-	if (DISPLAY_VER(display) < 9)
-		return 0;
-
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
-		struct intel_dbuf_bw old_dbuf_bw, new_dbuf_bw;
-
-		skl_crtc_calc_dbuf_bw(&old_dbuf_bw, old_crtc_state);
-		skl_crtc_calc_dbuf_bw(&new_dbuf_bw, new_crtc_state);
-
-		if (!intel_dbuf_bw_changed(display, &old_dbuf_bw, &new_dbuf_bw))
-			continue;
-
-		new_bw_state = intel_atomic_get_bw_state(state);
-		if (IS_ERR(new_bw_state))
-			return PTR_ERR(new_bw_state);
-
-		old_bw_state = intel_atomic_get_old_bw_state(state);
-
-		new_bw_state->dbuf_bw[crtc->pipe] = new_dbuf_bw;
-	}
-
-	if (!old_bw_state)
-		return 0;
-
-	if (intel_bw_state_changed(display, old_bw_state, new_bw_state)) {
-		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	}
-
-	ret = intel_cdclk_update_bw_min_cdclk(state,
-					      intel_bw_min_cdclk(display, old_bw_state),
-					      intel_bw_min_cdclk(display, new_bw_state),
-					      need_cdclk_calc);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
 static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *changed)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -1647,8 +1459,6 @@ void intel_bw_update_hw_state(struct intel_display *display)
 		if (DISPLAY_VER(display) >= 11)
 			intel_bw_crtc_update(bw_state, crtc_state);
 
-		skl_crtc_calc_dbuf_bw(&bw_state->dbuf_bw[pipe], crtc_state);
-
 		/* initially SAGV has been forced off */
 		bw_state->pipe_sagv_reject |= BIT(pipe);
 	}
@@ -1666,7 +1476,6 @@ void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc)
 
 	bw_state->data_rate[pipe] = 0;
 	bw_state->num_active_planes[pipe] = 0;
-	memset(&bw_state->dbuf_bw[pipe], 0, sizeof(bw_state->dbuf_bw[pipe]));
 }
 
 static struct intel_global_state *
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 4bb3a637b295..051e163f2f15 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -30,10 +30,6 @@ void intel_bw_init_hw(struct intel_display *display);
 int intel_bw_init(struct intel_display *display);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state);
-int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
-			    bool *need_cdclk_calc);
-int intel_bw_min_cdclk(struct intel_display *display,
-		       const struct intel_bw_state *bw_state);
 void intel_bw_update_hw_state(struct intel_display *display);
 void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f2e092f89ddd..23b9e100d824 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -38,6 +38,7 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_crtc.h"
+#include "intel_dbuf_bw.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -133,8 +134,8 @@ struct intel_cdclk_state {
 	 */
 	struct intel_cdclk_config actual;
 
-	/* minimum acceptable cdclk to satisfy bandwidth requirements */
-	int bw_min_cdclk;
+	/* minimum acceptable cdclk to satisfy DBUF bandwidth requirements */
+	int dbuf_bw_min_cdclk;
 	/* minimum acceptable cdclk for each pipe */
 	int min_cdclk[I915_MAX_PIPES];
 	/* minimum acceptable voltage level for each pipe */
@@ -2891,9 +2892,9 @@ static int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
-				    int old_min_cdclk, int new_min_cdclk,
-				    bool *need_cdclk_calc)
+int intel_cdclk_update_dbuf_bw_min_cdclk(struct intel_atomic_state *state,
+					 int old_min_cdclk, int new_min_cdclk,
+					 bool *need_cdclk_calc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state;
@@ -2910,7 +2911,7 @@ int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
 	if (IS_ERR(cdclk_state))
 		return PTR_ERR(cdclk_state);
 
-	old_min_cdclk = cdclk_state->bw_min_cdclk;
+	old_min_cdclk = cdclk_state->dbuf_bw_min_cdclk;
 
 	if (new_min_cdclk == old_min_cdclk)
 		return 0;
@@ -2918,7 +2919,7 @@ int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
 	if (!allow_cdclk_decrease && new_min_cdclk < old_min_cdclk)
 		return 0;
 
-	cdclk_state->bw_min_cdclk = new_min_cdclk;
+	cdclk_state->dbuf_bw_min_cdclk = new_min_cdclk;
 
 	ret = intel_atomic_lock_global_state(&cdclk_state->base);
 	if (ret)
@@ -2927,7 +2928,7 @@ int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
 	*need_cdclk_calc = true;
 
 	drm_dbg_kms(display->drm,
-		    "bandwidth min cdclk: %d kHz -> %d kHz\n",
+		    "dbuf bandwidth min cdclk: %d kHz -> %d kHz\n",
 		    old_min_cdclk, new_min_cdclk);
 
 	return 0;
@@ -2950,7 +2951,7 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 	int min_cdclk;
 
 	min_cdclk = cdclk_state->force_min_cdclk;
-	min_cdclk = max(min_cdclk, cdclk_state->bw_min_cdclk);
+	min_cdclk = max(min_cdclk, cdclk_state->dbuf_bw_min_cdclk);
 	for_each_pipe(display, pipe)
 		min_cdclk = max(min_cdclk, cdclk_state->min_cdclk[pipe]);
 
@@ -3476,7 +3477,7 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	ret = intel_bw_calc_min_cdclk(state, &need_cdclk_calc);
+	ret = intel_dbuf_bw_calc_min_cdclk(state, &need_cdclk_calc);
 	if (ret)
 		return ret;
 
@@ -3503,8 +3504,8 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state)
 
 void intel_cdclk_update_hw_state(struct intel_display *display)
 {
-	const struct intel_bw_state *bw_state =
-		to_intel_bw_state(display->bw.obj.state);
+	const struct intel_dbuf_bw_state *dbuf_bw_state =
+		to_intel_dbuf_bw_state(display->dbuf_bw.obj.state);
 	struct intel_cdclk_state *cdclk_state =
 		to_intel_cdclk_state(display->cdclk.obj.state);
 	struct intel_crtc *crtc;
@@ -3526,7 +3527,7 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 		cdclk_state->min_voltage_level[pipe] = crtc_state->min_voltage_level;
 	}
 
-	cdclk_state->bw_min_cdclk = intel_bw_min_cdclk(display, bw_state);
+	cdclk_state->dbuf_bw_min_cdclk = intel_dbuf_bw_min_cdclk(display, dbuf_bw_state);
 }
 
 void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc)
@@ -4020,11 +4021,6 @@ int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe
 	return cdclk_state->min_cdclk[pipe];
 }
 
-int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state)
-{
-	return cdclk_state->bw_min_cdclk;
-}
-
 bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state)
 {
 	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 72963f6f399a..d9d7a8b3a48a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -46,9 +46,9 @@ struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 void intel_cdclk_update_hw_state(struct intel_display *display);
 void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc);
-int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
-				    int old_min_cdclk, int new_min_cdclk,
-				    bool *need_cdclk_calc);
+int intel_cdclk_update_dbuf_bw_min_cdclk(struct intel_atomic_state *state,
+					 int old_min_cdclk, int new_min_cdclk,
+					 bool *need_cdclk_calc);
 
 #define to_intel_cdclk_state(global_state) \
 	container_of_const((global_state), struct intel_cdclk_state, base)
@@ -65,7 +65,6 @@ int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
-int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
 bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
 void intel_cdclk_read_hw(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_dbuf_bw.c b/drivers/gpu/drm/i915/display/intel_dbuf_bw.c
new file mode 100644
index 000000000000..8b8894c37f63
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dbuf_bw.c
@@ -0,0 +1,295 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#include <drm/drm_print.h>
+
+#include "intel_dbuf_bw.h"
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+#include "skl_watermark.h"
+
+struct intel_dbuf_bw {
+	unsigned int max_bw[I915_MAX_DBUF_SLICES];
+	u8 active_planes[I915_MAX_DBUF_SLICES];
+};
+
+struct intel_dbuf_bw_state {
+	struct intel_global_state base;
+	struct intel_dbuf_bw dbuf_bw[I915_MAX_PIPES];
+};
+
+struct intel_dbuf_bw_state *to_intel_dbuf_bw_state(struct intel_global_state *obj_state)
+{
+	return container_of(obj_state, struct intel_dbuf_bw_state, base);
+}
+
+struct intel_dbuf_bw_state *
+intel_atomic_get_old_dbuf_bw_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_global_state *dbuf_bw_state;
+
+	dbuf_bw_state = intel_atomic_get_old_global_obj_state(state, &display->dbuf_bw.obj);
+
+	return to_intel_dbuf_bw_state(dbuf_bw_state);
+}
+
+struct intel_dbuf_bw_state *
+intel_atomic_get_new_dbuf_bw_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_global_state *dbuf_bw_state;
+
+	dbuf_bw_state = intel_atomic_get_new_global_obj_state(state, &display->dbuf_bw.obj);
+
+	return to_intel_dbuf_bw_state(dbuf_bw_state);
+}
+
+struct intel_dbuf_bw_state *
+intel_atomic_get_dbuf_bw_state(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_global_state *dbuf_bw_state;
+
+	dbuf_bw_state = intel_atomic_get_global_obj_state(state, &display->dbuf_bw.obj);
+	if (IS_ERR(dbuf_bw_state))
+		return ERR_CAST(dbuf_bw_state);
+
+	return to_intel_dbuf_bw_state(dbuf_bw_state);
+}
+
+static bool intel_dbuf_bw_changed(struct intel_display *display,
+				  const struct intel_dbuf_bw *old_dbuf_bw,
+				  const struct intel_dbuf_bw *new_dbuf_bw)
+{
+	enum dbuf_slice slice;
+
+	for_each_dbuf_slice(display, slice) {
+		if (old_dbuf_bw->max_bw[slice] != new_dbuf_bw->max_bw[slice] ||
+		    old_dbuf_bw->active_planes[slice] != new_dbuf_bw->active_planes[slice])
+			return true;
+	}
+
+	return false;
+}
+
+static bool intel_dbuf_bw_state_changed(struct intel_display *display,
+					const struct intel_dbuf_bw_state *old_dbuf_bw_state,
+					const struct intel_dbuf_bw_state *new_dbuf_bw_state)
+{
+	enum pipe pipe;
+
+	for_each_pipe(display, pipe) {
+		const struct intel_dbuf_bw *old_dbuf_bw =
+			&old_dbuf_bw_state->dbuf_bw[pipe];
+		const struct intel_dbuf_bw *new_dbuf_bw =
+			&new_dbuf_bw_state->dbuf_bw[pipe];
+
+		if (intel_dbuf_bw_changed(display, old_dbuf_bw, new_dbuf_bw))
+			return true;
+	}
+
+	return false;
+}
+
+static void skl_plane_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
+				   struct intel_crtc *crtc,
+				   enum plane_id plane_id,
+				   const struct skl_ddb_entry *ddb,
+				   unsigned int data_rate)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(display, ddb);
+	enum dbuf_slice slice;
+
+	/*
+	 * The arbiter can only really guarantee an
+	 * equal share of the total bw to each plane.
+	 */
+	for_each_dbuf_slice_in_mask(display, slice, dbuf_mask) {
+		dbuf_bw->max_bw[slice] = max(dbuf_bw->max_bw[slice], data_rate);
+		dbuf_bw->active_planes[slice] |= BIT(plane_id);
+	}
+}
+
+static void skl_crtc_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
+				  const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum plane_id plane_id;
+
+	memset(dbuf_bw, 0, sizeof(*dbuf_bw));
+
+	if (!crtc_state->hw.active)
+		return;
+
+	for_each_plane_id_on_crtc(crtc, plane_id) {
+		/*
+		 * We assume cursors are small enough
+		 * to not cause bandwidth problems.
+		 */
+		if (plane_id == PLANE_CURSOR)
+			continue;
+
+		skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
+				       &crtc_state->wm.skl.plane_ddb[plane_id],
+				       crtc_state->data_rate[plane_id]);
+
+		if (DISPLAY_VER(display) < 11)
+			skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
+					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
+					       crtc_state->data_rate[plane_id]);
+	}
+}
+
+/* "Maximum Data Buffer Bandwidth" */
+int intel_dbuf_bw_min_cdclk(struct intel_display *display,
+			    const struct intel_dbuf_bw_state *dbuf_bw_state)
+{
+	unsigned int total_max_bw = 0;
+	enum dbuf_slice slice;
+
+	for_each_dbuf_slice(display, slice) {
+		int num_active_planes = 0;
+		unsigned int max_bw = 0;
+		enum pipe pipe;
+
+		/*
+		 * The arbiter can only really guarantee an
+		 * equal share of the total bw to each plane.
+		 */
+		for_each_pipe(display, pipe) {
+			const struct intel_dbuf_bw *dbuf_bw = &dbuf_bw_state->dbuf_bw[pipe];
+
+			max_bw = max(dbuf_bw->max_bw[slice], max_bw);
+			num_active_planes += hweight8(dbuf_bw->active_planes[slice]);
+		}
+		max_bw *= num_active_planes;
+
+		total_max_bw = max(total_max_bw, max_bw);
+	}
+
+	return DIV_ROUND_UP(total_max_bw, 64);
+}
+
+int intel_dbuf_bw_calc_min_cdclk(struct intel_atomic_state *state,
+				 bool *need_cdclk_calc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_dbuf_bw_state *new_dbuf_bw_state = NULL;
+	const struct intel_dbuf_bw_state *old_dbuf_bw_state = NULL;
+	const struct intel_crtc_state *old_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	int ret, i;
+
+	if (DISPLAY_VER(display) < 9)
+		return 0;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		struct intel_dbuf_bw old_dbuf_bw, new_dbuf_bw;
+
+		skl_crtc_calc_dbuf_bw(&old_dbuf_bw, old_crtc_state);
+		skl_crtc_calc_dbuf_bw(&new_dbuf_bw, new_crtc_state);
+
+		if (!intel_dbuf_bw_changed(display, &old_dbuf_bw, &new_dbuf_bw))
+			continue;
+
+		new_dbuf_bw_state = intel_atomic_get_dbuf_bw_state(state);
+		if (IS_ERR(new_dbuf_bw_state))
+			return PTR_ERR(new_dbuf_bw_state);
+
+		old_dbuf_bw_state = intel_atomic_get_old_dbuf_bw_state(state);
+
+		new_dbuf_bw_state->dbuf_bw[crtc->pipe] = new_dbuf_bw;
+	}
+
+	if (!old_dbuf_bw_state)
+		return 0;
+
+	if (intel_dbuf_bw_state_changed(display, old_dbuf_bw_state, new_dbuf_bw_state)) {
+		ret = intel_atomic_lock_global_state(&new_dbuf_bw_state->base);
+		if (ret)
+			return ret;
+	}
+
+	ret = intel_cdclk_update_dbuf_bw_min_cdclk(state,
+						   intel_dbuf_bw_min_cdclk(display, old_dbuf_bw_state),
+						   intel_dbuf_bw_min_cdclk(display, new_dbuf_bw_state),
+						   need_cdclk_calc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+void intel_dbuf_bw_update_hw_state(struct intel_display *display)
+{
+	struct intel_dbuf_bw_state *dbuf_bw_state =
+		to_intel_dbuf_bw_state(display->dbuf_bw.obj.state);
+	struct intel_crtc *crtc;
+
+	if (DISPLAY_VER(display) < 9)
+		return;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		skl_crtc_calc_dbuf_bw(&dbuf_bw_state->dbuf_bw[crtc->pipe], crtc_state);
+	}
+}
+
+void intel_dbuf_bw_crtc_disable_noatomic(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_dbuf_bw_state *dbuf_bw_state =
+		to_intel_dbuf_bw_state(display->dbuf_bw.obj.state);
+	enum pipe pipe = crtc->pipe;
+
+	if (DISPLAY_VER(display) < 9)
+		return;
+
+	memset(&dbuf_bw_state->dbuf_bw[pipe], 0, sizeof(dbuf_bw_state->dbuf_bw[pipe]));
+}
+
+static struct intel_global_state *
+intel_dbuf_bw_duplicate_state(struct intel_global_obj *obj)
+{
+	struct intel_dbuf_bw_state *state;
+
+	state = kmemdup(obj->state, sizeof(*state), GFP_KERNEL);
+	if (!state)
+		return NULL;
+
+	return &state->base;
+}
+
+static void intel_dbuf_bw_destroy_state(struct intel_global_obj *obj,
+					struct intel_global_state *state)
+{
+	kfree(state);
+}
+
+static const struct intel_global_state_funcs intel_dbuf_bw_funcs = {
+	.atomic_duplicate_state = intel_dbuf_bw_duplicate_state,
+	.atomic_destroy_state = intel_dbuf_bw_destroy_state,
+};
+
+int intel_dbuf_bw_init(struct intel_display *display)
+{
+	struct intel_dbuf_bw_state *state;
+
+	state = kzalloc(sizeof(*state), GFP_KERNEL);
+	if (!state)
+		return -ENOMEM;
+
+	intel_atomic_global_obj_init(display, &display->dbuf_bw.obj,
+				     &state->base, &intel_dbuf_bw_funcs);
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dbuf_bw.h b/drivers/gpu/drm/i915/display/intel_dbuf_bw.h
new file mode 100644
index 000000000000..61875b9d5969
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dbuf_bw.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __INTEL_DBUF_BW_H__
+#define __INTEL_DBUF_BW_H__
+
+#include <drm/drm_atomic.h>
+
+struct intel_atomic_state;
+struct intel_dbuf_bw_state;
+struct intel_crtc;
+struct intel_display;
+struct intel_global_state;
+
+struct intel_dbuf_bw_state *
+to_intel_dbuf_bw_state(struct intel_global_state *obj_state);
+
+struct intel_dbuf_bw_state *
+intel_atomic_get_old_dbuf_bw_state(struct intel_atomic_state *state);
+
+struct intel_dbuf_bw_state *
+intel_atomic_get_new_dbuf_bw_state(struct intel_atomic_state *state);
+
+struct intel_dbuf_bw_state *
+intel_atomic_get_dbuf_bw_state(struct intel_atomic_state *state);
+
+int intel_dbuf_bw_init(struct intel_display *display);
+int intel_dbuf_bw_calc_min_cdclk(struct intel_atomic_state *state,
+				 bool *need_cdclk_calc);
+int intel_dbuf_bw_min_cdclk(struct intel_display *display,
+			    const struct intel_dbuf_bw_state *dbuf_bw_state);
+void intel_dbuf_bw_update_hw_state(struct intel_display *display);
+void intel_dbuf_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
+
+#endif /* __INTEL_DBUF_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index df4da52cbdb3..32664098b407 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -369,6 +369,10 @@ struct intel_display {
 		struct intel_global_obj obj;
 	} dbuf;
 
+	struct {
+		struct intel_global_obj obj;
+	} dbuf_bw;
+
 	struct {
 		/*
 		 * dkl.phy_lock protects against concurrent access of the
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f84a0b26b7a6..38672d2896e3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -28,6 +28,7 @@
 #include "intel_cdclk.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
+#include "intel_dbuf_bw.h"
 #include "intel_display_core.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_driver.h"
@@ -285,6 +286,10 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (ret)
 		goto cleanup_wq_unordered;
 
+	ret = intel_dbuf_bw_init(display);
+	if (ret)
+		goto cleanup_wq_unordered;
+
 	ret = intel_bw_init(display);
 	if (ret)
 		goto cleanup_wq_unordered;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 8415f3d703ed..deb877b2aebd 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -19,6 +19,7 @@
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_dbuf_bw.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display.h"
@@ -176,6 +177,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	intel_cdclk_crtc_disable_noatomic(crtc);
 	skl_wm_crtc_disable_noatomic(crtc);
 	intel_bw_crtc_disable_noatomic(crtc);
+	intel_dbuf_bw_crtc_disable_noatomic(crtc);
 
 	intel_pmdemand_update_port_clock(display, pmdemand_state, pipe, 0);
 }
@@ -872,6 +874,7 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 		intel_wm_get_hw_state(display);
 
 	intel_bw_update_hw_state(display);
+	intel_dbuf_bw_update_hw_state(display);
 	intel_cdclk_update_hw_state(display);
 
 	intel_pmdemand_init_pmdemand_params(display, pmdemand_state);
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 84321fad3265..88ba3d32802d 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -243,6 +243,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_crtc_state_dump.o \
 	i915-display/intel_cursor.o \
 	i915-display/intel_cx0_phy.o \
+	i915-display/intel_dbuf_bw.o \
 	i915-display/intel_ddi.o \
 	i915-display/intel_ddi_buf_trans.o \
 	i915-display/intel_display.o \
-- 
2.49.1

