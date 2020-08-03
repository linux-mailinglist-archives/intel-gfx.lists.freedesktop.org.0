Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E86023A179
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 11:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EFF6E222;
	Mon,  3 Aug 2020 09:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E266E222
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 09:05:16 +0000 (UTC)
IronPort-SDR: 3vOc2wEbwBKY1Evq1efzJMQsHun8ix+SPj2ic/5TclD3benvCSeV2Z2ontQqf8qGMt+5ellVEB
 KUwPhNmDxL/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9701"; a="213602695"
X-IronPort-AV: E=Sophos;i="5.75,429,1589266800"; d="scan'208";a="213602695"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 02:05:16 -0700
IronPort-SDR: SJLNhGj1qN4egrQ502iTenknuX3H9+yp0g6VqmrLmZRriLZ+2xw8dtQ9UfQYxt+Tv26f9fNTbe
 DbkhuCppniXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,429,1589266800"; d="scan'208";a="273868587"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.62.231])
 by fmsmga007.fm.intel.com with ESMTP; 03 Aug 2020 02:05:14 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Aug 2020 12:05:04 +0300
Message-Id: <20200803090506.260325-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200803090506.260325-1-lionel.g.landwerlin@intel.com>
References: <20200803090506.260325-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: introduce a mechanism to extend
 execbuf2
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We're planning to use this for a couple of new feature where we need
to provide additional parameters to execbuf.

v2: Check for invalid flags in execbuffer2 (Lionel)

v3: Rename I915_EXEC_EXT -> I915_EXEC_USE_EXTENSIONS (Chris)

v4: Rebase
    Move array fence parsing in i915_gem_do_execbuffer()

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> (v1)
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 131 +++++++++++-------
 include/uapi/drm/i915_drm.h                   |  26 +++-
 2 files changed, 103 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 07cb2dd0f795..ed8d1c2517f6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -26,6 +26,7 @@
 #include "i915_gem_ioctls.h"
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
+#include "i915_user_extensions.h"
 
 struct eb_vma {
 	struct i915_vma *vma;
@@ -281,6 +282,13 @@ struct i915_execbuffer {
 	int lut_size;
 	struct hlist_head *buckets; /** ht for relocation handles */
 	struct eb_vma_array *array;
+
+	struct i915_eb_fence {
+		struct drm_syncobj *syncobj; /* Use with ptr_mask_bits() */
+	} *fences;
+	u32 n_fences;
+
+	u64 extension_flags; /** Available extensions parameters */
 };
 
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
@@ -1622,7 +1630,8 @@ static int i915_gem_check_execbuffer(struct drm_i915_gem_execbuffer2 *exec)
 		return -EINVAL;
 
 	/* Kernel clipping was a DRI1 misfeature */
-	if (!(exec->flags & I915_EXEC_FENCE_ARRAY)) {
+	if (!(exec->flags & (I915_EXEC_FENCE_ARRAY |
+			     I915_EXEC_USE_EXTENSIONS))) {
 		if (exec->num_cliprects || exec->cliprects_ptr)
 			return -EINVAL;
 	}
@@ -2189,41 +2198,41 @@ eb_pin_engine(struct i915_execbuffer *eb,
 }
 
 static void
-__free_fence_array(struct drm_syncobj **fences, unsigned int n)
+__free_fence_array(struct i915_eb_fence *fences, unsigned int n)
 {
 	while (n--)
-		drm_syncobj_put(ptr_mask_bits(fences[n], 2));
+		drm_syncobj_put(ptr_mask_bits(fences[n].syncobj, 2));
 	kvfree(fences);
 }
 
-static struct drm_syncobj **
+static int
 get_fence_array(struct drm_i915_gem_execbuffer2 *args,
-		struct drm_file *file)
+		struct i915_execbuffer *eb)
 {
 	const unsigned long nfences = args->num_cliprects;
 	struct drm_i915_gem_exec_fence __user *user;
-	struct drm_syncobj **fences;
+	struct i915_eb_fence *fences;
 	unsigned long n;
 	int err;
 
 	if (!(args->flags & I915_EXEC_FENCE_ARRAY))
-		return NULL;
+		return 0;
 
 	/* Check multiplication overflow for access_ok() and kvmalloc_array() */
 	BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
 	if (nfences > min_t(unsigned long,
 			    ULONG_MAX / sizeof(*user),
 			    SIZE_MAX / sizeof(*fences)))
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 
 	user = u64_to_user_ptr(args->cliprects_ptr);
 	if (!access_ok(user, nfences * sizeof(*user)))
-		return ERR_PTR(-EFAULT);
+		return -EFAULT;
 
 	fences = kvmalloc_array(nfences, sizeof(*fences),
 				__GFP_NOWARN | GFP_KERNEL);
 	if (!fences)
-		return ERR_PTR(-ENOMEM);
+		return -ENOMEM;
 
 	for (n = 0; n < nfences; n++) {
 		struct drm_i915_gem_exec_fence fence;
@@ -2239,7 +2248,7 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
 			goto err;
 		}
 
-		syncobj = drm_syncobj_find(file, fence.handle);
+		syncobj = drm_syncobj_find(eb->file, fence.handle);
 		if (!syncobj) {
 			DRM_DEBUG("Invalid syncobj handle provided\n");
 			err = -ENOENT;
@@ -2249,38 +2258,31 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
 		BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
 			     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
 
-		fences[n] = ptr_pack_bits(syncobj, fence.flags, 2);
+		fences[n].syncobj = ptr_pack_bits(syncobj, fence.flags, 2);
 	}
 
-	return fences;
+	eb->fences = fences;
+	eb->n_fences = nfences;
+
+	return 0;
 
 err:
 	__free_fence_array(fences, n);
-	return ERR_PTR(err);
-}
-
-static void
-put_fence_array(struct drm_i915_gem_execbuffer2 *args,
-		struct drm_syncobj **fences)
-{
-	if (fences)
-		__free_fence_array(fences, args->num_cliprects);
+	return err;
 }
 
 static int
-await_fence_array(struct i915_execbuffer *eb,
-		  struct drm_syncobj **fences)
+await_fence_array(struct i915_execbuffer *eb)
 {
-	const unsigned int nfences = eb->args->num_cliprects;
 	unsigned int n;
 	int err;
 
-	for (n = 0; n < nfences; n++) {
+	for (n = 0; n < eb->n_fences; n++) {
 		struct drm_syncobj *syncobj;
 		struct dma_fence *fence;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(eb->fences[n].syncobj, &flags, 2);
 		if (!(flags & I915_EXEC_FENCE_WAIT))
 			continue;
 
@@ -2298,18 +2300,16 @@ await_fence_array(struct i915_execbuffer *eb,
 }
 
 static void
-signal_fence_array(struct i915_execbuffer *eb,
-		   struct drm_syncobj **fences)
+signal_fence_array(struct i915_execbuffer *eb)
 {
-	const unsigned int nfences = eb->args->num_cliprects;
 	struct dma_fence * const fence = &eb->request->fence;
 	unsigned int n;
 
-	for (n = 0; n < nfences; n++) {
+	for (n = 0; n < eb->n_fences; n++) {
 		struct drm_syncobj *syncobj;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(eb->fences[n].syncobj, &flags, 2);
 		if (!(flags & I915_EXEC_FENCE_SIGNAL))
 			continue;
 
@@ -2358,12 +2358,38 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	mutex_unlock(&tl->mutex);
 }
 
+static const i915_user_extension_fn execbuf_extensions[] = {
+};
+
+static int
+parse_execbuf2_extensions(struct drm_i915_gem_execbuffer2 *args,
+			  struct i915_execbuffer *eb)
+{
+	eb->extension_flags = 0;
+
+	if (!(args->flags & I915_EXEC_USE_EXTENSIONS))
+		return 0;
+
+	/* The execbuf2 extension mechanism reuses cliprects_ptr. So we cannot
+	 * have another flag also using it at the same time.
+	 */
+	if (eb->args->flags & I915_EXEC_FENCE_ARRAY)
+		return -EINVAL;
+
+	if (args->num_cliprects != 0)
+		return -EINVAL;
+
+	return i915_user_extensions(u64_to_user_ptr(args->cliprects_ptr),
+				    execbuf_extensions,
+				    ARRAY_SIZE(execbuf_extensions),
+				    eb);
+}
+
 static int
 i915_gem_do_execbuffer(struct drm_device *dev,
 		       struct drm_file *file,
 		       struct drm_i915_gem_execbuffer2 *args,
-		       struct drm_i915_gem_exec_object2 *exec,
-		       struct drm_syncobj **fences)
+		       struct drm_i915_gem_exec_object2 *exec)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct i915_execbuffer eb;
@@ -2393,6 +2419,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.batch_len = args->batch_len;
 	eb.trampoline = NULL;
 
+	eb.fences = NULL;
+	eb.n_fences = 0;
+
 	eb.batch_flags = 0;
 	if (args->flags & I915_EXEC_SECURE) {
 		if (INTEL_GEN(i915) >= 11)
@@ -2429,10 +2458,18 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		}
 	}
 
-	err = eb_create(&eb);
+	err = parse_execbuf2_extensions(args, &eb);
 	if (err)
 		goto err_out_fence;
 
+	err = get_fence_array(args, &eb);
+	if (err)
+		goto err_arr_fence;
+
+	err = eb_create(&eb);
+	if (err)
+		goto err_arr_fence;
+
 	GEM_BUG_ON(!eb.lut_size);
 
 	err = eb_select_context(&eb);
@@ -2527,8 +2564,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			goto err_request;
 	}
 
-	if (fences) {
-		err = await_fence_array(&eb, fences);
+	if (eb.n_fences) {
+		err = await_fence_array(&eb);
 		if (err)
 			goto err_request;
 	}
@@ -2558,8 +2595,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	i915_request_get(eb.request);
 	eb_request_add(&eb);
 
-	if (fences)
-		signal_fence_array(&eb, fences);
+	if (eb.n_fences)
+		signal_fence_array(&eb);
 
 	if (out_fence) {
 		if (err == 0) {
@@ -2587,6 +2624,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	i915_gem_context_put(eb.gem_context);
 err_destroy:
 	eb_destroy(&eb);
+err_arr_fence:
+	__free_fence_array(eb.fences, eb.n_fences);
 err_out_fence:
 	if (out_fence_fd != -1)
 		put_unused_fd(out_fence_fd);
@@ -2686,7 +2725,7 @@ i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
 			exec2_list[i].flags = 0;
 	}
 
-	err = i915_gem_do_execbuffer(dev, file, &exec2, exec2_list, NULL);
+	err = i915_gem_do_execbuffer(dev, file, &exec2, exec2_list);
 	if (exec2.flags & __EXEC_HAS_RELOC) {
 		struct drm_i915_gem_exec_object __user *user_exec_list =
 			u64_to_user_ptr(args->buffers_ptr);
@@ -2718,7 +2757,6 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_execbuffer2 *args = data;
 	struct drm_i915_gem_exec_object2 *exec2_list;
-	struct drm_syncobj **fences = NULL;
 	const size_t count = args->buffer_count;
 	int err;
 
@@ -2746,15 +2784,7 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 		return -EFAULT;
 	}
 
-	if (args->flags & I915_EXEC_FENCE_ARRAY) {
-		fences = get_fence_array(args, file);
-		if (IS_ERR(fences)) {
-			kvfree(exec2_list);
-			return PTR_ERR(fences);
-		}
-	}
-
-	err = i915_gem_do_execbuffer(dev, file, args, exec2_list, fences);
+	err = i915_gem_do_execbuffer(dev, file, args, exec2_list);
 
 	/*
 	 * Now that we have begun execution of the batchbuffer, we ignore
@@ -2795,7 +2825,6 @@ end:;
 	}
 
 	args->flags &= ~__I915_EXEC_UNKNOWN_FLAGS;
-	put_fence_array(args, fences);
 	kvfree(exec2_list);
 	return err;
 }
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 00546062e023..0efded7b15f0 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1046,6 +1046,10 @@ struct drm_i915_gem_exec_fence {
 	__u32 flags;
 };
 
+enum drm_i915_gem_execbuffer_ext {
+	DRM_I915_GEM_EXECBUFFER_EXT_MAX /* non-ABI */
+};
+
 struct drm_i915_gem_execbuffer2 {
 	/**
 	 * List of gem_exec_object2 structs
@@ -1062,8 +1066,15 @@ struct drm_i915_gem_execbuffer2 {
 	__u32 num_cliprects;
 	/**
 	 * This is a struct drm_clip_rect *cliprects if I915_EXEC_FENCE_ARRAY
-	 * is not set.  If I915_EXEC_FENCE_ARRAY is set, then this is a
-	 * struct drm_i915_gem_exec_fence *fences.
+	 * & I915_EXEC_USE_EXTENSIONS are not set.
+	 *
+	 * If I915_EXEC_FENCE_ARRAY is set, then this is a pointer to an array
+	 * of struct drm_i915_gem_exec_fence and num_cliprects is the length
+	 * of the array.
+	 *
+	 * If I915_EXEC_USE_EXTENSIONS is set, then this is a pointer to a
+	 * single struct drm_i915_gem_base_execbuffer_ext and num_cliprects is
+	 * 0.
 	 */
 	__u64 cliprects_ptr;
 #define I915_EXEC_RING_MASK              (0x3f)
@@ -1181,7 +1192,16 @@ struct drm_i915_gem_execbuffer2 {
  */
 #define I915_EXEC_FENCE_SUBMIT		(1 << 20)
 
-#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_SUBMIT << 1))
+/*
+ * Setting I915_EXEC_USE_EXTENSIONS implies that
+ * drm_i915_gem_execbuffer2.cliprects_ptr is treated as a pointer to an linked
+ * list of i915_user_extension. Each i915_user_extension node is the base of a
+ * larger structure. The list of supported structures are listed in the
+ * drm_i915_gem_execbuffer_ext enum.
+ */
+#define I915_EXEC_USE_EXTENSIONS	(1 << 21)
+
+#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_USE_EXTENSIONS<<1))
 
 #define I915_EXEC_CONTEXT_ID_MASK	(0xffffffff)
 #define i915_execbuffer2_set_context_id(eb2, context) \
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
