Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B27A0BFAF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 19:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26AFA10E79D;
	Mon, 13 Jan 2025 18:21:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mj0Uc1YZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC2610E79D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 18:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736792511; x=1768328511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LYpqm32K+VaQ++5vTL86tBrRGv+9BSfsuMBNtcPjUZU=;
 b=Mj0Uc1YZW2lybsVa4BMhfxf/iRZPx+MgPrCF1roJ+9+KAfCbaNLumUp9
 tVfDZFdIe3qmYFJLSdRUa/GjPB4Oxu0rG6ciU99OMWHOXyySdEVLumJ7Z
 +bvdEp0sim2632m0xqMQrayVqyUAU6FyNkohPaBQEjgLJlVdUiuDOv5Bi
 pK84eGEBArIJCzUNFKCxUH/w9xzGFGXD2R5M2r4TbE7vt1RaKNyq99dMG
 KMtI5b9ct0bP7CBSOi/6fO2zjnkILrTqB5+ArZwgKvLf7kp4MM7SLTyui
 gIhlvIxgmlf3G90Jy1Z2kU0eaj70sUZKQJKVSC8UtMe00CpKqk5efEX5j g==;
X-CSE-ConnectionGUID: B+Bet8uVQoiC50J1oUhzLw==
X-CSE-MsgGUID: MJ6PgSWFR2qwTBSPzCVswg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37299028"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37299028"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 10:21:50 -0800
X-CSE-ConnectionGUID: EIc5DUo+S6y/UvP9iT6MjA==
X-CSE-MsgGUID: u+diZ+lvRiqM6Sa3sArERg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="105078514"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa010.fm.intel.com with ESMTP; 13 Jan 2025 10:21:48 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Cc: nitin.r.gote@intel.com
Subject: [PATCH v3 3/8] drm/i915/gem: fix typos in i915/gem files
Date: Tue, 14 Jan 2025 00:13:13 +0530
Message-Id: <20250113184318.2549653-4-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113184318.2549653-1-nitin.r.gote@intel.com>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/gem reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c        | 6 +++---
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h  | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_domain.c         | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_region.c         | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c       | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c         | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c            | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c       | 2 +-
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c    | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 2 +-
 11 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c0543c35cd6a..ab1af978911b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -238,7 +238,7 @@ static int proto_context_set_persistence(struct drm_i915_private *i915,
 		 *
 		 * However, if we cannot reset an engine by itself, we cannot
 		 * cleanup a hanging persistent context without causing
-		 * colateral damage, and we should not pretend we can by
+		 * collateral damage, and we should not pretend we can by
 		 * exposing the interface.
 		 */
 		if (!intel_has_reset_engine(to_gt(i915)))
@@ -1589,7 +1589,7 @@ static int __context_set_persistence(struct i915_gem_context *ctx, bool state)
 		 *
 		 * However, if we cannot reset an engine by itself, we cannot
 		 * cleanup a hanging persistent context without causing
-		 * colateral damage, and we should not pretend we can by
+		 * collateral damage, and we should not pretend we can by
 		 * exposing the interface.
 		 */
 		if (!intel_has_reset_engine(to_gt(ctx->i915)))
@@ -2328,7 +2328,7 @@ finalize_create_context_locked(struct drm_i915_file_private *file_priv,
 
 	/*
 	 * One for the xarray and one for the caller.  We need to grab
-	 * the reference *prior* to making the ctx visble to userspace
+	 * the reference *prior* to making the ctx visible to userspace
 	 * in gem_context_register(), as at any point after that
 	 * userspace can try to race us with another thread destroying
 	 * the context under our feet.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index b6d97da63d1f..621140a7fda3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -245,7 +245,7 @@ struct i915_gem_context {
 	 * Execbuf uses the I915_EXEC_RING_MASK as an index into this
 	 * array to select which HW context + engine to execute on. For
 	 * the default array, the user_ring_map[] is used to translate
-	 * the legacy uABI onto the approprate index (e.g. both
+	 * the legacy uABI onto the appropriate index (e.g. both
 	 * I915_EXEC_DEFAULT and I915_EXEC_RENDER select the same
 	 * context, and I915_EXEC_BSD is weird). For a use defined
 	 * array, execbuf uses I915_EXEC_RING_MASK as a plain index.
@@ -276,7 +276,7 @@ struct i915_gem_context {
 	 * @vm: unique address space (GTT)
 	 *
 	 * In full-ppgtt mode, each context has its own address space ensuring
-	 * complete seperation of one client from all others.
+	 * complete separation of one client from all others.
 	 *
 	 * In other modes, this is a NULL pointer with the expectation that
 	 * the caller uses the shared global GTT.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 3770828f2eaf..ee55caca67a1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -276,7 +276,7 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 	 * For objects created by userspace through GEM_CREATE with pat_index
 	 * set by set_pat extension, simply return 0 here without touching
 	 * the cache setting, because such objects should have an immutable
-	 * cache setting by desgin and always managed by userspace.
+	 * cache setting by design and always managed by userspace.
 	 */
 	if (i915_gem_object_has_cache_level(obj, cache_level))
 		return 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index f151640c1d13..c8107502190d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -303,7 +303,7 @@ struct i915_execbuffer {
 	struct intel_gt_buffer_pool_node *batch_pool; /** pool node for batch buffer */
 
 	/**
-	 * Indicate either the size of the hastable used to resolve
+	 * Indicate either the size of the hashtable used to resolve
 	 * relocation handles, or if negative that we are using a direct
 	 * index into the execobj[].
 	 */
@@ -2543,7 +2543,7 @@ static int eb_pin_timeline(struct i915_execbuffer *eb, struct intel_context *ce,
 
 			/*
 			 * Error path, cannot use intel_context_timeline_lock as
-			 * that is user interruptable and this clean up step
+			 * that is user interruptible and this clean up step
 			 * must be done.
 			 */
 			mutex_lock(&ce->timeline->mutex);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index b09b74a2448b..636768d0f57e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -82,7 +82,7 @@ __i915_gem_object_create_region(struct intel_memory_region *mem,
 
 	/*
 	 * Anything smaller than the min_page_size can't be freely inserted into
-	 * the GTT, due to alignemnt restrictions. For such special objects,
+	 * the GTT, due to alignment restrictions. For such special objects,
 	 * make sure we force memcpy based suspend-resume. In the future we can
 	 * revisit this, either by allowing special mis-aligned objects in the
 	 * migration path, or by mapping all of LMEM upfront using cheap 1G
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 9117e9422844..aec41f0f098f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -25,7 +25,7 @@ static bool swap_available(void)
 
 static bool can_release_pages(struct drm_i915_gem_object *obj)
 {
-	/* Consider only shrinkable ojects. */
+	/* Consider only shrinkable objects. */
 	if (!i915_gem_object_is_shrinkable(obj))
 		return false;
 
@@ -261,7 +261,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
  * i915_gem_shrink_all - Shrink buffer object caches completely
  * @i915: i915 device
  *
- * This is a simple wraper around i915_gem_shrink() to aggressively shrink all
+ * This is a simple wrapper around i915_gem_shrink() to aggressively shrink all
  * caches completely. It also first waits for and retires all outstanding
  * requests to also be able to release backing storage for active objects.
  *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index d9eb84c1d2f1..5ac23ff3feff 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -39,7 +39,7 @@
  * Since neither of this applies for new tiling layouts on modern platforms like
  * W, Ys and Yf tiling GEM only allows object tiling to be set to X or Y tiled.
  * Anything else can be handled in userspace entirely without the kernel's
- * invovlement.
+ * involvement.
  */
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 10d8673641f7..1f4814968868 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -994,7 +994,7 @@ void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
 		 * If we need to place an LMEM resource which doesn't need CPU
 		 * access then we should try not to victimize mappable objects
 		 * first, since we likely end up stealing more of the mappable
-		 * portion. And likewise when we try to find space for a mappble
+		 * portion. And likewise when we try to find space for a mappable
 		 * object, we know not to ever victimize objects that don't
 		 * occupy any mappable pages.
 		 */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 041dab543b78..2f6b33edb9c9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -603,7 +603,7 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 		 * sequence, where at the end we can do the move for real.
 		 *
 		 * The special case here is when the dst_mem is TTM_PL_SYSTEM,
-		 * which doens't require any kind of move, so it should be safe
+		 * which doesn't require any kind of move, so it should be safe
 		 * to skip all the below and call ttm_bo_move_null() here, where
 		 * the caller in __i915_ttm_get_pages() will take care of the
 		 * rest, since we should have a valid ttm_tt.
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 84d41e6ccf05..bd08605a1611 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1781,7 +1781,7 @@ static int igt_tmpfs_fallback(void *arg)
 
 	/*
 	 * Make sure that we don't burst into a ball of flames upon falling back
-	 * to tmpfs, which we rely on if on the off-chance we encouter a failure
+	 * to tmpfs, which we rely on if on the off-chance we encounter a failure
 	 * when setting up gemfs.
 	 */
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 99a9ade73956..804f74084bd4 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1342,7 +1342,7 @@ static int igt_mmap_migrate(void *arg)
 		}
 
 		/*
-		 * Allocate in the mappable portion, should be no suprises here.
+		 * Allocate in the mappable portion, should be no surprises here.
 		 */
 		err = __igt_mmap_migrate(mixed, ARRAY_SIZE(mixed), mr, 0);
 		if (err)
-- 
2.25.1

