Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C44118556
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:42:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A746E8A0;
	Tue, 10 Dec 2019 10:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFDD6E8A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:42:15 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 11:32:01 +0100
Message-Id: <20191210103204.3564263-5-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
References: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Remove locking from
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
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 20 ++++++-------------
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  1 -
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  5 ++++-
 .../i915/gem/selftests/i915_gem_coherency.c   | 14 +++++++++----
 .../drm/i915/gem/selftests/i915_gem_context.c | 12 ++++++++---
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  9 +++++++--
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  9 ++++++++-
 drivers/gpu/drm/i915/i915_cmd_parser.c        | 16 ++++++++++++++-
 drivers/gpu/drm/i915/i915_gem.c               |  8 +++++++-
 9 files changed, 66 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 1240cd803a27..0397a31ddaa4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -574,19 +574,17 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
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
@@ -614,8 +612,6 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 
 err_unpin:
 	i915_gem_object_unpin_pages(obj);
-err_unlock:
-	i915_gem_object_unlock(obj);
 	return ret;
 }
 
@@ -628,20 +624,18 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
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
@@ -678,7 +672,5 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 
 err_unpin:
 	i915_gem_object_unpin_pages(obj);
-err_unlock:
-	i915_gem_object_unlock(obj);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index cf45ec431c38..0bd382a8c13f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -427,7 +427,6 @@ static inline void
 i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
 {
 	i915_gem_object_unpin_pages(obj);
-	i915_gem_object_unlock(obj);
 }
 
 static inline struct intel_engine_cs *
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 7d0754fe3227..7934e69a6152 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -991,9 +991,10 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	unsigned long n;
 	int err;
 
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_prepare_read(obj, &needs_flush);
 	if (err)
-		return err;
+		goto err_unlock;
 
 	for (n = 0; n < obj->base.size >> PAGE_SHIFT; ++n) {
 		u32 *ptr = kmap_atomic(i915_gem_object_get_page(obj, n));
@@ -1013,6 +1014,8 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	}
 
 	i915_gem_object_finish_access(obj);
+err_unlock:
+	i915_gem_object_unlock(obj);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 28887c71612d..edecde3a70ef 100644
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
index a7f285482a08..936920ac2248 100644
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
 
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 5954ecc3207f..81834a7ee428 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -196,6 +196,8 @@ int intel_renderstate_init(struct intel_renderstate *so,
 	if (err)
 		goto err_vma;
 
+	i915_gem_object_lock(so->vma->obj, NULL);
+
 	err = render_state_setup(so, engine->i915);
 	if (err)
 		goto err_unpin;
@@ -203,6 +205,7 @@ int intel_renderstate_init(struct intel_renderstate *so,
 	return 0;
 
 err_unpin:
+	i915_gem_object_unlock(so->vma->obj);
 	i915_vma_unpin(so->vma);
 err_vma:
 	i915_vma_close(so->vma);
@@ -235,16 +238,18 @@ int intel_renderstate_emit(struct intel_renderstate *so,
 			return err;
 	}
 
-	i915_vma_lock(so->vma);
 	err = i915_request_await_object(rq, so->vma->obj, false);
 	if (err == 0)
 		err = i915_vma_move_to_active(so->vma, rq, 0);
-	i915_vma_unlock(so->vma);
 
 	return err;
 }
 
 void intel_renderstate_fini(struct intel_renderstate *so)
 {
+	if (!so->vma)
+		return;
+
+	i915_gem_object_unlock(so->vma->obj);
 	i915_vma_unpin_and_release(&so->vma, 0);
 }
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index a54d96a144be..5d17ee2bdb9b 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1865,10 +1865,14 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 		goto err_free_bb;
 	}
 
-	ret = i915_gem_object_prepare_write(bb->obj, &bb->clflush);
+	ret = i915_gem_object_lock_interruptible(bb->obj, NULL);
 	if (ret)
 		goto err_free_obj;
 
+	ret = i915_gem_object_prepare_write(bb->obj, &bb->clflush);
+	if (ret)
+		goto err_unlock;
+
 	bb->va = i915_gem_object_pin_map(bb->obj, I915_MAP_WB);
 	if (IS_ERR(bb->va)) {
 		ret = PTR_ERR(bb->va);
@@ -1893,6 +1897,7 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	if (ret)
 		goto err_unmap;
 
+	i915_gem_object_unlock(bb->obj);
 	INIT_LIST_HEAD(&bb->list);
 	list_add(&bb->list, &s->workload->shadow_bb);
 
@@ -1919,6 +1924,8 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	i915_gem_object_unpin_map(bb->obj);
 err_finish_shmem_access:
 	i915_gem_object_finish_access(bb->obj);
+err_unlock:
+	i915_gem_object_unlock(bb->obj);
 err_free_obj:
 	i915_gem_object_put(bb->obj);
 err_free_bb:
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 2ed497e7c9fd..f91c6d214634 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1136,18 +1136,31 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 	void *dst, *src;
 	int ret;
 
-	ret = i915_gem_object_prepare_write(dst_obj, &dst_needs_clflush);
+	ret = i915_gem_object_lock_interruptible(dst_obj, NULL);
 	if (ret)
 		return ERR_PTR(ret);
 
+	ret = i915_gem_object_prepare_write(dst_obj, &dst_needs_clflush);
+	if (ret) {
+		i915_gem_object_unlock(dst_obj);
+		return ERR_PTR(ret);
+	}
+
 	dst = i915_gem_object_pin_map(dst_obj, I915_MAP_FORCE_WB);
 	i915_gem_object_finish_access(dst_obj);
+	i915_gem_object_unlock(dst_obj);
+
 	if (IS_ERR(dst))
 		return dst;
 
+	ret = i915_gem_object_lock_interruptible(src_obj, NULL);
+	if (ret)
+		return ERR_PTR(ret);
+
 	ret = i915_gem_object_prepare_read(src_obj, &src_needs_clflush);
 	if (ret) {
 		i915_gem_object_unpin_map(dst_obj);
+		i915_gem_object_unlock(src_obj);
 		return ERR_PTR(ret);
 	}
 
@@ -1196,6 +1209,7 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 	}
 
 	i915_gem_object_finish_access(src_obj);
+	i915_gem_object_unlock(src_obj);
 
 	/* dst_obj is returned with vmap pinned */
 	*needs_clflush_after = dst_needs_clflush & CLFLUSH_AFTER;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 6a9ce3d945c7..f5b9d0372ddc 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -517,15 +517,21 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 	if (ret)
 		goto out;
 
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		goto out;
 
+	ret = i915_gem_object_pin_pages(obj);
+	if (ret)
+		goto out_unlock;
+
 	ret = i915_gem_shmem_pread(obj, args);
 	if (ret == -EFAULT || ret == -ENODEV)
 		ret = i915_gem_gtt_pread(obj, args);
 
 	i915_gem_object_unpin_pages(obj);
+out_unlock:
+	i915_gem_object_unlock(obj);
 out:
 	i915_gem_object_put(obj);
 	return ret;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
