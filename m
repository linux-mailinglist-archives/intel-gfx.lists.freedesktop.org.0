Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1E130D5C0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 10:02:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD30A6EA1D;
	Wed,  3 Feb 2021 09:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423B56E9C7
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 09:02:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23780364-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Feb 2021 09:02:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 09:02:05 +0000
Message-Id: <20210203090205.25818-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210203090205.25818-1-chris@chris-wilson.co.uk>
References: <20210203090205.25818-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 8/8] drm/i915/gem: Manage all set-domain waits
 explicitly
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

Only perform the domain transition under the object lock, and push the
required waits to outside the lock.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   9 +-
 drivers/gpu/drm/i915/gem/i915_gem_clflush.h   |   2 -
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 157 +++++-------------
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  12 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   6 +
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   8 -
 .../i915/gem/selftests/i915_gem_coherency.c   |  30 +++-
 .../drm/i915/gem/selftests/i915_gem_phys.c    |   8 +-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |   3 +
 drivers/gpu/drm/i915/i915_gem.c               |  12 +-
 11 files changed, 89 insertions(+), 162 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index bc0223716906..a28f8c912a3e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -57,8 +57,6 @@ static struct clflush *clflush_work_create(struct drm_i915_gem_object *obj)
 {
 	struct clflush *clflush;
 
-	GEM_BUG_ON(!obj->cache_dirty);
-
 	clflush = kmalloc(sizeof(*clflush), GFP_KERNEL);
 	if (!clflush)
 		return NULL;
@@ -102,13 +100,10 @@ bool i915_gem_clflush_object(struct drm_i915_gem_object *obj,
 
 	trace_i915_gem_object_clflush(obj);
 
-	clflush = NULL;
-	if (!(flags & I915_CLFLUSH_SYNC))
-		clflush = clflush_work_create(obj);
+	clflush = clflush_work_create(obj);
 	if (clflush) {
 		i915_sw_fence_await_reservation(&clflush->base.chain,
-						obj->base.resv, NULL, true,
-						i915_fence_timeout(to_i915(obj->base.dev)),
+						obj->base.resv, NULL, true, 0,
 						I915_FENCE_GFP);
 		dma_resv_add_excl_fence(obj->base.resv, &clflush->base.dma);
 		dma_fence_work_commit(&clflush->base);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.h b/drivers/gpu/drm/i915/gem/i915_gem_clflush.h
index e6c382973129..4cd5787d1507 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.h
@@ -9,12 +9,10 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct drm_i915_gem_object;
 
 bool i915_gem_clflush_object(struct drm_i915_gem_object *obj,
 			     unsigned int flags);
 #define I915_CLFLUSH_FORCE BIT(0)
-#define I915_CLFLUSH_SYNC BIT(1)
 
 #endif /* __I915_GEM_CLFLUSH_H__ */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 5cc8a0b2387f..d804b0003e0d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -133,7 +133,7 @@ static int i915_gem_begin_cpu_access(struct dma_buf *dma_buf, enum dma_data_dire
 	if (err)
 		goto out;
 
-	err = i915_gem_object_set_to_cpu_domain(obj, write);
+	i915_gem_object_set_to_cpu_domain(obj, write);
 	i915_gem_object_unlock(obj);
 
 out:
@@ -154,7 +154,7 @@ static int i915_gem_end_cpu_access(struct dma_buf *dma_buf, enum dma_data_direct
 	if (err)
 		goto out;
 
-	err = i915_gem_object_set_to_gtt_domain(obj, false);
+	i915_gem_object_set_to_gtt_domain(obj, false);
 	i915_gem_object_unlock(obj);
 
 out:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 36f54cedaaeb..0478b069c202 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -49,7 +49,7 @@ flush_write_domain(struct drm_i915_gem_object *obj, unsigned int flush_domains)
 		break;
 
 	case I915_GEM_DOMAIN_CPU:
-		i915_gem_clflush_object(obj, I915_CLFLUSH_SYNC);
+		i915_gem_clflush_object(obj, 0);
 		break;
 
 	case I915_GEM_DOMAIN_RENDER:
@@ -97,34 +97,13 @@ void i915_gem_object_flush_if_display_locked(struct drm_i915_gem_object *obj)
  * This function returns when the move is complete, including waiting on
  * flushes to occur.
  */
-int
+void
 i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
 {
-	int ret;
-
 	assert_object_held(obj);
 
-	ret = i915_gem_object_wait(obj,
-				   I915_WAIT_INTERRUPTIBLE |
-				   (write ? I915_WAIT_ALL : 0),
-				   MAX_SCHEDULE_TIMEOUT);
-	if (ret)
-		return ret;
-
 	if (obj->write_domain == I915_GEM_DOMAIN_WC)
-		return 0;
-
-	/* Flush and acquire obj->pages so that we are coherent through
-	 * direct access in memory with previous cached writes through
-	 * shmemfs and that our cache domain tracking remains valid.
-	 * For example, if the obj->filp was moved to swap without us
-	 * being notified and releasing the pages, we would mistakenly
-	 * continue to assume that the obj remained out of the CPU cached
-	 * domain.
-	 */
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		return ret;
+		return;
 
 	flush_write_domain(obj, ~I915_GEM_DOMAIN_WC);
 
@@ -145,9 +124,6 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
 		obj->write_domain = I915_GEM_DOMAIN_WC;
 		obj->mm.dirty = true;
 	}
-
-	i915_gem_object_unpin_pages(obj);
-	return 0;
 }
 
 /**
@@ -158,34 +134,13 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
  * This function returns when the move is complete, including waiting on
  * flushes to occur.
  */
-int
+void
 i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
 {
-	int ret;
-
 	assert_object_held(obj);
 
-	ret = i915_gem_object_wait(obj,
-				   I915_WAIT_INTERRUPTIBLE |
-				   (write ? I915_WAIT_ALL : 0),
-				   MAX_SCHEDULE_TIMEOUT);
-	if (ret)
-		return ret;
-
 	if (obj->write_domain == I915_GEM_DOMAIN_GTT)
-		return 0;
-
-	/* Flush and acquire obj->pages so that we are coherent through
-	 * direct access in memory with previous cached writes through
-	 * shmemfs and that our cache domain tracking remains valid.
-	 * For example, if the obj->filp was moved to swap without us
-	 * being notified and releasing the pages, we would mistakenly
-	 * continue to assume that the obj remained out of the CPU cached
-	 * domain.
-	 */
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		return ret;
+		return;
 
 	flush_write_domain(obj, ~I915_GEM_DOMAIN_GTT);
 
@@ -214,9 +169,6 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
 				i915_vma_set_ggtt_write(vma);
 		spin_unlock(&obj->vma.lock);
 	}
-
-	i915_gem_object_unpin_pages(obj);
-	return 0;
 }
 
 /**
@@ -442,25 +394,23 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
  * This function returns when the move is complete, including waiting on
  * flushes to occur.
  */
-int
+void
 i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write)
 {
-	int ret;
-
 	assert_object_held(obj);
 
-	ret = i915_gem_object_wait(obj,
-				   I915_WAIT_INTERRUPTIBLE |
-				   (write ? I915_WAIT_ALL : 0),
-				   MAX_SCHEDULE_TIMEOUT);
-	if (ret)
-		return ret;
-
 	flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 
 	/* Flush the CPU cache if it's still invalid. */
 	if ((obj->read_domains & I915_GEM_DOMAIN_CPU) == 0) {
-		i915_gem_clflush_object(obj, I915_CLFLUSH_SYNC);
+		/*
+		 * While we track when we write though the CPU cache
+		 * (with obj->cache_dirty), this is only a guide as we do
+		 * not know when the CPU may have speculatively populated
+		 * the cache. We have to invalidate such speculative cachelines
+		 * prior to reading writes by the GPU.
+		 */
+		i915_gem_clflush_object(obj, 0);
 		obj->read_domains |= I915_GEM_DOMAIN_CPU;
 	}
 
@@ -474,8 +424,6 @@ i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write)
 	 */
 	if (write)
 		__start_cpu_write(obj);
-
-	return 0;
 }
 
 /**
@@ -513,19 +461,6 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	if (!obj)
 		return -ENOENT;
 
-	/*
-	 * Try to flush the object off the GPU without holding the lock.
-	 * We will repeat the flush holding the lock in the normal manner
-	 * to catch cases where we are gazumped.
-	 */
-	err = i915_gem_object_wait(obj,
-				   I915_WAIT_INTERRUPTIBLE |
-				   I915_WAIT_PRIORITY |
-				   (write_domain ? I915_WAIT_ALL : 0),
-				   MAX_SCHEDULE_TIMEOUT);
-	if (err)
-		goto out;
-
 	/*
 	 * Proxy objects do not control access to the backing storage, ergo
 	 * they cannot be used as a means to manipulate the cache domain
@@ -561,21 +496,27 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	 * without having to further check the requested write_domain.
 	 */
 	if (READ_ONCE(obj->write_domain) == read_domains)
-		goto out_unpin;
+		goto out_wait;
 
 	err = i915_gem_object_lock_interruptible(obj, NULL);
 	if (err)
 		goto out_unpin;
 
 	if (read_domains & I915_GEM_DOMAIN_WC)
-		err = i915_gem_object_set_to_wc_domain(obj, write_domain);
+		i915_gem_object_set_to_wc_domain(obj, write_domain);
 	else if (read_domains & I915_GEM_DOMAIN_GTT)
-		err = i915_gem_object_set_to_gtt_domain(obj, write_domain);
+		i915_gem_object_set_to_gtt_domain(obj, write_domain);
 	else
-		err = i915_gem_object_set_to_cpu_domain(obj, write_domain);
+		i915_gem_object_set_to_cpu_domain(obj, write_domain);
 
 	i915_gem_object_unlock(obj);
 
+out_wait:
+	err = i915_gem_object_wait(obj,
+				   I915_WAIT_INTERRUPTIBLE |
+				   I915_WAIT_PRIORITY |
+				   (write_domain ? I915_WAIT_ALL : 0),
+				   MAX_SCHEDULE_TIMEOUT);
 	if (write_domain)
 		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
 
@@ -602,26 +543,21 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 
 	assert_object_held(obj);
 
-	ret = i915_gem_object_wait(obj,
-				   I915_WAIT_INTERRUPTIBLE,
-				   MAX_SCHEDULE_TIMEOUT);
-	if (ret)
-		return ret;
-
 	ret = i915_gem_object_pin_pages(obj);
 	if (ret)
 		return ret;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ ||
-	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
-		ret = i915_gem_object_set_to_cpu_domain(obj, false);
-		if (ret)
-			goto err_unpin;
-		else
-			goto out;
-	}
+	    !static_cpu_has(X86_FEATURE_CLFLUSH))
+		i915_gem_object_set_to_cpu_domain(obj, false);
+	else
+		flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 
-	flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
+	ret = i915_gem_object_wait(obj,
+				   I915_WAIT_INTERRUPTIBLE,
+				   MAX_SCHEDULE_TIMEOUT);
+	if (ret)
+		goto err_unpin;
 
 	/* If we're not in the cpu read domain, set ourself into the gtt
 	 * read domain and manually flush cachelines (if required). This
@@ -632,7 +568,6 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 	    !(obj->read_domains & I915_GEM_DOMAIN_CPU))
 		*needs_clflush = CLFLUSH_BEFORE;
 
-out:
 	/* return with the pages pinned */
 	return 0;
 
@@ -652,27 +587,22 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 
 	assert_object_held(obj);
 
-	ret = i915_gem_object_wait(obj,
-				   I915_WAIT_INTERRUPTIBLE |
-				   I915_WAIT_ALL,
-				   MAX_SCHEDULE_TIMEOUT);
-	if (ret)
-		return ret;
-
 	ret = i915_gem_object_pin_pages(obj);
 	if (ret)
 		return ret;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE ||
-	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
-		ret = i915_gem_object_set_to_cpu_domain(obj, true);
-		if (ret)
-			goto err_unpin;
-		else
-			goto out;
-	}
+	    !static_cpu_has(X86_FEATURE_CLFLUSH))
+		i915_gem_object_set_to_cpu_domain(obj, true);
+	else
+		flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
 
-	flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
+	ret = i915_gem_object_wait(obj,
+				   I915_WAIT_INTERRUPTIBLE |
+				   I915_WAIT_ALL,
+				   MAX_SCHEDULE_TIMEOUT);
+	if (ret)
+		goto err_unpin;
 
 	/* If we're not in the cpu write domain, set ourself into the
 	 * gtt write domain and manually flush cachelines (as required).
@@ -690,7 +620,6 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 			*needs_clflush |= CLFLUSH_BEFORE;
 	}
 
-out:
 	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
 	obj->mm.dirty = true;
 	/* return with the pages pinned */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3411ad197fa6..35a8d90f14f1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -513,12 +513,12 @@ void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj,
 void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj);
 void i915_gem_object_flush_if_display_locked(struct drm_i915_gem_object *obj);
 
-int __must_check
-i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write);
-int __must_check
-i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write);
-int __must_check
-i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write);
+void i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj,
+				      bool write);
+void i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj,
+				       bool write);
+void i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj,
+				       bool write);
 struct i915_vma * __must_check
 i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     u32 alignment,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 0438e00d4ca7..0a1fdbac882e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -183,6 +183,12 @@ struct drm_i915_gem_object {
 	unsigned int cache_coherent:2;
 #define I915_BO_CACHE_COHERENT_FOR_READ BIT(0)
 #define I915_BO_CACHE_COHERENT_FOR_WRITE BIT(1)
+	/*
+	 * Note cache_dirty is only a guide; we know when we have written
+	 * through the CPU cache, but we do not know when the CPU may have
+	 * speculatively populated the cache. Before a read via the cache
+	 * of GPU written memory, we have to cautiously invalidate the cache.
+	 */
 	unsigned int cache_dirty:1;
 
 	/**
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index f6329e462cfc..10ee24b252dd 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -962,14 +962,6 @@ static int gpu_write(struct intel_context *ce,
 		     u32 dw,
 		     u32 val)
 {
-	int err;
-
-	i915_gem_object_lock(vma->obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(vma->obj, true);
-	i915_gem_object_unlock(vma->obj);
-	if (err)
-		return err;
-
 	return igt_gpu_fill_dw(ce, vma, dw * sizeof(u32),
 			       vma->size >> PAGE_SHIFT, val);
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 1117d2a44518..b5dbf15570fc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -90,8 +90,13 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 	int err = 0;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
+	i915_gem_object_set_to_gtt_domain(ctx->obj, true);
 	i915_gem_object_unlock(ctx->obj);
+
+	err = i915_gem_object_wait(ctx->obj,
+				   I915_WAIT_ALL |
+				   I915_WAIT_INTERRUPTIBLE,
+				   HZ / 2);
 	if (err)
 		return err;
 
@@ -123,8 +128,12 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 	int err = 0;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(ctx->obj, false);
+	i915_gem_object_set_to_gtt_domain(ctx->obj, false);
 	i915_gem_object_unlock(ctx->obj);
+
+	err = i915_gem_object_wait(ctx->obj,
+				   I915_WAIT_INTERRUPTIBLE,
+				   HZ / 2);
 	if (err)
 		return err;
 
@@ -155,8 +164,13 @@ static int wc_set(struct context *ctx, unsigned long offset, u32 v)
 	int err;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_wc_domain(ctx->obj, true);
+	i915_gem_object_set_to_wc_domain(ctx->obj, true);
 	i915_gem_object_unlock(ctx->obj);
+
+	err = i915_gem_object_wait(ctx->obj,
+				   I915_WAIT_ALL |
+				   I915_WAIT_INTERRUPTIBLE,
+				   HZ / 2);
 	if (err)
 		return err;
 
@@ -178,8 +192,12 @@ static int wc_get(struct context *ctx, unsigned long offset, u32 *v)
 	int err;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_wc_domain(ctx->obj, false);
+	i915_gem_object_set_to_wc_domain(ctx->obj, false);
 	i915_gem_object_unlock(ctx->obj);
+
+	err = i915_gem_object_wait(ctx->obj,
+				   I915_WAIT_INTERRUPTIBLE,
+				   HZ / 2);
 	if (err)
 		return err;
 
@@ -201,9 +219,7 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	int err;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
-	if (err)
-		goto out_unlock;
+	i915_gem_object_set_to_gtt_domain(ctx->obj, false);
 
 	vma = i915_gem_object_ggtt_pin(ctx->obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
index 8cee68c6a6dc..b62d02cb9579 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
@@ -45,14 +45,10 @@ static int mock_phys_object(void *arg)
 
 	/* Make the object dirty so that put_pages must do copy back the data */
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(obj, true);
+	i915_gem_object_set_to_gtt_domain(obj, true);
 	i915_gem_object_unlock(obj);
-	if (err) {
-		pr_err("i915_gem_object_set_to_gtt_domain failed with err=%d\n",
-		       err);
-		goto out_obj;
-	}
 
+	err = 0;
 out_obj:
 	i915_gem_object_put(obj);
 out:
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index d6783061bc72..b7e064667d39 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -7,6 +7,7 @@
 #include "igt_gem_utils.h"
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_clflush.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_context.h"
 #include "gt/intel_gpu_commands.h"
@@ -138,6 +139,8 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 		goto skip_request;
 
 	i915_vma_lock(vma);
+	if (vma->obj->cache_dirty & ~vma->obj->cache_coherent)
+		i915_gem_clflush_object(vma->obj, 0);
 	err = i915_request_await_object(rq, vma->obj, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index f2f344ecf547..b2e3b5cfccb4 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -306,11 +306,7 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 	if (ret)
 		goto out_unpin;
 
-	ret = i915_gem_object_set_to_gtt_domain(obj, false);
-	if (ret) {
-		i915_gem_object_unlock(obj);
-		goto out_unpin;
-	}
+	i915_gem_object_set_to_gtt_domain(obj, false);
 
 	fence = i915_gem_object_lock_fence(obj);
 	i915_gem_object_unlock(obj);
@@ -511,11 +507,7 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 	if (ret)
 		goto out_unpin;
 
-	ret = i915_gem_object_set_to_gtt_domain(obj, true);
-	if (ret) {
-		i915_gem_object_unlock(obj);
-		goto out_unpin;
-	}
+	i915_gem_object_set_to_gtt_domain(obj, true);
 
 	fence = i915_gem_object_lock_fence(obj);
 	i915_gem_object_unlock(obj);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
