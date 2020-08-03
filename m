Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82A723A801
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 16:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DAAF6E2B1;
	Mon,  3 Aug 2020 14:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029A86E105
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 14:01:54 +0000 (UTC)
IronPort-SDR: Q9pOfDdwC6cK7v5WDfZMMAmFZWLNAZO4fsXeRN6hKKTl+S2vnpWYsh85+0XwCeZIpXoDusz9dl
 /VQ5dhryGSkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9701"; a="216521857"
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; d="scan'208";a="216521857"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 07:01:54 -0700
IronPort-SDR: t4AjLhOQi5L7vyBi8aqCi3TkeZ+DorrWmdT8RpPljo1/SUfpBi1MFvs7hwDRo45aWP4gvCx1Tr
 QQTWwz85ThxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; d="scan'208";a="466507993"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.62.231])
 by orsmga005.jf.intel.com with ESMTP; 03 Aug 2020 07:01:53 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Aug 2020 17:01:46 +0300
Message-Id: <20200803140147.316523-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200803140147.316523-1-lionel.g.landwerlin@intel.com>
References: <20200803140147.316523-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: add syncobj timeline support
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
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

v11: Rebase

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 167 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   1 +
 include/uapi/drm/i915_drm.h                   |  39 ++++
 4 files changed, 203 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ed8d1c2517f6..1f766431f3a3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -285,6 +285,8 @@ struct i915_execbuffer {
 
 	struct i915_eb_fence {
 		struct drm_syncobj *syncobj; /* Use with ptr_mask_bits() */
+		u64 value;
+		struct dma_fence_chain *chain_fence;
 	} *fences;
 	u32 n_fences;
 
@@ -2200,14 +2202,121 @@ eb_pin_engine(struct i915_execbuffer *eb,
 static void
 __free_fence_array(struct i915_eb_fence *fences, unsigned int n)
 {
-	while (n--)
+	while (n--) {
 		drm_syncobj_put(ptr_mask_bits(fences[n].syncobj, 2));
+		kfree(fences[n].chain_fence);
+	}
 	kvfree(fences);
 }
 
 static int
-get_fence_array(struct drm_i915_gem_execbuffer2 *args,
-		struct i915_execbuffer *eb)
+get_timeline_fence_array(const struct drm_i915_gem_execbuffer_ext_timeline_fences *timeline_fences,
+			 struct i915_execbuffer *eb)
+{
+	struct drm_i915_gem_exec_fence __user *user_fences;
+	struct i915_eb_fence *fences;
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
+		return -EINVAL;
+
+	user_fences = u64_to_user_ptr(timeline_fences->handles_ptr);
+	if (!access_ok(user_fences, num_user_fences * sizeof(*user_fences)))
+		return -EFAULT;
+
+	user_values = u64_to_user_ptr(timeline_fences->values_ptr);
+	if (!access_ok(user_values, num_user_fences * sizeof(*user_values)))
+		return -EFAULT;
+
+	fences = kvmalloc_array(num_user_fences, sizeof(*fences),
+				__GFP_NOWARN | GFP_KERNEL);
+	if (!fences)
+		return -ENOMEM;
+
+	BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
+		     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
+
+	for (n = 0, num_fences = 0; n < timeline_fences->fence_count; n++) {
+		struct drm_i915_gem_exec_fence fence;
+		struct drm_syncobj *syncobj;
+		u64 point;
+
+		if (__copy_from_user(&fence, user_fences++, sizeof(fence))) {
+			err = -EFAULT;
+			goto err;
+		}
+
+		if (fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
+			err = -EINVAL;
+			goto err;
+		}
+
+		if (__get_user(point, user_values++)) {
+			err = -EFAULT;
+			goto err;
+		}
+
+		syncobj = drm_syncobj_find(eb->file, fence.handle);
+		if (!syncobj) {
+			DRM_DEBUG("Invalid syncobj handle provided\n");
+			err = -ENOENT;
+			goto err;
+		}
+
+		/*
+		 * For timeline syncobjs we need to preallocate chains for
+		 * later signaling.
+		 */
+		if (point != 0 && fence.flags & I915_EXEC_FENCE_SIGNAL) {
+			/*
+			 * Waiting and signaling the same point (when point !=
+			 * 0) would break the timeline.
+			 */
+			if (fence.flags & I915_EXEC_FENCE_WAIT) {
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
+		fences[num_fences].syncobj = ptr_pack_bits(syncobj, fence.flags, 2);
+		fences[num_fences].value = point;
+		num_fences++;
+	}
+
+	eb->fences = fences;
+	eb->n_fences = num_fences;
+
+	return 0;
+
+err:
+	__free_fence_array(fences, num_fences);
+	return err;
+}
+
+static int
+get_legacy_fence_array(struct drm_i915_gem_execbuffer2 *args,
+		       struct i915_execbuffer *eb)
 {
 	const unsigned long nfences = args->num_cliprects;
 	struct drm_i915_gem_exec_fence __user *user;
@@ -2222,7 +2331,7 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
 	BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
 	if (nfences > min_t(unsigned long,
 			    ULONG_MAX / sizeof(*user),
-			    SIZE_MAX / sizeof(*fences)))
+			    SIZE_MAX / sizeof(*eb->fences)))
 		return -EINVAL;
 
 	user = u64_to_user_ptr(args->cliprects_ptr);
@@ -2259,6 +2368,8 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
 			     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
 
 		fences[n].syncobj = ptr_pack_bits(syncobj, fence.flags, 2);
+		fences[n].value = 0;
+		fences[n].chain_fence = NULL;
 	}
 
 	eb->fences = fences;
@@ -2290,6 +2401,15 @@ await_fence_array(struct i915_execbuffer *eb)
 		if (!fence)
 			return -EINVAL;
 
+		if (eb->fences[n].value) {
+			err = dma_fence_chain_find_seqno(&fence, eb->fences[n].value);
+			if (err)
+				return err;
+
+			if (!fence)
+				continue;
+		}
+
 		err = i915_request_await_dma_fence(eb->request, fence);
 		dma_fence_put(fence);
 		if (err < 0)
@@ -2313,7 +2433,17 @@ signal_fence_array(struct i915_execbuffer *eb)
 		if (!(flags & I915_EXEC_FENCE_SIGNAL))
 			continue;
 
-		drm_syncobj_replace_fence(syncobj, fence);
+		if (eb->fences[n].chain_fence) {
+			drm_syncobj_add_point(syncobj, eb->fences[n].chain_fence,
+					      fence, eb->fences[n].value);
+			/*
+			 * The chain's ownership is transferred to the
+			 * timeline.
+			 */
+			eb->fences[n].chain_fence = NULL;
+		} else {
+			drm_syncobj_replace_fence(syncobj, fence);
+		}
 	}
 }
 
@@ -2358,7 +2488,32 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	mutex_unlock(&tl->mutex);
 }
 
+static int parse_timeline_fences(struct i915_user_extension __user *ext, void *data)
+{
+	struct drm_i915_gem_execbuffer_ext_timeline_fences timeline_fences;
+	struct i915_execbuffer *eb = data;
+
+	/* Timeline fences are incompatible with the fence array flag. */
+	if (eb->args->flags & I915_EXEC_FENCE_ARRAY)
+		return -EINVAL;
+
+	/*
+	 * Prevent the drm_i915_gem_execbuffer_ext_timeline_fences structure
+	 * to be included multiple times.
+	 */
+	if (eb->extension_flags & BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES))
+		return -EINVAL;
+
+	if (copy_from_user(&timeline_fences, ext, sizeof(timeline_fences)))
+		return -EFAULT;
+
+	eb->extension_flags |= BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES);
+
+	return get_timeline_fence_array(&timeline_fences, eb);
+}
+
 static const i915_user_extension_fn execbuf_extensions[] = {
+	[DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES] = parse_timeline_fences,
 };
 
 static int
@@ -2462,7 +2617,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		goto err_out_fence;
 
-	err = get_fence_array(args, &eb);
+	err = get_legacy_fence_array(args, &eb);
 	if (err)
 		goto err_arr_fence;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 8b9bd929ba45..068447f565a9 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1846,7 +1846,8 @@ static struct drm_driver driver = {
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
index 421613219ae9..f96032c60a12 100644
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
index 0efded7b15f0..021276c39842 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -619,6 +619,13 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_PERF_REVISION	54
 
+/* Query whether DRM_I915_GEM_EXECBUFFER2 supports supplying an array of
+ * timeline syncobj through drm_i915_gem_execbuf_ext_timeline_fences. See
+ * I915_EXEC_USE_EXTENSIONS.
+ */
+#define I915_PARAM_HAS_EXEC_TIMELINE_FENCES 55
+
+
 /* Must be kept compact -- no holes and well documented */
 
 typedef struct drm_i915_getparam {
@@ -1047,9 +1054,41 @@ struct drm_i915_gem_exec_fence {
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
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
