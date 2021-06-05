Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7182739C99F
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 17:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E6A6E40C;
	Sat,  5 Jun 2021 15:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AEBA6E167;
 Sat,  5 Jun 2021 15:54:18 +0000 (UTC)
IronPort-SDR: nJTTgVOwBvNK1thBW4r95dkRWvfxG43EtxGvFBqLk8vqwJeq5lCH7V+F9o8U0BOzTClNHgLo9Y
 a6ZI9ShtMs6w==
X-IronPort-AV: E=McAfee;i="6200,9189,10006"; a="202586560"
X-IronPort-AV: E=Sophos;i="5.83,251,1616482800"; d="scan'208";a="202586560"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2021 08:54:15 -0700
IronPort-SDR: 5TrE+E7aKwkXjFtp9I/rw23SKjuWEpYiyF86+GIif3ELVCjJzqjOsYBqYhQSiMpI8mjcTkkNv9
 oWDYAQcSYlGw==
X-IronPort-AV: E=Sophos;i="5.83,251,1616482800"; d="scan'208";a="636855079"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2021 08:54:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  5 Jun 2021 08:53:54 -0700
Message-Id: <20210605155356.4183026-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210605155356.4183026-1-lucas.demarchi@intel.com>
References: <20210605155356.4183026-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/5] drm/i915/gem: replace IS_GEN and friends
 with GRAPHICS_VER
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This was done by the following semantic patch:

	@@ expression i915; @@
	- INTEL_GEN(i915)
	+ GRAPHICS_VER(i915)

	@@ expression i915; expression E; @@
	- INTEL_GEN(i915) >= E
	+ GRAPHICS_VER(i915) >= E

	@@ expression dev_priv; expression E; @@
	- !IS_GEN(dev_priv, E)
	+ GRAPHICS_VER(dev_priv) != E

	@@ expression dev_priv; expression E; @@
	- IS_GEN(dev_priv, E)
	+ GRAPHICS_VER(dev_priv) == E

	@@
	expression dev_priv;
	expression from, until;
	@@
	- IS_GEN_RANGE(dev_priv, from, until)
	+ IS_GRAPHICS_VER(dev_priv, from, until)

	@def@
	expression E;
	identifier id =~ "^gen$";
	@@
	- id = GRAPHICS_VER(E)
	+ ver = GRAPHICS_VER(E)

	@@
	identifier def.id;
	@@
	- id
	+ ver

It also takes care of renaming the variable we assign to GRAPHICS_VER()
so to use "ver" rather than "gen".

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c      |  6 +++---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c   | 10 +++++-----
 drivers/gpu/drm/i915/gem/i915_gem_mman.c         |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object_blt.c   |  8 ++++----
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c       | 16 ++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c       | 12 ++++++------
 .../drm/i915/gem/selftests/i915_gem_client_blt.c | 10 +++++-----
 .../drm/i915/gem/selftests/i915_gem_coherency.c  |  4 ++--
 .../drm/i915/gem/selftests/i915_gem_context.c    | 16 ++++++++--------
 .../gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 14 +++++++-------
 .../gpu/drm/i915/gem/selftests/igt_gem_utils.c   | 10 +++++-----
 11 files changed, 54 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 188dee13e017..7720b8c22c81 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1190,7 +1190,7 @@ static void set_ppgtt_barrier(void *data)
 {
 	struct i915_address_space *old = data;
 
-	if (INTEL_GEN(old->i915) < 8)
+	if (GRAPHICS_VER(old->i915) < 8)
 		gen6_ppgtt_unpin_all(i915_vm_to_ppgtt(old));
 
 	i915_vm_close(old);
@@ -1436,7 +1436,7 @@ i915_gem_user_to_context_sseu(struct intel_gt *gt,
 	context->max_eus_per_subslice = user->max_eus_per_subslice;
 
 	/* Part specific restrictions. */
-	if (IS_GEN(i915, 11)) {
+	if (GRAPHICS_VER(i915) == 11) {
 		unsigned int hw_s = hweight8(device->slice_mask);
 		unsigned int hw_ss_per_s = hweight8(device->subslice_mask[0]);
 		unsigned int req_s = hweight8(context->slice_mask);
@@ -1503,7 +1503,7 @@ static int set_sseu(struct i915_gem_context *ctx,
 	if (args->size < sizeof(user_sseu))
 		return -EINVAL;
 
-	if (!IS_GEN(i915, 11))
+	if (GRAPHICS_VER(i915) != 11)
 		return -ENODEV;
 
 	if (copy_from_user(&user_sseu, u64_to_user_ptr(args->value),
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 297143511f99..24c0582e46fb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -500,7 +500,7 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	 * also covers all platforms with local memory.
 	 */
 	if (entry->relocation_count &&
-	    INTEL_GEN(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
+	    GRAPHICS_VER(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
 		return -EINVAL;
 
 	if (unlikely(entry->flags & eb->invalid_flags))
@@ -1439,7 +1439,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 
 static bool reloc_can_use_engine(const struct intel_engine_cs *engine)
 {
-	return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
+	return engine->class != VIDEO_DECODE_CLASS || GRAPHICS_VER(engine->i915) != 6;
 }
 
 static u32 *reloc_gpu(struct i915_execbuffer *eb,
@@ -1671,7 +1671,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 		 * batchbuffers.
 		 */
 		if (reloc->write_domain == I915_GEM_DOMAIN_INSTRUCTION &&
-		    IS_GEN(eb->i915, 6)) {
+		    GRAPHICS_VER(eb->i915) == 6) {
 			err = i915_vma_bind(target->vma,
 					    target->vma->obj->cache_level,
 					    PIN_GLOBAL, NULL);
@@ -2332,7 +2332,7 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
 	u32 *cs;
 	int i;
 
-	if (!IS_GEN(rq->engine->i915, 7) || rq->engine->id != RCS0) {
+	if (GRAPHICS_VER(rq->engine->i915) != 7 || rq->engine->id != RCS0) {
 		drm_dbg(&rq->engine->i915->drm, "sol reset is gen7/rcs only\n");
 		return -EINVAL;
 	}
@@ -3375,7 +3375,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 	eb.batch_flags = 0;
 	if (args->flags & I915_EXEC_SECURE) {
-		if (INTEL_GEN(i915) >= 11)
+		if (GRAPHICS_VER(i915) >= 11)
 			return -ENODEV;
 
 		/* Return -EPERM to trigger fallback code on old binaries. */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 65db290efd16..ee0bf8811388 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -64,7 +64,7 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
 	/* mmap ioctl is disallowed for all platforms after TGL-LP.  This also
 	 * covers all platforms with local memory.
 	 */
-	if (INTEL_GEN(i915) >= 12 && !IS_TIGERLAKE(i915))
+	if (GRAPHICS_VER(i915) >= 12 && !IS_TIGERLAKE(i915))
 		return -EOPNOTSUPP;
 
 	if (args->flags & ~(I915_MMAP_WC))
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index df8e8c18c6c9..3e28c68fda3e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -72,7 +72,7 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 
 		GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
-		if (INTEL_GEN(i915) >= 8) {
+		if (GRAPHICS_VER(i915) >= 8) {
 			*cmd++ = XY_COLOR_BLT_CMD | BLT_WRITE_RGBA | (7 - 2);
 			*cmd++ = BLT_DEPTH_32 | BLT_ROP_COLOR_COPY | PAGE_SIZE;
 			*cmd++ = 0;
@@ -232,7 +232,7 @@ static bool wa_1209644611_applies(struct drm_i915_private *i915, u32 size)
 {
 	u32 height = size >> PAGE_SHIFT;
 
-	if (!IS_GEN(i915, 11))
+	if (GRAPHICS_VER(i915) != 11)
 		return false;
 
 	return height % 4 == 3 && height <= 8;
@@ -297,7 +297,7 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 		size = min_t(u64, rem, block_size);
 		GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
-		if (INTEL_GEN(i915) >= 9 &&
+		if (GRAPHICS_VER(i915) >= 9 &&
 		    !wa_1209644611_applies(i915, size)) {
 			*cmd++ = GEN9_XY_FAST_COPY_BLT_CMD | (10 - 2);
 			*cmd++ = BLT_DEPTH_32 | PAGE_SIZE;
@@ -309,7 +309,7 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 			*cmd++ = PAGE_SIZE;
 			*cmd++ = lower_32_bits(src_offset);
 			*cmd++ = upper_32_bits(src_offset);
-		} else if (INTEL_GEN(i915) >= 8) {
+		} else if (GRAPHICS_VER(i915) >= 8) {
 			*cmd++ = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (10 - 2);
 			*cmd++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | PAGE_SIZE;
 			*cmd++ = 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 092d7a21de82..b0c3a7dc60d1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -38,7 +38,7 @@ int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
 		return -ENODEV;
 
 	/* WaSkipStolenMemoryFirstPage:bdw+ */
-	if (INTEL_GEN(i915) >= 8 && start < 4096)
+	if (GRAPHICS_VER(i915) >= 8 && start < 4096)
 		start = 4096;
 
 	mutex_lock(&i915->mm.stolen_lock);
@@ -84,14 +84,14 @@ static int i915_adjust_stolen(struct drm_i915_private *i915,
 	 */
 
 	/* Make sure we don't clobber the GTT if it's within stolen memory */
-	if (INTEL_GEN(i915) <= 4 &&
+	if (GRAPHICS_VER(i915) <= 4 &&
 	    !IS_G33(i915) && !IS_PINEVIEW(i915) && !IS_G4X(i915)) {
 		struct resource stolen[2] = {*dsm, *dsm};
 		struct resource ggtt_res;
 		resource_size_t ggtt_start;
 
 		ggtt_start = intel_uncore_read(uncore, PGTBL_CTL);
-		if (IS_GEN(i915, 4))
+		if (GRAPHICS_VER(i915) == 4)
 			ggtt_start = (ggtt_start & PGTBL_ADDRESS_LO_MASK) |
 				     (ggtt_start & PGTBL_ADDRESS_HI_MASK) << 28;
 		else
@@ -156,7 +156,7 @@ static int i915_adjust_stolen(struct drm_i915_private *i915,
 		 * GEN3 firmware likes to smash pci bridges into the stolen
 		 * range. Apparently this works.
 		 */
-		if (!r && !IS_GEN(i915, 3)) {
+		if (!r && GRAPHICS_VER(i915) != 3) {
 			drm_err(&i915->drm,
 				"conflict detected with stolen region: %pR\n",
 				dsm);
@@ -197,7 +197,7 @@ static void g4x_get_stolen_reserved(struct drm_i915_private *i915,
 	 * Whether ILK really reuses the ELK register for this is unclear.
 	 * Let's see if we catch anyone with this supposedly enabled on ILK.
 	 */
-	drm_WARN(&i915->drm, IS_GEN(i915, 5),
+	drm_WARN(&i915->drm, GRAPHICS_VER(i915) == 5,
 		 "ILK stolen reserved found? 0x%08x\n",
 		 reg_val);
 
@@ -399,7 +399,7 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 		return 0;
 	}
 
-	if (intel_vtd_active() && INTEL_GEN(i915) < 8) {
+	if (intel_vtd_active() && GRAPHICS_VER(i915) < 8) {
 		drm_notice(&i915->drm,
 			   "%s, disabling use of stolen memory\n",
 			   "DMAR active");
@@ -421,7 +421,7 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 	reserved_base = stolen_top;
 	reserved_size = 0;
 
-	switch (INTEL_GEN(i915)) {
+	switch (GRAPHICS_VER(i915)) {
 	case 2:
 	case 3:
 		break;
@@ -456,7 +456,7 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 						&reserved_base, &reserved_size);
 		break;
 	default:
-		MISSING_CASE(INTEL_GEN(i915));
+		MISSING_CASE(GRAPHICS_VER(i915));
 		fallthrough;
 	case 11:
 	case 12:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index 9e8945013090..ef4d0f7dc118 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -62,14 +62,14 @@ u32 i915_gem_fence_size(struct drm_i915_private *i915,
 
 	GEM_BUG_ON(!stride);
 
-	if (INTEL_GEN(i915) >= 4) {
+	if (GRAPHICS_VER(i915) >= 4) {
 		stride *= i915_gem_tile_height(tiling);
 		GEM_BUG_ON(!IS_ALIGNED(stride, I965_FENCE_PAGE));
 		return roundup(size, stride);
 	}
 
 	/* Previous chips need a power-of-two fence region when tiling */
-	if (IS_GEN(i915, 3))
+	if (GRAPHICS_VER(i915) == 3)
 		ggtt_size = 1024*1024;
 	else
 		ggtt_size = 512*1024;
@@ -102,7 +102,7 @@ u32 i915_gem_fence_alignment(struct drm_i915_private *i915, u32 size,
 	if (tiling == I915_TILING_NONE)
 		return I915_GTT_MIN_ALIGNMENT;
 
-	if (INTEL_GEN(i915) >= 4)
+	if (GRAPHICS_VER(i915) >= 4)
 		return I965_FENCE_PAGE;
 
 	/*
@@ -130,10 +130,10 @@ i915_tiling_ok(struct drm_i915_gem_object *obj,
 	/* check maximum stride & object size */
 	/* i965+ stores the end address of the gtt mapping in the fence
 	 * reg, so dont bother to check the size */
-	if (INTEL_GEN(i915) >= 7) {
+	if (GRAPHICS_VER(i915) >= 7) {
 		if (stride / 128 > GEN7_FENCE_MAX_PITCH_VAL)
 			return false;
-	} else if (INTEL_GEN(i915) >= 4) {
+	} else if (GRAPHICS_VER(i915) >= 4) {
 		if (stride / 128 > I965_FENCE_MAX_PITCH_VAL)
 			return false;
 	} else {
@@ -144,7 +144,7 @@ i915_tiling_ok(struct drm_i915_gem_object *obj,
 			return false;
 	}
 
-	if (IS_GEN(i915, 2) ||
+	if (GRAPHICS_VER(i915) == 2 ||
 	    (tiling == I915_TILING_Y && HAS_128_BYTE_Y_TILING(i915)))
 		tile_width = 128;
 	else
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index d36873885cc1..176e6b22f87f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -152,8 +152,8 @@ static int prepare_blit(const struct tiled_blits *t,
 			struct blit_buffer *src,
 			struct drm_i915_gem_object *batch)
 {
-	const int gen = INTEL_GEN(to_i915(batch->base.dev));
-	bool use_64b_reloc = gen >= 8;
+	const int ver = GRAPHICS_VER(to_i915(batch->base.dev));
+	bool use_64b_reloc = ver >= 8;
 	u32 src_pitch, dst_pitch;
 	u32 cmd, *cs;
 
@@ -171,7 +171,7 @@ static int prepare_blit(const struct tiled_blits *t,
 	*cs++ = cmd;
 
 	cmd = MI_FLUSH_DW;
-	if (gen >= 8)
+	if (ver >= 8)
 		cmd++;
 	*cs++ = cmd;
 	*cs++ = 0;
@@ -179,7 +179,7 @@ static int prepare_blit(const struct tiled_blits *t,
 	*cs++ = 0;
 
 	cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
-	if (gen >= 8)
+	if (ver >= 8)
 		cmd += 2;
 
 	src_pitch = t->width * 4;
@@ -666,7 +666,7 @@ static int igt_client_tiled_blits(void *arg)
 	int inst = 0;
 
 	/* Test requires explicit BLT tiling controls */
-	if (INTEL_GEN(i915) < 4)
+	if (GRAPHICS_VER(i915) < 4)
 		return 0;
 
 	if (bad_swizzling(i915)) /* Requires sane (sub-page) swizzling */
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index e937b6629019..13b088cc787e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -221,12 +221,12 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 		goto out_rq;
 	}
 
-	if (INTEL_GEN(ctx->engine->i915) >= 8) {
+	if (GRAPHICS_VER(ctx->engine->i915) >= 8) {
 		*cs++ = MI_STORE_DWORD_IMM_GEN4 | 1 << 22;
 		*cs++ = lower_32_bits(i915_ggtt_offset(vma) + offset);
 		*cs++ = upper_32_bits(i915_ggtt_offset(vma) + offset);
 		*cs++ = v;
-	} else if (INTEL_GEN(ctx->engine->i915) >= 4) {
+	} else if (GRAPHICS_VER(ctx->engine->i915) >= 4) {
 		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*cs++ = 0;
 		*cs++ = i915_ggtt_offset(vma) + offset;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index ce70d0a3afb2..dbcfa28a9d91 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -897,7 +897,7 @@ static int rpcs_query_batch(struct drm_i915_gem_object *rpcs, struct i915_vma *v
 {
 	u32 *cmd;
 
-	GEM_BUG_ON(INTEL_GEN(vma->vm->i915) < 8);
+	GEM_BUG_ON(GRAPHICS_VER(vma->vm->i915) < 8);
 
 	cmd = i915_gem_object_pin_map(rpcs, I915_MAP_WB);
 	if (IS_ERR(cmd))
@@ -932,7 +932,7 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 
 	GEM_BUG_ON(!intel_engine_can_store_dword(ce->engine));
 
-	if (INTEL_GEN(i915) < 8)
+	if (GRAPHICS_VER(i915) < 8)
 		return -EINVAL;
 
 	vma = i915_vma_instance(obj, ce->vm, NULL);
@@ -1100,7 +1100,7 @@ __read_slice_count(struct intel_context *ce,
 		return ret;
 	}
 
-	if (INTEL_GEN(ce->engine->i915) >= 11) {
+	if (GRAPHICS_VER(ce->engine->i915) >= 11) {
 		s_mask = GEN11_RPCS_S_CNT_MASK;
 		s_shift = GEN11_RPCS_S_CNT_SHIFT;
 	} else {
@@ -1229,7 +1229,7 @@ __igt_ctx_sseu(struct drm_i915_private *i915,
 	int inst = 0;
 	int ret = 0;
 
-	if (INTEL_GEN(i915) < 9)
+	if (GRAPHICS_VER(i915) < 9)
 		return 0;
 
 	if (flags & TEST_RESET)
@@ -1518,7 +1518,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 	}
 
 	*cmd++ = MI_STORE_DWORD_IMM_GEN4;
-	if (INTEL_GEN(i915) >= 8) {
+	if (GRAPHICS_VER(i915) >= 8) {
 		*cmd++ = lower_32_bits(offset);
 		*cmd++ = upper_32_bits(offset);
 	} else {
@@ -1608,7 +1608,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
-	if (INTEL_GEN(i915) >= 8) {
+	if (GRAPHICS_VER(i915) >= 8) {
 		const u32 GPR0 = engine->mmio_base + 0x600;
 
 		vm = i915_gem_context_get_vm_rcu(ctx);
@@ -1776,7 +1776,7 @@ static int igt_vm_isolation(void *arg)
 	u32 expected;
 	int err;
 
-	if (INTEL_GEN(i915) < 7)
+	if (GRAPHICS_VER(i915) < 7)
 		return 0;
 
 	/*
@@ -1830,7 +1830,7 @@ static int igt_vm_isolation(void *arg)
 			continue;
 
 		/* Not all engines have their own GPR! */
-		if (INTEL_GEN(i915) < 8 && engine->class != RENDER_CLASS)
+		if (GRAPHICS_VER(i915) < 8 && engine->class != RENDER_CLASS)
 			continue;
 
 		while (!__igt_timeout(end_time, NULL)) {
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 05a3b29f545e..3a30955285d6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -273,7 +273,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 static unsigned int
 setup_tile_size(struct tile *tile, struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) <= 2) {
+	if (GRAPHICS_VER(i915) <= 2) {
 		tile->height = 16;
 		tile->width = 128;
 		tile->size = 11;
@@ -288,9 +288,9 @@ setup_tile_size(struct tile *tile, struct drm_i915_private *i915)
 		tile->size = 12;
 	}
 
-	if (INTEL_GEN(i915) < 4)
+	if (GRAPHICS_VER(i915) < 4)
 		return 8192 / tile->width;
-	else if (INTEL_GEN(i915) < 7)
+	else if (GRAPHICS_VER(i915) < 7)
 		return 128 * I965_FENCE_MAX_PITCH_VAL / tile->width;
 	else
 		return 128 * GEN7_FENCE_MAX_PITCH_VAL / tile->width;
@@ -386,7 +386,7 @@ static int igt_partial_tiling(void *arg)
 			if (err)
 				goto out_unlock;
 
-			if (pitch > 2 && INTEL_GEN(i915) >= 4) {
+			if (pitch > 2 && GRAPHICS_VER(i915) >= 4) {
 				tile.stride = tile.width * (pitch - 1);
 				err = check_partial_mappings(obj, &tile, end);
 				if (err == -EINTR)
@@ -395,7 +395,7 @@ static int igt_partial_tiling(void *arg)
 					goto out_unlock;
 			}
 
-			if (pitch < max_pitch && INTEL_GEN(i915) >= 4) {
+			if (pitch < max_pitch && GRAPHICS_VER(i915) >= 4) {
 				tile.stride = tile.width * (pitch + 1);
 				err = check_partial_mappings(obj, &tile, end);
 				if (err == -EINTR)
@@ -405,7 +405,7 @@ static int igt_partial_tiling(void *arg)
 			}
 		}
 
-		if (INTEL_GEN(i915) >= 4) {
+		if (GRAPHICS_VER(i915) >= 4) {
 			for_each_prime_number(pitch, max_pitch) {
 				tile.stride = tile.width * pitch;
 				err = check_partial_mappings(obj, &tile, end);
@@ -501,7 +501,7 @@ static int igt_smoke_tiling(void *arg)
 			tile.stride =
 				i915_prandom_u32_max_state(max_pitch, &prng);
 			tile.stride = (1 + tile.stride) * tile.width;
-			if (INTEL_GEN(i915) < 4)
+			if (GRAPHICS_VER(i915) < 4)
 				tile.stride = rounddown_pow_of_two(tile.stride);
 		}
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index 0b092c62bb34..b35c1219c852 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -44,7 +44,7 @@ igt_emit_store_dw(struct i915_vma *vma,
 		  u32 val)
 {
 	struct drm_i915_gem_object *obj;
-	const int gen = INTEL_GEN(vma->vm->i915);
+	const int ver = GRAPHICS_VER(vma->vm->i915);
 	unsigned long n, size;
 	u32 *cmd;
 	int err;
@@ -65,14 +65,14 @@ igt_emit_store_dw(struct i915_vma *vma,
 	offset += vma->node.start;
 
 	for (n = 0; n < count; n++) {
-		if (gen >= 8) {
+		if (ver >= 8) {
 			*cmd++ = MI_STORE_DWORD_IMM_GEN4;
 			*cmd++ = lower_32_bits(offset);
 			*cmd++ = upper_32_bits(offset);
 			*cmd++ = val;
-		} else if (gen >= 4) {
+		} else if (ver >= 4) {
 			*cmd++ = MI_STORE_DWORD_IMM_GEN4 |
-				(gen < 6 ? MI_USE_GGTT : 0);
+				(ver < 6 ? MI_USE_GGTT : 0);
 			*cmd++ = 0;
 			*cmd++ = offset;
 			*cmd++ = val;
@@ -146,7 +146,7 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 		goto skip_request;
 
 	flags = 0;
-	if (INTEL_GEN(ce->vm->i915) <= 5)
+	if (GRAPHICS_VER(ce->vm->i915) <= 5)
 		flags |= I915_DISPATCH_SECURE;
 
 	err = rq->engine->emit_bb_start(rq,
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
