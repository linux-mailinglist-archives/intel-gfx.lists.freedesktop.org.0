Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F783F407C
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE2A89F77;
	Sun, 22 Aug 2021 16:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D773A89F6E
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567457"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567457"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395788"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:32 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Wilson Chris P <chris.p.wilson@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Sun, 22 Aug 2021 21:57:01 +0530
Message-Id: <20210822162706.819507-9-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 08/13] drm/i915: Add vm min alignment support
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

From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>

Replace the hard coded 4K alignment value with vm->min_alignment.

Cc: Wilson Chris P <chris.p.wilson@intel.com>
Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 .../i915/gem/selftests/i915_gem_client_blt.c  | 23 ++++++++++++-------
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  9 ++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  9 ++++++++
 3 files changed, 33 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index ecbcbb86ae1e..30c8d64df3b8 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -32,6 +32,7 @@ struct tiled_blits {
 	struct blit_buffer scratch;
 	struct i915_vma *batch;
 	u64 hole;
+	u64 align;
 	u32 width;
 	u32 height;
 };
@@ -403,14 +404,21 @@ tiled_blits_create(struct intel_engine_cs *engine, struct rnd_state *prng)
 		goto err_free;
 	}
 
-	hole_size = 2 * PAGE_ALIGN(WIDTH * HEIGHT * 4);
+	t->align = I915_GTT_PAGE_SIZE_2M; /* XXX worst case, derive from vm! */
+	t->align = max(t->align,
+		       i915_vm_min_alignment(t->ce->vm, INTEL_MEMORY_LOCAL));
+	t->align = max(t->align,
+		       i915_vm_min_alignment(t->ce->vm, INTEL_MEMORY_SYSTEM));
+
+	hole_size = 2 * round_up(WIDTH * HEIGHT * 4, t->align);
 	hole_size *= 2; /* room to maneuver */
-	hole_size += 2 * I915_GTT_MIN_ALIGNMENT;
+	hole_size += 2 * t->align; /* padding on either side */
 
 	mutex_lock(&t->ce->vm->mutex);
 	memset(&hole, 0, sizeof(hole));
 	err = drm_mm_insert_node_in_range(&t->ce->vm->mm, &hole,
-					  hole_size, 0, I915_COLOR_UNEVICTABLE,
+					  hole_size, t->align,
+					  I915_COLOR_UNEVICTABLE,
 					  0, U64_MAX,
 					  DRM_MM_INSERT_BEST);
 	if (!err)
@@ -421,7 +429,7 @@ tiled_blits_create(struct intel_engine_cs *engine, struct rnd_state *prng)
 		goto err_put;
 	}
 
-	t->hole = hole.start + I915_GTT_MIN_ALIGNMENT;
+	t->hole = hole.start + t->align;
 	pr_info("Using hole at %llx\n", t->hole);
 
 	err = tiled_blits_create_buffers(t, WIDTH, HEIGHT, prng);
@@ -448,7 +456,7 @@ static void tiled_blits_destroy(struct tiled_blits *t)
 static int tiled_blits_prepare(struct tiled_blits *t,
 			       struct rnd_state *prng)
 {
-	u64 offset = PAGE_ALIGN(t->width * t->height * 4);
+	u64 offset = round_up(t->width * t->height * 4, t->align);
 	u32 *map;
 	int err;
 	int i;
@@ -479,8 +487,7 @@ static int tiled_blits_prepare(struct tiled_blits *t,
 
 static int tiled_blits_bounce(struct tiled_blits *t, struct rnd_state *prng)
 {
-	u64 offset =
-		round_up(t->width * t->height * 4, 2 * I915_GTT_MIN_ALIGNMENT);
+	u64 offset = round_up(t->width * t->height * 4, 2 * t->align);
 	int err;
 
 	/* We want to check position invariant tiling across GTT eviction */
@@ -493,7 +500,7 @@ static int tiled_blits_bounce(struct tiled_blits *t, struct rnd_state *prng)
 
 	/* Reposition so that we overlap the old addresses, and slightly off */
 	err = tiled_blit(t,
-			 &t->buffers[2], t->hole + I915_GTT_MIN_ALIGNMENT,
+			 &t->buffers[2], t->hole + t->align,
 			 &t->buffers[1], t->hole + 3 * offset / 2);
 	if (err)
 		return err;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 71b25cd67c9f..1c64cebd446d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -215,6 +215,15 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 
 	GEM_BUG_ON(!vm->total);
 	drm_mm_init(&vm->mm, 0, vm->total);
+
+	memset64(vm->min_alignment, I915_GTT_MIN_ALIGNMENT,
+		 ARRAY_SIZE(vm->min_alignment));
+
+	if (HAS_64K_PAGES(vm->i915)) {
+		vm->min_alignment[INTEL_MEMORY_LOCAL] = I915_GTT_PAGE_SIZE_64K;
+		vm->min_alignment[INTEL_MEMORY_STOLEN_LOCAL] = I915_GTT_PAGE_SIZE_64K;
+	}
+
 	vm->mm.head_node.color = I915_COLOR_UNEVICTABLE;
 
 	INIT_LIST_HEAD(&vm->bound_list);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 8348c360dc81..a4388dd06177 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -28,6 +28,8 @@
 #include "gt/intel_reset.h"
 #include "i915_selftest.h"
 #include "i915_vma_types.h"
+#include "i915_params.h"
+#include "intel_memory_region.h"
 
 #define I915_GFP_ALLOW_FAIL (GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
 
@@ -224,6 +226,7 @@ struct i915_address_space {
 	struct device *dma;
 	u64 total;		/* size addr space maps (ex. 2GB for ggtt) */
 	u64 reserved;		/* size addr space reserved */
+	u64 min_alignment[INTEL_MEMORY_STOLEN_LOCAL + 1];
 
 	unsigned int bind_async_flags;
 
@@ -379,6 +382,12 @@ i915_vm_has_scratch_64K(struct i915_address_space *vm)
 	return vm->scratch_order == get_order(I915_GTT_PAGE_SIZE_64K);
 }
 
+static inline u64 i915_vm_min_alignment(struct i915_address_space *vm,
+					enum intel_memory_type type)
+{
+	return vm->min_alignment[type];
+}
+
 static inline bool
 i915_vm_has_cache_coloring(struct i915_address_space *vm)
 {
-- 
2.26.2

