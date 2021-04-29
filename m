Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D84736E873
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 12:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EE46EDDE;
	Thu, 29 Apr 2021 10:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C2C6EDDB
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 10:10:40 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Apr 2021 12:10:36 +0200
Message-Id: <20210429101036.1086461-5-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210429101036.1086461-1-maarten.lankhorst@linux.intel.com>
References: <20210429101036.1086461-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Pass ww ctx to
 i915_gem_object_pin_pages, v2.
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

This is the final part of passing ww ctx to the get_pages() callbacks.
Now we no longer have to implicitly get ww ctx by using get_ww_ctx.

Changes since v1:
- Fix error handling in pin_map_unlocked().

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  8 ++--
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 48 +++++++++++--------
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 19 +++++---
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 20 +++++---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 14 +++---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  4 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |  2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   | 10 ++--
 .../drm/i915/gem/selftests/i915_gem_context.c |  4 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  4 +-
 .../drm/i915/gem/selftests/i915_gem_phys.c    |  2 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  2 +-
 drivers/gpu/drm/i915/i915_gem.c               |  8 ++--
 drivers/gpu/drm/i915/i915_vma.c               |  7 +--
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  2 +-
 .../drm/i915/selftests/intel_memory_region.c  |  2 +-
 22 files changed, 98 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6280ba7f4c17..80a1e241a18e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1090,7 +1090,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	if (!ret && phys_cursor)
 		ret = i915_gem_object_attach_phys(obj, alignment);
 	if (!ret)
-		ret = i915_gem_object_pin_pages(obj);
+		ret = i915_gem_object_pin_pages(obj, &ww);
 	if (ret)
 		goto err;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index daf9284ef1f5..e29629b2a8f8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -57,7 +57,7 @@ static struct clflush *clflush_work_create(struct drm_i915_gem_object *obj)
 	if (!clflush)
 		return NULL;
 
-	if (__i915_gem_object_get_pages(obj) < 0) {
+	if (__i915_gem_object_get_pages(obj, NULL) < 0) {
 		kfree(clflush);
 		return NULL;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index f6b8437efc39..300a983582b9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -130,9 +130,9 @@ static int i915_gem_begin_cpu_access(struct dma_buf *dma_buf, enum dma_data_dire
 retry:
 	err = i915_gem_object_lock(obj, &ww);
 	if (!err)
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages(obj, &ww);
 	if (!err) {
-		err = i915_gem_object_set_to_cpu_domain(obj, write);
+		err = i915_gem_object_set_to_cpu_domain(obj, &ww, write);
 		i915_gem_object_unpin_pages(obj);
 	}
 	if (err == -EDEADLK) {
@@ -154,9 +154,9 @@ static int i915_gem_end_cpu_access(struct dma_buf *dma_buf, enum dma_data_direct
 retry:
 	err = i915_gem_object_lock(obj, &ww);
 	if (!err)
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages(obj, &ww);
 	if (!err) {
-		err = i915_gem_object_set_to_gtt_domain(obj, false);
+		err = i915_gem_object_set_to_gtt_domain(obj, &ww, false);
 		i915_gem_object_unpin_pages(obj);
 	}
 	if (err == -EDEADLK) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 6c7d9efb319c..7beffc2fe9f1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -98,7 +98,8 @@ void i915_gem_object_flush_if_display_locked(struct drm_i915_gem_object *obj)
  * flushes to occur.
  */
 int
-i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
+i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj,
+				 struct i915_gem_ww_ctx *ww, bool write)
 {
 	int ret;
 
@@ -122,7 +123,7 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
 	 * continue to assume that the obj remained out of the CPU cached
 	 * domain.
 	 */
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_pin_pages(obj, ww);
 	if (ret)
 		return ret;
 
@@ -159,7 +160,8 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
  * flushes to occur.
  */
 int
-i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
+i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj,
+				  struct i915_gem_ww_ctx *ww, bool write)
 {
 	int ret;
 
@@ -183,7 +185,7 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
 	 * continue to assume that the obj remained out of the CPU cached
 	 * domain.
 	 */
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_pin_pages(obj, ww);
 	if (ret)
 		return ret;
 
@@ -432,7 +434,8 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
  * flushes to occur.
  */
 int
-i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write)
+i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, 
+				  struct i915_gem_ww_ctx *ww, bool write)
 {
 	int ret;
 
@@ -482,6 +485,7 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	u32 read_domains = args->read_domains;
 	u32 write_domain = args->write_domain;
+	struct i915_gem_ww_ctx ww;
 	int err;
 
 	/* Only handle setting domains to types used by the CPU. */
@@ -541,9 +545,11 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 		goto out;
 	}
 
-	err = i915_gem_object_lock_interruptible(obj, NULL);
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock_interruptible(obj, &ww);
 	if (err)
-		goto out;
+		goto out_ww;
 
 	/*
 	 * Flush and acquire obj->pages so that we are coherent through
@@ -554,9 +560,9 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	 * continue to assume that the obj remained out of the CPU cached
 	 * domain.
 	 */
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_pin_pages(obj, &ww);
 	if (err)
-		goto out_unlock;
+		goto out_ww;
 
 	/*
 	 * Already in the desired write domain? Nothing for us to do!
@@ -572,21 +578,25 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 		goto out_unpin;
 
 	if (read_domains & I915_GEM_DOMAIN_WC)
-		err = i915_gem_object_set_to_wc_domain(obj, write_domain);
+		err = i915_gem_object_set_to_wc_domain(obj, &ww, write_domain);
 	else if (read_domains & I915_GEM_DOMAIN_GTT)
-		err = i915_gem_object_set_to_gtt_domain(obj, write_domain);
+		err = i915_gem_object_set_to_gtt_domain(obj, &ww, write_domain);
 	else
-		err = i915_gem_object_set_to_cpu_domain(obj, write_domain);
+		err = i915_gem_object_set_to_cpu_domain(obj, &ww, write_domain);
 
 out_unpin:
 	i915_gem_object_unpin_pages(obj);
 
-out_unlock:
-	i915_gem_object_unlock(obj);
-
 	if (!err && write_domain)
 		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
 
+out_ww:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 out:
 	i915_gem_object_put(obj);
 	return err;
@@ -615,13 +625,13 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 	if (ret)
 		return ret;
 
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_pin_pages(obj, ww);
 	if (ret)
 		return ret;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ ||
 	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
-		ret = i915_gem_object_set_to_cpu_domain(obj, false);
+		ret = i915_gem_object_set_to_cpu_domain(obj, ww, false);
 		if (ret)
 			goto err_unpin;
 		else
@@ -667,13 +677,13 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
 	if (ret)
 		return ret;
 
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_pin_pages(obj, ww);
 	if (ret)
 		return ret;
 
 	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE ||
 	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
-		ret = i915_gem_object_set_to_cpu_domain(obj, true);
+		ret = i915_gem_object_set_to_cpu_domain(obj, ww, true);
 		if (ret)
 			goto err_unpin;
 		else
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 66d24dfbd805..447271932512 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1213,7 +1213,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		err = i915_gem_object_set_to_gtt_domain(obj, true);
+		err = i915_gem_object_set_to_gtt_domain(obj, &eb->ww, true);
 		if (err)
 			return ERR_PTR(err);
 
@@ -2509,7 +2509,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 		pw->batch_map = i915_gem_object_pin_map(batch, &eb->ww, I915_MAP_WC);
 
 	if (IS_ERR(pw->batch_map)) {
-		err = i915_gem_object_pin_pages(batch);
+		err = i915_gem_object_pin_pages(batch, &eb->ww);
 		if (err)
 			goto err_unmap_shadow;
 		pw->batch_map = NULL;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index ae2d71d76889..47da32edba03 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -239,6 +239,7 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 	struct i915_mmap_offset *mmo = area->vm_private_data;
 	struct drm_i915_gem_object *obj = mmo->obj;
 	resource_size_t iomap;
+	struct i915_gem_ww_ctx ww;
 	int err;
 
 	/* Sanity check that we allow writing into this object */
@@ -246,10 +247,11 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 		     area->vm_flags & VM_WRITE))
 		return VM_FAULT_SIGBUS;
 
-	if (i915_gem_object_lock_interruptible(obj, NULL))
-		return VM_FAULT_NOPAGE;
-
-	err = i915_gem_object_pin_pages(obj);
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (!err)
+		err = i915_gem_object_pin_pages(obj, &ww);
 	if (err)
 		goto out;
 
@@ -272,7 +274,12 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 	i915_gem_object_unpin_pages(obj);
 
 out:
-	i915_gem_object_unlock(obj);
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 	return i915_error_to_vmf_fault(err);
 }
 
@@ -313,7 +320,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 		goto err_rpm;
 	}
 
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_pin_pages(obj, &ww);
 	if (ret)
 		goto err_rpm;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index ed6c7421af4f..900fc8f8df2a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -378,18 +378,21 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 				 struct sg_table *pages,
 				 unsigned int sg_page_sizes);
 
-int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
-int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
+int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj,
+				  struct i915_gem_ww_ctx *ww);
+int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj,
+				struct i915_gem_ww_ctx *ww);
 
 static inline int __must_check
-i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
+i915_gem_object_pin_pages(struct drm_i915_gem_object *obj,
+			  struct i915_gem_ww_ctx *ww)
 {
 	assert_object_held(obj);
 
 	if (atomic_inc_not_zero(&obj->mm.pages_pin_count))
 		return 0;
 
-	return __i915_gem_object_get_pages(obj);
+	return __i915_gem_object_get_pages(obj, ww);
 }
 
 int i915_gem_object_pin_pages_unlocked(struct drm_i915_gem_object *obj);
@@ -519,11 +522,14 @@ void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj);
 void i915_gem_object_flush_if_display_locked(struct drm_i915_gem_object *obj);
 
 int __must_check
-i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write);
+i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj,
+				 struct i915_gem_ww_ctx *ww, bool write);
 int __must_check
-i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write);
+i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, 
+				  struct i915_gem_ww_ctx *ww, bool write);
 int __must_check
-i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write);
+i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj,
+				  struct i915_gem_ww_ctx *ww, bool write);
 struct i915_vma * __must_check
 i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     struct i915_gem_ww_ctx *ww,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 42e867134481..5e8dd7a67c71 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -87,7 +87,8 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	}
 }
 
-int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
+int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj,
+				  struct i915_gem_ww_ctx *ww)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	int err;
@@ -100,7 +101,7 @@ int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
 		return -EFAULT;
 	}
 
-	err = obj->ops->get_pages(obj, NULL);
+	err = obj->ops->get_pages(obj, ww);
 	GEM_BUG_ON(!err && !i915_gem_object_has_pages(obj));
 
 	return err;
@@ -113,7 +114,8 @@ int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
  * either as a result of memory pressure (reaping pages under the shrinker)
  * or as the object is itself released.
  */
-int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
+int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj,
+				struct i915_gem_ww_ctx *ww)
 {
 	int err;
 
@@ -124,7 +126,7 @@ int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
 	if (unlikely(!i915_gem_object_has_pages(obj))) {
 		GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));
 
-		err = ____i915_gem_object_get_pages(obj);
+		err = ____i915_gem_object_get_pages(obj, ww);
 		if (err)
 			return err;
 
@@ -144,7 +146,7 @@ int i915_gem_object_pin_pages_unlocked(struct drm_i915_gem_object *obj)
 retry:
 	err = i915_gem_object_lock(obj, &ww);
 	if (!err)
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages(obj, &ww);
 
 	if (err == -EDEADLK) {
 		err = i915_gem_ww_ctx_backoff(&ww);
@@ -362,7 +364,7 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 		if (unlikely(!i915_gem_object_has_pages(obj))) {
 			GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));
 
-			err = ____i915_gem_object_get_pages(obj);
+			err = ____i915_gem_object_get_pages(obj, ww);
 			if (err)
 				return ERR_PTR(err);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 4d2b65001eba..7347631aeb6b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -658,7 +658,7 @@ static int __i915_gem_object_create_stolen(struct intel_memory_region *mem,
 	if (WARN_ON(!i915_gem_object_trylock(obj)))
 		return -EBUSY;
 
-	err = i915_gem_object_pin_pages(obj);
+	err = i915_gem_object_pin_pages(obj, NULL);
 	if (!err)
 		i915_gem_object_init_memory_region(obj, mem);
 	i915_gem_object_unlock(obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 8fd22b4a3c3e..f1752f488306 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -261,7 +261,7 @@ static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj, bool
 		i915_gem_userptr_put_pages(obj, pages);
 
 	if (get_pages)
-		err = ____i915_gem_object_get_pages(obj);
+		err = ____i915_gem_object_get_pages(obj, NULL);
 
 	return err;
 }
@@ -390,7 +390,7 @@ int i915_gem_object_userptr_validate(struct drm_i915_gem_object *obj)
 		 * it doesn't matter if we collide with the mmu notifier,
 		 * and -EAGAIN handling is not required.
 		 */
-		err = i915_gem_object_pin_pages(obj);
+		err = i915_gem_object_pin_pages(obj, NULL);
 		if (!err)
 			i915_gem_object_unpin_pages(obj);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 67be3cf77f71..0cc922a38103 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -982,7 +982,7 @@ static int gpu_write(struct intel_context *ce,
 	int err;
 
 	i915_gem_object_lock(vma->obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(vma->obj, true);
+	err = i915_gem_object_set_to_gtt_domain(vma->obj, NULL, true);
 	i915_gem_object_unlock(vma->obj);
 	if (err)
 		return err;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index d36873885cc1..16096f7db1a7 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -74,7 +74,7 @@ static int __igt_client_fill(struct intel_engine_cs *engine)
 			goto err_unpin;
 
 		i915_gem_object_lock(obj, NULL);
-		err = i915_gem_object_set_to_cpu_domain(obj, false);
+		err = i915_gem_object_set_to_cpu_domain(obj, NULL, false);
 		i915_gem_object_unlock(obj);
 		if (err)
 			goto err_unpin;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index ced2454cebb0..87e97650fc3f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -90,7 +90,7 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 	int err = 0;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
+	err = i915_gem_object_set_to_gtt_domain(ctx->obj, NULL, true);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
 		return err;
@@ -123,7 +123,7 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 	int err = 0;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(ctx->obj, false);
+	err = i915_gem_object_set_to_gtt_domain(ctx->obj, NULL, false);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
 		return err;
@@ -155,7 +155,7 @@ static int wc_set(struct context *ctx, unsigned long offset, u32 v)
 	int err;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_wc_domain(ctx->obj, true);
+	err = i915_gem_object_set_to_wc_domain(ctx->obj, NULL, true);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
 		return err;
@@ -178,7 +178,7 @@ static int wc_get(struct context *ctx, unsigned long offset, u32 *v)
 	int err;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_wc_domain(ctx->obj, false);
+	err = i915_gem_object_set_to_wc_domain(ctx->obj, NULL, false);
 	i915_gem_object_unlock(ctx->obj);
 	if (err)
 		return err;
@@ -205,7 +205,7 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 		return PTR_ERR(vma);
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
+	err = i915_gem_object_set_to_gtt_domain(ctx->obj, NULL, true);
 	if (err)
 		goto out_unlock;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 86b3489aba33..c918a02c72a5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -957,7 +957,7 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	if (!err)
 		err = i915_gem_object_lock(rpcs, &ww);
 	if (!err)
-		err = i915_gem_object_set_to_gtt_domain(obj, false);
+		err = i915_gem_object_set_to_gtt_domain(obj, &ww, false);
 	if (!err)
 		err = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_USER);
 	if (err)
@@ -1712,7 +1712,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	i915_request_add(rq);
 
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_set_to_cpu_domain(obj, false);
+	err = i915_gem_object_set_to_cpu_domain(obj, NULL, false);
 	i915_gem_object_unlock(obj);
 	if (err)
 		goto out_vm;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 5cf6df49c333..3fe7d6e8715e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -105,7 +105,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	GEM_BUG_ON(i915_gem_object_get_stride(obj) != tile->stride);
 
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(obj, true);
+	err = i915_gem_object_set_to_gtt_domain(obj, NULL, true);
 	i915_gem_object_unlock(obj);
 	if (err) {
 		pr_err("Failed to flush to GTT write domain; err=%d\n", err);
@@ -190,7 +190,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 	GEM_BUG_ON(i915_gem_object_get_stride(obj) != tile->stride);
 
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(obj, true);
+	err = i915_gem_object_set_to_gtt_domain(obj, NULL, true);
 	i915_gem_object_unlock(obj);
 	if (err) {
 		pr_err("Failed to flush to GTT write domain; err=%d\n", err);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
index 3a6ce87f8b52..4e0a5fc00040 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
@@ -53,7 +53,7 @@ static int mock_phys_object(void *arg)
 
 	/* Make the object dirty so that put_pages must do copy back the data */
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_set_to_gtt_domain(obj, true);
+	err = i915_gem_object_set_to_gtt_domain(obj, NULL, true);
 	i915_gem_object_unlock(obj);
 	if (err) {
 		pr_err("i915_gem_object_set_to_gtt_domain failed with err=%d\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 1bf8e2826d7b..c60034d127d7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -216,7 +216,7 @@ static int check_whitelist(struct intel_context *ce)
 	err = 0;
 	i915_gem_object_lock(results, NULL);
 	intel_wedge_on_timeout(&wedge, engine->gt, HZ / 5) /* safety net! */
-		err = i915_gem_object_set_to_cpu_domain(results, false);
+		err = i915_gem_object_set_to_cpu_domain(results, NULL, false);
 
 	if (intel_gt_is_wedged(engine->gt))
 		err = -EIO;
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index eb804e4267d2..413de96fb9b6 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -3016,7 +3016,7 @@ static int shadow_indirect_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 	}
 
 	i915_gem_object_lock(obj, NULL);
-	ret = i915_gem_object_set_to_cpu_domain(obj, false);
+	ret = i915_gem_object_set_to_cpu_domain(obj, NULL, false);
 	i915_gem_object_unlock(obj);
 	if (ret) {
 		gvt_vgpu_err("failed to set shadow indirect ctx to CPU\n");
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 3ab9a79baf34..83d4471c28bb 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -223,7 +223,7 @@ i915_gem_shmem_pread(struct drm_i915_gem_object *obj,
 	if (ret)
 		return ret;
 
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_pin_pages(obj, NULL);
 	if (ret)
 		goto err_unlock;
 
@@ -302,7 +302,7 @@ static struct i915_vma *i915_gem_gtt_prepare(struct drm_i915_gem_object *obj,
 	if (ret)
 		goto err_ww;
 
-	ret = i915_gem_object_set_to_gtt_domain(obj, write);
+	ret = i915_gem_object_set_to_gtt_domain(obj, &ww, write);
 	if (ret)
 		goto err_ww;
 
@@ -325,7 +325,7 @@ static struct i915_vma *i915_gem_gtt_prepare(struct drm_i915_gem_object *obj,
 		vma = NULL;
 	}
 
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_pin_pages(obj, &ww);
 	if (ret) {
 		if (drm_mm_node_allocated(node)) {
 			ggtt->vm.clear_range(&ggtt->vm, node->start, node->size);
@@ -654,7 +654,7 @@ i915_gem_shmem_pwrite(struct drm_i915_gem_object *obj,
 	if (ret)
 		return ret;
 
-	ret = i915_gem_object_pin_pages(obj);
+	ret = i915_gem_object_pin_pages(obj, NULL);
 	if (ret)
 		goto err_unlock;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 468317e3b477..08e56d0af6e0 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -798,7 +798,8 @@ static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
 	return pinned;
 }
 
-static int vma_get_pages(struct i915_vma *vma)
+static int vma_get_pages(struct i915_vma *vma,
+			 struct i915_gem_ww_ctx *ww)
 {
 	int err = 0;
 
@@ -811,7 +812,7 @@ static int vma_get_pages(struct i915_vma *vma)
 
 	if (!atomic_read(&vma->pages_count)) {
 		if (vma->obj) {
-			err = i915_gem_object_pin_pages(vma->obj);
+			err = i915_gem_object_pin_pages(vma->obj, ww);
 			if (err)
 				goto unlock;
 		}
@@ -889,7 +890,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	if (try_qad_pin(vma, flags & I915_VMA_BIND_MASK))
 		return 0;
 
-	err = vma_get_pages(vma);
+	err = vma_get_pages(vma, ww);
 	if (err)
 		return err;
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index dd0607254a95..918fce57aabe 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -988,7 +988,7 @@ static int igt_vma_remapped_gtt(void *arg)
 			unsigned int x, y;
 
 			i915_gem_object_lock(obj, NULL);
-			err = i915_gem_object_set_to_gtt_domain(obj, true);
+			err = i915_gem_object_set_to_gtt_domain(obj, NULL, true);
 			i915_gem_object_unlock(obj);
 			if (err)
 				goto out;
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index a5fc0bf3feb9..f806876786f5 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -743,7 +743,7 @@ static int igt_lmem_write_cpu(void *arg)
 		goto out_unpin;
 
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_set_to_wc_domain(obj, true);
+	err = i915_gem_object_set_to_wc_domain(obj, NULL, true);
 	i915_gem_object_unlock(obj);
 	if (err)
 		goto out_unpin;
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
