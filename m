Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 895482FB357
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 08:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136016E828;
	Tue, 19 Jan 2021 07:43:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B386E827
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:43:24 +0000 (UTC)
IronPort-SDR: 7EOFk0YVlvg27PwEfl1ATYbKZdzR5kQ0+hEcE8gQCtNj04DCS3pBBQacInnVuUM0uZQfUh9ggQ
 aJb5qq/OWseQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="197592816"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="197592816"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:43:23 -0800
IronPort-SDR: AxRvvi+So/Tf3pkT1GN5njq23DseDPCSM2cW2o829QcS+zmUxAAQjt1CSGJ1NVM/X+pTYag3fl
 l9IVkC0bUTzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="466592756"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2021 23:43:23 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 23:43:19 -0800
Message-Id: <20210119074320.28768-13-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210119074320.28768-1-sean.z.huang@intel.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v23 12/13] drm/i915/pxp: User interface for
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
Cc: kumar.gaurav@intel.com, Huang Sean Z <sean.z.huang@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Kondapally Kalyan <kalyan.kondapally@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>

This api allow user mode to create Protected buffer and context creation.

rev21:
    - Only allow set I915_CONTEXT_PARAM_PROTECTED_CONTENT during context
      creation (i915_gem_context_create_ioctl), but not allow during
      context set param (i915_gem_context_setparam_ioctl)

rev23:
    - Require user space to explicitly set recoverable flag to
      false for protected context creation.

Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
Cc: Huang Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 13 +++++++++
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  5 ++++
 drivers/gpu/drm/i915/gem/i915_gem_create.c    | 27 ++++++++++++++++---
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  5 ++++
 include/uapi/drm/i915_drm.h                   | 10 +++++++
 5 files changed, 57 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 4d2f40cf237b..2af1da45ce63 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -81,6 +81,8 @@
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
+#include "pxp/intel_pxp.h"
+
 #define ALL_L3_SLICES(dev) (1 << NUM_L3_SLICES(dev)) - 1
 
 static struct i915_global_gem_context {
@@ -2052,6 +2054,7 @@ static int create_setparam(struct i915_user_extension __user *ext, void *data)
 {
 	struct drm_i915_gem_context_create_ext_setparam local;
 	const struct create_ext *arg = data;
+	int ret;
 
 	if (copy_from_user(&local, ext, sizeof(local)))
 		return -EFAULT;
@@ -2059,6 +2062,10 @@ static int create_setparam(struct i915_user_extension __user *ext, void *data)
 	if (local.param.ctx_id)
 		return -EINVAL;
 
+	ret = intel_pxp_gem_context_create_param(arg->ctx, &local.param);
+	if (ret)
+		return ret;
+
 	return ctx_setparam(arg->fpriv, arg->ctx, &local.param);
 }
 
@@ -2328,6 +2335,12 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 			goto err_ctx;
 	}
 
+	if (i915_gem_context_is_protected(ext_data.ctx))
+		if (!intel_pxp_gem_context_protected_param_valid(ext_data.ctx)) {
+			ret = -EINVAL;
+			goto err_ctx;
+		}
+
 	ret = gem_context_register(ext_data.ctx, ext_data.fpriv, &id);
 	if (ret < 0)
 		goto err_ctx;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index b5c908f3f4f2..173154fdc311 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -70,6 +70,11 @@ static inline void i915_gem_context_set_recoverable(struct i915_gem_context *ctx
 	set_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags);
 }
 
+static inline bool i915_gem_context_is_protected(struct i915_gem_context *ctx)
+{
+	return test_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
+}
+
 static inline void i915_gem_context_clear_recoverable(struct i915_gem_context *ctx)
 {
 	clear_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 3ad3413c459f..c9b83217a6da 100644
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
@@ -35,6 +37,8 @@ i915_gem_create(struct drm_file *file,
 
 	GEM_BUG_ON(size != obj->base.size);
 
+	obj->user_flags = user_flags;
+
 	ret = drm_gem_handle_create(file, &obj->base, &handle);
 	/* drop reference from allocate - handle holds it now */
 	i915_gem_object_put(obj);
@@ -89,11 +93,12 @@ i915_gem_dumb_create(struct drm_file *file,
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
@@ -104,6 +109,17 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
 		return -EINVAL;
 	}
 
+	switch (lower_32_bits(args->param)) {
+	case I915_PARAM_PROTECTED_CONTENT:
+		if (args->size) {
+			return -EINVAL;
+		} else if (args->data) {
+			ext_data->user_flags = args->data;
+			return 0;
+		}
+	break;
+	}
+
 	return -EINVAL;
 }
 
@@ -145,8 +161,13 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
 	if (ret)
 		return ret;
 
+	if (ext_data.user_flags & I915_BO_PROTECTED) {
+		if (!intel_pxp_gem_object_status(i915))
+			return -EINVAL;
+	}
+
 	return i915_gem_create(file,
 			       intel_memory_region_by_type(i915,
 							   INTEL_MEMORY_SYSTEM),
-			       &args->size, &args->handle);
+			       &args->size, &args->handle, ext_data.user_flags);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index e2d9b7e1e152..90ac955463f4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -161,6 +161,11 @@ struct drm_i915_gem_object {
 	} mmo;
 
 	I915_SELFTEST_DECLARE(struct list_head st_link);
+	/**
+	 * @user_flags: small set of booleans set by the user
+	 */
+	unsigned long user_flags;
+#define I915_BO_PROTECTED     BIT(0)
 
 	unsigned long flags;
 #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index aa232ded9951..17a6e3545570 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1744,6 +1744,16 @@ struct drm_i915_gem_object_param {
  */
 #define I915_OBJECT_PARAM  (1ull << 32)
 
+/*
+ * I915_PARAM_PROTECTED_CONTENT:
+ *
+ * If set to true (1) buffer contents is expected to be protected by
+ * PAVP encryption and requires decryption for scan out and processing.
+ * Protected buffers can only be used in PAVP protected contexts.
+ * A protected buffer may become invalid as a result of PAVP teardown.
+ */
+#define I915_PARAM_PROTECTED_CONTENT  0x1
+
 	__u64 param;
 
 	/* Data value or pointer */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
