Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6897F24A150
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 16:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2EF6E3F2;
	Wed, 19 Aug 2020 14:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039D66E3A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 14:09:12 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 16:08:46 +0200
Message-Id: <20200819140904.1708856-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/24] drm/i915: Remove locking from
 i915_gem_object_prepare_read/write
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Execbuffer submission will perform its own WW locking, and we
cannot rely on the implicit lock there.

This also makes it clear that the GVT code will get a lockdep splat when
multiple batchbuffer shadows need to be performed in the same instance,
fix that up.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 20 ++++++-------------
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 13 ++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  1 -
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  5 ++++-
 .../i915/gem/selftests/i915_gem_coherency.c   | 14 +++++++++----
 .../drm/i915/gem/selftests/i915_gem_context.c | 12 ++++++++---
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
 drivers/gpu/drm/i915/i915_gem.c               | 20 +++++++++++++++++--
 8 files changed, 59 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index c0acfc97fae3..8ebceebd11b0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -576,19 +576,17 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 	if (!i915_gem_object_has_struct_page(obj))
 		return -ENODEV;
 
-	ret = i915_gem_object_lock_interruptible(obj, NULL);
-	if (ret)
-		return ret;
+	assert_object_held(obj);
 
 	ret = i915_gem_object_wait(obj,
 				   I915_WAIT_INTERRUPTIBLE,
 				   MAX_SCHEDULE_TIMEOUT);
 	if (ret)
-		goto err_unlock;
+		return ret;
 
 	ret = i915_gem_object_pin_pages(obj);
 	if (ret)
-		goto err_unlock;
+		return ret;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ ||
 	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
@@ -616,8 +614,6 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 
 err_unpin:
 	i915_gem_object_unpin_pages(obj);
-err_unlock:
-	i915_gem_object_unlock(obj);
 	return ret;
 }
 
@@ -630,20 +626,18 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 	if (!i915_gem_object_has_struct_page(obj))
 		return -ENODEV;
 
-	ret = i915_gem_object_lock_interruptible(obj, NULL);
-	if (ret)
-		return ret;
+	assert_object_held(obj);
 
 	ret = i915_gem_object_wait(obj,
 				   I915_WAIT_INTERRUPTIBLE |
 				   I915_WAIT_ALL,
 				   MAX_SCHEDULE_TIMEOUT);
 	if (ret)
-		goto err_unlock;
+		return ret;
 
 	ret = i915_gem_object_pin_pages(obj);
 	if (ret)
-		goto err_unlock;
+		return ret;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE ||
 	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
@@ -680,7 +674,5 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 
 err_unpin:
 	i915_gem_object_unpin_pages(obj);
-err_unlock:
-	i915_gem_object_unlock(obj);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 51395a0ceb15..ac2001f10b61 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -991,11 +991,14 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 
 	vaddr = unmask_page(cache->vaddr);
 	if (cache->vaddr & KMAP) {
+		struct drm_i915_gem_object *obj =
+			(struct drm_i915_gem_object *)cache->node.mm;
 		if (cache->vaddr & CLFLUSH_AFTER)
 			mb();
 
 		kunmap_atomic(vaddr);
-		i915_gem_object_finish_access((struct drm_i915_gem_object *)cache->node.mm);
+		i915_gem_object_finish_access(obj);
+		i915_gem_object_unlock(obj);
 	} else {
 		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
 
@@ -1031,10 +1034,16 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
 		unsigned int flushes;
 		int err;
 
-		err = i915_gem_object_prepare_write(obj, &flushes);
+		err = i915_gem_object_lock_interruptible(obj, NULL);
 		if (err)
 			return ERR_PTR(err);
 
+		err = i915_gem_object_prepare_write(obj, &flushes);
+		if (err) {
+			i915_gem_object_unlock(obj);
+			return ERR_PTR(err);
+		}
+
 		BUILD_BUG_ON(KMAP & CLFLUSH_FLAGS);
 		BUILD_BUG_ON((KMAP | CLFLUSH_FLAGS) & PAGE_MASK);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 488459143366..45d79d75e73a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -432,7 +432,6 @@ static inline void
 i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
 {
 	i915_gem_object_unpin_pages(obj);
-	i915_gem_object_unlock(obj);
 }
 
 static inline struct intel_engine_cs *
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 68c3631f3746..5daf4a2be422 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -964,9 +964,10 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	unsigned long n;
 	int err;
 
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_prepare_read(obj, &needs_flush);
 	if (err)
-		return err;
+		goto err_unlock;
 
 	for (n = 0; n < obj->base.size >> PAGE_SHIFT; ++n) {
 		u32 *ptr = kmap_atomic(i915_gem_object_get_page(obj, n));
@@ -986,6 +987,8 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	}
 
 	i915_gem_object_finish_access(obj);
+err_unlock:
+	i915_gem_object_unlock(obj);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 1de2959b153c..dcdfc396f2f8 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -27,9 +27,10 @@ static int cpu_set(struct context *ctx, unsigned long offset, u32 v)
 	u32 *cpu;
 	int err;
 
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_prepare_write(ctx->obj, &needs_clflush);
 	if (err)
-		return err;
+		goto out;
 
 	page = i915_gem_object_get_page(ctx->obj, offset >> PAGE_SHIFT);
 	map = kmap_atomic(page);
@@ -46,7 +47,9 @@ static int cpu_set(struct context *ctx, unsigned long offset, u32 v)
 	kunmap_atomic(map);
 	i915_gem_object_finish_access(ctx->obj);
 
-	return 0;
+out:
+	i915_gem_object_unlock(ctx->obj);
+	return err;
 }
 
 static int cpu_get(struct context *ctx, unsigned long offset, u32 *v)
@@ -57,9 +60,10 @@ static int cpu_get(struct context *ctx, unsigned long offset, u32 *v)
 	u32 *cpu;
 	int err;
 
+	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_prepare_read(ctx->obj, &needs_clflush);
 	if (err)
-		return err;
+		goto out;
 
 	page = i915_gem_object_get_page(ctx->obj, offset >> PAGE_SHIFT);
 	map = kmap_atomic(page);
@@ -73,7 +77,9 @@ static int cpu_get(struct context *ctx, unsigned long offset, u32 *v)
 	kunmap_atomic(map);
 	i915_gem_object_finish_access(ctx->obj);
 
-	return 0;
+out:
+	i915_gem_object_unlock(ctx->obj);
+	return err;
 }
 
 static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 52af9a52b743..9160a335c684 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -461,9 +461,10 @@ static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 	unsigned int n, m, need_flush;
 	int err;
 
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_prepare_write(obj, &need_flush);
 	if (err)
-		return err;
+		goto out;
 
 	for (n = 0; n < real_page_count(obj); n++) {
 		u32 *map;
@@ -479,7 +480,9 @@ static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 	i915_gem_object_finish_access(obj);
 	obj->read_domains = I915_GEM_DOMAIN_GTT | I915_GEM_DOMAIN_CPU;
 	obj->write_domain = 0;
-	return 0;
+out:
+	i915_gem_object_unlock(obj);
+	return err;
 }
 
 static noinline int cpu_check(struct drm_i915_gem_object *obj,
@@ -488,9 +491,10 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 	unsigned int n, m, needs_flush;
 	int err;
 
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_prepare_read(obj, &needs_flush);
 	if (err)
-		return err;
+		goto out_unlock;
 
 	for (n = 0; n < real_page_count(obj); n++) {
 		u32 *map;
@@ -527,6 +531,8 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 	}
 
 	i915_gem_object_finish_access(obj);
+out_unlock:
+	i915_gem_object_unlock(obj);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 943c8d232703..d0a599b51bfe 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1923,6 +1923,7 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	if (ret)
 		goto err_unmap;
 
+	i915_gem_object_unlock(bb->obj);
 	INIT_LIST_HEAD(&bb->list);
 	list_add(&bb->list, &s->workload->shadow_bb);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 4bc8fdb94019..55158e487a7f 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -335,12 +335,20 @@ i915_gem_shmem_pread(struct drm_i915_gem_object *obj,
 	u64 remain;
 	int ret;
 
-	ret = i915_gem_object_prepare_read(obj, &needs_clflush);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		return ret;
 
+	ret = i915_gem_object_prepare_read(obj, &needs_clflush);
+	if (ret) {
+		i915_gem_object_unlock(obj);
+		return ret;
+	}
+
 	fence = i915_gem_object_lock_fence(obj);
 	i915_gem_object_finish_access(obj);
+	i915_gem_object_unlock(obj);
+
 	if (!fence)
 		return -ENOMEM;
 
@@ -734,12 +742,20 @@ i915_gem_shmem_pwrite(struct drm_i915_gem_object *obj,
 	u64 remain;
 	int ret;
 
-	ret = i915_gem_object_prepare_write(obj, &needs_clflush);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		return ret;
 
+	ret = i915_gem_object_prepare_write(obj, &needs_clflush);
+	if (ret) {
+		i915_gem_object_unlock(obj);
+		return ret;
+	}
+
 	fence = i915_gem_object_lock_fence(obj);
 	i915_gem_object_finish_access(obj);
+	i915_gem_object_unlock(obj);
+
 	if (!fence)
 		return -ENOMEM;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
