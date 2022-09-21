Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1D65BF722
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 09:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38FBD10E860;
	Wed, 21 Sep 2022 07:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A717A10E833;
 Wed, 21 Sep 2022 07:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663744212; x=1695280212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JmtRL8nC3kaqT8rF9LQkjqJD8233lUIGix8SL1hu8vg=;
 b=JpBvxPTIGH1qLEe5xMKB7NwcFF+jIWNpoX0VxQD+zObFdZALl+DxEoKL
 NZBAXH2N9At6C/SPsmMDGU5LSIKLYBpOSy0TKlls3bb2VTUSyYYzBIzOa
 wWHMq8JxQKINvGcN7QNAdaLtxus72olN3m7bC8Tdez4ezR542oT5lILQM
 OymlgbF6yoOs5ZRddBndneJHGj625U3dHP/y6EXLVeXR3oN2gqc7E+eJl
 OZgWjfDUEmBGm39tajfF01Hj9MI0FFs1xciE77Skf7sU+uNB5Z5KmJi9w
 9dhWLxImZ9+yePF1o1ROZmXvCNU/lhYYP1HupmrUrSuaaZG699FBB4Lqb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="386208172"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="386208172"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:10:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="948022816"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 21 Sep 2022 00:10:11 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Sep 2022 00:09:36 -0700
Message-Id: <20220921070945.27764-6-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20220921070945.27764-1-niranjana.vishwanathapura@intel.com>
References: <20220921070945.27764-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v4 05/14] drm/i915/vm_bind: Support for VM private
 BOs
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
Cc: paulo.r.zanoni@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Each VM creates a root_obj and shares it with all of its private objects
to use it as dma_resv object. This has a performance advantage as it
requires a single dma_resv object update for all private BOs vs list of
dma_resv objects update for shared BOs, in the execbuf path.

VM private BOs can be only mapped on specified VM and cannot be dmabuf
exported. Also, they are supported only in vm_bind mode.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c    | 40 ++++++++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  6 +++
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  3 ++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 ++
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  3 ++
 .../drm/i915/gem/i915_gem_vm_bind_object.c    |  9 +++++
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  4 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  2 +
 drivers/gpu/drm/i915/i915_vma.c               |  1 +
 drivers/gpu/drm/i915/i915_vma_types.h         |  2 +
 include/uapi/drm/i915_drm.h                   | 30 ++++++++++++++
 12 files changed, 105 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 3b3ab4abb0a3..692d95ef5d3e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -253,6 +253,7 @@ struct create_ext {
 	unsigned int n_placements;
 	unsigned int placement_mask;
 	unsigned long flags;
+	u32 vm_id;
 };
 
 static void repr_placements(char *buf, size_t size,
@@ -402,9 +403,24 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
 	return 0;
 }
 
+static int ext_set_vm_private(struct i915_user_extension __user *base,
+			      void *data)
+{
+	struct drm_i915_gem_create_ext_vm_private ext;
+	struct create_ext *ext_data = data;
+
+	if (copy_from_user(&ext, base, sizeof(ext)))
+		return -EFAULT;
+
+	ext_data->vm_id = ext.vm_id;
+
+	return 0;
+}
+
 static const i915_user_extension_fn create_extensions[] = {
 	[I915_GEM_CREATE_EXT_MEMORY_REGIONS] = ext_set_placements,
 	[I915_GEM_CREATE_EXT_PROTECTED_CONTENT] = ext_set_protected,
+	[I915_GEM_CREATE_EXT_VM_PRIVATE] = ext_set_vm_private,
 };
 
 /**
@@ -420,6 +436,7 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_create_ext *args = data;
 	struct create_ext ext_data = { .i915 = i915 };
+	struct i915_address_space *vm = NULL;
 	struct drm_i915_gem_object *obj;
 	int ret;
 
@@ -433,6 +450,12 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 	if (ret)
 		return ret;
 
+	if (ext_data.vm_id) {
+		vm = i915_gem_vm_lookup(file->driver_priv, ext_data.vm_id);
+		if (unlikely(!vm))
+			return -ENOENT;
+	}
+
 	if (!ext_data.n_placements) {
 		ext_data.placements[0] =
 			intel_memory_region_by_type(i915, INTEL_MEMORY_SYSTEM);
@@ -459,8 +482,21 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 						ext_data.placements,
 						ext_data.n_placements,
 						ext_data.flags);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
+	if (IS_ERR(obj)) {
+		ret = PTR_ERR(obj);
+		goto vm_put;
+	}
+
+	if (vm) {
+		obj->base.resv = vm->root_obj->base.resv;
+		obj->priv_root = i915_gem_object_get(vm->root_obj);
+		i915_vm_put(vm);
+	}
 
 	return i915_gem_publish(obj, file, &args->size, &args->handle);
+vm_put:
+	if (vm)
+		i915_vm_put(vm);
+
+	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index f5062d0c6333..6433173c3e84 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -218,6 +218,12 @@ struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags)
 	struct drm_i915_gem_object *obj = to_intel_bo(gem_obj);
 	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
 
+	if (obj->priv_root) {
+		drm_dbg(obj->base.dev,
+			"Exporting VM private objects is not allowed\n");
+		return ERR_PTR(-EINVAL);
+	}
+
 	exp_info.ops = &i915_dmabuf_ops;
 	exp_info.size = gem_obj->size;
 	exp_info.flags = flags;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index f85f10cf9c34..33d989a20227 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -864,6 +864,10 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		if (unlikely(!obj))
 			return ERR_PTR(-ENOENT);
 
+		/* VM private objects are not supported here */
+		if (obj->priv_root)
+			return ERR_PTR(-EINVAL);
+
 		/*
 		 * If the user has opted-in for protected-object tracking, make
 		 * sure the object encryption can be used.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 7ff9c7877bec..271ad62b3245 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -108,6 +108,9 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
  */
 void __i915_gem_object_fini(struct drm_i915_gem_object *obj)
 {
+	if (obj->priv_root && !obj->ttm.created)
+		i915_gem_object_put(obj->priv_root);
+
 	mutex_destroy(&obj->mm.get_page.lock);
 	mutex_destroy(&obj->mm.get_dma_page.lock);
 	dma_resv_fini(&obj->base._resv);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 40305e2bcd49..2e79cfc0b06a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -241,6 +241,9 @@ struct drm_i915_gem_object {
 
 	const struct drm_i915_gem_object_ops *ops;
 
+	/* For VM private BO, points to root_obj in VM. NULL otherwise */
+	struct drm_i915_gem_object *priv_root;
+
 	struct {
 		/**
 		 * @vma.lock: protect the list/tree of vmas
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 0544b0a4a43a..0a02367fae5d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1153,6 +1153,9 @@ void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
 	mutex_destroy(&obj->ttm.get_io_page.lock);
 
 	if (obj->ttm.created) {
+		if (obj->priv_root)
+			i915_gem_object_put(obj->priv_root);
+
 		/*
 		 * We freely manage the shrinker LRU outide of the mm.pages life
 		 * cycle. As a result when destroying the object we should be
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
index c24e22657617..7ca6a41fc981 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
@@ -92,6 +92,7 @@ static void i915_gem_vm_bind_remove(struct i915_vma *vma, bool release_obj)
 	lockdep_assert_held(&vma->vm->vm_bind_lock);
 
 	list_del_init(&vma->vm_bind_link);
+	list_del_init(&vma->non_priv_vm_bind_link);
 	i915_vm_bind_it_remove(vma, &vma->vm->va);
 
 	/* Release object */
@@ -210,6 +211,11 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
 		goto put_obj;
 	}
 
+	if (obj->priv_root && obj->priv_root != vm->root_obj) {
+		ret = -EINVAL;
+		goto put_obj;
+	}
+
 	ret = mutex_lock_interruptible(&vm->vm_bind_lock);
 	if (ret)
 		goto put_obj;
@@ -236,6 +242,9 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
 
 		list_add_tail(&vma->vm_bind_link, &vm->vm_bound_list);
 		i915_vm_bind_it_insert(vma, &vm->va);
+		if (!obj->priv_root)
+			list_add_tail(&vma->non_priv_vm_bind_link,
+				      &vm->non_priv_vm_bind_list);
 
 		/* Hold object reference until vm_unbind */
 		i915_gem_object_get(vma->obj);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 0daa70c6ed0d..da4f9dee0397 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -177,6 +177,7 @@ int i915_vm_lock_objects(struct i915_address_space *vm,
 void i915_address_space_fini(struct i915_address_space *vm)
 {
 	drm_mm_takedown(&vm->mm);
+	i915_gem_object_put(vm->root_obj);
 	GEM_BUG_ON(!RB_EMPTY_ROOT(&vm->va.rb_root));
 	mutex_destroy(&vm->vm_bind_lock);
 }
@@ -292,6 +293,9 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	INIT_LIST_HEAD(&vm->vm_bind_list);
 	INIT_LIST_HEAD(&vm->vm_bound_list);
 	mutex_init(&vm->vm_bind_lock);
+	INIT_LIST_HEAD(&vm->non_priv_vm_bind_list);
+	vm->root_obj = i915_gem_object_create_internal(vm->i915, PAGE_SIZE);
+	GEM_BUG_ON(IS_ERR(vm->root_obj));
 }
 
 void *__px_vaddr(struct drm_i915_gem_object *p)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index b52061858161..3f2e87d3bf34 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -275,6 +275,8 @@ struct i915_address_space {
 	struct list_head vm_bound_list;
 	/* @va: tree of persistent vmas */
 	struct rb_root_cached va;
+	struct list_head non_priv_vm_bind_list;
+	struct drm_i915_gem_object *root_obj;
 
 	/* Global GTT */
 	bool is_ggtt:1;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 33cb0cbc7fb1..aa332ad69ec2 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -236,6 +236,7 @@ vma_create(struct drm_i915_gem_object *obj,
 	mutex_unlock(&vm->mutex);
 
 	INIT_LIST_HEAD(&vma->vm_bind_link);
+	INIT_LIST_HEAD(&vma->non_priv_vm_bind_link);
 	return vma;
 
 err_unlock:
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index bed7a344dcd7..6d727c2d9802 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -291,6 +291,8 @@ struct i915_vma {
 
 	/** @vm_bind_link: node for the vm_bind related lists of vm */
 	struct list_head vm_bind_link;
+	/* @non_priv_vm_bind_link: Link in non-private persistent VMA list */
+	struct list_head non_priv_vm_bind_link;
 
 	/** Interval tree structures for persistent vma */
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 4a4f2a77388c..9f93e4afa1c8 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3636,9 +3636,13 @@ struct drm_i915_gem_create_ext {
 	 *
 	 * For I915_GEM_CREATE_EXT_PROTECTED_CONTENT usage see
 	 * struct drm_i915_gem_create_ext_protected_content.
+	 *
+	 * For I915_GEM_CREATE_EXT_VM_PRIVATE usage see
+	 * struct drm_i915_gem_create_ext_vm_private.
 	 */
 #define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
 #define I915_GEM_CREATE_EXT_PROTECTED_CONTENT 1
+#define I915_GEM_CREATE_EXT_VM_PRIVATE 2
 	__u64 extensions;
 };
 
@@ -3756,6 +3760,32 @@ struct drm_i915_gem_create_ext_protected_content {
 /* ID of the protected content session managed by i915 when PXP is active */
 #define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
 
+/**
+ * struct drm_i915_gem_create_ext_vm_private - Extension to make the object
+ * private to the specified VM.
+ *
+ * See struct drm_i915_gem_create_ext.
+ *
+ * By default, BOs can be mapped on multiple VMs and can also be dma-buf
+ * exported. Hence these BOs are referred to as Shared BOs.
+ * During each execbuf3 submission, the request fence must be added to the
+ * dma-resv fence list of all shared BOs mapped on the VM.
+ *
+ * Unlike Shared BOs, these VM private BOs can only be mapped on the VM they
+ * are private to and can't be dma-buf exported. All private BOs of a VM share
+ * the dma-resv object. Hence during each execbuf3 submission, they need only
+ * one dma-resv fence list updated. Thus, the fast path (where required
+ * mappings are already bound) submission latency is O(1) w.r.t the number of
+ * VM private BOs.
+ */
+struct drm_i915_gem_create_ext_vm_private {
+	/** @base: Extension link. See struct i915_user_extension. */
+	struct i915_user_extension base;
+
+	/** @vm_id: Id of the VM to which Object is private */
+	__u32 vm_id;
+};
+
 /**
  * struct drm_i915_gem_vm_bind - VA to object mapping to bind.
  *
-- 
2.21.0.rc0.32.g243a4c7e27

