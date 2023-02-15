Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A40698053
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 17:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402BE10EAF1;
	Wed, 15 Feb 2023 16:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EDC10EAE2;
 Wed, 15 Feb 2023 16:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676477691; x=1708013691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fjuWLn2itNr8O5y3d+HDbNx0L325SuwvFLJeYvIOXZg=;
 b=hW2adgtxefBUG0X+rKTXfWdkCet0HnNxi0gR6YlrNnBmgNXl7f8cPaC6
 7NtGr79hvgW3h0WJ1LuTKo75u63zal5LUExNTWtV7sU+sW98IhIbCWnFl
 BpWfiAT//KLPJ/amMFbAhWDwm4EKRUdWfJqB2pI0CweoLUmXxbILDwqU3
 7O821QKhP7srBdPU+frsC9l54qRn7suoJsCajiGpFH1hkz7i7kBSZnAFc
 i7OsOT4K3osQdBQihh67tmTiJAbyT80rIXCfQJOqz0HIX/c7geSIiJMz9
 K4rvkNi4OYjvO784jP5uQQtnuYj4C7s/wmYD4WnrBfESZOxPfuWFrqlJg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="393870774"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="393870774"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 08:14:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="758472206"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="758472206"
Received: from auliel-mobl1.ger.corp.intel.com (HELO thellstr-mobl1.intel.com)
 ([10.249.254.14])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 08:14:45 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 15 Feb 2023 17:13:53 +0100
Message-Id: <20230215161405.187368-5-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
References: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 04/16] drm/ttm,
 drm/vmwgfx: Update the TTM swapout interface
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
Cc: Miaohe Lin <linmiaohe@huawei.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 David Hildenbrand <david@redhat.com>, NeilBrown <neilb@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 Dave Hansen <dave.hansen@intel.com>, linux-graphics-maintainer@vmware.com,
 Peter Xu <peterx@redhat.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update the TTM swapout interfaces for better compatibility with a shrinker.
- Replace number-of-pages int return with a long to better match the
  kernel's shrinker interface.
- The gfp_flags parameter to ttm_xx_swapout() currently only takes the
  GFP_KERNEL value and shouldn't really be needed since the shrinker we
  hook up in upcoming patches sets a allocation context to match reclaim.
- Introduce a shrink reason enumeration and a driver callback to shrink
  buffer objects.
  The TTM_SHRINK_WATERMARK reason is going to still be handled using the
  existing shmem copy, and will be used by pool types that don't lend
  themselves well to shinking (dma_alloc pool) and when drivers explicitly
  requests swapout.
  The TTM_SHRINK_SWAP and TTM_SHRINK_PURGE reasons originate from a
  shrinker and is to be handled by a new driver callback, bo_shrink().
  Helpers for the new driver callback are provided in upcoming patches.

Cc: linux-graphics-maintainer@vmware.com
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/ttm/ttm_bo.c        | 38 ++++++++++++++++----
 drivers/gpu/drm/ttm/ttm_device.c    | 55 +++++++++++++++++++++--------
 drivers/gpu/drm/ttm/ttm_tt.c        | 23 ++++++------
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c |  3 +-
 include/drm/ttm/ttm_bo.h            |  4 +--
 include/drm/ttm/ttm_device.h        | 36 +++++++++++++++++--
 include/drm/ttm/ttm_tt.h            | 17 +++++++--
 7 files changed, 136 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 882c2fa346f3..e5c0970564c0 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -1114,13 +1114,29 @@ int ttm_bo_wait_ctx(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx)
 }
 EXPORT_SYMBOL(ttm_bo_wait_ctx);
 
-int ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
-		   gfp_t gfp_flags)
+/**
+ * ttm_bo_swapout() - Swap out or purge a buffer object
+ * @bo: The buffer object.
+ * @ctx: The ttm operation context.
+ * @reason: The swapout reason.
+ *
+ * Try to swap out or purge the contents of a system memory backed buffer
+ * object. The function needs to be called with the device's LRU lock held.
+ *
+ * Return: -EBUSY if the bo lock could not be grabbed or the object was
+ * otherwise busy. Otherwise the number of pages swapped out or negative
+ * error code on error. Iff the function didn't return -EBUSY, the
+ * LRU lock was dropped, and LRU traversal needs to restart.
+ */
+long ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
+		    enum ttm_shrink_reason reason)
 {
 	struct ttm_place place;
 	bool locked;
 	long ret;
 
+	lockdep_assert_held(&bo->bdev->lru_lock);
+
 	/*
 	 * While the bo may already reside in SYSTEM placement, set
 	 * SYSTEM as new placement to cover also the move further below.
@@ -1142,8 +1158,12 @@ int ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
 	}
 
 	if (bo->deleted) {
+		long num_pages = bo->ttm->num_pages;
+
 		ret = ttm_bo_cleanup_refs(bo, false, false, locked);
 		ttm_bo_put(bo);
+		if (!ret)
+			return num_pages;
 		return ret == -EBUSY ? -ENOSPC : ret;
 	}
 
@@ -1184,13 +1204,17 @@ int ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
 	 * Swap out. Buffer will be swapped in again as soon as
 	 * anyone tries to access a ttm page.
 	 */
-	if (bo->bdev->funcs->swap_notify)
-		bo->bdev->funcs->swap_notify(bo);
+	if (bo->bdev->funcs->bo_shrink && reason != TTM_SHRINK_WATERMARK) {
+		ret = bo->bdev->funcs->bo_shrink(bo, ctx);
+	} else {
+		if (bo->bdev->funcs->swap_notify)
+			bo->bdev->funcs->swap_notify(bo);
+		ret = ttm_tt_swapout(bo->bdev, bo->ttm);
+		if (!ret)
+			ret = bo->ttm->num_pages;
+	}
 
-	if (ttm_tt_is_populated(bo->ttm))
-		ret = ttm_tt_swapout(bo->bdev, bo->ttm, gfp_flags);
 out:
-
 	/*
 	 * Unreserve without putting on LRU to avoid swapping out an
 	 * already swapped buffer.
diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
index ae2f19dc9f81..7eadea07027f 100644
--- a/drivers/gpu/drm/ttm/ttm_device.c
+++ b/drivers/gpu/drm/ttm/ttm_device.c
@@ -116,19 +116,28 @@ static int ttm_global_init(void)
 	return ret;
 }
 
-/*
- * A buffer object shrink method that tries to swap out the first
- * buffer object on the global::swap_lru list.
+/**
+ * ttm_global_swapout() - Select and swap out a system-memory-backed bo.
+ * @ctx: The operation context.
+ * @reason: The reason for swapout.
+ *
+ * Select, based on round-robin a TTM device and traverse the LRUs of
+ * that specific device until a suitable bo backed by system memory is found
+ * and swapped-out or purged.
+ *
+ * Return: Positive value or zero indicating the size in pages of the
+ * bo swapped out. Negative error code on error.
  */
-int ttm_global_swapout(struct ttm_operation_ctx *ctx, gfp_t gfp_flags)
+long ttm_global_swapout(struct ttm_operation_ctx *ctx,
+			enum ttm_shrink_reason reason)
 {
 	struct ttm_global *glob = &ttm_glob;
 	struct ttm_device *bdev;
-	int ret = 0;
+	long ret = 0;
 
 	mutex_lock(&ttm_global_mutex);
 	list_for_each_entry(bdev, &glob->device_list, device_list) {
-		ret = ttm_device_swapout(bdev, ctx, gfp_flags);
+		ret = ttm_device_swapout(bdev, ctx, reason);
 		if (ret > 0) {
 			list_move_tail(&bdev->device_list, &glob->device_list);
 			break;
@@ -139,14 +148,29 @@ int ttm_global_swapout(struct ttm_operation_ctx *ctx, gfp_t gfp_flags)
 }
 EXPORT_SYMBOL(ttm_global_swapout);
 
-int ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
-		       gfp_t gfp_flags)
+/**
+ * ttm_device_swapout() - Select and swap out a system-memory-backed bo.
+ * @bdev: The device whos bos are considered for swapout.
+ * @ctx: The operation context.
+ * @reason: The reason for swapout.
+ *
+ * Traverse the LRUs of a specific device until a suitable bo backed by
+ * system memory is found and swapped-out or purged.
+ *
+ * Return: Positive value or zero indicating the size in pages of the
+ * bo swapped out. Negative error code on error.
+ */
+long ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
+			enum ttm_shrink_reason reason)
 {
 	struct ttm_resource_cursor cursor;
 	struct ttm_resource_manager *man;
 	struct ttm_resource *res;
 	unsigned i;
-	int ret;
+	long ret;
+
+	if (reason != TTM_SHRINK_WATERMARK && !bdev->funcs->bo_shrink)
+		return 0;
 
 	spin_lock(&bdev->lru_lock);
 	for (i = TTM_PL_SYSTEM; i < TTM_NUM_MEM_TYPES; ++i) {
@@ -156,16 +180,19 @@ int ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
 
 		ttm_resource_manager_for_each_res(man, &cursor, res) {
 			struct ttm_buffer_object *bo = res->bo;
-			uint32_t num_pages;
+			struct ttm_tt *tt;
 
 			if (!bo || bo->resource != res)
 				continue;
 
-			num_pages = PFN_UP(bo->base.size);
-			ret = ttm_bo_swapout(bo, ctx, gfp_flags);
+			tt = bo->ttm;
+			if (!tt || (reason == TTM_SHRINK_PURGE &&
+				    !ttm_tt_purgeable(tt)))
+				continue;
+			ret = ttm_bo_swapout(bo, ctx, reason);
 			/* ttm_bo_swapout has dropped the lru_lock */
-			if (!ret)
-				return num_pages;
+			if (ret >= 0)
+				return ret;
 			if (ret != -EBUSY)
 				return ret;
 		}
diff --git a/drivers/gpu/drm/ttm/ttm_tt.c b/drivers/gpu/drm/ttm/ttm_tt.c
index ab725d9d14a6..a68c14de0161 100644
--- a/drivers/gpu/drm/ttm/ttm_tt.c
+++ b/drivers/gpu/drm/ttm/ttm_tt.c
@@ -239,22 +239,21 @@ int ttm_tt_swapin(struct ttm_tt *ttm)
 
 /**
  * ttm_tt_swapout - swap out tt object
- *
  * @bdev: TTM device structure.
  * @ttm: The struct ttm_tt.
- * @gfp_flags: Flags to use for memory allocation.
  *
- * Swapout a TT object to a shmem_file, return number of pages swapped out or
- * negative error code.
+ * Swapout a TT object to a shmem_file.
+ *
+ * Return: number of pages swapped out or negative error code on error.
  */
-int ttm_tt_swapout(struct ttm_device *bdev, struct ttm_tt *ttm,
-		   gfp_t gfp_flags)
+int ttm_tt_swapout(struct ttm_device *bdev, struct ttm_tt *ttm)
 {
 	loff_t size = (loff_t)ttm->num_pages << PAGE_SHIFT;
 	struct address_space *swap_space;
 	struct file *swap_storage;
 	struct page *from_page;
 	struct page *to_page;
+	gfp_t gfp_flags;
 	int i, ret;
 
 	swap_storage = shmem_file_setup("ttm swap", size, 0);
@@ -264,7 +263,7 @@ int ttm_tt_swapout(struct ttm_device *bdev, struct ttm_tt *ttm,
 	}
 
 	swap_space = swap_storage->f_mapping;
-	gfp_flags &= mapping_gfp_mask(swap_space);
+	gfp_flags = GFP_KERNEL & mapping_gfp_mask(swap_space);
 
 	for (i = 0; i < ttm->num_pages; ++i) {
 		from_page = ttm->pages[i];
@@ -315,12 +314,14 @@ int ttm_tt_populate(struct ttm_device *bdev,
 	while (atomic_long_read(&ttm_pages_allocated) > ttm_pages_limit ||
 	       atomic_long_read(&ttm_dma32_pages_allocated) >
 	       ttm_dma32_pages_limit) {
+		long r = ttm_global_swapout(ctx, TTM_SHRINK_WATERMARK);
 
-		ret = ttm_global_swapout(ctx, GFP_KERNEL);
-		if (ret == 0)
+		if (!r)
 			break;
-		if (ret < 0)
+		if (r < 0) {
+			ret = r;
 			goto error;
+		}
 	}
 
 	if (bdev->funcs->ttm_tt_populate)
@@ -379,7 +380,7 @@ static int ttm_tt_debugfs_shrink_show(struct seq_file *m, void *data)
 {
 	struct ttm_operation_ctx ctx = { false, false };
 
-	seq_printf(m, "%d\n", ttm_global_swapout(&ctx, GFP_KERNEL));
+	seq_printf(m, "%ld\n", ttm_global_swapout(&ctx, TTM_SHRINK_SWAP));
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(ttm_tt_debugfs_shrink);
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
index 2588615a2a38..292c5199d2cc 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
@@ -1514,7 +1514,8 @@ static int vmw_pm_freeze(struct device *kdev)
 	vmw_execbuf_release_pinned_bo(dev_priv);
 	vmw_resource_evict_all(dev_priv);
 	vmw_release_device_early(dev_priv);
-	while (ttm_device_swapout(&dev_priv->bdev, &ctx, GFP_KERNEL) > 0);
+	while (ttm_device_swapout(&dev_priv->bdev, &ctx, TTM_SHRINK_WATERMARK) > 0)
+		;
 	vmw_fifo_resource_dec(dev_priv);
 	if (atomic_read(&dev_priv->num_fifo_resources) != 0) {
 		DRM_ERROR("Can't hibernate while 3D resources are active.\n");
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index 8b113c384236..6b45e0b639e0 100644
--- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -375,8 +375,8 @@ void ttm_bo_kunmap(struct ttm_bo_kmap_obj *map);
 int ttm_bo_vmap(struct ttm_buffer_object *bo, struct iosys_map *map);
 void ttm_bo_vunmap(struct ttm_buffer_object *bo, struct iosys_map *map);
 int ttm_bo_mmap_obj(struct vm_area_struct *vma, struct ttm_buffer_object *bo);
-int ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
-		   gfp_t gfp_flags);
+long ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
+		    enum ttm_shrink_reason reason);
 void ttm_bo_pin(struct ttm_buffer_object *bo);
 void ttm_bo_unpin(struct ttm_buffer_object *bo);
 int ttm_mem_evict_first(struct ttm_device *bdev,
diff --git a/include/drm/ttm/ttm_device.h b/include/drm/ttm/ttm_device.h
index 4f3e81eac6f3..6bd2abf712ab 100644
--- a/include/drm/ttm/ttm_device.h
+++ b/include/drm/ttm/ttm_device.h
@@ -35,6 +35,21 @@ struct ttm_placement;
 struct ttm_buffer_object;
 struct ttm_operation_ctx;
 
+/**
+ * enum ttm_shrink_reason - Reason for shrinking system memory
+ * @TTM_SHRINK_WATERMARK - A watermark limit was reached. Not from reclaim.
+ * @TTM_SHRINK_PURGE - A request for shrinking only purged objects.
+ * @TTM_SHRINK_SWAP - A request for shrinking any object.
+ *
+ * This enum is intended for the buffer object- and shrink method selection
+ * algorithms. It's not intended to leak to or be used by TTM drivers.
+ */
+enum ttm_shrink_reason {
+	TTM_SHRINK_WATERMARK,
+	TTM_SHRINK_PURGE,
+	TTM_SHRINK_SWAP,
+};
+
 /**
  * struct ttm_global - Buffer object driver global data.
  */
@@ -207,6 +222,19 @@ struct ttm_device_funcs {
 	 * adding fences that may force a delayed delete
 	 */
 	void (*release_notify)(struct ttm_buffer_object *bo);
+
+	/**
+	 * Shrink the bo's system pages, Either by swapping or by purging.
+	 * @bo: Bo the system pages of which are to be shrunken.
+	 * @ctx: Operation ctx. In particular the driver callback should
+	 *       adhere to the no_wait_gpu and interruptible fields.
+	 *
+	 * This is also notifying the driver that the bo is about to be
+	 * shrunken and the driver should take care to unbind any GPU bindings
+	 * and to note that the content is purged if @bo->ttm is purgeable.
+	 */
+	long (*bo_shrink)(struct ttm_buffer_object *bo,
+			  struct ttm_operation_ctx *ctx);
 };
 
 /**
@@ -268,9 +296,11 @@ struct ttm_device {
 	struct workqueue_struct *wq;
 };
 
-int ttm_global_swapout(struct ttm_operation_ctx *ctx, gfp_t gfp_flags);
-int ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
-		       gfp_t gfp_flags);
+long ttm_global_swapout(struct ttm_operation_ctx *ctx,
+			enum ttm_shrink_reason reason);
+
+long ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
+			enum ttm_shrink_reason reason);
 
 static inline struct ttm_resource_manager *
 ttm_manager_type(struct ttm_device *bdev, int mem_type)
diff --git a/include/drm/ttm/ttm_tt.h b/include/drm/ttm/ttm_tt.h
index cc54be1912e1..627168eba8f6 100644
--- a/include/drm/ttm/ttm_tt.h
+++ b/include/drm/ttm/ttm_tt.h
@@ -87,6 +87,7 @@ struct ttm_tt {
 #define TTM_TT_FLAG_ZERO_ALLOC		BIT(1)
 #define TTM_TT_FLAG_EXTERNAL		BIT(2)
 #define TTM_TT_FLAG_EXTERNAL_MAPPABLE	BIT(3)
+#define TTM_TT_FLAG_DONTNEED		BIT(4)
 
 #define TTM_TT_FLAG_PRIV_POPULATED	BIT(31)
 	uint32_t page_flags;
@@ -180,8 +181,8 @@ void ttm_tt_destroy(struct ttm_device *bdev, struct ttm_tt *ttm);
  * Swap in a previously swap out ttm_tt.
  */
 int ttm_tt_swapin(struct ttm_tt *ttm);
-int ttm_tt_swapout(struct ttm_device *bdev, struct ttm_tt *ttm,
-		   gfp_t gfp_flags);
+
+int ttm_tt_swapout(struct ttm_device *bdev, struct ttm_tt *ttm);
 
 /**
  * ttm_tt_populate - allocate pages for a ttm
@@ -223,6 +224,18 @@ void ttm_tt_mgr_init(unsigned long num_pages, unsigned long num_dma32_pages);
 struct ttm_kmap_iter *ttm_kmap_iter_tt_init(struct ttm_kmap_iter_tt *iter_tt,
 					    struct ttm_tt *tt);
 
+/**
+ * ttm_tt_purgeable() - Whether a struct ttm_tt's contents is purgeable
+ * @tt: The struct ttm_tt to consider.
+ *
+ * Return: Whether the contents is purgeable in the sence that the owner
+ * doesn't mind losing it as long as it gets notified.
+ */
+static inline bool ttm_tt_purgeable(struct ttm_tt *tt)
+{
+	return tt->page_flags & TTM_TT_FLAG_DONTNEED;
+}
+
 #if IS_ENABLED(CONFIG_AGP)
 #include <linux/agp_backend.h>
 
-- 
2.34.1

