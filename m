Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D301479FB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B49F6FFA5;
	Fri, 24 Jan 2020 09:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C506FF9F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:06:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 01:04:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="245655148"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2020 01:04:49 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 00:53:59 -0800
Message-Id: <20200124085402.11644-6-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
References: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 5/8] drm/i915/svm: Handle persistent vmas
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

Treat VM_BIND vmas as persistent and handle them during the
request submission in the execbuff path.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_svm.c       |  1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 10 +++++++
 drivers/gpu/drm/i915/i915_vma.h               | 15 ++++++++++-
 drivers/gpu/drm/i915/i915_vma_types.h         |  4 +++
 5 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b3d9a4a02568..6aaffb9a817f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -723,6 +723,26 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	return 0;
 }
 
+static int eb_lookup_persistent_vmas(struct i915_address_space *vm)
+{
+	struct i915_vma *vma;
+	int ret = 0;
+
+	mutex_lock(&vm->svm_mutex);
+	list_for_each_entry(vma, &vm->svm_list, svm_link) {
+		u64 pin_flags = vma->va_start | PIN_OFFSET_FIXED | PIN_USER;
+
+		if (drm_mm_node_allocated(&vma->node))
+			continue;
+
+		ret = i915_vma_pin(vma, 0, 0, pin_flags);
+		if (ret)
+			break;
+	}
+	mutex_unlock(&vm->svm_mutex);
+	return ret;
+}
+
 static int eb_lookup_vmas(struct i915_execbuffer *eb)
 {
 	struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
@@ -1765,6 +1785,12 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 
 static int eb_relocate(struct i915_execbuffer *eb)
 {
+	int ret;
+
+	ret = eb_lookup_persistent_vmas(eb->context->vm);
+	if (ret)
+		return ret;
+
 	if (eb_lookup_vmas(eb))
 		goto slow;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_svm.c b/drivers/gpu/drm/i915/gem/i915_gem_svm.c
index f26567ea0e3a..e5e45ccc4262 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_svm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_svm.c
@@ -58,6 +58,7 @@ int i915_gem_vm_bind_svm_obj(struct i915_address_space *vm,
 			goto put_obj;
 		}
 		vma->va_start = va->start;
+		i915_vma_set_persistent(vma);
 		/* Disable eviction for now */
 		__i915_vma_pin(vma);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 897aad1f7c08..e0195906de20 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -234,9 +234,19 @@ static inline struct i915_address_space *active_to_vm(struct i915_active *ref)
 int i915_vm_move_to_active(struct i915_address_space *vm,
 			   struct i915_request *rq)
 {
+	struct i915_vma *vma;
 	int ret = 0;
 
 	mutex_lock(&vm->svm_mutex);
+	list_for_each_entry(vma, &vm->svm_list, svm_link) {
+		/* Wait for the vma to be bound before we start! */
+		ret = i915_request_await_active(rq, &vma->active);
+		if (ret)
+			break;
+
+		if (!ret)
+			ret = i915_active_add_request(&vm->active, rq);
+	}
 	ret = i915_active_add_request(&vm->active, rq);
 	mutex_unlock(&vm->svm_mutex);
 	return ret;
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 044f3400575c..56cff222e7ca 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -124,6 +124,16 @@ static inline u32 i915_ggtt_pin_bias(struct i915_vma *vma)
 	return i915_vm_to_ggtt(vma->vm)->pin_bias;
 }
 
+static inline bool i915_vma_is_persistent(const struct i915_vma *vma)
+{
+	return test_bit(I915_VMA_PERSISTENT_BIT, __i915_vma_flags(vma));
+}
+
+static inline void i915_vma_set_persistent(struct i915_vma *vma)
+{
+	set_bit(I915_VMA_PERSISTENT_BIT, __i915_vma_flags(vma));
+}
+
 static inline struct i915_vma *i915_vma_get(struct i915_vma *vma)
 {
 	i915_gem_object_get(vma->obj);
@@ -376,7 +386,10 @@ void i915_vma_make_purgeable(struct i915_vma *vma);
 static inline int i915_vma_sync(struct i915_vma *vma)
 {
 	/* Wait for the asynchronous bindings and pending GPU reads */
-	return i915_active_wait(&vma->active);
+	if (i915_vma_is_persistent(vma))
+		return i915_vm_sync(vma->vm);
+	else
+		return i915_active_wait(&vma->active);
 }
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index d5a4fb4e43a4..8a270280a5ca 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -250,6 +250,10 @@ struct i915_vma {
 #define I915_VMA_USERFAULT	((int)BIT(I915_VMA_USERFAULT_BIT))
 #define I915_VMA_GGTT_WRITE	((int)BIT(I915_VMA_GGTT_WRITE_BIT))
 
+#define I915_VMA_PERSISTENT_BIT	18
+
+#define I915_VMA_PERSISTENT	((int)BIT(I915_VMA_PERSISTENT_BIT))
+
 	struct i915_active active;
 
 #define I915_VMA_PAGES_BIAS 24
-- 
2.21.0.rc0.32.g243a4c7e27

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
