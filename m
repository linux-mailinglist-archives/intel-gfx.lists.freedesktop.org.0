Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD101479FF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6396FFAB;
	Fri, 24 Jan 2020 09:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D1DA6FFA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:06:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 01:04:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="245655157"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2020 01:04:50 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 00:54:01 -0800
Message-Id: <20200124085402.11644-8-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
References: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 7/8] drm/i915/svm: Add support to en/disable SVM
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

Add SVM as a capability and allow user to enable/disable SVM
functionality on a per context basis.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 100 ++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   4 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   5 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   3 +
 drivers/gpu/drm/i915/i915_drv.c               |   6 +-
 drivers/gpu/drm/i915/i915_drv.h               |  10 ++
 drivers/gpu/drm/i915/i915_getparam.c          |   3 +
 include/uapi/drm/i915_drm.h                   |  17 +++
 8 files changed, 146 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a2e57e62af30..fcbe5ff5c762 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -931,6 +931,76 @@ int i915_gem_vm_destroy_ioctl(struct drm_device *dev, void *data,
 	return 0;
 }
 
+static int i915_gem_vm_setparam_ioctl(struct drm_device *dev, void *data,
+				      struct drm_file *file)
+{
+	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct drm_i915_gem_vm_param *args = data;
+	struct i915_address_space *vm;
+	int err = 0;
+	u32 id;
+
+	id = args->vm_id;
+	if (!id)
+		return -ENOENT;
+
+	err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
+	if (err)
+		return err;
+
+	vm = idr_find(&file_priv->vm_idr, id);
+
+	mutex_unlock(&file_priv->vm_idr_lock);
+	if (!vm)
+		return -ENOENT;
+
+	switch (lower_32_bits(args->param)) {
+	case I915_GEM_VM_PARAM_SVM:
+		/* FIXME: Ensure ppgtt is empty and VM idle before switching */
+		if (!i915_has_svm(file_priv->dev_priv))
+			err = -ENOTSUPP;
+		else
+			vm->svm_enabled = !!args->value;
+		break;
+	default:
+		err = -EINVAL;
+	}
+	return err;
+}
+
+static int i915_gem_vm_getparam_ioctl(struct drm_device *dev, void *data,
+				      struct drm_file *file)
+{
+	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct drm_i915_gem_vm_param *args = data;
+	struct i915_address_space *vm;
+	int err = 0;
+	u32 id;
+
+	id = args->vm_id;
+	if (!id)
+		return -ENOENT;
+
+	err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
+	if (err)
+		return err;
+
+	vm = idr_find(&file_priv->vm_idr, id);
+
+	mutex_unlock(&file_priv->vm_idr_lock);
+	if (!vm)
+		return -ENOENT;
+
+	switch (lower_32_bits(args->param)) {
+	case I915_GEM_VM_PARAM_SVM:
+		args->value = i915_vm_is_svm_enabled(vm);
+		break;
+	default:
+		err = -EINVAL;
+	}
+	return err;
+}
+
 struct context_barrier_task {
 	struct i915_active base;
 	void (*task)(void *data);
@@ -2380,6 +2450,21 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 	return ret;
 }
 
+int i915_gem_getparam_ioctl(struct drm_device *dev, void *data,
+			    struct drm_file *file)
+{
+	struct drm_i915_gem_context_param *args = data;
+	u32 class = upper_32_bits(args->param);
+
+	switch (class) {
+	case 0:
+		return i915_gem_context_getparam_ioctl(dev, data, file);
+	case 2:
+		return i915_gem_vm_getparam_ioctl(dev, data, file);
+	}
+	return -EINVAL;
+}
+
 int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file)
 {
@@ -2398,6 +2483,21 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 	return ret;
 }
 
+int i915_gem_setparam_ioctl(struct drm_device *dev, void *data,
+			    struct drm_file *file)
+{
+	struct drm_i915_gem_context_param *args = data;
+	u32 class = upper_32_bits(args->param);
+
+	switch (class) {
+	case 0:
+		return i915_gem_context_setparam_ioctl(dev, data, file);
+	case 2:
+		return i915_gem_vm_setparam_ioctl(dev, data, file);
+	}
+	return -EINVAL;
+}
+
 int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
 				       void *data, struct drm_file *file)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index 3ae61a355d87..59ebe90b8cd5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -131,6 +131,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file_priv);
 int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file_priv);
+int i915_gem_getparam_ioctl(struct drm_device *dev, void *data,
+			    struct drm_file *file);
+int i915_gem_setparam_ioctl(struct drm_device *dev, void *data,
+			    struct drm_file *file);
 int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
 				       struct drm_file *file);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 6aaffb9a817f..6dce8a42fd0c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -426,6 +426,11 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	if (unlikely(entry->alignment && !is_power_of_2(entry->alignment)))
 		return -EINVAL;
 
+	/* Only allow user PINNED addresses for SVM enabled contexts */
+	if (unlikely(i915_vm_is_svm_enabled(eb->gem_context->vm) &&
+		     !(entry->flags & EXEC_OBJECT_PINNED)))
+		return -EINVAL;
+
 	/*
 	 * Offset can be used as input (EXEC_OBJECT_PINNED), reject
 	 * any non-page-aligned or non-canonical addresses.
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 800c062a4b0e..8581503a0a6e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -268,6 +268,7 @@ struct i915_address_space {
 	 */
 	struct list_head svm_list;
 	struct mutex svm_mutex; /* protects svm operations */
+	bool svm_enabled;
 
 	struct pagestash free_pages;
 
@@ -367,6 +368,8 @@ struct i915_ppgtt {
 
 #define i915_is_ggtt(vm) ((vm)->is_ggtt)
 
+#define i915_vm_is_svm_enabled(vm) ((vm)->svm_enabled)
+
 static inline bool
 i915_vm_is_4lvl(const struct i915_address_space *vm)
 {
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 5631fa82bfed..2023a82ad594 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -2700,6 +2700,8 @@ static int i915_gem_vm_bind_ioctl(struct drm_device *dev, void *data,
 	vm = i915_gem_address_space_lookup(file->driver_priv, args->vm_id);
 	if (unlikely(!vm))
 		return -ENOENT;
+	if (unlikely(!i915_vm_is_svm_enabled(vm)))
+		return -ENOTSUPP;
 
 	if (!args->num_vas)
 		goto bind_done;
@@ -2782,8 +2784,8 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_REG_READ, i915_reg_read_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GET_RESET_STATS, i915_gem_context_reset_stats_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_USERPTR, i915_gem_userptr_ioctl, DRM_RENDER_ALLOW),
-	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_GETPARAM, i915_gem_context_getparam_ioctl, DRM_RENDER_ALLOW),
-	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_SETPARAM, i915_gem_context_setparam_ioctl, DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_GETPARAM, i915_gem_getparam_ioctl, DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_SETPARAM, i915_gem_setparam_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_PERF_OPEN, i915_perf_open_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_PERF_ADD_CONFIG, i915_perf_add_config_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_PERF_REMOVE_CONFIG, i915_perf_remove_config_ioctl, DRM_RENDER_ALLOW),
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7be87bc37cc0..9f2407cee28e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -38,6 +38,7 @@
 #include <linux/i2c-algo-bit.h>
 #include <linux/backlight.h>
 #include <linux/hash.h>
+#include <linux/hmm.h>
 #include <linux/intel-iommu.h>
 #include <linux/kref.h>
 #include <linux/mm_types.h>
@@ -1746,6 +1747,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 /* Only valid when HAS_DISPLAY() is true */
 #define INTEL_DISPLAY_ENABLED(dev_priv) (WARN_ON(!HAS_DISPLAY(dev_priv)), !i915_modparams.disable_display)
 
+static inline bool i915_has_svm(struct drm_i915_private *dev_priv)
+{
+#ifdef CONFIG_DRM_I915_SVM
+	return INTEL_GEN(dev_priv) >= 8;
+#else
+	return false;
+#endif
+}
+
 static inline bool intel_vtd_active(void)
 {
 #ifdef CONFIG_INTEL_IOMMU
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 54fce81d5724..c35402103e0f 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -161,6 +161,9 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 	case I915_PARAM_PERF_REVISION:
 		value = i915_perf_ioctl_version();
 		break;
+	case I915_PARAM_HAS_SVM:
+		value = i915_has_svm(i915);
+		break;
 	default:
 		DRM_DEBUG("Unknown parameter %d\n", param->param);
 		return -EINVAL;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index e696854829ab..a29f9ea203f0 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -359,6 +359,8 @@ typedef struct _drm_i915_sarea {
 #define DRM_I915_QUERY			0x39
 #define DRM_I915_GEM_VM_CREATE		0x3a
 #define DRM_I915_GEM_VM_DESTROY		0x3b
+#define DRM_I915_GEM_VM_GETPARAM        DRM_I915_GEM_CONTEXT_GETPARAM
+#define DRM_I915_GEM_VM_SETPARAM        DRM_I915_GEM_CONTEXT_SETPARAM
 #define DRM_I915_GEM_VM_BIND		0x3c
 /* Must be kept compact -- no holes */
 
@@ -423,6 +425,8 @@ typedef struct _drm_i915_sarea {
 #define DRM_IOCTL_I915_QUERY			DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_QUERY, struct drm_i915_query)
 #define DRM_IOCTL_I915_GEM_VM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_CREATE, struct drm_i915_gem_vm_control)
 #define DRM_IOCTL_I915_GEM_VM_DESTROY	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_VM_DESTROY, struct drm_i915_gem_vm_control)
+#define DRM_IOCTL_I915_GEM_VM_GETPARAM		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_GETPARAM, struct drm_i915_gem_vm_param)
+#define DRM_IOCTL_I915_GEM_VM_SETPARAM		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_SETPARAM, struct drm_i915_gem_vm_param)
 #define DRM_IOCTL_I915_GEM_VM_BIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)
 
 /* Allow drivers to submit batchbuffers directly to hardware, relying
@@ -621,6 +625,8 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_PERF_REVISION	54
 
+/* Shared Virtual Memory (SVM) support capability */
+#define I915_PARAM_HAS_SVM	55
 /* Must be kept compact -- no holes and well documented */
 
 typedef struct drm_i915_getparam {
@@ -1826,6 +1832,17 @@ struct drm_i915_gem_vm_control {
 	__u32 vm_id;
 };
 
+struct drm_i915_gem_vm_param {
+	__u32 vm_id;
+	__u32 rsvd;
+
+#define I915_VM_PARAM     (2ull << 32)
+#define I915_GEM_VM_PARAM_SVM   0x1
+	__u64 param;
+
+	__u64 value;
+};
+
 struct drm_i915_reg_read {
 	/*
 	 * Register offset.
-- 
2.21.0.rc0.32.g243a4c7e27

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
