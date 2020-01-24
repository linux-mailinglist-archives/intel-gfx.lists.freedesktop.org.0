Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D601479F9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:06:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC056FFA1;
	Fri, 24 Jan 2020 09:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE5546FF9F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:06:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 01:04:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="245655142"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2020 01:04:48 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 00:53:57 -0800
Message-Id: <20200124085402.11644-4-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
References: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/8] drm/i915/svm: Introduce VM_BIND ioctl
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

Add VM_BIND ioctl to bind/unbind an array of gem buffer
objects at specified virtual addresses.
Support partial binding with offset and length fields.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 40 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h | 22 ++++++++++++++
 include/uapi/drm/i915_drm.h     | 53 +++++++++++++++++++++++++++++++++
 3 files changed, 115 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index f7385abdd74b..64ba02c55282 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -2688,6 +2688,45 @@ i915_gem_reject_pin_ioctl(struct drm_device *dev, void *data,
 	return -ENODEV;
 }
 
+static int i915_gem_vm_bind_ioctl(struct drm_device *dev, void *data,
+				  struct drm_file *file)
+{
+	struct drm_i915_gem_vm_bind_va __user *vas;
+	struct drm_i915_gem_vm_bind *args = data;
+	struct i915_address_space *vm;
+	int i, ret = 0;
+
+	vm = i915_gem_address_space_lookup(file->driver_priv, args->vm_id);
+	if (unlikely(!vm))
+		return -ENOENT;
+
+	if (!args->num_vas)
+		goto bind_done;
+
+	vas = u64_to_user_ptr(args->vas_ptr);
+	if (!access_ok(vas, args->num_vas * sizeof(*vas))) {
+		ret = -EFAULT;
+		goto bind_done;
+	}
+
+	for (i = 0; !ret && i < args->num_vas; i++) {
+		struct drm_i915_gem_vm_bind_va va;
+
+		if (__copy_from_user(&va, vas++, sizeof(va))) {
+			ret = -EFAULT;
+			goto bind_done;
+		}
+
+		switch (va.type) {
+		default:
+			ret = -EINVAL;
+		}
+	}
+bind_done:
+	i915_vm_put(vm);
+	return ret;
+}
+
 static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_INIT, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	DRM_IOCTL_DEF_DRV(I915_FLUSH, drm_noop, DRM_AUTH),
@@ -2747,6 +2786,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_QUERY, i915_query_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_CREATE, i915_gem_vm_create_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_DESTROY, i915_gem_vm_destroy_ioctl, DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(I915_GEM_VM_BIND, i915_gem_vm_bind_ioctl, DRM_RENDER_ALLOW),
 };
 
 static struct drm_driver driver = {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 077af22b8340..7be87bc37cc0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1919,6 +1919,28 @@ i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
 	return ctx;
 }
 
+static inline struct i915_address_space *
+__i915_gem_address_space_lookup_rcu(struct drm_i915_file_private *file_priv,
+				    u32 id)
+{
+	return idr_find(&file_priv->vm_idr, id);
+}
+
+static inline struct i915_address_space *
+i915_gem_address_space_lookup(struct drm_i915_file_private *file_priv,
+			      u32 id)
+{
+	struct i915_address_space *vm;
+
+	rcu_read_lock();
+	vm = __i915_gem_address_space_lookup_rcu(file_priv, id);
+	if (vm)
+		vm = i915_vm_get(vm);
+	rcu_read_unlock();
+
+	return vm;
+}
+
 /* i915_gem_evict.c */
 int __must_check i915_gem_evict_something(struct i915_address_space *vm,
 					  u64 min_size, u64 alignment,
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 829c0a48577f..e696854829ab 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -359,6 +359,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_I915_QUERY			0x39
 #define DRM_I915_GEM_VM_CREATE		0x3a
 #define DRM_I915_GEM_VM_DESTROY		0x3b
+#define DRM_I915_GEM_VM_BIND		0x3c
 /* Must be kept compact -- no holes */
 
 #define DRM_IOCTL_I915_INIT		DRM_IOW( DRM_COMMAND_BASE + DRM_I915_INIT, drm_i915_init_t)
@@ -422,6 +423,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_IOCTL_I915_QUERY			DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_QUERY, struct drm_i915_query)
 #define DRM_IOCTL_I915_GEM_VM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_CREATE, struct drm_i915_gem_vm_control)
 #define DRM_IOCTL_I915_GEM_VM_DESTROY	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_VM_DESTROY, struct drm_i915_gem_vm_control)
+#define DRM_IOCTL_I915_GEM_VM_BIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)
 
 /* Allow drivers to submit batchbuffers directly to hardware, relying
  * on the security mechanisms provided by hardware.
@@ -2277,6 +2279,57 @@ struct drm_i915_query_perf_config {
 	__u8 data[];
 };
 
+/**
+ * struct drm_i915_gem_vm_bind_va
+ *
+ * VA to object mapping to [un]bind.
+ */
+struct drm_i915_gem_vm_bind_va {
+	/** VA start to [un]bind **/
+	__u64 start;
+
+	/** Offset in Object to [un]bind for I915_GEM_VM_BIND_SVM_OBJ type **/
+	__u64 offset;
+
+	/** VA length to [un]bind **/
+	__u64 length;
+
+	/** Type of memory to [un]bind **/
+	__u32 type;
+#define I915_GEM_VM_BIND_SVM_OBJ      0
+
+	/** Object handle to [un]bind for I915_GEM_VM_BIND_SVM_OBJ type **/
+	__u32 handle;
+
+	/** Flags **/
+	__u32 flags;
+#define I915_GEM_VM_BIND_UNBIND      (1 << 0)
+#define I915_GEM_VM_BIND_READONLY    (1 << 1)
+};
+
+/**
+ * struct drm_i915_gem_vm_bind
+ *
+ * [Un]Bind an array of objects in a vm's page table.
+ */
+struct drm_i915_gem_vm_bind {
+	/** vm to [un]bind **/
+	__u32 vm_id;
+
+	/** number of VAs to [un]bind **/
+	__u32 num_vas;
+
+	/** Array of VAs to [un]bind **/
+	__u64 vas_ptr;
+
+	/**
+	 * Zero-terminated chain of extensions.
+	 *
+	 * No current extensions defined; mbz.
+	 */
+	__u64 extensions;
+};
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.21.0.rc0.32.g243a4c7e27

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
