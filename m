Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C007A23B72D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 11:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121356E455;
	Tue,  4 Aug 2020 09:00:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690846E450
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Aug 2020 09:00:07 +0000 (UTC)
IronPort-SDR: w6rnXwjBG5eJF44M1LsBRTtqhePuPmJdc67+VpG+v0SXi/SWkz+BVWKzXRhD2dR+/IxldsyhQM
 SEUpwqRd+H0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="153442629"
X-IronPort-AV: E=Sophos;i="5.75,433,1589266800"; d="scan'208";a="153442629"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2020 02:00:07 -0700
IronPort-SDR: TIG7GxdF/Pj7jp6bESStCnzKHlytTqrh3C7QQittpr0q38lrpxttfmPfLxw8EhJ5Bb5kaaF+6+
 zD9xzlfFCGqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,433,1589266800"; d="scan'208";a="315261511"
Received: from wrottner-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.61.120])
 by fmsmga004.fm.intel.com with ESMTP; 04 Aug 2020 02:00:05 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Aug 2020 11:59:54 +0300
Message-Id: <20200804085954.350343-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200804085954.350343-1-lionel.g.landwerlin@intel.com>
References: <20200804085954.350343-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: add syncobj timeline support
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

v12: All multiple extension nodes of timeline syncobj (Chris)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Co-authored-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch> (v11)
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 312 ++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   1 +
 include/uapi/drm/i915_drm.h                   |  38 ++-
 4 files changed, 279 insertions(+), 75 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ed8d1c2517f6..9ce114d67288 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -223,6 +223,13 @@ struct eb_vma_array {
  * the batchbuffer in trusted mode, otherwise the ioctl is rejected.
  */
 
+struct eb_fence {
+	struct drm_syncobj *syncobj; /* Use with ptr_mask_bits() */
+	struct dma_fence *dma_fence;
+	u64 value;
+	struct dma_fence_chain *chain_fence;
+};
+
 struct i915_execbuffer {
 	struct drm_i915_private *i915; /** i915 backpointer */
 	struct drm_file *file; /** per-file lookup tables and limits */
@@ -283,12 +290,8 @@ struct i915_execbuffer {
 	struct hlist_head *buckets; /** ht for relocation handles */
 	struct eb_vma_array *array;
 
-	struct i915_eb_fence {
-		struct drm_syncobj *syncobj; /* Use with ptr_mask_bits() */
-	} *fences;
-	u32 n_fences;
-
-	u64 extension_flags; /** Available extensions parameters */
+	struct eb_fence *fences;
+	unsigned long num_fences;
 };
 
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
@@ -2198,77 +2201,222 @@ eb_pin_engine(struct i915_execbuffer *eb,
 }
 
 static void
-__free_fence_array(struct i915_eb_fence *fences, unsigned int n)
+__free_fence_array(struct eb_fence *fences, unsigned int n)
 {
-	while (n--)
+	while (n--) {
 		drm_syncobj_put(ptr_mask_bits(fences[n].syncobj, 2));
+		dma_fence_put(fences[n].dma_fence);
+		kfree(fences[n].chain_fence);
+	}
 	kvfree(fences);
 }
 
 static int
-get_fence_array(struct drm_i915_gem_execbuffer2 *args,
-		struct i915_execbuffer *eb)
+add_timeline_fence_array(struct i915_execbuffer *eb,
+			 const struct drm_i915_gem_execbuffer_ext_timeline_fences *timeline_fences)
 {
-	const unsigned long nfences = args->num_cliprects;
-	struct drm_i915_gem_exec_fence __user *user;
-	struct i915_eb_fence *fences;
-	unsigned long n;
-	int err;
+	struct drm_i915_gem_exec_fence __user *user_fences;
+	u64 __user *user_values;
+	struct eb_fence *f;
+	u64 nfences;
+	int err = 0;
 
-	if (!(args->flags & I915_EXEC_FENCE_ARRAY))
+	nfences = timeline_fences->fence_count;
+	if (!nfences)
 		return 0;
 
 	/* Check multiplication overflow for access_ok() and kvmalloc_array() */
 	BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
 	if (nfences > min_t(unsigned long,
-			    ULONG_MAX / sizeof(*user),
-			    SIZE_MAX / sizeof(*fences)))
+			    ULONG_MAX / sizeof(*user_fences),
+			    SIZE_MAX / sizeof(*f)) - eb->num_fences)
 		return -EINVAL;
 
-	user = u64_to_user_ptr(args->cliprects_ptr);
-	if (!access_ok(user, nfences * sizeof(*user)))
+	user_fences = u64_to_user_ptr(timeline_fences->handles_ptr);
+	if (!access_ok(user_fences, nfences * sizeof(*user_fences)))
+		return -EFAULT;
+
+	user_values = u64_to_user_ptr(timeline_fences->values_ptr);
+	if (!access_ok(user_values, nfences * sizeof(*user_values)))
 		return -EFAULT;
 
-	fences = kvmalloc_array(nfences, sizeof(*fences),
-				__GFP_NOWARN | GFP_KERNEL);
-	if (!fences)
+	f = krealloc(eb->fences,
+		     (eb->num_fences + nfences) * sizeof(*f),
+		     __GFP_NOWARN | GFP_KERNEL);
+	if (!f)
 		return -ENOMEM;
 
-	for (n = 0; n < nfences; n++) {
-		struct drm_i915_gem_exec_fence fence;
+	eb->fences = f;
+	f += eb->num_fences;
+
+	BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
+		     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
+
+	while (nfences--) {
+		struct drm_i915_gem_exec_fence user_fence;
 		struct drm_syncobj *syncobj;
+		struct dma_fence *fence = NULL;
+		u64 point;
+
+		if (__copy_from_user(&user_fence,
+				     user_fences++,
+				     sizeof(user_fence)))
+			return -EFAULT;
+
+		if (user_fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS)
+			return -EINVAL;
+
+		if (__get_user(point, user_values++))
+			return -EFAULT;
+
+		syncobj = drm_syncobj_find(eb->file, user_fence.handle);
+		if (!syncobj) {
+			DRM_DEBUG("Invalid syncobj handle provided\n");
+			return -ENOENT;
+		}
+
+		fence = drm_syncobj_fence_get(syncobj);
 
-		if (__copy_from_user(&fence, user++, sizeof(fence))) {
-			err = -EFAULT;
-			goto err;
+		if (!fence && user_fence.flags &&
+		    !(user_fence.flags & I915_EXEC_FENCE_SIGNAL)) {
+			DRM_DEBUG("Syncobj handle has no fence\n");
+			drm_syncobj_put(syncobj);
+			return -EINVAL;
 		}
 
-		if (fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
-			err = -EINVAL;
-			goto err;
+		if (fence)
+			err = dma_fence_chain_find_seqno(&fence, point);
+
+		if (err && !(user_fence.flags & I915_EXEC_FENCE_SIGNAL)) {
+			DRM_DEBUG("Syncobj handle missing requested point %llu\n", point);
+			drm_syncobj_put(syncobj);
+			return err;
+		}
+
+		/*
+		 * A point might have been signaled already and
+		 * garbage collected from the timeline. In this case
+		 * just ignore the point and carry on.
+		 */
+		if (!fence && !(user_fence.flags & I915_EXEC_FENCE_SIGNAL)) {
+			drm_syncobj_put(syncobj);
+			continue;
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
+				DRM_DEBUG("Trying to wait & signal the same timeline point.\n");
+				dma_fence_put(fence);
+				drm_syncobj_put(syncobj);
+				return -EINVAL;
+			}
+
+			f->chain_fence =
+				kmalloc(sizeof(*f->chain_fence),
+					GFP_KERNEL);
+			if (!f->chain_fence) {
+				drm_syncobj_put(syncobj);
+				dma_fence_put(fence);
+				return -ENOMEM;
+			}
+		} else {
+			f->chain_fence = NULL;
 		}
 
-		syncobj = drm_syncobj_find(eb->file, fence.handle);
+		f->syncobj = ptr_pack_bits(syncobj, user_fence.flags, 2);
+		f->dma_fence = fence;
+		f->value = point;
+		f++;
+		eb->num_fences++;
+	}
+
+	return 0;
+}
+
+static int add_fence_array(struct i915_execbuffer *eb)
+{
+	struct drm_i915_gem_execbuffer2 *args = eb->args;
+	struct drm_i915_gem_exec_fence __user *user;
+	unsigned long num_fences = args->num_cliprects;
+	struct eb_fence *f;
+
+	if (!(args->flags & I915_EXEC_FENCE_ARRAY))
+		return 0;
+
+	if (!num_fences)
+		return 0;
+
+	/* Check multiplication overflow for access_ok() and kvmalloc_array() */
+	BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
+	if (num_fences > min_t(unsigned long,
+			       ULONG_MAX / sizeof(*user),
+			       SIZE_MAX / sizeof(*f) - eb->num_fences))
+		return -EINVAL;
+
+	user = u64_to_user_ptr(args->cliprects_ptr);
+	if (!access_ok(user, num_fences * sizeof(*user)))
+		return -EFAULT;
+
+	f = krealloc(eb->fences,
+		     (eb->num_fences + num_fences) * sizeof(*f),
+		     __GFP_NOWARN | GFP_KERNEL);
+	if (!f)
+		return -ENOMEM;
+
+	eb->fences = f;
+	f += eb->num_fences;
+	while (num_fences--) {
+		struct drm_i915_gem_exec_fence user_fence;
+		struct drm_syncobj *syncobj;
+		struct dma_fence *fence = NULL;
+
+		if (__copy_from_user(&user_fence, user++, sizeof(user_fence)))
+			return -EFAULT;
+
+		if (user_fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS)
+			return -EINVAL;
+
+		syncobj = drm_syncobj_find(eb->file, user_fence.handle);
 		if (!syncobj) {
 			DRM_DEBUG("Invalid syncobj handle provided\n");
-			err = -ENOENT;
-			goto err;
+			return -ENOENT;
+		}
+
+		if (user_fence.flags & I915_EXEC_FENCE_WAIT) {
+			fence = drm_syncobj_fence_get(syncobj);
+			if (!fence) {
+				DRM_DEBUG("Syncobj handle has no fence\n");
+				drm_syncobj_put(syncobj);
+				return -EINVAL;
+			}
 		}
 
 		BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
 			     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
 
-		fences[n].syncobj = ptr_pack_bits(syncobj, fence.flags, 2);
+		f->syncobj = ptr_pack_bits(syncobj, user_fence.flags, 2);
+		f->dma_fence = fence;
+		f->value = 0;
+		f->chain_fence = NULL;
+		f++;
+		eb->num_fences++;
 	}
 
-	eb->fences = fences;
-	eb->n_fences = nfences;
-
 	return 0;
+}
 
-err:
-	__free_fence_array(fences, n);
-	return err;
+static void put_fence_array(struct eb_fence *fences, int num_fences)
+{
+	if (fences)
+		__free_fence_array(fences, num_fences);
 }
 
 static int
@@ -2277,21 +2425,17 @@ await_fence_array(struct i915_execbuffer *eb)
 	unsigned int n;
 	int err;
 
-	for (n = 0; n < eb->n_fences; n++) {
+	for (n = 0; n < eb->num_fences; n++) {
 		struct drm_syncobj *syncobj;
-		struct dma_fence *fence;
 		unsigned int flags;
 
 		syncobj = ptr_unpack_bits(eb->fences[n].syncobj, &flags, 2);
-		if (!(flags & I915_EXEC_FENCE_WAIT))
-			continue;
 
-		fence = drm_syncobj_fence_get(syncobj);
-		if (!fence)
-			return -EINVAL;
+		if (!eb->fences[n].dma_fence)
+			continue;
 
-		err = i915_request_await_dma_fence(eb->request, fence);
-		dma_fence_put(fence);
+		err = i915_request_await_dma_fence(eb->request,
+						   eb->fences[n].dma_fence);
 		if (err < 0)
 			return err;
 	}
@@ -2299,13 +2443,12 @@ await_fence_array(struct i915_execbuffer *eb)
 	return 0;
 }
 
-static void
-signal_fence_array(struct i915_execbuffer *eb)
+static void signal_fence_array(const struct i915_execbuffer *eb)
 {
 	struct dma_fence * const fence = &eb->request->fence;
 	unsigned int n;
 
-	for (n = 0; n < eb->n_fences; n++) {
+	for (n = 0; n < eb->num_fences; n++) {
 		struct drm_syncobj *syncobj;
 		unsigned int flags;
 
@@ -2313,10 +2456,34 @@ signal_fence_array(struct i915_execbuffer *eb)
 		if (!(flags & I915_EXEC_FENCE_SIGNAL))
 			continue;
 
-		drm_syncobj_replace_fence(syncobj, fence);
+		if (eb->fences[n].chain_fence) {
+			drm_syncobj_add_point(syncobj,
+					      eb->fences[n].chain_fence,
+					      fence,
+					      eb->fences[n].value);
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
 
+static int
+parse_timeline_fences(struct i915_user_extension __user *ext, void *data)
+{
+	struct i915_execbuffer *eb = data;
+	struct drm_i915_gem_execbuffer_ext_timeline_fences timeline_fences;
+
+	if (copy_from_user(&timeline_fences, ext, sizeof(timeline_fences)))
+		return -EFAULT;
+
+	return add_timeline_fence_array(eb, &timeline_fences);
+}
+
 static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
 {
 	struct i915_request *rq, *rn;
@@ -2359,14 +2526,13 @@ static void eb_request_add(struct i915_execbuffer *eb)
 }
 
 static const i915_user_extension_fn execbuf_extensions[] = {
+	[DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES] = parse_timeline_fences,
 };
 
 static int
 parse_execbuf2_extensions(struct drm_i915_gem_execbuffer2 *args,
 			  struct i915_execbuffer *eb)
 {
-	eb->extension_flags = 0;
-
 	if (!(args->flags & I915_EXEC_USE_EXTENSIONS))
 		return 0;
 
@@ -2420,7 +2586,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.trampoline = NULL;
 
 	eb.fences = NULL;
-	eb.n_fences = 0;
+	eb.num_fences = 0;
 
 	eb.batch_flags = 0;
 	if (args->flags & I915_EXEC_SECURE) {
@@ -2439,14 +2605,24 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (args->flags & I915_EXEC_IS_PINNED)
 		eb.batch_flags |= I915_DISPATCH_PINNED;
 
+	err = parse_execbuf2_extensions(args, &eb);
+	if (err)
+		goto err_ext;
+
+	err = add_fence_array(&eb);
+	if (err)
+		goto err_ext;
+
 #define IN_FENCES (I915_EXEC_FENCE_IN | I915_EXEC_FENCE_SUBMIT)
 	if (args->flags & IN_FENCES) {
 		if ((args->flags & IN_FENCES) == IN_FENCES)
 			return -EINVAL;
 
 		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
-		if (!in_fence)
-			return -EINVAL;
+		if (!in_fence) {
+			err = -EINVAL;
+			goto err_ext;
+		}
 	}
 #undef IN_FENCES
 
@@ -2458,17 +2634,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		}
 	}
 
-	err = parse_execbuf2_extensions(args, &eb);
-	if (err)
-		goto err_out_fence;
-
-	err = get_fence_array(args, &eb);
-	if (err)
-		goto err_arr_fence;
-
 	err = eb_create(&eb);
 	if (err)
-		goto err_arr_fence;
+		goto err_out_fence;
 
 	GEM_BUG_ON(!eb.lut_size);
 
@@ -2564,7 +2732,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			goto err_request;
 	}
 
-	if (eb.n_fences) {
+	if (eb.fences) {
 		err = await_fence_array(&eb);
 		if (err)
 			goto err_request;
@@ -2595,7 +2763,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	i915_request_get(eb.request);
 	eb_request_add(&eb);
 
-	if (eb.n_fences)
+	if (eb.fences)
 		signal_fence_array(&eb);
 
 	if (out_fence) {
@@ -2624,13 +2792,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	i915_gem_context_put(eb.gem_context);
 err_destroy:
 	eb_destroy(&eb);
-err_arr_fence:
-	__free_fence_array(eb.fences, eb.n_fences);
 err_out_fence:
 	if (out_fence_fd != -1)
 		put_unused_fd(out_fence_fd);
 err_in_fence:
 	dma_fence_put(in_fence);
+err_ext:
+	put_fence_array(eb.fences, eb.num_fences);
 	return err;
 }
 
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
index 0efded7b15f0..e6cbd22308aa 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -619,6 +619,12 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_PERF_REVISION	54
 
+/* Query whether DRM_I915_GEM_EXECBUFFER2 supports supplying an array of
+ * timeline syncobj through drm_i915_gem_execbuffer_ext_timeline_fences. See
+ * I915_EXEC_USE_EXTENSIONS.
+ */
+#define I915_PARAM_HAS_EXEC_TIMELINE_FENCES 55
+
 /* Must be kept compact -- no holes and well documented */
 
 typedef struct drm_i915_getparam {
@@ -1046,8 +1052,36 @@ struct drm_i915_gem_exec_fence {
 	__u32 flags;
 };
 
-enum drm_i915_gem_execbuffer_ext {
-	DRM_I915_GEM_EXECBUFFER_EXT_MAX /* non-ABI */
+/**
+ * See drm_i915_gem_execbuffer_ext_timeline_fences.
+ */
+#define DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES 0
+
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
 };
 
 struct drm_i915_gem_execbuffer2 {
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
