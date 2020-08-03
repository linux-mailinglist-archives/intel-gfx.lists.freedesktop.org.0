Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BD623A856
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 16:23:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25AB56E0F9;
	Mon,  3 Aug 2020 14:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36E876E0F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 14:23:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22018600-1500050 
 for multiple; Mon, 03 Aug 2020 15:23:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Aug 2020 15:23:26 +0100
Message-Id: <20200803142326.6870-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200803140147.316523-3-lionel.g.landwerlin@intel.com>
References: <20200803140147.316523-3-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: add syncobj timeline support
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is the bunch of trivial changes that I had wanted.
 - stop arbitrarily limiting the uABI to a single extension block
 - handle timeline syncobj as an extension of binary syncobj
 - num_fences to appease Tvrtko who objects to me calling things nobject
 - the only way not to have ABI values is never to expose them in the uABI
 - fix cross-reference

---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 337 +++++++++---------
 include/uapi/drm/i915_drm.h                   |  15 +-
 2 files changed, 180 insertions(+), 172 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1f766431f3a3..9ce114d67288 100644
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
@@ -283,14 +290,8 @@ struct i915_execbuffer {
 	struct hlist_head *buckets; /** ht for relocation handles */
 	struct eb_vma_array *array;
 
-	struct i915_eb_fence {
-		struct drm_syncobj *syncobj; /* Use with ptr_mask_bits() */
-		u64 value;
-		struct dma_fence_chain *chain_fence;
-	} *fences;
-	u32 n_fences;
-
-	u64 extension_flags; /** Available extensions parameters */
+	struct eb_fence *fences;
+	unsigned long num_fences;
 };
 
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
@@ -2200,186 +2201,222 @@ eb_pin_engine(struct i915_execbuffer *eb,
 }
 
 static void
-__free_fence_array(struct i915_eb_fence *fences, unsigned int n)
+__free_fence_array(struct eb_fence *fences, unsigned int n)
 {
 	while (n--) {
 		drm_syncobj_put(ptr_mask_bits(fences[n].syncobj, 2));
+		dma_fence_put(fences[n].dma_fence);
 		kfree(fences[n].chain_fence);
 	}
 	kvfree(fences);
 }
 
 static int
-get_timeline_fence_array(const struct drm_i915_gem_execbuffer_ext_timeline_fences *timeline_fences,
-			 struct i915_execbuffer *eb)
+add_timeline_fence_array(struct i915_execbuffer *eb,
+			 const struct drm_i915_gem_execbuffer_ext_timeline_fences *timeline_fences)
 {
 	struct drm_i915_gem_exec_fence __user *user_fences;
-	struct i915_eb_fence *fences;
 	u64 __user *user_values;
-	u64 num_fences, num_user_fences = timeline_fences->fence_count;
-	unsigned long n;
-	int err;
+	struct eb_fence *f;
+	u64 nfences;
+	int err = 0;
+
+	nfences = timeline_fences->fence_count;
+	if (!nfences)
+		return 0;
 
 	/* Check multiplication overflow for access_ok() and kvmalloc_array() */
 	BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
-	if (num_user_fences > min_t(unsigned long,
-				    ULONG_MAX / sizeof(*user_fences),
-				    SIZE_MAX / sizeof(*fences)))
+	if (nfences > min_t(unsigned long,
+			    ULONG_MAX / sizeof(*user_fences),
+			    SIZE_MAX / sizeof(*f)) - eb->num_fences)
 		return -EINVAL;
 
 	user_fences = u64_to_user_ptr(timeline_fences->handles_ptr);
-	if (!access_ok(user_fences, num_user_fences * sizeof(*user_fences)))
+	if (!access_ok(user_fences, nfences * sizeof(*user_fences)))
 		return -EFAULT;
 
 	user_values = u64_to_user_ptr(timeline_fences->values_ptr);
-	if (!access_ok(user_values, num_user_fences * sizeof(*user_values)))
+	if (!access_ok(user_values, nfences * sizeof(*user_values)))
 		return -EFAULT;
 
-	fences = kvmalloc_array(num_user_fences, sizeof(*fences),
-				__GFP_NOWARN | GFP_KERNEL);
-	if (!fences)
+	f = krealloc(eb->fences,
+		     (eb->num_fences + nfences) * sizeof(*f),
+		     __GFP_NOWARN | GFP_KERNEL);
+	if (!f)
 		return -ENOMEM;
 
+	eb->fences = f;
+	f += eb->num_fences;
+
 	BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
 		     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
 
-	for (n = 0, num_fences = 0; n < timeline_fences->fence_count; n++) {
-		struct drm_i915_gem_exec_fence fence;
+	while (nfences--) {
+		struct drm_i915_gem_exec_fence user_fence;
 		struct drm_syncobj *syncobj;
+		struct dma_fence *fence = NULL;
 		u64 point;
 
-		if (__copy_from_user(&fence, user_fences++, sizeof(fence))) {
-			err = -EFAULT;
-			goto err;
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
 		}
 
-		if (fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
-			err = -EINVAL;
-			goto err;
+		fence = drm_syncobj_fence_get(syncobj);
+
+		if (!fence && user_fence.flags &&
+		    !(user_fence.flags & I915_EXEC_FENCE_SIGNAL)) {
+			DRM_DEBUG("Syncobj handle has no fence\n");
+			drm_syncobj_put(syncobj);
+			return -EINVAL;
 		}
 
-		if (__get_user(point, user_values++)) {
-			err = -EFAULT;
-			goto err;
+		if (fence)
+			err = dma_fence_chain_find_seqno(&fence, point);
+
+		if (err && !(user_fence.flags & I915_EXEC_FENCE_SIGNAL)) {
+			DRM_DEBUG("Syncobj handle missing requested point %llu\n", point);
+			drm_syncobj_put(syncobj);
+			return err;
 		}
 
-		syncobj = drm_syncobj_find(eb->file, fence.handle);
-		if (!syncobj) {
-			DRM_DEBUG("Invalid syncobj handle provided\n");
-			err = -ENOENT;
-			goto err;
+		/*
+		 * A point might have been signaled already and
+		 * garbage collected from the timeline. In this case
+		 * just ignore the point and carry on.
+		 */
+		if (!fence && !(user_fence.flags & I915_EXEC_FENCE_SIGNAL)) {
+			drm_syncobj_put(syncobj);
+			continue;
 		}
 
 		/*
 		 * For timeline syncobjs we need to preallocate chains for
 		 * later signaling.
 		 */
-		if (point != 0 && fence.flags & I915_EXEC_FENCE_SIGNAL) {
+		if (point != 0 && user_fence.flags & I915_EXEC_FENCE_SIGNAL) {
 			/*
 			 * Waiting and signaling the same point (when point !=
 			 * 0) would break the timeline.
 			 */
-			if (fence.flags & I915_EXEC_FENCE_WAIT) {
-				DRM_DEBUG("Tring to wait & signal the same timeline point.\n");
-				err = -EINVAL;
+			if (user_fence.flags & I915_EXEC_FENCE_WAIT) {
+				DRM_DEBUG("Trying to wait & signal the same timeline point.\n");
+				dma_fence_put(fence);
 				drm_syncobj_put(syncobj);
-				goto err;
+				return -EINVAL;
 			}
 
-			fences[num_fences].chain_fence =
-				kmalloc(sizeof(*fences[num_fences].chain_fence),
+			f->chain_fence =
+				kmalloc(sizeof(*f->chain_fence),
 					GFP_KERNEL);
-			if (!fences[num_fences].chain_fence) {
+			if (!f->chain_fence) {
 				drm_syncobj_put(syncobj);
-				err = -ENOMEM;
-				DRM_DEBUG("Unable to alloc chain_fence\n");
-				goto err;
+				dma_fence_put(fence);
+				return -ENOMEM;
 			}
 		} else {
-			fences[num_fences].chain_fence = NULL;
+			f->chain_fence = NULL;
 		}
 
-		fences[num_fences].syncobj = ptr_pack_bits(syncobj, fence.flags, 2);
-		fences[num_fences].value = point;
-		num_fences++;
+		f->syncobj = ptr_pack_bits(syncobj, user_fence.flags, 2);
+		f->dma_fence = fence;
+		f->value = point;
+		f++;
+		eb->num_fences++;
 	}
 
-	eb->fences = fences;
-	eb->n_fences = num_fences;
-
 	return 0;
-
-err:
-	__free_fence_array(fences, num_fences);
-	return err;
 }
 
-static int
-get_legacy_fence_array(struct drm_i915_gem_execbuffer2 *args,
-		       struct i915_execbuffer *eb)
+static int add_fence_array(struct i915_execbuffer *eb)
 {
-	const unsigned long nfences = args->num_cliprects;
+	struct drm_i915_gem_execbuffer2 *args = eb->args;
 	struct drm_i915_gem_exec_fence __user *user;
-	struct i915_eb_fence *fences;
-	unsigned long n;
-	int err;
+	unsigned long num_fences = args->num_cliprects;
+	struct eb_fence *f;
 
 	if (!(args->flags & I915_EXEC_FENCE_ARRAY))
 		return 0;
 
+	if (!num_fences)
+		return 0;
+
 	/* Check multiplication overflow for access_ok() and kvmalloc_array() */
 	BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
-	if (nfences > min_t(unsigned long,
-			    ULONG_MAX / sizeof(*user),
-			    SIZE_MAX / sizeof(*eb->fences)))
+	if (num_fences > min_t(unsigned long,
+			       ULONG_MAX / sizeof(*user),
+			       SIZE_MAX / sizeof(*f) - eb->num_fences))
 		return -EINVAL;
 
 	user = u64_to_user_ptr(args->cliprects_ptr);
-	if (!access_ok(user, nfences * sizeof(*user)))
+	if (!access_ok(user, num_fences * sizeof(*user)))
 		return -EFAULT;
 
-	fences = kvmalloc_array(nfences, sizeof(*fences),
-				__GFP_NOWARN | GFP_KERNEL);
-	if (!fences)
+	f = krealloc(eb->fences,
+		     (eb->num_fences + num_fences) * sizeof(*f),
+		     __GFP_NOWARN | GFP_KERNEL);
+	if (!f)
 		return -ENOMEM;
 
-	for (n = 0; n < nfences; n++) {
-		struct drm_i915_gem_exec_fence fence;
+	eb->fences = f;
+	f += eb->num_fences;
+	while (num_fences--) {
+		struct drm_i915_gem_exec_fence user_fence;
 		struct drm_syncobj *syncobj;
+		struct dma_fence *fence = NULL;
 
-		if (__copy_from_user(&fence, user++, sizeof(fence))) {
-			err = -EFAULT;
-			goto err;
-		}
+		if (__copy_from_user(&user_fence, user++, sizeof(user_fence)))
+			return -EFAULT;
 
-		if (fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
-			err = -EINVAL;
-			goto err;
-		}
+		if (user_fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS)
+			return -EINVAL;
 
-		syncobj = drm_syncobj_find(eb->file, fence.handle);
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
-		fences[n].value = 0;
-		fences[n].chain_fence = NULL;
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
@@ -2388,30 +2425,17 @@ await_fence_array(struct i915_execbuffer *eb)
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
-
-		if (eb->fences[n].value) {
-			err = dma_fence_chain_find_seqno(&fence, eb->fences[n].value);
-			if (err)
-				return err;
-
-			if (!fence)
-				continue;
-		}
+		if (!eb->fences[n].dma_fence)
+			continue;
 
-		err = i915_request_await_dma_fence(eb->request, fence);
-		dma_fence_put(fence);
+		err = i915_request_await_dma_fence(eb->request,
+						   eb->fences[n].dma_fence);
 		if (err < 0)
 			return err;
 	}
@@ -2419,13 +2443,12 @@ await_fence_array(struct i915_execbuffer *eb)
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
 
@@ -2434,8 +2457,10 @@ signal_fence_array(struct i915_execbuffer *eb)
 			continue;
 
 		if (eb->fences[n].chain_fence) {
-			drm_syncobj_add_point(syncobj, eb->fences[n].chain_fence,
-					      fence, eb->fences[n].value);
+			drm_syncobj_add_point(syncobj,
+					      eb->fences[n].chain_fence,
+					      fence,
+					      eb->fences[n].value);
 			/*
 			 * The chain's ownership is transferred to the
 			 * timeline.
@@ -2447,6 +2472,18 @@ signal_fence_array(struct i915_execbuffer *eb)
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
@@ -2488,30 +2525,6 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	mutex_unlock(&tl->mutex);
 }
 
-static int parse_timeline_fences(struct i915_user_extension __user *ext, void *data)
-{
-	struct drm_i915_gem_execbuffer_ext_timeline_fences timeline_fences;
-	struct i915_execbuffer *eb = data;
-
-	/* Timeline fences are incompatible with the fence array flag. */
-	if (eb->args->flags & I915_EXEC_FENCE_ARRAY)
-		return -EINVAL;
-
-	/*
-	 * Prevent the drm_i915_gem_execbuffer_ext_timeline_fences structure
-	 * to be included multiple times.
-	 */
-	if (eb->extension_flags & BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES))
-		return -EINVAL;
-
-	if (copy_from_user(&timeline_fences, ext, sizeof(timeline_fences)))
-		return -EFAULT;
-
-	eb->extension_flags |= BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES);
-
-	return get_timeline_fence_array(&timeline_fences, eb);
-}
-
 static const i915_user_extension_fn execbuf_extensions[] = {
 	[DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES] = parse_timeline_fences,
 };
@@ -2520,8 +2533,6 @@ static int
 parse_execbuf2_extensions(struct drm_i915_gem_execbuffer2 *args,
 			  struct i915_execbuffer *eb)
 {
-	eb->extension_flags = 0;
-
 	if (!(args->flags & I915_EXEC_USE_EXTENSIONS))
 		return 0;
 
@@ -2575,7 +2586,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.trampoline = NULL;
 
 	eb.fences = NULL;
-	eb.n_fences = 0;
+	eb.num_fences = 0;
 
 	eb.batch_flags = 0;
 	if (args->flags & I915_EXEC_SECURE) {
@@ -2594,14 +2605,24 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
 
@@ -2613,17 +2634,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		}
 	}
 
-	err = parse_execbuf2_extensions(args, &eb);
-	if (err)
-		goto err_out_fence;
-
-	err = get_legacy_fence_array(args, &eb);
-	if (err)
-		goto err_arr_fence;
-
 	err = eb_create(&eb);
 	if (err)
-		goto err_arr_fence;
+		goto err_out_fence;
 
 	GEM_BUG_ON(!eb.lut_size);
 
@@ -2719,7 +2732,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			goto err_request;
 	}
 
-	if (eb.n_fences) {
+	if (eb.fences) {
 		err = await_fence_array(&eb);
 		if (err)
 			goto err_request;
@@ -2750,7 +2763,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	i915_request_get(eb.request);
 	eb_request_add(&eb);
 
-	if (eb.n_fences)
+	if (eb.fences)
 		signal_fence_array(&eb);
 
 	if (out_fence) {
@@ -2779,13 +2792,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 021276c39842..e6cbd22308aa 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -620,12 +620,11 @@ typedef struct drm_i915_irq_wait {
 #define I915_PARAM_PERF_REVISION	54
 
 /* Query whether DRM_I915_GEM_EXECBUFFER2 supports supplying an array of
- * timeline syncobj through drm_i915_gem_execbuf_ext_timeline_fences. See
+ * timeline syncobj through drm_i915_gem_execbuffer_ext_timeline_fences. See
  * I915_EXEC_USE_EXTENSIONS.
  */
 #define I915_PARAM_HAS_EXEC_TIMELINE_FENCES 55
 
-
 /* Must be kept compact -- no holes and well documented */
 
 typedef struct drm_i915_getparam {
@@ -1053,14 +1052,10 @@ struct drm_i915_gem_exec_fence {
 	__u32 flags;
 };
 
-enum drm_i915_gem_execbuffer_ext {
-	/**
-	 * See drm_i915_gem_execbuf_ext_timeline_fences.
-	 */
-	DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES = 1,
-
-	DRM_I915_GEM_EXECBUFFER_EXT_MAX /* non-ABI */
-};
+/**
+ * See drm_i915_gem_execbuffer_ext_timeline_fences.
+ */
+#define DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES 0
 
 /**
  * This structure describes an array of drm_syncobj and associated points for
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
