Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA41119F9E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 00:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5B16EA22;
	Tue, 10 Dec 2019 23:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288926EA20
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 23:42:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 15:35:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="238341609"
Received: from ahirstiu-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.49.210])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2019 15:35:06 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 01:34:52 +0200
Message-Id: <20191210233453.183910-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
References: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 2/3] drm/i915: add syncobj timeline support
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

Introduces a new parameters to execbuf so that we can specify syncobj
handles as well as timeline points.

v2: Reuse i915_user_extension_fn

v3: Check that the chained extension is only present once (Chris)

v4: Check that dma_fence_chain_find_seqno returns a non NULL fence (Lionel)

v5: Use BIT_ULL (Chris)

v6: Fix issue with already signaled timeline points,
    dma_fence_chain_find_seqno() setting fence to NULL (Chris)

v7: Report ENOENT with invalid syncobj handle (Lionel)

v8: Check for out of order timeline point insertion (Chris)

v9: After explanations on
    https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html
    drop the ordering check from v8 (Lionel)

v10: Set first extension enum item to 1 (Jason)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 307 ++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   1 +
 include/uapi/drm/i915_drm.h                   |  38 +++
 4 files changed, 292 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7ae7c88dffdb..72abd8cacef6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -215,6 +215,13 @@ enum {
  * the batchbuffer in trusted mode, otherwise the ioctl is rejected.
  */
 
+struct i915_eb_fences {
+	struct drm_syncobj *syncobj; /* Use with ptr_mask_bits() */
+	struct dma_fence *dma_fence;
+	u64 value;
+	struct dma_fence_chain *chain_fence;
+};
+
 struct i915_execbuffer {
 	struct drm_i915_private *i915; /** i915 backpointer */
 	struct drm_file *file; /** per-file lookup tables and limits */
@@ -276,6 +283,7 @@ struct i915_execbuffer {
 
 	struct {
 		u64 flags; /** Available extensions parameters */
+		struct drm_i915_gem_execbuffer_ext_timeline_fences timeline_fences;
 	} extensions;
 };
 
@@ -2338,67 +2346,217 @@ eb_pin_engine(struct i915_execbuffer *eb,
 }
 
 static void
-__free_fence_array(struct drm_syncobj **fences, unsigned int n)
+__free_fence_array(struct i915_eb_fences *fences, unsigned int n)
 {
-	while (n--)
-		drm_syncobj_put(ptr_mask_bits(fences[n], 2));
+	while (n--) {
+		drm_syncobj_put(ptr_mask_bits(fences[n].syncobj, 2));
+		dma_fence_put(fences[n].dma_fence);
+		kfree(fences[n].chain_fence);
+	}
 	kvfree(fences);
 }
 
-static struct drm_syncobj **
-get_fence_array(struct drm_i915_gem_execbuffer2 *args,
-		struct drm_file *file)
+static struct i915_eb_fences *
+get_timeline_fence_array(struct i915_execbuffer *eb, int *out_n_fences)
+{
+	struct drm_i915_gem_execbuffer_ext_timeline_fences *timeline_fences =
+		&eb->extensions.timeline_fences;
+	struct drm_i915_gem_exec_fence __user *user_fences;
+	struct i915_eb_fences *fences;
+	u64 __user *user_values;
+	u64 num_fences, num_user_fences = timeline_fences->fence_count;
+	unsigned long n;
+	int err;
+
+	/* Check multiplication overflow for access_ok() and kvmalloc_array() */
+	BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
+	if (num_user_fences > min_t(unsigned long,
+				    ULONG_MAX / sizeof(*user_fences),
+				    SIZE_MAX / sizeof(*fences)))
+		return ERR_PTR(-EINVAL);
+
+	user_fences = u64_to_user_ptr(timeline_fences->handles_ptr);
+	if (!access_ok(user_fences, num_user_fences * sizeof(*user_fences)))
+		return ERR_PTR(-EFAULT);
+
+	user_values = u64_to_user_ptr(timeline_fences->values_ptr);
+	if (!access_ok(user_values, num_user_fences * sizeof(*user_values)))
+		return ERR_PTR(-EFAULT);
+
+	fences = kvmalloc_array(num_user_fences, sizeof(*fences),
+				__GFP_NOWARN | GFP_KERNEL);
+	if (!fences)
+		return ERR_PTR(-ENOMEM);
+
+	BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
+		     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
+
+	for (n = 0, num_fences = 0; n < timeline_fences->fence_count; n++) {
+		struct drm_i915_gem_exec_fence user_fence;
+		struct drm_syncobj *syncobj;
+		struct dma_fence *fence = NULL;
+		u64 point;
+
+		if (__copy_from_user(&user_fence, user_fences++, sizeof(user_fence))) {
+			err = -EFAULT;
+			goto err;
+		}
+
+		if (user_fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
+			err = -EINVAL;
+			goto err;
+		}
+
+		if (__get_user(point, user_values++)) {
+			err = -EFAULT;
+			goto err;
+		}
+
+		syncobj = drm_syncobj_find(eb->file, user_fence.handle);
+		if (!syncobj) {
+			DRM_DEBUG("Invalid syncobj handle provided\n");
+			err = -ENOENT;
+			goto err;
+		}
+
+		if (user_fence.flags & I915_EXEC_FENCE_WAIT) {
+			fence = drm_syncobj_fence_get(syncobj);
+			if (!fence) {
+				DRM_DEBUG("Syncobj handle has no fence\n");
+				drm_syncobj_put(syncobj);
+				err = -EINVAL;
+				goto err;
+			}
+
+			err = dma_fence_chain_find_seqno(&fence, point);
+			if (err) {
+				DRM_DEBUG("Syncobj handle missing requested point %llu\n", point);
+				drm_syncobj_put(syncobj);
+				goto err;
+			}
+
+			/* A point might have been signaled already and
+			 * garbage collected from the timeline. In this case
+			 * just ignore the point and carry on.
+			 */
+			if (!fence) {
+				drm_syncobj_put(syncobj);
+				continue;
+			}
+		}
+
+		/*
+		 * For timeline syncobjs we need to preallocate chains for
+		 * later signaling.
+		 */
+		if (point != 0 && user_fence.flags & I915_EXEC_FENCE_SIGNAL) {
+			/*
+			 * Waiting and signaling the same point (when point !=
+			 * 0) would break the timeline.
+			 */
+			if (user_fence.flags & I915_EXEC_FENCE_WAIT) {
+				DRM_DEBUG("Tring to wait & signal the same timeline point.\n");
+				err = -EINVAL;
+				drm_syncobj_put(syncobj);
+				goto err;
+			}
+
+			fences[num_fences].chain_fence =
+				kmalloc(sizeof(*fences[num_fences].chain_fence),
+					GFP_KERNEL);
+			if (!fences[num_fences].chain_fence) {
+				drm_syncobj_put(syncobj);
+				err = -ENOMEM;
+				DRM_DEBUG("Unable to alloc chain_fence\n");
+				goto err;
+			}
+		} else {
+			fences[num_fences].chain_fence = NULL;
+		}
+
+		fences[num_fences].syncobj = ptr_pack_bits(syncobj, user_fence.flags, 2);
+		fences[num_fences].dma_fence = fence;
+		fences[num_fences].value = point;
+		num_fences++;
+	}
+
+	*out_n_fences = num_fences;
+
+	return fences;
+
+err:
+	__free_fence_array(fences, num_fences);
+	return ERR_PTR(err);
+}
+
+static struct i915_eb_fences *
+get_legacy_fence_array(struct i915_execbuffer *eb,
+		       int *out_n_fences)
 {
-	const unsigned long nfences = args->num_cliprects;
+	struct drm_i915_gem_execbuffer2 *args = eb->args;
 	struct drm_i915_gem_exec_fence __user *user;
-	struct drm_syncobj **fences;
+	struct i915_eb_fences *fences;
+	const u32 num_fences = args->num_cliprects;
 	unsigned long n;
 	int err;
 
-	if (!(args->flags & I915_EXEC_FENCE_ARRAY))
-		return NULL;
+	*out_n_fences = num_fences;
 
 	/* Check multiplication overflow for access_ok() and kvmalloc_array() */
 	BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
-	if (nfences > min_t(unsigned long,
-			    ULONG_MAX / sizeof(*user),
-			    SIZE_MAX / sizeof(*fences)))
+	if (*out_n_fences > min_t(unsigned long,
+				  ULONG_MAX / sizeof(*user),
+				  SIZE_MAX / sizeof(*fences)))
 		return ERR_PTR(-EINVAL);
 
 	user = u64_to_user_ptr(args->cliprects_ptr);
-	if (!access_ok(user, nfences * sizeof(*user)))
+	if (!access_ok(user, *out_n_fences * sizeof(*user)))
 		return ERR_PTR(-EFAULT);
 
-	fences = kvmalloc_array(nfences, sizeof(*fences),
+	fences = kvmalloc_array(*out_n_fences, sizeof(*fences),
 				__GFP_NOWARN | GFP_KERNEL);
 	if (!fences)
 		return ERR_PTR(-ENOMEM);
 
-	for (n = 0; n < nfences; n++) {
-		struct drm_i915_gem_exec_fence fence;
+	for (n = 0; n < *out_n_fences; n++) {
+		struct drm_i915_gem_exec_fence user_fence;
 		struct drm_syncobj *syncobj;
+		struct dma_fence *fence = NULL;
 
-		if (__copy_from_user(&fence, user++, sizeof(fence))) {
+		if (__copy_from_user(&user_fence, user++, sizeof(user_fence))) {
 			err = -EFAULT;
 			goto err;
 		}
 
-		if (fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
+		if (user_fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
 			err = -EINVAL;
 			goto err;
 		}
 
-		syncobj = drm_syncobj_find(file, fence.handle);
+		syncobj = drm_syncobj_find(eb->file, user_fence.handle);
 		if (!syncobj) {
 			DRM_DEBUG("Invalid syncobj handle provided\n");
 			err = -ENOENT;
 			goto err;
 		}
 
+		if (user_fence.flags & I915_EXEC_FENCE_WAIT) {
+			fence = drm_syncobj_fence_get(syncobj);
+			if (!fence) {
+				DRM_DEBUG("Syncobj handle has no fence\n");
+				drm_syncobj_put(syncobj);
+				err = -EINVAL;
+				goto err;
+			}
+		}
+
 		BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
 			     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
 
-		fences[n] = ptr_pack_bits(syncobj, fence.flags, 2);
+		fences[n].syncobj = ptr_pack_bits(syncobj, user_fence.flags, 2);
+		fences[n].dma_fence = fence;
+		fences[n].value = 0;
+		fences[n].chain_fence = NULL;
 	}
 
 	return fences;
@@ -2408,37 +2566,44 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
 	return ERR_PTR(err);
 }
 
+static struct i915_eb_fences *
+get_fence_array(struct i915_execbuffer *eb, int *out_n_fences)
+{
+	if (eb->args->flags & I915_EXEC_FENCE_ARRAY)
+		return get_legacy_fence_array(eb, out_n_fences);
+
+	if (eb->extensions.flags & BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES))
+		return get_timeline_fence_array(eb, out_n_fences);
+
+	*out_n_fences = 0;
+	return NULL;
+}
+
 static void
-put_fence_array(struct drm_i915_gem_execbuffer2 *args,
-		struct drm_syncobj **fences)
+put_fence_array(struct i915_eb_fences *fences, int nfences)
 {
 	if (fences)
-		__free_fence_array(fences, args->num_cliprects);
+		__free_fence_array(fences, nfences);
 }
 
 static int
 await_fence_array(struct i915_execbuffer *eb,
-		  struct drm_syncobj **fences)
+		  struct i915_eb_fences *fences,
+		  int nfences)
 {
-	const unsigned int nfences = eb->args->num_cliprects;
 	unsigned int n;
 	int err;
 
 	for (n = 0; n < nfences; n++) {
 		struct drm_syncobj *syncobj;
-		struct dma_fence *fence;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(fences[n].syncobj, &flags, 2);
 		if (!(flags & I915_EXEC_FENCE_WAIT))
 			continue;
 
-		fence = drm_syncobj_fence_get(syncobj);
-		if (!fence)
-			return -EINVAL;
-
-		err = i915_request_await_dma_fence(eb->request, fence);
-		dma_fence_put(fence);
+		err = i915_request_await_dma_fence(eb->request,
+						   fences[n].dma_fence);
 		if (err < 0)
 			return err;
 	}
@@ -2448,9 +2613,9 @@ await_fence_array(struct i915_execbuffer *eb,
 
 static void
 signal_fence_array(struct i915_execbuffer *eb,
-		   struct drm_syncobj **fences)
+		   struct i915_eb_fences *fences,
+		   int nfences)
 {
-	const unsigned int nfences = eb->args->num_cliprects;
 	struct dma_fence * const fence = &eb->request->fence;
 	unsigned int n;
 
@@ -2458,15 +2623,46 @@ signal_fence_array(struct i915_execbuffer *eb,
 		struct drm_syncobj *syncobj;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(fences[n].syncobj, &flags, 2);
 		if (!(flags & I915_EXEC_FENCE_SIGNAL))
 			continue;
 
-		drm_syncobj_replace_fence(syncobj, fence);
+		if (fences[n].chain_fence) {
+			drm_syncobj_add_point(syncobj, fences[n].chain_fence,
+					      fence, fences[n].value);
+			/*
+			 * The chain's ownership is transferred to the
+			 * timeline.
+			 */
+			fences[n].chain_fence = NULL;
+		} else {
+			drm_syncobj_replace_fence(syncobj, fence);
+		}
 	}
 }
 
+static int parse_timeline_fences(struct i915_user_extension __user *ext, void *data)
+{
+	struct i915_execbuffer *eb = data;
+
+	/* Timeline fences are incompatible with the fence array flag. */
+	if (eb->args->flags & I915_EXEC_FENCE_ARRAY)
+		return -EINVAL;
+
+	if (eb->extensions.flags & BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES))
+		return -EINVAL;
+
+	if (copy_from_user(&eb->extensions.timeline_fences, ext,
+			   sizeof(eb->extensions.timeline_fences)))
+		return -EFAULT;
+
+	eb->extensions.flags |= BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES);
+
+	return 0;
+}
+
 static const i915_user_extension_fn execbuf_extensions[] = {
+	[DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES] = parse_timeline_fences,
 };
 
 static int
@@ -2497,15 +2693,16 @@ static int
 i915_gem_do_execbuffer(struct drm_device *dev,
 		       struct drm_file *file,
 		       struct drm_i915_gem_execbuffer2 *args,
-		       struct drm_i915_gem_exec_object2 *exec,
-		       struct drm_syncobj **fences)
+		       struct drm_i915_gem_exec_object2 *exec)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct i915_execbuffer eb;
 	struct dma_fence *in_fence = NULL;
 	struct dma_fence *exec_fence = NULL;
 	struct sync_file *out_fence = NULL;
+	struct i915_eb_fences *fences = NULL;
 	int out_fence_fd = -1;
+	int nfences = 0;
 	int err;
 
 	BUILD_BUG_ON(__EXEC_INTERNAL_FLAGS & ~__I915_EXEC_ILLEGAL_FLAGS);
@@ -2551,10 +2748,16 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		return err;
 
+	fences = get_fence_array(&eb, &nfences);
+	if (IS_ERR(fences))
+		return PTR_ERR(fences);
+
 	if (args->flags & I915_EXEC_FENCE_IN) {
 		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
-		if (!in_fence)
-			return -EINVAL;
+		if (!in_fence) {
+			err = -EINVAL;
+			goto err_fences;
+		}
 	}
 
 	if (args->flags & I915_EXEC_FENCE_SUBMIT) {
@@ -2684,7 +2887,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	}
 
 	if (fences) {
-		err = await_fence_array(&eb, fences);
+		err = await_fence_array(&eb, fences, nfences);
 		if (err)
 			goto err_request;
 	}
@@ -2715,7 +2918,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	i915_request_add(eb.request);
 
 	if (fences)
-		signal_fence_array(&eb, fences);
+		signal_fence_array(&eb, fences, nfences);
 
 	if (out_fence) {
 		if (err == 0) {
@@ -2750,6 +2953,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	dma_fence_put(exec_fence);
 err_in_fence:
 	dma_fence_put(in_fence);
+err_fences:
+	put_fence_array(fences, nfences);
 	return err;
 }
 
@@ -2843,7 +3048,7 @@ i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
 			exec2_list[i].flags = 0;
 	}
 
-	err = i915_gem_do_execbuffer(dev, file, &exec2, exec2_list, NULL);
+	err = i915_gem_do_execbuffer(dev, file, &exec2, exec2_list);
 	if (exec2.flags & __EXEC_HAS_RELOC) {
 		struct drm_i915_gem_exec_object __user *user_exec_list =
 			u64_to_user_ptr(args->buffers_ptr);
@@ -2874,7 +3079,6 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_gem_execbuffer2 *args = data;
 	struct drm_i915_gem_exec_object2 *exec2_list;
-	struct drm_syncobj **fences = NULL;
 	const size_t count = args->buffer_count;
 	int err;
 
@@ -2902,15 +3106,7 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
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
@@ -2950,7 +3146,6 @@ end:;
 	}
 
 	args->flags &= ~__I915_EXEC_UNKNOWN_FLAGS;
-	put_fence_array(args, fences);
 	kvfree(exec2_list);
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 8b08cfe30151..5edb0f9d0d9d 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -2747,7 +2747,8 @@ static struct drm_driver driver = {
 	 */
 	.driver_features =
 	    DRIVER_GEM |
-	    DRIVER_RENDER | DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_SYNCOBJ,
+	    DRIVER_RENDER | DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_SYNCOBJ |
+	    DRIVER_SYNCOBJ_TIMELINE,
 	.release = i915_driver_release,
 	.open = i915_driver_open,
 	.lastclose = i915_driver_lastclose,
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 54fce81d5724..b9d3aab53c03 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -132,6 +132,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 	case I915_PARAM_HAS_EXEC_BATCH_FIRST:
 	case I915_PARAM_HAS_EXEC_FENCE_ARRAY:
 	case I915_PARAM_HAS_EXEC_SUBMIT_FENCE:
+	case I915_PARAM_HAS_EXEC_TIMELINE_FENCES:
 		/* For the time being all of these are always true;
 		 * if some supported hardware does not have one of these
 		 * features this value needs to be provided from
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 294881404c2d..b4a65bd32aeb 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -619,6 +619,12 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_PERF_REVISION	54
 
+/* Query whether DRM_I915_GEM_EXECBUFFER2 supports supplying an array of
+ * timeline syncobj through drm_i915_gem_execbuf_ext_timeline_fences. See
+ * I915_EXEC_USE_EXTENSIONS.
+ */
+#define I915_PARAM_HAS_EXEC_TIMELINE_FENCES 55
+
 /* Must be kept compact -- no holes and well documented */
 
 typedef struct drm_i915_getparam {
@@ -1047,9 +1053,41 @@ struct drm_i915_gem_exec_fence {
 };
 
 enum drm_i915_gem_execbuffer_ext {
+	/**
+	 * See drm_i915_gem_execbuf_ext_timeline_fences.
+	 */
+	DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES = 1,
+
 	DRM_I915_GEM_EXECBUFFER_EXT_MAX /* non-ABI */
 };
 
+/**
+ * This structure describes an array of drm_syncobj and associated points for
+ * timeline variants of drm_syncobj. It is invalid to append this structure to
+ * the execbuf if I915_EXEC_FENCE_ARRAY is set.
+ */
+struct drm_i915_gem_execbuffer_ext_timeline_fences {
+	struct i915_user_extension base;
+
+	/**
+	 * Number of element in the handles_ptr & value_ptr arrays.
+	 */
+	__u64 fence_count;
+
+	/**
+	 * Pointer to an array of struct drm_i915_gem_exec_fence of length
+	 * fence_count.
+	 */
+	__u64 handles_ptr;
+
+	/**
+	 * Pointer to an array of u64 values of length fence_count. Values
+	 * must be 0 for a binary drm_syncobj. A Value of 0 for a timeline
+	 * drm_syncobj is invalid as it turns a drm_syncobj into a binary one.
+	 */
+	__u64 values_ptr;
+};
+
 struct drm_i915_gem_execbuffer2 {
 	/**
 	 * List of gem_exec_object2 structs
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
