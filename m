Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 016CE313B2D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 18:42:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678216E96F;
	Mon,  8 Feb 2021 17:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1006E96F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 17:42:38 +0000 (UTC)
IronPort-SDR: qH4tUA4T/3OgQogShD+QGX+HrJq4sgD37HaO6O2nTjZ5lZVfRixA65Vjk4uPFzY89UbNFL8wYT
 spkZ/3kMh0HQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="200812683"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="200812683"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:42:37 -0800
IronPort-SDR: k9XMk7tUQCZco6cbQwOjTKy4NY08CQlWqT/WC9iHg2y1HFuWgrOsDSKWwfUhASSHe6oPFSh3MA
 1JRiSb27jopg==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="377858785"
Received: from jjcunnix-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.0.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:42:35 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 17:42:17 +0000
Message-Id: <20210208174217.140790-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210208174217.140790-1-matthew.auld@intel.com>
References: <20210208174217.140790-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/uapi: introduce
 drm_i915_gem_create_ext
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Same old gem_create but with now with extensions support. This is needed
to support various upcoming usecases.

v2:(Chris)
    - Use separate ioctl number for gem_create_ext, instead of hijacking
      the existing gem_create ioctl, otherwise we run into the issue
      with being unable to detect if the kernel supports the new extension
      behaviour.
    - We now have gem_create_ext.flags, which should be zeroed.
    - I915_GEM_CREATE_EXT_SETPARAM value is now zero, since this is the
      index into our array of extensions.
    - Setup a "vanilla" object which we can directly apply our extensions
      to.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: CQ Tang <cq.tang@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 78 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_ioctls.h |  2 +
 drivers/gpu/drm/i915/i915_drv.c            |  1 +
 include/uapi/drm/i915_drm.h                | 51 ++++++++++++++
 4 files changed, 132 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 6eee4b8bd0c2..bed5c13615d6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -8,6 +8,7 @@
 
 #include "i915_drv.h"
 #include "i915_trace.h"
+#include "i915_user_extensions.h"
 
 static int i915_gem_publish(struct drm_i915_gem_object *obj,
 			    struct drm_file *file,
@@ -116,6 +117,83 @@ i915_gem_dumb_create(struct drm_file *file,
 	return ret;
 }
 
+struct create_ext {
+	struct drm_i915_private *i915;
+	struct drm_i915_gem_object *vanilla_object;
+};
+
+static int __create_setparam(struct drm_i915_gem_object_param *args,
+			     struct create_ext *ext_data)
+{
+	if (!(args->param & I915_OBJECT_PARAM)) {
+		DRM_DEBUG("Missing I915_OBJECT_PARAM namespace\n");
+		return -EINVAL;
+	}
+
+	return -EINVAL;
+}
+
+static int create_setparam(struct i915_user_extension __user *base, void *data)
+{
+	struct drm_i915_gem_create_ext_setparam ext;
+
+	if (copy_from_user(&ext, base, sizeof(ext)))
+		return -EFAULT;
+
+	return __create_setparam(&ext.param, data);
+}
+
+static const i915_user_extension_fn create_extensions[] = {
+	[I915_GEM_CREATE_EXT_SETPARAM] = create_setparam,
+};
+
+/**
+ * Creates a new mm object and returns a handle to it.
+ * @dev: drm device pointer
+ * @data: ioctl data blob
+ * @file: drm file pointer
+ */
+int
+i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
+			  struct drm_file *file)
+{
+	struct drm_i915_private *i915 = to_i915(dev);
+	struct drm_i915_gem_create_ext *args = data;
+	struct create_ext ext_data = { .i915 = i915 };
+	struct drm_i915_gem_object *obj;
+	int ret;
+
+	if (args->flags)
+		return -EINVAL;
+
+	i915_gem_flush_free_objects(i915);
+
+	obj = i915_gem_object_alloc();
+	if (!obj)
+		return -ENOMEM;
+
+	ext_data.vanilla_object = obj;
+	ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
+				   create_extensions,
+				   ARRAY_SIZE(create_extensions),
+				   &ext_data);
+	if (ret)
+		goto object_free;
+
+	ret = i915_gem_setup(obj,
+			     intel_memory_region_by_type(i915,
+							 INTEL_MEMORY_SYSTEM),
+			     args->size);
+	if (ret)
+		goto object_free;
+
+	return i915_gem_publish(obj, file, &args->size, &args->handle);
+
+object_free:
+	i915_gem_object_free(obj);
+	return ret;
+}
+
 /**
  * Creates a new mm object and returns a handle to it.
  * @dev: drm device pointer
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ioctls.h b/drivers/gpu/drm/i915/gem/i915_gem_ioctls.h
index 87d8b27f426d..3ee0e96f23f4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ioctls.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ioctls.h
@@ -14,6 +14,8 @@ int i915_gem_busy_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file);
 int i915_gem_create_ioctl(struct drm_device *dev, void *data,
 			  struct drm_file *file);
+int i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
+			      struct drm_file *file);
 int i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
 			      struct drm_file *file);
 int i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index b708517d3972..a0329e914ebf 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1749,6 +1749,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_GEM_ENTERVT, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	DRM_IOCTL_DEF_DRV(I915_GEM_LEAVEVT, drm_noop, DRM_AUTH|DRM_MASTER|DRM_ROOT_ONLY),
 	DRM_IOCTL_DEF_DRV(I915_GEM_CREATE, i915_gem_create_ioctl, DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(I915_GEM_CREATE_EXT, i915_gem_create_ext_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_PREAD, i915_gem_pread_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_PWRITE, i915_gem_pwrite_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_MMAP, i915_gem_mmap_ioctl, DRM_RENDER_ALLOW),
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 1987e2ea79a3..92778456a3e3 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -360,6 +360,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_I915_QUERY			0x39
 #define DRM_I915_GEM_VM_CREATE		0x3a
 #define DRM_I915_GEM_VM_DESTROY		0x3b
+#define DRM_I915_GEM_CREATE_EXT		0x3c
 /* Must be kept compact -- no holes */
 
 #define DRM_IOCTL_I915_INIT		DRM_IOW( DRM_COMMAND_BASE + DRM_I915_INIT, drm_i915_init_t)
@@ -392,6 +393,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_IOCTL_I915_GEM_ENTERVT	DRM_IO(DRM_COMMAND_BASE + DRM_I915_GEM_ENTERVT)
 #define DRM_IOCTL_I915_GEM_LEAVEVT	DRM_IO(DRM_COMMAND_BASE + DRM_I915_GEM_LEAVEVT)
 #define DRM_IOCTL_I915_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create)
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)
 #define DRM_IOCTL_I915_GEM_PREAD	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_PREAD, struct drm_i915_gem_pread)
 #define DRM_IOCTL_I915_GEM_PWRITE	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_PWRITE, struct drm_i915_gem_pwrite)
 #define DRM_IOCTL_I915_GEM_MMAP		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_MMAP, struct drm_i915_gem_mmap)
@@ -729,6 +731,30 @@ struct drm_i915_gem_create {
 	__u32 pad;
 };
 
+struct drm_i915_gem_create_ext {
+	/*
+	 * Requested size for the object.
+	 *
+	 * The (page-aligned) allocated size for the object will be returned.
+	 */
+	__u64 size;
+	/*
+	 * Returned handle for the object.
+	 *
+	 * Object handles are nonzero.
+	 */
+	__u32 handle;
+	/* MBZ */
+	__u32 flags;
+	/*
+	 * For I915_GEM_CREATE_EXT_SETPARAM extension usage see both:
+	 *	struct drm_i915_gem_create_ext_setparam.
+	 *	struct drm_i915_gem_object_param for the possible parameters.
+	 */
+#define I915_GEM_CREATE_EXT_SETPARAM 0
+	__u64 extensions;
+};
+
 struct drm_i915_gem_pread {
 	/** Handle for the object being read. */
 	__u32 handle;
@@ -1699,6 +1725,31 @@ struct drm_i915_gem_context_param {
 	__u64 value;
 };
 
+struct drm_i915_gem_object_param {
+	/* Object handle (0 for I915_GEM_CREATE_EXT_SETPARAM) */
+	__u32 handle;
+
+	/* Data pointer size */
+	__u32 size;
+
+/*
+ * I915_OBJECT_PARAM:
+ *
+ * Select object namespace for the param.
+ */
+#define I915_OBJECT_PARAM  (1ull<<32)
+
+	__u64 param;
+
+	/* Data value or pointer */
+	__u64 data;
+};
+
+struct drm_i915_gem_create_ext_setparam {
+	struct i915_user_extension base;
+	struct drm_i915_gem_object_param param;
+};
+
 /**
  * Context SSEU programming
  *
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
