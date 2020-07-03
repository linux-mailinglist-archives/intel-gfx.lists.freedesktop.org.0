Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BAA2139EE
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 14:22:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388126EB67;
	Fri,  3 Jul 2020 12:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4BA66E398
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 12:22:26 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jul 2020 14:22:05 +0200
Message-Id: <20200703122221.591656-8-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/23] Revert "drm/i915/gem: Split eb_vma into
 its own allocation"
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

This reverts commit 0f1dd02295f35dcdcbaafcbcbbec0753884ab974.
This conflicts with the ww mutex handling, which needs to drop
the references after gpu submission anyway, because otherwise we
may risk unlocking a BO after first freeing it.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 124 +++++++-----------
 1 file changed, 51 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 64b75f71a6bb..59ac3f24cc16 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -40,11 +40,6 @@ struct eb_vma {
 	u32 handle;
 };
 
-struct eb_vma_array {
-	struct kref kref;
-	struct eb_vma vma[];
-};
-
 enum {
 	FORCE_CPU_RELOC = 1,
 	FORCE_GTT_RELOC,
@@ -57,6 +52,7 @@ enum {
 #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
 #define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
 #define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
+#define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
 
 #define __EXEC_HAS_RELOC	BIT(31)
 #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
@@ -287,7 +283,6 @@ struct i915_execbuffer {
 	 */
 	int lut_size;
 	struct hlist_head *buckets; /** ht for relocation handles */
-	struct eb_vma_array *array;
 };
 
 static int eb_parse(struct i915_execbuffer *eb);
@@ -299,62 +294,8 @@ static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 		 eb->args->batch_len);
 }
 
-static struct eb_vma_array *eb_vma_array_create(unsigned int count)
-{
-	struct eb_vma_array *arr;
-
-	arr = kvmalloc(struct_size(arr, vma, count), GFP_KERNEL | __GFP_NOWARN);
-	if (!arr)
-		return NULL;
-
-	kref_init(&arr->kref);
-	arr->vma[0].vma = NULL;
-
-	return arr;
-}
-
-static inline void eb_unreserve_vma(struct eb_vma *ev)
-{
-	struct i915_vma *vma = ev->vma;
-
-	if (unlikely(ev->flags & __EXEC_OBJECT_HAS_FENCE))
-		__i915_vma_unpin_fence(vma);
-
-	if (ev->flags & __EXEC_OBJECT_HAS_PIN)
-		__i915_vma_unpin(vma);
-
-	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN |
-		       __EXEC_OBJECT_HAS_FENCE);
-}
-
-static void eb_vma_array_destroy(struct kref *kref)
-{
-	struct eb_vma_array *arr = container_of(kref, typeof(*arr), kref);
-	struct eb_vma *ev = arr->vma;
-
-	while (ev->vma) {
-		eb_unreserve_vma(ev);
-		i915_vma_put(ev->vma);
-		ev++;
-	}
-
-	kvfree(arr);
-}
-
-static void eb_vma_array_put(struct eb_vma_array *arr)
-{
-	kref_put(&arr->kref, eb_vma_array_destroy);
-}
-
 static int eb_create(struct i915_execbuffer *eb)
 {
-	/* Allocate an extra slot for use by the command parser + sentinel */
-	eb->array = eb_vma_array_create(eb->buffer_count + 2);
-	if (!eb->array)
-		return -ENOMEM;
-
-	eb->vma = eb->array->vma;
-
 	if (!(eb->args->flags & I915_EXEC_HANDLE_LUT)) {
 		unsigned int size = 1 + ilog2(eb->buffer_count);
 
@@ -388,10 +329,8 @@ static int eb_create(struct i915_execbuffer *eb)
 				break;
 		} while (--size);
 
-		if (unlikely(!size)) {
-			eb_vma_array_put(eb->array);
+		if (unlikely(!size))
 			return -ENOMEM;
-		}
 
 		eb->lut_size = size;
 	} else {
@@ -502,6 +441,26 @@ eb_pin_vma(struct i915_execbuffer *eb,
 	return !eb_vma_misplaced(entry, vma, ev->flags);
 }
 
+static inline void __eb_unreserve_vma(struct i915_vma *vma, unsigned int flags)
+{
+	GEM_BUG_ON(!(flags & __EXEC_OBJECT_HAS_PIN));
+
+	if (unlikely(flags & __EXEC_OBJECT_HAS_FENCE))
+		__i915_vma_unpin_fence(vma);
+
+	__i915_vma_unpin(vma);
+}
+
+static inline void
+eb_unreserve_vma(struct eb_vma *ev)
+{
+	if (!(ev->flags & __EXEC_OBJECT_HAS_PIN))
+		return;
+
+	__eb_unreserve_vma(ev->vma, ev->flags);
+	ev->flags &= ~__EXEC_OBJECT_RESERVED;
+}
+
 static int
 eb_validate_vma(struct i915_execbuffer *eb,
 		struct drm_i915_gem_exec_object2 *entry,
@@ -937,13 +896,31 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 	}
 }
 
+static void eb_release_vmas(const struct i915_execbuffer *eb)
+{
+	const unsigned int count = eb->buffer_count;
+	unsigned int i;
+
+	for (i = 0; i < count; i++) {
+		struct eb_vma *ev = &eb->vma[i];
+		struct i915_vma *vma = ev->vma;
+
+		if (!vma)
+			break;
+
+		eb->vma[i].vma = NULL;
+
+		if (ev->flags & __EXEC_OBJECT_HAS_PIN)
+			__eb_unreserve_vma(vma, ev->flags);
+
+		i915_vma_put(vma);
+	}
+}
+
 static void eb_destroy(const struct i915_execbuffer *eb)
 {
 	GEM_BUG_ON(eb->reloc_cache.rq);
 
-	if (eb->array)
-		eb_vma_array_put(eb->array);
-
 	if (eb->lut_size > 0)
 		kfree(eb->buckets);
 }
@@ -2035,12 +2012,9 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 			err = i915_vma_move_to_active(vma, eb->request, flags);
 
 		i915_vma_unlock(vma);
-		eb_unreserve_vma(ev);
 	}
 	ww_acquire_fini(&acquire);
 
-	eb_vma_array_put(fetch_and_zero(&eb->array));
-
 	if (unlikely(err))
 		goto err_skip;
 
@@ -2336,7 +2310,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
 	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
 	eb->batch = &eb->vma[eb->buffer_count++];
-	eb->vma[eb->buffer_count].vma = NULL;
 
 	eb->trampoline = trampoline;
 	eb->batch_start_offset = 0;
@@ -2834,6 +2807,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		args->flags |= __EXEC_HAS_RELOC;
 
 	eb.exec = exec;
+	eb.vma = (struct eb_vma *)(exec + args->buffer_count + 1);
+	eb.vma[0].vma = NULL;
 
 	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
 	reloc_cache_init(&eb.reloc_cache, eb.i915);
@@ -3010,6 +2985,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (batch->private)
 		intel_gt_buffer_pool_put(batch->private);
 err_vma:
+	if (eb.exec)
+		eb_release_vmas(&eb);
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
 	eb_unpin_engine(&eb);
@@ -3027,7 +3004,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 static size_t eb_element_size(void)
 {
-	return sizeof(struct drm_i915_gem_exec_object2);
+	return sizeof(struct drm_i915_gem_exec_object2) + sizeof(struct eb_vma);
 }
 
 static bool check_buffer_count(size_t count)
@@ -3083,7 +3060,7 @@ i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
 	/* Copy in the exec list from userland */
 	exec_list = kvmalloc_array(count, sizeof(*exec_list),
 				   __GFP_NOWARN | GFP_KERNEL);
-	exec2_list = kvmalloc_array(count, eb_element_size(),
+	exec2_list = kvmalloc_array(count + 1, eb_element_size(),
 				    __GFP_NOWARN | GFP_KERNEL);
 	if (exec_list == NULL || exec2_list == NULL) {
 		drm_dbg(&i915->drm,
@@ -3161,7 +3138,8 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 	if (err)
 		return err;
 
-	exec2_list = kvmalloc_array(count, eb_element_size(),
+	/* Allocate an extra slot for use by the command parser */
+	exec2_list = kvmalloc_array(count + 1, eb_element_size(),
 				    __GFP_NOWARN | GFP_KERNEL);
 	if (exec2_list == NULL) {
 		drm_dbg(&i915->drm, "Failed to allocate exec list for %zd buffers\n",
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
