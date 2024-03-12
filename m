Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6791879FD4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 00:51:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F8310F24A;
	Tue, 12 Mar 2024 23:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rk0rU7AD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE1F10F24B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 23:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710287475; x=1741823475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5XKhNeN7hYitkvD2qss3f1z4wDlHVfNqodnf98X/Vn8=;
 b=Rk0rU7ADWkvOC0f5td62Kt4/lZlm9ujRfXUQnDkSa4yXOXQQ8rDhek7y
 dX3gNyw6Q5+xI9Izg1uSVntbjEtA+4/VMLDY54ZOp7YOFx5MjXl/3hiIF
 /tvQQVzkoyautVflGCSaJeTors9TUsSYqPhxxPNe5OGGrC3yOPQytMuAF
 Sr0gCWzVpvvK4EGD17r/opmmH0jkf4qA91zYOcrC7qlx2QFnaC6tVpEJF
 lC5bOMbQDb/V8ok3u+dQ+EN5tRKpzYJnUwITkCzuMnW1aWx4pXpbBtoRi
 DIHkuEeqp3aRrlbr/WXGoHpD53RbPRi6HOtcu1pCdphZJzGuodot0NmUx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8848043"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8848043"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="42715881"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH v2 4/6] drm/i915: Update IP_VER(12, 50)
Date: Tue, 12 Mar 2024 16:51:43 -0700
Message-ID: <20240312235145.2443975-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240312235145.2443975-1-lucas.demarchi@intel.com>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
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

With no platform using graphics/media IP_VER(12, 50), replace the
checks throughout the code with IP_VER(12, 55) so the code makes sense
by itself with no additional explanation of previous baggage.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c        |  4 ++--
 .../gpu/drm/i915/gem/selftests/i915_gem_client_blt.c   |  8 ++++----
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c               |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c              |  5 ++---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c   | 10 +++++-----
 drivers/gpu/drm/i915/gt/intel_gt.c                     |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c                 |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h                 |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c                    |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c                    |  8 ++++----
 drivers/gpu/drm/i915/gt/intel_migrate.c                |  4 ++--
 drivers/gpu/drm/i915/gt/intel_mocs.c                   |  2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c                   |  4 ++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c            |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc.c                 |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c             |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c              |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c      |  2 +-
 drivers/gpu/drm/i915/i915_getparam.c                   |  4 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c                  |  5 ++---
 drivers/gpu/drm/i915/i915_perf.c                       |  8 ++++----
 drivers/gpu/drm/i915/i915_query.c                      |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c                    |  2 +-
 23 files changed, 46 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 3ff3d8889c6c..edb54903be0a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -713,7 +713,7 @@ static int igt_ppgtt_huge_fill(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
 	unsigned int supported = RUNTIME_INFO(i915)->page_sizes;
-	bool has_pte64 = GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50);
+	bool has_pte64 = GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55);
 	struct i915_address_space *vm;
 	struct i915_gem_context *ctx;
 	unsigned long max_pages;
@@ -857,7 +857,7 @@ static int igt_ppgtt_huge_fill(void *arg)
 static int igt_ppgtt_64K(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
-	bool has_pte64 = GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50);
+	bool has_pte64 = GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55);
 	struct drm_i915_gem_object *obj;
 	struct i915_address_space *vm;
 	struct i915_gem_context *ctx;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 10a7847f1b04..bac15196b4d2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -117,7 +117,7 @@ static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
 	if (gen < 12)
 		return true;
 
-	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 		return false;
 
 	return HAS_DISPLAY(i915);
@@ -166,7 +166,7 @@ static int prepare_blit(const struct tiled_blits *t,
 		src_pitch = t->width; /* in dwords */
 		if (src->tiling == CLIENT_TILING_Y) {
 			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
-			if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= IP_VER(12, 50))
+			if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= IP_VER(12, 55))
 				src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
 		} else if (src->tiling == CLIENT_TILING_X) {
 			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
@@ -177,7 +177,7 @@ static int prepare_blit(const struct tiled_blits *t,
 		dst_pitch = t->width; /* in dwords */
 		if (dst->tiling == CLIENT_TILING_Y) {
 			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
-			if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= IP_VER(12, 50))
+			if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= IP_VER(12, 55))
 				dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
 		} else if (dst->tiling == CLIENT_TILING_X) {
 			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
@@ -365,7 +365,7 @@ static u64 tiled_offset(const struct intel_gt *gt,
 		v += x;
 
 		swizzle = gt->ggtt->bit_6_swizzle_x;
-	} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
+	} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 55)) {
 		/* Y-major tiling layout is Tile4 for Xe_HP and beyond */
 		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
 
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 8cf58b29410b..f59914df6b5a 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -833,7 +833,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		cs = gen12_emit_pipe_control(cs, 0,
 					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
 
-	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
+	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 		/* Wa_1409600907 */
 		flags |= PIPE_CONTROL_DEPTH_STALL;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f553cf4e6449..75bde8c1aa5d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -765,14 +765,14 @@ static void engine_mask_apply_media_fuses(struct intel_gt *gt)
 	 * and bits have disable semantices.
 	 */
 	media_fuse = intel_uncore_read(gt->uncore, GEN11_GT_VEBOX_VDBOX_DISABLE);
-	if (MEDIA_VER_FULL(i915) < IP_VER(12, 50))
+	if (MEDIA_VER_FULL(i915) < IP_VER(12, 55))
 		media_fuse = ~media_fuse;
 
 	vdbox_mask = media_fuse & GEN11_GT_VDBOX_DISABLE_MASK;
 	vebox_mask = (media_fuse & GEN11_GT_VEBOX_DISABLE_MASK) >>
 		      GEN11_GT_VEBOX_DISABLE_SHIFT;
 
-	if (MEDIA_VER_FULL(i915) >= IP_VER(12, 50)) {
+	if (MEDIA_VER_FULL(i915) >= IP_VER(12, 55)) {
 		fuse1 = intel_uncore_read(gt->uncore, HSW_PAVP_FUSE1);
 		gt->info.sfc_mask = REG_FIELD_GET(XEHP_SFC_ENABLE_MASK, fuse1);
 	} else {
@@ -1193,7 +1193,6 @@ static int intel_engine_init_tlb_invalidation(struct intel_engine_cs *engine)
 		if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 74) ||
 		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) ||
 		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 70) ||
-		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 50) ||
 		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 55)) {
 			regs = xehp_regs;
 			num = ARRAY_SIZE(xehp_regs);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 42aade0faf2d..4bc6c437e7f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -493,7 +493,7 @@ __execlists_schedule_in(struct i915_request *rq)
 		/* Use a fixed tag for OA and friends */
 		GEM_BUG_ON(ce->tag <= BITS_PER_LONG);
 		ce->lrc.ccid = ce->tag;
-	} else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50)) {
+	} else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55)) {
 		/* We don't need a strict matching tag, just different values */
 		unsigned int tag = ffs(READ_ONCE(engine->context_tag));
 
@@ -613,7 +613,7 @@ static void __execlists_schedule_out(struct i915_request * const rq,
 		intel_engine_add_retire(engine, ce->timeline);
 
 	ccid = ce->lrc.ccid;
-	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50)) {
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55)) {
 		ccid >>= XEHP_SW_CTX_ID_SHIFT - 32;
 		ccid &= XEHP_MAX_CONTEXT_HW_ID;
 	} else {
@@ -1907,7 +1907,7 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 		ENGINE_TRACE(engine, "csb[%d]: status=0x%08x:0x%08x\n",
 			     head, upper_32_bits(csb), lower_32_bits(csb));
 
-		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 			promote = xehp_csb_parse(csb);
 		else if (GRAPHICS_VER(engine->i915) >= 12)
 			promote = gen12_csb_parse(csb);
@@ -3479,7 +3479,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		}
 	}
 
-	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50)) {
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55)) {
 		if (intel_engine_has_preemption(engine))
 			engine->emit_bb_start = xehp_emit_bb_start;
 		else
@@ -3582,7 +3582,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 
 	engine->context_tag = GENMASK(BITS_PER_LONG - 2, 0);
 	if (GRAPHICS_VER(engine->i915) >= 11 &&
-	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 50)) {
+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 55)) {
 		execlists->ccid |= engine->instance << (GEN11_ENGINE_INSTANCE_SHIFT - 32);
 		execlists->ccid |= engine->class << (GEN11_ENGINE_CLASS_SHIFT - 32);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index a425db5ed3a2..2c6d31b8fc1a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -278,7 +278,7 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 		intel_uncore_posting_read(uncore,
 					  XELPMP_RING_FAULT_REG);
 
-	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
 		intel_gt_mcr_multicast_rmw(gt, XEHP_RING_FAULT_REG,
 					   RING_FAULT_VALID, 0);
 		intel_gt_mcr_read_any(gt, XEHP_RING_FAULT_REG);
@@ -403,7 +403,7 @@ void intel_gt_check_and_clear_faults(struct intel_gt *gt)
 	struct drm_i915_private *i915 = gt->i915;
 
 	/* From GEN8 onwards we only have one 'All Engine Fault Register' */
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 		xehp_check_faults(gt);
 	else if (GRAPHICS_VER(i915) >= 8)
 		gen8_check_faults(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 5a2bd8de155a..29443bf7c06c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -184,7 +184,7 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 		 * steering.
 		 */
 	} else if (GRAPHICS_VER(i915) >= 11 &&
-		   GRAPHICS_VER_FULL(i915) < IP_VER(12, 50)) {
+		   GRAPHICS_VER_FULL(i915) < IP_VER(12, 55)) {
 		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
 		gt->info.l3bank_mask =
 			~intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
@@ -829,7 +829,7 @@ void intel_gt_mcr_get_ss_steering(struct intel_gt *gt, unsigned int dss,
 	if (IS_PONTEVECCHIO(gt->i915)) {
 		*group = dss / GEN_DSS_PER_CSLICE;
 		*instance = dss % GEN_DSS_PER_CSLICE;
-	} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
+	} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 55)) {
 		*group = dss / GEN_DSS_PER_GSLICE;
 		*instance = dss % GEN_DSS_PER_GSLICE;
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
index 01ac565a56a4..a67a4c35a4fa 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
@@ -54,7 +54,7 @@ int intel_gt_mcr_wait_for_reg(struct intel_gt *gt,
  * the topology, so we lookup the DSS ID directly in "slice 0."
  */
 #define _HAS_SS(ss_, gt_, group_, instance_) ( \
-	GRAPHICS_VER_FULL(gt_->i915) >= IP_VER(12, 50) ? \
+	GRAPHICS_VER_FULL(gt_->i915) >= IP_VER(12, 55) ? \
 		intel_sseu_has_subslice(&(gt_)->info.sseu, 0, ss_) : \
 		intel_sseu_has_subslice(&(gt_)->info.sseu, group_, instance_))
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 7811a8c9da06..30b128b1fde7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -680,7 +680,7 @@ void setup_private_pat(struct intel_gt *gt)
 
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 		xelpg_setup_private_ppat(gt);
-	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 		xehp_setup_private_ppat(gt);
 	else if (GRAPHICS_VER(i915) >= 12)
 		tgl_setup_private_ppat(uncore);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7f1b00cb9924..b387146ede98 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -676,7 +676,7 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 
 static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
 {
-	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 		return 0x70;
 	else if (GRAPHICS_VER(engine->i915) >= 12)
 		return 0x60;
@@ -690,7 +690,7 @@ static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
 
 static int lrc_ring_bb_offset(const struct intel_engine_cs *engine)
 {
-	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 		return 0x80;
 	else if (GRAPHICS_VER(engine->i915) >= 12)
 		return 0x70;
@@ -705,7 +705,7 @@ static int lrc_ring_bb_offset(const struct intel_engine_cs *engine)
 
 static int lrc_ring_gpr0(const struct intel_engine_cs *engine)
 {
-	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 		return 0x84;
 	else if (GRAPHICS_VER(engine->i915) >= 12)
 		return 0x74;
@@ -752,7 +752,7 @@ static int lrc_ring_indirect_offset(const struct intel_engine_cs *engine)
 static int lrc_ring_cmd_buf_cctl(const struct intel_engine_cs *engine)
 {
 
-	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 		/*
 		 * Note that the CSFE context has a dummy slot for CMD_BUF_CCTL
 		 * simply to match the RCS context image layout.
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 86ba2f2e485c..6f7af4077135 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -925,7 +925,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
 
 	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 		ring_sz = XY_FAST_COLOR_BLT_DW;
 	else if (ver >= 8)
 		ring_sz = 8;
@@ -936,7 +936,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
 		*cs++ = XY_FAST_COLOR_BLT_CMD | XY_FAST_COLOR_BLT_DEPTH_32 |
 			(XY_FAST_COLOR_BLT_DW - 2);
 		*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) |
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index c931c56945bd..9fac5e2318e2 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -639,7 +639,7 @@ static void init_l3cc_table(struct intel_gt *gt,
 
 	intel_gt_mcr_lock(gt, &flags);
 	for_each_l3cc(l3cc, table, i)
-		if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
+		if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 55))
 			intel_gt_mcr_multicast_write_fw(gt, XEHP_LNCFCMOCS(i), l3cc);
 		else
 			intel_uncore_write_fw(gt->uncore, GEN9_LNCFCMOCS(i), l3cc);
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 6a3246240e81..5eec9cd6199f 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -642,7 +642,7 @@ void intel_sseu_info_init(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 		xehp_sseu_info_init(gt);
 	else if (GRAPHICS_VER(i915) >= 12)
 		gen12_sseu_info_init(gt);
@@ -851,7 +851,7 @@ void intel_sseu_print_topology(struct drm_i915_private *i915,
 {
 	if (sseu->max_slices == 0)
 		drm_printf(p, "Unavailable\n");
-	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 		sseu_print_xehp_topology(sseu, p);
 	else
 		sseu_print_hsw_topology(sseu, p);
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cfe2f4b64f04..ba502c0be9b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2771,7 +2771,7 @@ add_render_compute_tuning_settings(struct intel_gt *gt,
 		wa_mcr_masked_field_set(wal, GEN9_ROW_CHICKEN4, THREAD_EX_ARB_MODE,
 					THREAD_EX_ARB_MODE_RR_AFTER_DEP);
 
-	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
+	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 		wa_write_clr(wal, GEN8_GARBCNTL, GEN12_BUS_HASH_CTL_BIT_EXC);
 }
 
@@ -2970,7 +2970,7 @@ static bool mcr_range(struct drm_i915_private *i915, u32 offset)
 	const struct i915_range *mcr_ranges;
 	int i;
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 		mcr_ranges = mcr_ranges_xehp;
 	else if (GRAPHICS_VER(i915) >= 12)
 		mcr_ranges = mcr_ranges_gen12;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index a6440cfe4b98..217277329546 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -286,7 +286,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 
 	/* Wa_22012773006:gen11,gen12 < XeHP */
 	if (GRAPHICS_VER(gt->i915) >= 11 &&
-	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
+	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 55))
 		flags |= GUC_WA_POLLCS;
 
 	/* Wa_14014475959 */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 5c9908b56616..c606bb5e3b7b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -412,7 +412,7 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 
 	/* add in local MOCS registers */
 	for (i = 0; i < LNCFCMOCS_REG_COUNT; i++)
-		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 			ret |= GUC_MCR_REG_ADD(gt, regset, XEHP_LNCFCMOCS(i), false);
 		else
 			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
@@ -522,7 +522,7 @@ static void fill_engine_enable_masks(struct intel_gt *gt,
 
 #define LR_HW_CONTEXT_SIZE (80 * sizeof(u32))
 #define XEHP_LR_HW_CONTEXT_SIZE (96 * sizeof(u32))
-#define LR_HW_CONTEXT_SZ(i915) (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50) ? \
+#define LR_HW_CONTEXT_SZ(i915) (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55) ? \
 				    XEHP_LR_HW_CONTEXT_SIZE : \
 				    LR_HW_CONTEXT_SIZE)
 #define LRC_SKIP_SIZE(i915) (LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SZ(i915))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 0a37c426cde4..23f54c84cbab 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -26,7 +26,7 @@ static void guc_prepare_xfer(struct intel_gt *gt)
 			 GUC_ENABLE_READ_CACHE_FOR_WOPCM_DATA |
 			 GUC_ENABLE_MIA_CLOCK_GATING;
 
-	if (GRAPHICS_VER_FULL(uncore->i915) < IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(uncore->i915) < IP_VER(12, 55))
 		shim_flags |= GUC_DISABLE_SRAM_INIT_TO_ZEROES |
 			      GUC_ENABLE_MIA_CACHING;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 01d0ec1b30f2..16640d6dd058 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4519,7 +4519,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	 */
 
 	engine->emit_bb_start = gen8_emit_bb_start;
-	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 		engine->emit_bb_start = xehp_emit_bb_start;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 95c58805b2a4..a62405787e77 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -166,7 +166,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		break;
 	case I915_PARAM_SLICE_MASK:
 		/* Not supported from Xe_HP onward; use topology queries */
-		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 			return -EINVAL;
 
 		value = sseu->slice_mask;
@@ -175,7 +175,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		break;
 	case I915_PARAM_SUBSLICE_MASK:
 		/* Not supported from Xe_HP onward; use topology queries */
-		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 			return -EINVAL;
 
 		/* Only copy bits from the first slice */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index a0b784ebaddd..2594eb10c559 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1245,8 +1245,7 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 		if (MEDIA_VER(i915) >= 13 && engine->gt->type == GT_MEDIA)
 			ee->fault_reg = intel_uncore_read(engine->uncore,
 							  XELPMP_RING_FAULT_REG);
-
-		else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+		else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 			ee->fault_reg = intel_gt_mcr_read_any(engine->gt,
 							      XEHP_RING_FAULT_REG);
 		else if (GRAPHICS_VER(i915) >= 12)
@@ -1852,7 +1851,7 @@ static void gt_record_global_regs(struct intel_gt_coredump *gt)
 	if (GRAPHICS_VER(i915) == 7)
 		gt->err_int = intel_uncore_read(uncore, GEN7_ERR_INT);
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
 		gt->fault_data0 = intel_gt_mcr_read_any((struct intel_gt *)gt->_gt,
 							XEHP_FAULT_TLB_DATA0);
 		gt->fault_data1 = intel_gt_mcr_read_any((struct intel_gt *)gt->_gt,
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 9052889dc0dc..0b1cd4c7a525 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -292,7 +292,7 @@ static u32 i915_perf_stream_paranoid = true;
 #define OAREPORT_REASON_CTX_SWITCH     (1<<3)
 #define OAREPORT_REASON_CLK_RATIO      (1<<5)
 
-#define HAS_MI_SET_PREDICATE(i915) (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+#define HAS_MI_SET_PREDICATE(i915) (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 
 /* For sysctl proc_dointvec_minmax of i915_oa_max_sample_rate
  *
@@ -817,7 +817,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 */
 
 		if (oa_report_ctx_invalid(stream, report) &&
-		    GRAPHICS_VER_FULL(stream->engine->i915) < IP_VER(12, 50)) {
+		    GRAPHICS_VER_FULL(stream->engine->i915) < IP_VER(12, 55)) {
 			ctx_id = INVALID_CTX_ID;
 			oa_context_id_squash(stream, report32);
 		}
@@ -1419,7 +1419,7 @@ static int gen12_get_render_context_id(struct i915_perf_stream *stream)
 
 		mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
 			(GEN12_GUC_SW_CTX_ID_SHIFT - 32);
-	} else if (GRAPHICS_VER_FULL(stream->engine->i915) >= IP_VER(12, 50)) {
+	} else if (GRAPHICS_VER_FULL(stream->engine->i915) >= IP_VER(12, 55)) {
 		ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
 			(XEHP_SW_CTX_ID_SHIFT - 32);
 
@@ -4122,7 +4122,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			props->hold_preemption = !!value;
 			break;
 		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
-			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
+			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 55)) {
 				drm_dbg(&perf->i915->drm,
 					"SSEU config not supported on gfx %x\n",
 					GRAPHICS_VER_FULL(perf->i915));
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 3baa2f54a86e..14d9ec0ed777 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -105,7 +105,7 @@ static int query_geometry_subslices(struct drm_i915_private *i915,
 	struct intel_engine_cs *engine;
 	struct i915_engine_class_instance classinstance;
 
-	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
+	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 		return -ENODEV;
 
 	classinstance = *((struct i915_engine_class_instance *)&query_item->flags);
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index b525318dbd53..4d2b15dbe9ac 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2714,7 +2714,7 @@ void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
 		 * the forcewake domain if any of the other engines
 		 * in the same media slice are present.
 		 */
-		if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 50) && i % 2 == 0) {
+		if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 55) && i % 2 == 0) {
 			if ((i + 1 < I915_MAX_VCS) && HAS_ENGINE(gt, _VCS(i + 1)))
 				continue;
 
-- 
2.43.0

