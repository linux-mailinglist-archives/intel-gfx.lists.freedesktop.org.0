Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B414CCFE9
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 09:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 564E410F882;
	Fri,  4 Mar 2022 08:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E1310F880;
 Fri,  4 Mar 2022 08:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646382425; x=1677918425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QmTXbo97IlF/Zf4spIAGtI9L9kQAD60UbhYZ73RTM3k=;
 b=NMxO8O+qRdxRUDTxCToTF1f4IyidTJSMC1B7VT1MCdK45auj+11v2sYF
 0hlTfA4H28cKzXU6RBX8uqsNFD2u4TAJVZQoqkboEyaCUAtS6XSorrlSL
 8/KS2hRHPOjZ0RBKST73tG8EAAis+iqM2ZzMupIaUQ2/+FKXIrmKv2J5u
 ukLkRTRq0SADPVjXO0gBX/sr6X192R4qQUFKsubgqoIWyG98oJ2VOa8of
 Fmi/fNziQ2PgukLdlWGHWTmhhBwK2k8Jh/DmoRShkr5N/9WGzUX/LdRqd
 0d2G/5xrKS1VvxP+tDOA5FOAQsl8jqSwhmsN6xX43t1ehKQ6r5ZvsECs2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="233887209"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="233887209"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 00:26:54 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="810380336"
Received: from mmazarel-mobl.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.59])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 00:26:52 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  4 Mar 2022 09:26:39 +0100
Message-Id: <20220304082641.308069-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304082641.308069-1-thomas.hellstrom@linux.intel.com>
References: <20220304082641.308069-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915: Remove the vm open count
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

vms are not getting properly closed. Rather than fixing that,
Remove the vm open count and instead rely on the vm refcount.

The vm open count existed solely to break the strong references the
vmas had on the vms. Now instead make those references weak and
ensure vmas are destroyed when the vm is destroyed.

Unfortunately if the vm destructor and the object destructor both
wants to destroy a vma, that may lead to a race in that the vm
destructor just unbinds the vma and leaves the actual vma destruction
to the object destructor. However in order for the object destructor
to ensure the vma is unbound it needs to grab the vm mutex. In order
to keep the vm mutex alive until the object destructor is done with
it, somewhat hackishly grab a vm_resv refcount that is released late
in the vma destruction process, when the vm mutex is no longer needed.

v2: Address review-comments from Niranjana
- Clarify that the struct i915_address_space::skip_pte_rewrite is a hack
  and should ideally be replaced in an upcoming patch.
- Remove an unneeded continue in clear_vm_list and update comment.

v3:
- Documentation update
- Commit message formatting

Co-developed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c      |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 29 ++-----
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  6 ++
 .../gpu/drm/i915/gem/selftests/mock_context.c |  5 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 30 +++----
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 54 ++++++++----
 drivers/gpu/drm/i915/gt/intel_gtt.h           | 56 ++++--------
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 86 +++++++++----------
 drivers/gpu/drm/i915/i915_gem.c               |  6 +-
 drivers/gpu/drm/i915/i915_vma.c               | 63 ++++++++++----
 drivers/gpu/drm/i915/i915_vma_resource.c      |  2 +-
 drivers/gpu/drm/i915/i915_vma_resource.h      |  6 ++
 drivers/gpu/drm/i915/i915_vma_types.h         |  7 ++
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  4 +-
 15 files changed, 192 insertions(+), 166 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 05dd7dba3a5c..3af4930c1095 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -300,5 +300,5 @@ void intel_dpt_destroy(struct i915_address_space *vm)
 {
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 
-	i915_vm_close(&dpt->vm);
+	i915_vm_put(&dpt->vm);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index bc6d59df064d..fe872e02b395 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1456,8 +1456,6 @@ static void set_closed_name(struct i915_gem_context *ctx)
 
 static void context_close(struct i915_gem_context *ctx)
 {
-	struct i915_address_space *vm;
-
 	/* Flush any concurrent set_engines() */
 	mutex_lock(&ctx->engines_mutex);
 	unpin_engines(__context_engines_static(ctx));
@@ -1469,19 +1467,6 @@ static void context_close(struct i915_gem_context *ctx)
 
 	set_closed_name(ctx);
 
-	vm = ctx->vm;
-	if (vm) {
-		/* i915_vm_close drops the final reference, which is a bit too
-		 * early and could result in surprises with concurrent
-		 * operations racing with thist ctx close. Keep a full reference
-		 * until the end.
-		 */
-		i915_vm_get(vm);
-		i915_vm_close(vm);
-	}
-
-	ctx->file_priv = ERR_PTR(-EBADF);
-
 	/*
 	 * The LUT uses the VMA as a backpointer to unref the object,
 	 * so we need to clear the LUT before we close all the VMA (inside
@@ -1489,6 +1474,8 @@ static void context_close(struct i915_gem_context *ctx)
 	 */
 	lut_close(ctx);
 
+	ctx->file_priv = ERR_PTR(-EBADF);
+
 	spin_lock(&ctx->i915->gem.contexts.lock);
 	list_del(&ctx->link);
 	spin_unlock(&ctx->i915->gem.contexts.lock);
@@ -1587,12 +1574,8 @@ i915_gem_create_context(struct drm_i915_private *i915,
 		}
 		vm = &ppgtt->vm;
 	}
-	if (vm) {
-		ctx->vm = i915_vm_open(vm);
-
-		/* i915_vm_open() takes a reference */
-		i915_vm_put(vm);
-	}
+	if (vm)
+		ctx->vm = vm;
 
 	mutex_init(&ctx->engines_mutex);
 	if (pc->num_user_engines >= 0) {
@@ -1642,7 +1625,7 @@ i915_gem_create_context(struct drm_i915_private *i915,
 	free_engines(e);
 err_vm:
 	if (ctx->vm)
-		i915_vm_close(ctx->vm);
+		i915_vm_put(ctx->vm);
 err_ctx:
 	kfree(ctx);
 	return ERR_PTR(err);
@@ -1826,7 +1809,7 @@ static int get_ppgtt(struct drm_i915_file_private *file_priv,
 	if (err)
 		return err;
 
-	i915_vm_open(vm);
+	i915_vm_get(vm);
 
 	GEM_BUG_ON(id == 0); /* reserved for invalid/unassigned ppgtt */
 	args->value = id;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 89aa0557ade1..2b87ec76db9a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2702,6 +2702,11 @@ eb_select_engine(struct i915_execbuffer *eb)
 	if (err)
 		goto err;
 
+	if (!i915_vm_tryget(ce->vm)) {
+		err = -ENOENT;
+		goto err;
+	}
+
 	eb->context = ce;
 	eb->gt = ce->engine->gt;
 
@@ -2725,6 +2730,7 @@ eb_put_engine(struct i915_execbuffer *eb)
 {
 	struct intel_context *child;
 
+	i915_vm_put(eb->context->vm);
 	intel_gt_pm_put(eb->gt);
 	for_each_child(eb->context, child)
 		intel_context_put(child);
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index 6d6082b5f31f..8ac6726ec16b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -42,8 +42,7 @@ mock_context(struct drm_i915_private *i915,
 		if (!ppgtt)
 			goto err_free;
 
-		ctx->vm = i915_vm_open(&ppgtt->vm);
-		i915_vm_put(&ppgtt->vm);
+		ctx->vm = &ppgtt->vm;
 	}
 
 	mutex_init(&ctx->engines_mutex);
@@ -59,7 +58,7 @@ mock_context(struct drm_i915_private *i915,
 
 err_vm:
 	if (ctx->vm)
-		i915_vm_close(ctx->vm);
+		i915_vm_put(ctx->vm);
 err_free:
 	kfree(ctx);
 	return NULL;
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 871fe7bda0e0..1bb766c79dcb 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -322,7 +322,7 @@ int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww)
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);
 	int err;
 
-	GEM_BUG_ON(!atomic_read(&ppgtt->base.vm.open));
+	GEM_BUG_ON(!kref_read(&ppgtt->base.vm.ref));
 
 	/*
 	 * Workaround the limited maximum vma->pin_count and the aliasing_ppgtt
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 8850d4e0f9cc..04191fe2ee34 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -126,7 +126,7 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
 void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 {
 	struct i915_vma *vma, *vn;
-	int open;
+	int save_skip_rewrite;
 
 	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
 
@@ -135,8 +135,12 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 
 	mutex_lock(&vm->mutex);
 
-	/* Skip rewriting PTE on VMA unbind. */
-	open = atomic_xchg(&vm->open, 0);
+	/*
+	 * Skip rewriting PTE on VMA unbind.
+	 * FIXME: Use an argument to i915_vma_unbind() instead?
+	 */
+	save_skip_rewrite = vm->skip_pte_rewrite;
+	vm->skip_pte_rewrite = true;
 
 	list_for_each_entry_safe(vma, vn, &vm->bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
@@ -154,16 +158,14 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 			 */
 			i915_gem_object_get(obj);
 
-			atomic_set(&vm->open, open);
 			mutex_unlock(&vm->mutex);
 
 			i915_gem_object_lock(obj, NULL);
-			open = i915_vma_unbind(vma);
+			GEM_WARN_ON(i915_vma_unbind(vma));
 			i915_gem_object_unlock(obj);
-
-			GEM_WARN_ON(open);
-
 			i915_gem_object_put(obj);
+
+			vm->skip_pte_rewrite = save_skip_rewrite;
 			goto retry;
 		}
 
@@ -179,7 +181,7 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 
 	vm->clear_range(vm, 0, vm->total);
 
-	atomic_set(&vm->open, open);
+	vm->skip_pte_rewrite = save_skip_rewrite;
 
 	mutex_unlock(&vm->mutex);
 }
@@ -773,13 +775,13 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 {
 	struct i915_vma *vma, *vn;
 
-	atomic_set(&ggtt->vm.open, 0);
-
 	flush_workqueue(ggtt->vm.i915->wq);
 	i915_gem_drain_freed_objects(ggtt->vm.i915);
 
 	mutex_lock(&ggtt->vm.mutex);
 
+	ggtt->vm.skip_pte_rewrite = true;
+
 	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
 		bool trylock;
@@ -1307,16 +1309,12 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
 {
 	struct i915_vma *vma;
 	bool write_domain_objs = false;
-	int open;
 
 	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
 
 	/* First fill our portion of the GTT with scratch pages */
 	vm->clear_range(vm, 0, vm->total);
 
-	/* Skip rewriting PTE on VMA unbind. */
-	open = atomic_xchg(&vm->open, 0);
-
 	/* clflush objects bound into the GGTT and rebind them. */
 	list_for_each_entry(vma, &vm->bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
@@ -1333,8 +1331,6 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
 		}
 	}
 
-	atomic_set(&vm->open, open);
-
 	return write_domain_objs;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4bcdfcab3642..4f70d512a000 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -97,32 +97,52 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
 	return 0;
 }
 
-void __i915_vm_close(struct i915_address_space *vm)
+static void clear_vm_list(struct list_head *list)
 {
 	struct i915_vma *vma, *vn;
 
-	if (!atomic_dec_and_mutex_lock(&vm->open, &vm->mutex))
-		return;
-
-	list_for_each_entry_safe(vma, vn, &vm->bound_list, vm_link) {
+	list_for_each_entry_safe(vma, vn, list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
 
-		if (!kref_get_unless_zero(&obj->base.refcount)) {
+		if (!i915_gem_object_get_rcu(obj)) {
 			/*
-			 * Unbind the dying vma to ensure the bound_list
+			 * Object is dying, but has not yet cleared its
+			 * vma list.
+			 * Unbind the dying vma to ensure our list
 			 * is completely drained. We leave the destruction to
-			 * the object destructor.
+			 * the object destructor to avoid the vma
+			 * disappearing under it.
 			 */
 			atomic_and(~I915_VMA_PIN_MASK, &vma->flags);
 			WARN_ON(__i915_vma_unbind(vma));
-			continue;
+
+			/* Remove from the unbound list */
+			list_del_init(&vma->vm_link);
+
+			/*
+			 * Delay the vm and vm mutex freeing until the
+			 * object is done with destruction.
+			 */
+			i915_vm_resv_get(vma->vm);
+			vma->vm_ddestroy = true;
+		} else {
+			i915_vma_destroy_locked(vma);
+			i915_gem_object_put(obj);
 		}
 
-		/* Keep the obj (and hence the vma) alive as _we_ destroy it */
-		i915_vma_destroy_locked(vma);
-		i915_gem_object_put(obj);
 	}
+}
+
+static void __i915_vm_close(struct i915_address_space *vm)
+{
+	mutex_lock(&vm->mutex);
+
+	clear_vm_list(&vm->bound_list);
+	clear_vm_list(&vm->unbound_list);
+
+	/* Check for must-fix unanticipated side-effects */
 	GEM_BUG_ON(!list_empty(&vm->bound_list));
+	GEM_BUG_ON(!list_empty(&vm->unbound_list));
 
 	mutex_unlock(&vm->mutex);
 }
@@ -144,7 +164,6 @@ int i915_vm_lock_objects(struct i915_address_space *vm,
 void i915_address_space_fini(struct i915_address_space *vm)
 {
 	drm_mm_takedown(&vm->mm);
-	mutex_destroy(&vm->mutex);
 }
 
 /**
@@ -152,7 +171,8 @@ void i915_address_space_fini(struct i915_address_space *vm)
  * @kref: Pointer to the &i915_address_space.resv_ref member.
  *
  * This function is called when the last lock sharer no longer shares the
- * &i915_address_space._resv lock.
+ * &i915_address_space._resv lock, and also if we raced when
+ * destroying a vma by the vma destruction
  */
 void i915_vm_resv_release(struct kref *kref)
 {
@@ -160,6 +180,8 @@ void i915_vm_resv_release(struct kref *kref)
 		container_of(kref, typeof(*vm), resv_ref);
 
 	dma_resv_fini(&vm->_resv);
+	mutex_destroy(&vm->mutex);
+
 	kfree(vm);
 }
 
@@ -168,6 +190,8 @@ static void __i915_vm_release(struct work_struct *work)
 	struct i915_address_space *vm =
 		container_of(work, struct i915_address_space, release_work);
 
+	__i915_vm_close(vm);
+
 	/* Synchronize async unbinds. */
 	i915_vma_resource_bind_dep_sync_all(vm);
 
@@ -201,7 +225,6 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 
 	vm->pending_unbind = RB_ROOT_CACHED;
 	INIT_WORK(&vm->release_work, __i915_vm_release);
-	atomic_set(&vm->open, 1);
 
 	/*
 	 * The vm->mutex must be reclaim safe (for use in the shrinker).
@@ -245,6 +268,7 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	vm->mm.head_node.color = I915_COLOR_UNEVICTABLE;
 
 	INIT_LIST_HEAD(&vm->bound_list);
+	INIT_LIST_HEAD(&vm->unbound_list);
 }
 
 void *__px_vaddr(struct drm_i915_gem_object *p)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 9d83c2d3959c..4529b5e9f6e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -240,15 +240,6 @@ struct i915_address_space {
 
 	unsigned int bind_async_flags;
 
-	/*
-	 * Each active user context has its own address space (in full-ppgtt).
-	 * Since the vm may be shared between multiple contexts, we count how
-	 * many contexts keep us "open". Once open hits zero, we are closed
-	 * and do not allow any new attachments, and proceed to shutdown our
-	 * vma and page directories.
-	 */
-	atomic_t open;
-
 	struct mutex mutex; /* protects vma and our lists */
 
 	struct kref resv_ref; /* kref to keep the reservation lock alive. */
@@ -263,6 +254,11 @@ struct i915_address_space {
 	 */
 	struct list_head bound_list;
 
+	/**
+	 * List of vmas not yet bound or evicted.
+	 */
+	struct list_head unbound_list;
+
 	/* Global GTT */
 	bool is_ggtt:1;
 
@@ -272,6 +268,9 @@ struct i915_address_space {
 	/* Some systems support read-only mappings for GGTT and/or PPGTT */
 	bool has_read_only:1;
 
+	/* Skip pte rewrite on unbind for suspend. Protected by @mutex */
+	bool skip_pte_rewrite:1;
+
 	u8 top;
 	u8 pd_shift;
 	u8 scratch_order;
@@ -446,6 +445,17 @@ i915_vm_get(struct i915_address_space *vm)
 	return vm;
 }
 
+static inline struct i915_address_space *
+i915_vm_tryget(struct i915_address_space *vm)
+{
+	return kref_get_unless_zero(&vm->ref) ? vm : NULL;
+}
+
+static inline void assert_vm_alive(struct i915_address_space *vm)
+{
+	GEM_BUG_ON(!kref_read(&vm->ref));
+}
+
 /**
  * i915_vm_resv_get - Obtain a reference on the vm's reservation lock
  * @vm: The vm whose reservation lock we want to share.
@@ -476,34 +486,6 @@ static inline void i915_vm_resv_put(struct i915_address_space *vm)
 	kref_put(&vm->resv_ref, i915_vm_resv_release);
 }
 
-static inline struct i915_address_space *
-i915_vm_open(struct i915_address_space *vm)
-{
-	GEM_BUG_ON(!atomic_read(&vm->open));
-	atomic_inc(&vm->open);
-	return i915_vm_get(vm);
-}
-
-static inline bool
-i915_vm_tryopen(struct i915_address_space *vm)
-{
-	if (atomic_add_unless(&vm->open, 1, 0))
-		return i915_vm_get(vm);
-
-	return false;
-}
-
-void __i915_vm_close(struct i915_address_space *vm);
-
-static inline void
-i915_vm_close(struct i915_address_space *vm)
-{
-	GEM_BUG_ON(!atomic_read(&vm->open));
-	__i915_vm_close(vm);
-
-	i915_vm_put(vm);
-}
-
 void i915_address_space_init(struct i915_address_space *vm, int subclass);
 void i915_address_space_fini(struct i915_address_space *vm);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 72d5faab8f9a..09f8cd2d0e2c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -1736,15 +1736,9 @@ static int live_preempt(void *arg)
 	enum intel_engine_id id;
 	int err = -ENOMEM;
 
-	if (igt_spinner_init(&spin_hi, gt))
-		return -ENOMEM;
-
-	if (igt_spinner_init(&spin_lo, gt))
-		goto err_spin_hi;
-
 	ctx_hi = kernel_context(gt->i915, NULL);
 	if (!ctx_hi)
-		goto err_spin_lo;
+		return -ENOMEM;
 	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
 	ctx_lo = kernel_context(gt->i915, NULL);
@@ -1752,6 +1746,12 @@ static int live_preempt(void *arg)
 		goto err_ctx_hi;
 	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
 
+	if (igt_spinner_init(&spin_hi, gt))
+		goto err_ctx_lo;
+
+	if (igt_spinner_init(&spin_lo, gt))
+		goto err_spin_hi;
+
 	for_each_engine(engine, gt, id) {
 		struct igt_live_test t;
 		struct i915_request *rq;
@@ -1761,14 +1761,14 @@ static int live_preempt(void *arg)
 
 		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
 			err = -EIO;
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		rq = spinner_create_request(&spin_lo, ctx_lo, engine,
 					    MI_ARB_CHECK);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		i915_request_add(rq);
@@ -1777,7 +1777,7 @@ static int live_preempt(void *arg)
 			GEM_TRACE_DUMP();
 			intel_gt_set_wedged(gt);
 			err = -EIO;
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		rq = spinner_create_request(&spin_hi, ctx_hi, engine,
@@ -1785,7 +1785,7 @@ static int live_preempt(void *arg)
 		if (IS_ERR(rq)) {
 			igt_spinner_end(&spin_lo);
 			err = PTR_ERR(rq);
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		i915_request_add(rq);
@@ -1794,7 +1794,7 @@ static int live_preempt(void *arg)
 			GEM_TRACE_DUMP();
 			intel_gt_set_wedged(gt);
 			err = -EIO;
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		igt_spinner_end(&spin_hi);
@@ -1802,19 +1802,19 @@ static int live_preempt(void *arg)
 
 		if (igt_live_test_end(&t)) {
 			err = -EIO;
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 	}
 
 	err = 0;
-err_ctx_lo:
-	kernel_context_close(ctx_lo);
-err_ctx_hi:
-	kernel_context_close(ctx_hi);
 err_spin_lo:
 	igt_spinner_fini(&spin_lo);
 err_spin_hi:
 	igt_spinner_fini(&spin_hi);
+err_ctx_lo:
+	kernel_context_close(ctx_lo);
+err_ctx_hi:
+	kernel_context_close(ctx_hi);
 	return err;
 }
 
@@ -1828,20 +1828,20 @@ static int live_late_preempt(void *arg)
 	enum intel_engine_id id;
 	int err = -ENOMEM;
 
-	if (igt_spinner_init(&spin_hi, gt))
-		return -ENOMEM;
-
-	if (igt_spinner_init(&spin_lo, gt))
-		goto err_spin_hi;
-
 	ctx_hi = kernel_context(gt->i915, NULL);
 	if (!ctx_hi)
-		goto err_spin_lo;
+		return -ENOMEM;
 
 	ctx_lo = kernel_context(gt->i915, NULL);
 	if (!ctx_lo)
 		goto err_ctx_hi;
 
+	if (igt_spinner_init(&spin_hi, gt))
+		goto err_ctx_lo;
+
+	if (igt_spinner_init(&spin_lo, gt))
+		goto err_spin_hi;
+
 	/* Make sure ctx_lo stays before ctx_hi until we trigger preemption. */
 	ctx_lo->sched.priority = 1;
 
@@ -1854,14 +1854,14 @@ static int live_late_preempt(void *arg)
 
 		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
 			err = -EIO;
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		rq = spinner_create_request(&spin_lo, ctx_lo, engine,
 					    MI_ARB_CHECK);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		i915_request_add(rq);
@@ -1875,7 +1875,7 @@ static int live_late_preempt(void *arg)
 		if (IS_ERR(rq)) {
 			igt_spinner_end(&spin_lo);
 			err = PTR_ERR(rq);
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		i915_request_add(rq);
@@ -1898,19 +1898,19 @@ static int live_late_preempt(void *arg)
 
 		if (igt_live_test_end(&t)) {
 			err = -EIO;
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 	}
 
 	err = 0;
-err_ctx_lo:
-	kernel_context_close(ctx_lo);
-err_ctx_hi:
-	kernel_context_close(ctx_hi);
 err_spin_lo:
 	igt_spinner_fini(&spin_lo);
 err_spin_hi:
 	igt_spinner_fini(&spin_hi);
+err_ctx_lo:
+	kernel_context_close(ctx_lo);
+err_ctx_hi:
+	kernel_context_close(ctx_hi);
 	return err;
 
 err_wedged:
@@ -1918,7 +1918,7 @@ static int live_late_preempt(void *arg)
 	igt_spinner_end(&spin_lo);
 	intel_gt_set_wedged(gt);
 	err = -EIO;
-	goto err_ctx_lo;
+	goto err_spin_lo;
 }
 
 struct preempt_client {
@@ -3382,12 +3382,9 @@ static int live_preempt_timeout(void *arg)
 	if (!intel_has_reset_engine(gt))
 		return 0;
 
-	if (igt_spinner_init(&spin_lo, gt))
-		return -ENOMEM;
-
 	ctx_hi = kernel_context(gt->i915, NULL);
 	if (!ctx_hi)
-		goto err_spin_lo;
+		return -ENOMEM;
 	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
 	ctx_lo = kernel_context(gt->i915, NULL);
@@ -3395,6 +3392,9 @@ static int live_preempt_timeout(void *arg)
 		goto err_ctx_hi;
 	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
 
+	if (igt_spinner_init(&spin_lo, gt))
+		goto err_ctx_lo;
+
 	for_each_engine(engine, gt, id) {
 		unsigned long saved_timeout;
 		struct i915_request *rq;
@@ -3406,21 +3406,21 @@ static int live_preempt_timeout(void *arg)
 					    MI_NOOP); /* preemption disabled */
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		i915_request_add(rq);
 		if (!igt_wait_for_spinner(&spin_lo, rq)) {
 			intel_gt_set_wedged(gt);
 			err = -EIO;
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		rq = igt_request_alloc(ctx_hi, engine);
 		if (IS_ERR(rq)) {
 			igt_spinner_end(&spin_lo);
 			err = PTR_ERR(rq);
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		/* Flush the previous CS ack before changing timeouts */
@@ -3440,7 +3440,7 @@ static int live_preempt_timeout(void *arg)
 			intel_gt_set_wedged(gt);
 			i915_request_put(rq);
 			err = -ETIME;
-			goto err_ctx_lo;
+			goto err_spin_lo;
 		}
 
 		igt_spinner_end(&spin_lo);
@@ -3448,12 +3448,12 @@ static int live_preempt_timeout(void *arg)
 	}
 
 	err = 0;
+err_spin_lo:
+	igt_spinner_fini(&spin_lo);
 err_ctx_lo:
 	kernel_context_close(ctx_lo);
 err_ctx_hi:
 	kernel_context_close(ctx_hi);
-err_spin_lo:
-	igt_spinner_fini(&spin_lo);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 2e10187cd0a0..dd84ebabb50f 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -142,8 +142,6 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 	while (!ret && (vma = list_first_entry_or_null(&obj->vma.list,
 						       struct i915_vma,
 						       obj_link))) {
-		struct i915_address_space *vm = vma->vm;
-
 		list_move_tail(&vma->obj_link, &still_in_list);
 		if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK))
 			continue;
@@ -154,7 +152,7 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 		}
 
 		ret = -EAGAIN;
-		if (!i915_vm_tryopen(vm))
+		if (!i915_vm_tryget(vma->vm))
 			break;
 
 		/* Prevent vma being freed by i915_vma_parked as we unbind */
@@ -186,7 +184,7 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 			__i915_vma_put(vma);
 		}
 
-		i915_vm_close(vm);
+		i915_vm_put(vma->vm);
 		spin_lock(&obj->vma.lock);
 	}
 	list_splice_init(&still_in_list, &obj->vma.list);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 94fcdb7bd21d..cfa8a212b4dd 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -47,7 +47,7 @@ static inline void assert_vma_held_evict(const struct i915_vma *vma)
 	 * This is the only exception to the requirement of the object lock
 	 * being held.
 	 */
-	if (atomic_read(&vma->vm->open))
+	if (kref_read(&vma->vm->ref))
 		assert_object_held_shared(vma->obj);
 }
 
@@ -113,6 +113,7 @@ vma_create(struct drm_i915_gem_object *obj,
 	struct i915_vma *pos = ERR_PTR(-E2BIG);
 	struct i915_vma *vma;
 	struct rb_node *rb, **p;
+	int err;
 
 	/* The aliasing_ppgtt should never be used directly! */
 	GEM_BUG_ON(vm == &vm->gt->ggtt->alias->vm);
@@ -122,7 +123,6 @@ vma_create(struct drm_i915_gem_object *obj,
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&vma->ref);
-	vma->vm = i915_vm_get(vm);
 	vma->ops = &vm->vma_ops;
 	vma->obj = obj;
 	vma->size = obj->base.size;
@@ -138,6 +138,8 @@ vma_create(struct drm_i915_gem_object *obj,
 	}
 
 	INIT_LIST_HEAD(&vma->closed_link);
+	INIT_LIST_HEAD(&vma->obj_link);
+	RB_CLEAR_NODE(&vma->obj_node);
 
 	if (view && view->type != I915_GGTT_VIEW_NORMAL) {
 		vma->ggtt_view = *view;
@@ -163,8 +165,16 @@ vma_create(struct drm_i915_gem_object *obj,
 
 	GEM_BUG_ON(!IS_ALIGNED(vma->size, I915_GTT_PAGE_SIZE));
 
-	spin_lock(&obj->vma.lock);
+	err = mutex_lock_interruptible(&vm->mutex);
+	if (err) {
+		pos = ERR_PTR(err);
+		goto err_vma;
+	}
 
+	vma->vm = vm;
+	list_add_tail(&vma->vm_link, &vm->unbound_list);
+
+	spin_lock(&obj->vma.lock);
 	if (i915_is_ggtt(vm)) {
 		if (unlikely(overflows_type(vma->size, u32)))
 			goto err_unlock;
@@ -222,13 +232,15 @@ vma_create(struct drm_i915_gem_object *obj,
 		list_add_tail(&vma->obj_link, &obj->vma.list);
 
 	spin_unlock(&obj->vma.lock);
+	mutex_unlock(&vm->mutex);
 
 	return vma;
 
 err_unlock:
 	spin_unlock(&obj->vma.lock);
+	list_del_init(&vma->vm_link);
+	mutex_unlock(&vm->mutex);
 err_vma:
-	i915_vm_put(vm);
 	i915_vma_free(vma);
 	return pos;
 }
@@ -279,7 +291,7 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 	struct i915_vma *vma;
 
 	GEM_BUG_ON(view && !i915_is_ggtt_or_dpt(vm));
-	GEM_BUG_ON(!atomic_read(&vm->open));
+	GEM_BUG_ON(!kref_read(&vm->ref));
 
 	spin_lock(&obj->vma.lock);
 	vma = i915_vma_lookup(obj, vm, view);
@@ -322,7 +334,6 @@ static void __vma_release(struct dma_fence_work *work)
 		i915_gem_object_put(vw->pinned);
 
 	i915_vm_free_pt_stash(vw->vm, &vw->stash);
-	i915_vm_put(vw->vm);
 	if (vw->vma_res)
 		i915_vma_resource_put(vw->vma_res);
 }
@@ -841,7 +852,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	GEM_BUG_ON(!i915_gem_valid_gtt_space(vma, color));
 
-	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
+	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 
 	return 0;
 }
@@ -857,7 +868,7 @@ i915_vma_detach(struct i915_vma *vma)
 	 * vma, we can drop its hold on the backing storage and allow
 	 * it to be reaped by the shrinker.
 	 */
-	list_del(&vma->vm_link);
+	list_move_tail(&vma->vm_link, &vma->vm->unbound_list);
 }
 
 static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
@@ -1373,8 +1384,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 			goto err_rpm;
 		}
 
-		work->vm = i915_vm_get(vma->vm);
-
+		work->vm = vma->vm;
 		dma_fence_work_chain(&work->base, moving);
 
 		/* Allocate enough page directories to used PTE */
@@ -1622,7 +1632,6 @@ void i915_vma_release(struct kref *ref)
 {
 	struct i915_vma *vma = container_of(ref, typeof(*vma), ref);
 
-	i915_vm_put(vma->vm);
 	i915_active_fini(&vma->active);
 	GEM_WARN_ON(vma->resource);
 	i915_vma_free(vma);
@@ -1638,7 +1647,7 @@ static void force_unbind(struct i915_vma *vma)
 	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
 }
 
-static void release_references(struct i915_vma *vma)
+static void release_references(struct i915_vma *vma, bool vm_ddestroy)
 {
 	struct drm_i915_gem_object *obj = vma->obj;
 
@@ -1648,10 +1657,14 @@ static void release_references(struct i915_vma *vma)
 	list_del(&vma->obj_link);
 	if (!RB_EMPTY_NODE(&vma->obj_node))
 		rb_erase(&vma->obj_node, &obj->vma.tree);
+
 	spin_unlock(&obj->vma.lock);
 
 	__i915_vma_remove_closed(vma);
 
+	if (vm_ddestroy)
+		i915_vm_resv_put(vma->vm);
+
 	__i915_vma_put(vma);
 }
 
@@ -1667,8 +1680,12 @@ static void release_references(struct i915_vma *vma)
  * - __i915_gem_object_pages_fini()
  * - __i915_vm_close() - Blocks the above function by taking a reference on
  * the object.
- * - __i915_vma_parked() - Blocks the above functions by taking an open-count on
- * the vm and a reference on the object.
+ * - __i915_vma_parked() - Blocks the above functions by taking a reference
+ * on the vm and a reference on the object. Also takes the object lock so
+ * destruction from __i915_vma_parked() can be blocked by holding the
+ * object lock. Since the object lock is only allowed from within i915 with
+ * an object refcount, holding the object lock also implicitly blocks the
+ * vma freeing from __i915_gem_object_pages_fini().
  *
  * Because of locks taken during destruction, a vma is also guaranteed to
  * stay alive while the following locks are held if it was looked up while
@@ -1685,15 +1702,21 @@ void i915_vma_destroy_locked(struct i915_vma *vma)
 	lockdep_assert_held(&vma->vm->mutex);
 
 	force_unbind(vma);
-	release_references(vma);
+	list_del_init(&vma->vm_link);
+	release_references(vma, false);
 }
 
 void i915_vma_destroy(struct i915_vma *vma)
 {
+	bool vm_ddestroy;
+
 	mutex_lock(&vma->vm->mutex);
 	force_unbind(vma);
+	list_del_init(&vma->vm_link);
+	vm_ddestroy = vma->vm_ddestroy;
+	vma->vm_ddestroy = false;
 	mutex_unlock(&vma->vm->mutex);
-	release_references(vma);
+	release_references(vma, vm_ddestroy);
 }
 
 void i915_vma_parked(struct intel_gt *gt)
@@ -1711,7 +1734,7 @@ void i915_vma_parked(struct intel_gt *gt)
 		if (!kref_get_unless_zero(&obj->base.refcount))
 			continue;
 
-		if (!i915_vm_tryopen(vm)) {
+		if (!i915_vm_tryget(vm)) {
 			i915_gem_object_put(obj);
 			continue;
 		}
@@ -1737,7 +1760,7 @@ void i915_vma_parked(struct intel_gt *gt)
 		}
 
 		i915_gem_object_put(obj);
-		i915_vm_close(vm);
+		i915_vm_put(vm);
 	}
 }
 
@@ -1888,7 +1911,9 @@ struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async)
 
 	/* If vm is not open, unbind is a nop. */
 	vma_res->needs_wakeref = i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND) &&
-		atomic_read(&vma->vm->open);
+		kref_read(&vma->vm->ref);
+	vma_res->skip_pte_rewrite = !kref_read(&vma->vm->ref) ||
+		vma->vm->skip_pte_rewrite;
 	trace_i915_vma_unbind(vma);
 
 	unbind_fence = i915_vma_resource_unbind(vma_res);
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c b/drivers/gpu/drm/i915/i915_vma_resource.c
index 57ae92ba8af1..27c55027387a 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.c
+++ b/drivers/gpu/drm/i915/i915_vma_resource.c
@@ -178,7 +178,7 @@ static void i915_vma_resource_unbind_work(struct work_struct *work)
 	bool lockdep_cookie;
 
 	lockdep_cookie = dma_fence_begin_signalling();
-	if (likely(atomic_read(&vm->open)))
+	if (likely(!vma_res->skip_pte_rewrite))
 		vma_res->ops->unbind_vma(vm, vma_res);
 
 	dma_fence_end_signalling(lockdep_cookie);
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
index 25913913baa6..5d8427caa2ba 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.h
+++ b/drivers/gpu/drm/i915/i915_vma_resource.h
@@ -62,6 +62,11 @@ struct i915_page_sizes {
  * deferred to a work item awaiting unsignaled fences. This is a hack.
  * (dma_fence_work uses a fence flag for this, but this seems slightly
  * cleaner).
+ * @needs_wakeref: Whether a wakeref is needed during unbind. Since we can't
+ * take a wakeref in the dma-fence signalling critical path, it needs to be
+ * taken when the unbind is scheduled.
+ * @skip_pte_rewrite: During ggtt suspend and vm takedown pte rewriting
+ * needs to be skipped for unbind.
  *
  * The lifetime of a struct i915_vma_resource is from a binding request to
  * the actual possible asynchronous unbind has completed.
@@ -113,6 +118,7 @@ struct i915_vma_resource {
 	bool allocated:1;
 	bool immediate_unbind:1;
 	bool needs_wakeref:1;
+	bool skip_pte_rewrite:1;
 };
 
 bool i915_vma_resource_hold(struct i915_vma_resource *vma_res,
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 88370dadca82..eac36be184e5 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -271,6 +271,13 @@ struct i915_vma {
 #define I915_VMA_PAGES_ACTIVE (BIT(24) | 1)
 	atomic_t pages_count; /* number of active binds to the pages */
 
+	/**
+	 * Whether we hold a reference on the vm dma_resv lock to temporarily
+	 * block vm freeing until the vma is destroyed.
+	 * Protected by the vm mutex.
+	 */
+	bool vm_ddestroy;
+
 	/**
 	 * Support different GGTT views into the same object.
 	 * This means there can be multiple VMA mappings per object and per VM.
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index ab751192eb3b..5c9bfa409ff5 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1205,7 +1205,7 @@ static int exercise_ppgtt(struct drm_i915_private *dev_priv,
 		goto out_free;
 	}
 	GEM_BUG_ON(offset_in_page(ppgtt->vm.total));
-	GEM_BUG_ON(!atomic_read(&ppgtt->vm.open));
+	assert_vm_alive(&ppgtt->vm);
 
 	err = func(&ppgtt->vm, 0, ppgtt->vm.total, end_time);
 
@@ -1438,7 +1438,7 @@ static void track_vma_bind(struct i915_vma *vma)
 	vma->resource->bi.pages = vma->pages;
 
 	mutex_lock(&vma->vm->mutex);
-	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
+	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 	mutex_unlock(&vma->vm->mutex);
 }
 
-- 
2.34.1

