Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 628851479FD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD7D6FFA8;
	Fri, 24 Jan 2020 09:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9E86FF9F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:06:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 01:04:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="245655138"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2020 01:04:48 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 00:53:56 -0800
Message-Id: <20200124085402.11644-3-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
References: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/8] drm/i915/svm: Add support to mark VMs as
 active
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
Cc: chris.p.wilson@intel.com, jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add support to determine if an address space (VM) is active.
ie., are there any active requests using the address space.
This allows us to wait for VM to be idle before carrying out
some operations.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  5 +++
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 32 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h           | 13 ++++++++
 drivers/gpu/drm/i915/i915_gem_gtt.h           | 14 ++++++++
 4 files changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 60c984e10c4a..b3d9a4a02568 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1880,6 +1880,11 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 	if (unlikely(err))
 		goto err_skip;
 
+	/* XXX: Should probably be done first */
+	err = i915_vm_move_to_active(eb->context->vm, eb->request);
+	if (err)
+		goto err_skip;
+
 	eb->exec = NULL;
 
 	/* Unconditionally flush any chipset caches (for streaming writes). */
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 16acdc5d6734..ad5bf7fc851a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -191,6 +191,7 @@ void __i915_vm_close(struct i915_address_space *vm)
 
 void i915_address_space_fini(struct i915_address_space *vm)
 {
+	i915_active_fini(&vm->active);
 	spin_lock(&vm->free_pages.lock);
 	if (pagevec_count(&vm->free_pages.pvec))
 		vm_free_pages_release(vm, true);
@@ -200,6 +201,7 @@ void i915_address_space_fini(struct i915_address_space *vm)
 	drm_mm_takedown(&vm->mm);
 
 	mutex_destroy(&vm->mutex);
+	mutex_destroy(&vm->svm_mutex);
 }
 
 static void __i915_vm_release(struct work_struct *work)
@@ -224,6 +226,33 @@ void i915_vm_release(struct kref *kref)
 	queue_rcu_work(vm->i915->wq, &vm->rcu);
 }
 
+static inline struct i915_address_space *active_to_vm(struct i915_active *ref)
+{
+	return container_of(ref, typeof(struct i915_address_space), active);
+}
+
+int i915_vm_move_to_active(struct i915_address_space *vm,
+			   struct i915_request *rq)
+{
+	int ret = 0;
+
+	mutex_lock(&vm->svm_mutex);
+	ret = i915_active_add_request(&vm->active, rq);
+	mutex_unlock(&vm->svm_mutex);
+	return ret;
+}
+
+static int __i915_vm_active(struct i915_active *ref)
+{
+	return i915_vm_tryget(active_to_vm(ref)) ? 0 : -ENOENT;
+}
+
+__i915_active_call
+static void __i915_vm_retire(struct i915_active *ref)
+{
+	i915_vm_put(active_to_vm(ref));
+}
+
 void i915_address_space_init(struct i915_address_space *vm, int subclass)
 {
 	kref_init(&vm->ref);
@@ -246,6 +275,9 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	stash_init(&vm->free_pages);
 
 	INIT_LIST_HEAD(&vm->bound_list);
+
+	mutex_init(&vm->svm_mutex);
+	i915_active_init(&vm->active, __i915_vm_active, __i915_vm_retire);
 }
 
 void clear_pages(struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index bb59f57b88e1..f3e5469c4dc6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -263,6 +263,8 @@ struct i915_address_space {
 	 */
 	struct list_head bound_list;
 
+	struct mutex svm_mutex; /* protects svm operations */
+
 	struct pagestash free_pages;
 
 	/* Global GTT */
@@ -298,6 +300,8 @@ struct i915_address_space {
 
 	I915_SELFTEST_DECLARE(struct fault_attr fault_attr);
 	I915_SELFTEST_DECLARE(bool scrub_64K);
+
+	struct i915_active active;
 };
 
 /*
@@ -400,6 +404,15 @@ i915_vm_get(struct i915_address_space *vm)
 	return vm;
 }
 
+static inline struct i915_address_space *
+i915_vm_tryget(struct i915_address_space *vm)
+{
+	if (likely(kref_get_unless_zero(&vm->ref)))
+		return vm;
+
+	return NULL;
+}
+
 void i915_vm_release(struct kref *kref);
 
 static inline void i915_vm_put(struct i915_address_space *vm)
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
index f6226df9f972..3e46fd119a42 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.h
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
@@ -48,4 +48,18 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
 
 #define PIN_OFFSET_MASK		I915_GTT_PAGE_MASK
 
+int i915_vm_move_to_active(struct i915_address_space *vm,
+			   struct i915_request *rq);
+
+static inline int i915_vm_sync(struct i915_address_space *vm)
+{
+	/* Wait for all requests under this vm to finish */
+	return i915_active_wait(&vm->active);
+}
+
+static inline bool i915_vm_is_active(const struct i915_address_space *vm)
+{
+	return !i915_active_is_idle(&vm->active);
+}
+
 #endif
-- 
2.21.0.rc0.32.g243a4c7e27

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
