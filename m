Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B0E328EF5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 20:42:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2E386E062;
	Mon,  1 Mar 2021 19:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3D26E062
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 19:42:40 +0000 (UTC)
IronPort-SDR: kqW9f3QMGbN+hFgJlwGFlw8MBW76xI6Hr4FrMsZZgylrB59Mt2kaaQP8NYbqBdpmUJR1PDYfxE
 ANNpk5BmA20w==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="250628663"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="250628663"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:42:39 -0800
IronPort-SDR: ufanu+i5qCtoExajkkYBPH4NAwgQuVQBZlJFGy3ZIQqJf4eQ3185PS4dFxcsTX8lFjd/3LLllO
 Rd6u0aC715aw==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="435485982"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:41:44 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 11:31:57 -0800
Message-Id: <20210301193200.1369-14-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/16] drm/i915/pxp: User interface for
 Protected buffer
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
Cc: Huang Sean Z <sean.z.huang@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Kondapally Kalyan <kalyan.kondapally@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>

This api allow user mode to create Protected buffers. Only contexts
marked as protected are allowed to operate on protected buffers.

We only allow setting the flags at creation time.

All protected objects that have backing storage will be considered
invalid when the session is destroyed and they won't be usable anymore.

This is a rework of the original code by Bommu Krishnaiah. I've
authorship unchanged since significant chunks have not been modified.

v2: split context changes, fix defines and improve documentation (Chris),
    add object invalidation logic

Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
Cc: Huang Sean Z <sean.z.huang@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c    | 27 +++++++++++--
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 10 +++++
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  6 +++
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 12 ++++++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  | 13 ++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 40 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h          | 13 ++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  5 +++
 include/uapi/drm/i915_drm.h                   | 22 ++++++++++
 9 files changed, 145 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 3ad3413c459f..d02e5938afbe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -5,6 +5,7 @@
 
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_region.h"
+#include "pxp/intel_pxp.h"
 
 #include "i915_drv.h"
 #include "i915_user_extensions.h"
@@ -13,7 +14,8 @@ static int
 i915_gem_create(struct drm_file *file,
 		struct intel_memory_region *mr,
 		u64 *size_p,
-		u32 *handle_p)
+		u32 *handle_p,
+		u64 user_flags)
 {
 	struct drm_i915_gem_object *obj;
 	u32 handle;
@@ -35,12 +37,17 @@ i915_gem_create(struct drm_file *file,
 
 	GEM_BUG_ON(size != obj->base.size);
 
+	obj->user_flags = user_flags;
+
 	ret = drm_gem_handle_create(file, &obj->base, &handle);
 	/* drop reference from allocate - handle holds it now */
 	i915_gem_object_put(obj);
 	if (ret)
 		return ret;
 
+	if (user_flags & I915_GEM_OBJECT_PROTECTED)
+		intel_pxp_object_add(obj);
+
 	*handle_p = handle;
 	*size_p = size;
 	return 0;
@@ -89,11 +96,12 @@ i915_gem_dumb_create(struct drm_file *file,
 	return i915_gem_create(file,
 			       intel_memory_region_by_type(to_i915(dev),
 							   mem_type),
-			       &args->size, &args->handle);
+			       &args->size, &args->handle, 0);
 }
 
 struct create_ext {
 	struct drm_i915_private *i915;
+	unsigned long user_flags;
 };
 
 static int __create_setparam(struct drm_i915_gem_object_param *args,
@@ -104,6 +112,19 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
 		return -EINVAL;
 	}
 
+	switch (lower_32_bits(args->param)) {
+	case I915_OBJECT_PARAM_PROTECTED_CONTENT:
+		if (!intel_pxp_is_enabled(&ext_data->i915->gt.pxp))
+			return -ENODEV;
+		if (args->size) {
+			return -EINVAL;
+		} else if (args->data) {
+			ext_data->user_flags |= I915_GEM_OBJECT_PROTECTED;
+			return 0;
+		}
+	break;
+	}
+
 	return -EINVAL;
 }
 
@@ -148,5 +169,5 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
 	return i915_gem_create(file,
 			       intel_memory_region_by_type(i915,
 							   INTEL_MEMORY_SYSTEM),
-			       &args->size, &args->handle);
+			       &args->size, &args->handle, ext_data.user_flags);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e503c9f789c0..d10c4fcb6aec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -20,6 +20,7 @@
 #include "gt/intel_gt_buffer_pool.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_ring.h"
+#include "pxp/intel_pxp.h"
 
 #include "pxp/intel_pxp.h"
 
@@ -500,6 +501,15 @@ eb_validate_vma(struct i915_execbuffer *eb,
 		     entry->offset != gen8_canonical_addr(entry->offset & I915_GTT_PAGE_MASK)))
 		return -EINVAL;
 
+	if (i915_gem_object_is_protected(vma->obj)) {
+		if (!intel_pxp_is_active(&vma->vm->gt->pxp))
+			return -ENODEV;
+		if (!i915_gem_object_has_valid_protection(vma->obj))
+			return -EIO;
+		if (!i915_gem_context_can_use_protected_content(eb->gem_context))
+			return -EPERM;
+	}
+
 	/* pad_to_size was once a reserved field, so sanitize it */
 	if (entry->flags & EXEC_OBJECT_PAD_TO_SIZE) {
 		if (unlikely(offset_in_page(entry->pad_to_size)))
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 6cdff5fc5882..b321f5484ae6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -25,6 +25,7 @@
 #include <linux/sched/mm.h>
 
 #include "display/intel_frontbuffer.h"
+#include "pxp/intel_pxp.h"
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
@@ -72,6 +73,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	INIT_LIST_HEAD(&obj->lut_list);
 	spin_lock_init(&obj->lut_lock);
 
+	INIT_LIST_HEAD(&obj->pxp_link);
+
 	spin_lock_init(&obj->mmo.lock);
 	obj->mmo.offsets = RB_ROOT;
 
@@ -120,6 +123,9 @@ static void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *f
 	struct i915_lut_handle *lut, *ln;
 	LIST_HEAD(close);
 
+	if (i915_gem_object_has_valid_protection(obj))
+		intel_pxp_object_remove(obj);
+
 	spin_lock(&obj->lut_lock);
 	list_for_each_entry_safe(lut, ln, &obj->lut_list, obj_link) {
 		struct i915_gem_context *ctx = lut->ctx;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 366d23afbb1a..a1fa7539c0f7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -274,6 +274,18 @@ i915_gem_object_needs_async_cancel(const struct drm_i915_gem_object *obj)
 	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_ASYNC_CANCEL);
 }
 
+static inline bool
+i915_gem_object_is_protected(const struct drm_i915_gem_object *obj)
+{
+	return obj->user_flags & I915_GEM_OBJECT_PROTECTED;
+}
+
+static inline bool
+i915_gem_object_has_valid_protection(const struct drm_i915_gem_object *obj)
+{
+	return i915_gem_object_is_protected(obj) && !list_empty(&obj->pxp_link);
+}
+
 static inline bool
 i915_gem_object_is_framebuffer(const struct drm_i915_gem_object *obj)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 0a1fdbac882e..6eee580c7aba 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -167,6 +167,11 @@ struct drm_i915_gem_object {
 	} mmo;
 
 	I915_SELFTEST_DECLARE(struct list_head st_link);
+	/**
+	 * @user_flags: small set of booleans set by the user
+	 */
+	unsigned long user_flags;
+#define I915_GEM_OBJECT_PROTECTED BIT(0)
 
 	unsigned long flags;
 #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
@@ -290,6 +295,14 @@ struct drm_i915_gem_object {
 		bool dirty:1;
 	} mm;
 
+	/*
+	 * When the PXP session is invalidated, we need to mark all protected
+	 * objects as invalid. To easily do so we add them all to a list. The
+	 * presence on the list is used to check if the encryption is valid or
+	 * not.
+	 */
+	struct list_head pxp_link;
+
 	/** Record of address bit 17 of each page at last unbind. */
 	unsigned long *bit_17;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 5912e4a12d94..03151cd7f4b8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -69,6 +69,8 @@ void intel_pxp_init(struct intel_pxp *pxp)
 		return;
 
 	mutex_init(&pxp->mutex);
+	spin_lock_init(&pxp->lock);
+	INIT_LIST_HEAD(&pxp->protected_objects);
 
 	/*
 	 * we'll use the completion to check if there is a termination pending,
@@ -136,11 +138,49 @@ int intel_pxp_wait_for_termination_completion(struct intel_pxp *pxp)
 	return ret;
 }
 
+int intel_pxp_object_add(struct drm_i915_gem_object *obj)
+{
+	struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
+
+	if (!intel_pxp_is_enabled(pxp))
+		return -ENODEV;
+
+	if (!list_empty(&obj->pxp_link))
+		return -EEXIST;
+
+	spin_lock_irq(&pxp->lock);
+	list_add(&obj->pxp_link, &pxp->protected_objects);
+	spin_unlock_irq(&pxp->lock);
+
+	return 0;
+}
+
+void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
+{
+	struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
+
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	spin_lock_irq(&pxp->lock);
+	list_del_init(&obj->pxp_link);
+	spin_unlock_irq(&pxp->lock);
+}
+
 void intel_pxp_invalidate(struct intel_pxp *pxp)
 {
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct drm_i915_gem_object *obj, *tmp;
 	struct i915_gem_context *ctx, *cn;
 
+	/* delete objects that have been used with the invalidated session */
+	spin_lock_irq(&pxp->lock);
+	list_for_each_entry_safe(obj, tmp, &pxp->protected_objects, pxp_link) {
+		if (i915_gem_object_has_pages(obj))
+			list_del_init(&obj->pxp_link);
+	}
+	spin_unlock_irq(&pxp->lock);
+
 	/* ban all contexts marked as protected */
 	spin_lock_irq(&i915->gem.contexts.lock);
 	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index e36200833095..3315b07d271b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -9,6 +9,8 @@
 #include "gt/intel_gt_types.h"
 #include "intel_pxp_types.h"
 
+struct drm_i915_gem_object;
+
 #define GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT BIT(1)
 #define GEN12_DISPLAY_APP_TERMINATED_PER_FW_REQ_INTERRUPT BIT(2)
 #define GEN12_DISPLAY_STATE_RESET_COMPLETE_INTERRUPT BIT(3)
@@ -38,6 +40,9 @@ void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
 
 int intel_pxp_wait_for_termination_completion(struct intel_pxp *pxp);
+
+int intel_pxp_object_add(struct drm_i915_gem_object *obj);
+void intel_pxp_object_remove(struct drm_i915_gem_object *obj);
 void intel_pxp_invalidate(struct intel_pxp *pxp);
 #else
 static inline void intel_pxp_init(struct intel_pxp *pxp)
@@ -52,6 +57,14 @@ static inline int intel_pxp_wait_for_termination_completion(struct intel_pxp *px
 {
 	return 0;
 }
+
+static inline int intel_pxp_object_add(struct drm_i915_gem_object *obj)
+{
+	return 0;
+}
+static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
+{
+}
 #endif
 
 #endif /* __INTEL_PXP_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 6f659a6f8f1c..53a2a8acfe51 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -7,8 +7,10 @@
 #define __INTEL_PXP_TYPES_H__
 
 #include <linux/completion.h>
+#include <linux/list.h>
 #include <linux/types.h>
 #include <linux/mutex.h>
+#include <linux/spinlock.h>
 #include <linux/workqueue.h>
 
 struct intel_context;
@@ -28,6 +30,9 @@ struct intel_pxp {
 	struct work_struct irq_work;
 	bool irq_enabled;
 	u32 current_events; /* protected with gt->irq_lock */
+
+	struct spinlock lock;
+	struct list_head protected_objects;
 };
 
 #endif /* __INTEL_PXP_TYPES_H__ */
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 9ebe8523aa0c..0f8b771a6d53 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1753,6 +1753,28 @@ struct drm_i915_gem_object_param {
  */
 #define I915_OBJECT_PARAM  (1ull << 32)
 
+/*
+ * I915_OBJECT_PARAM_PROTECTED_CONTENT:
+ *
+ * If set to true, buffer contents is expected to be protected by PXP
+ * encryption and requires decryption for scan out and processing. This is
+ * only possible on platforms that have PXP enabled, on all other scenarios
+ * setting this flag will cause the ioctl to fail and return -ENODEV.
+ *
+ * Protected buffers can only be used with contexts created using the
+ * I915_CONTEXT_PARAM_PROTECTED_CONTENT flag. The buffer contents are
+ * considered invalid after a PXP session teardown.
+ *
+ * Given the restriction above, the following errors are possible when
+ * submitting a protected object in an execbuf call:
+ *
+ * -ENODEV: PXP session not currently active
+ * -EIO: buffer has become invalid after a teardown event
+ * -EPERM: buffer submitted using a context not marked as protected
+ */
+#define I915_OBJECT_PARAM_PROTECTED_CONTENT  0x0
+/* Must be kept compact -- no holes and well documented */
+
 	__u64 param;
 
 	/* Data value or pointer */
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
