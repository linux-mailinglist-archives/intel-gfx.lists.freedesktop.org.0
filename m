Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E3E2F9124
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Jan 2021 07:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91EF6E05A;
	Sun, 17 Jan 2021 06:46:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36E4189F85
 for <Intel-gfx@lists.freedesktop.org>; Sun, 17 Jan 2021 06:45:55 +0000 (UTC)
IronPort-SDR: yR+hltusg9Fg+D0twr9uKqXoSPss5Dz1K36xJc4VqnihO+M9yhPUlyvM0wDV1bY7ujLuU9btnL
 XuccpjvFRUKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9866"; a="158475695"
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="158475695"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2021 22:45:54 -0800
IronPort-SDR: c8e1lmVXAku+epXcCLVqB6l8U6wHtfhao+eSqh27Uumd3y1UzE3JTX1t9SOC2WU4Pw5BMbnx8w
 eQLnEW1vzm7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="500346829"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga004.jf.intel.com with ESMTP; 16 Jan 2021 22:45:54 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sat, 16 Jan 2021 22:45:47 -0800
Message-Id: <20210117064548.8822-13-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210117064548.8822-1-sean.z.huang@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210117064548.8822-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v21 12/13] drm/i915/pxp: User interface for
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

Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
Cc: Huang Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 15 +++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  5 ++++
 drivers/gpu/drm/i915/gem/i915_gem_create.c    | 27 ++++++++++++++++---
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  5 ++++
 include/uapi/drm/i915_drm.h                   | 10 +++++++
 5 files changed, 57 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 4d2f40cf237b..0b8e1b3887f4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -81,6 +81,8 @@
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
+#include "pxp/intel_pxp.h"
+
 #define ALL_L3_SLICES(dev) (1 << NUM_L3_SLICES(dev)) - 1
 
 static struct i915_global_gem_context {
@@ -2004,8 +2006,12 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 	case I915_CONTEXT_PARAM_RECOVERABLE:
 		if (args->size)
 			ret = -EINVAL;
-		else if (args->value)
-			i915_gem_context_set_recoverable(ctx);
+		else if (args->value) {
+			if (!i915_gem_context_is_protected(ctx))
+				i915_gem_context_set_recoverable(ctx);
+			else
+				ret = -EPERM;
+			}
 		else
 			i915_gem_context_clear_recoverable(ctx);
 		break;
@@ -2052,6 +2058,7 @@ static int create_setparam(struct i915_user_extension __user *ext, void *data)
 {
 	struct drm_i915_gem_context_create_ext_setparam local;
 	const struct create_ext *arg = data;
+	int ret;
 
 	if (copy_from_user(&local, ext, sizeof(local)))
 		return -EFAULT;
@@ -2059,6 +2066,10 @@ static int create_setparam(struct i915_user_extension __user *ext, void *data)
 	if (local.param.ctx_id)
 		return -EINVAL;
 
+	ret = intel_pxp_gem_context_create_param(arg->ctx, &local.param);
+	if (ret)
+		return ret;
+
 	return ctx_setparam(arg->fpriv, arg->ctx, &local.param);
 }
 
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
