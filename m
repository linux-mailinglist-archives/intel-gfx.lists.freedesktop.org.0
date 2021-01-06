Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5279E2EC69B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 00:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA4D6E3AC;
	Wed,  6 Jan 2021 23:12:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0706E30F
 for <Intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 23:12:24 +0000 (UTC)
IronPort-SDR: lxRdQU3Vh4ipOObC4RQpaV2kBWMDY6Ix366w19J1C7o6hdl/59aNGS1XnLHqylieTNCHiZia5L
 5ocSdCraH5ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="195900077"
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="195900077"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 15:12:23 -0800
IronPort-SDR: 7DOKrHnOzuAzZT3L4+WsTXHmmEnCBeEvj3sMxQ8CxZFJor5vaInkZKPAI3jd5OFow7GzQxdgbi
 xhRBKuhSbohQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="567566137"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jan 2021 15:12:23 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jan 2021 15:12:22 -0800
Message-Id: <20210106231223.8323-13-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210106231223.8323-1-sean.z.huang@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v19 12/13] drm/i915/pxp: User interface for
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Huang Sean Z <sean.z.huang@intel.com>,
 Kondapally Kalyan <kalyan.kondapally@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>

This api allow user mode to create Protected buffer and context creation.

Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
Cc: Huang Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 19 +++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |  5 ++++
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  5 ++++
 drivers/gpu/drm/i915/i915_gem.c               | 23 +++++++++++++++----
 include/uapi/drm/i915_drm.h                   | 19 +++++++++++++++
 6 files changed, 66 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 68f58762d5e3..00d7ca3071e7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -81,6 +81,8 @@
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
+#include "pxp/intel_pxp.h"
+
 #define ALL_L3_SLICES(dev) (1 << NUM_L3_SLICES(dev)) - 1
 
 static struct i915_global_gem_context {
@@ -2022,12 +2024,25 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
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
 
+	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
+		if (args->size)
+			ret = -EINVAL;
+		else if (args->value)
+			ret = intel_pxp_gem_context_set_protected(ctx->i915,
+								  &ctx->user_flags,
+								  UCONTEXT_PROTECTED);
+		break;
+
 	case I915_CONTEXT_PARAM_PRIORITY:
 		ret = set_priority(ctx, args);
 		break;
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
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 1449f54924e0..0917c9431c65 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -134,7 +134,7 @@ struct i915_gem_context {
 #define UCONTEXT_BANNABLE		2
 #define UCONTEXT_RECOVERABLE		3
 #define UCONTEXT_PERSISTENCE		4
-
+#define UCONTEXT_PROTECTED		5
 	/**
 	 * @flags: small set of booleans
 	 */
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
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index c53b13c02e59..611a0b5ab51f 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -184,7 +184,8 @@ static int
 i915_gem_create(struct drm_file *file,
 		struct intel_memory_region *mr,
 		u64 *size_p,
-		u32 *handle_p)
+		u32 *handle_p,
+		u64 user_flags)
 {
 	struct drm_i915_gem_object *obj;
 	u32 handle;
@@ -204,6 +205,8 @@ i915_gem_create(struct drm_file *file,
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
+	obj->user_flags = user_flags;
+
 	ret = drm_gem_handle_create(file, &obj->base, &handle);
 	/* drop reference from allocate - handle holds it now */
 	i915_gem_object_put(obj);
@@ -258,11 +261,12 @@ i915_gem_dumb_create(struct drm_file *file,
 	return i915_gem_create(file,
 			       intel_memory_region_by_type(to_i915(dev),
 							   mem_type),
-			       &args->size, &args->handle);
+			       &args->size, &args->handle, 0);
 }
 
 struct create_ext {
-        struct drm_i915_private *i915;
+	struct drm_i915_private *i915;
+	unsigned long user_flags;
 };
 
 static int __create_setparam(struct drm_i915_gem_object_param *args,
@@ -273,6 +277,17 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
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
 
@@ -318,7 +333,7 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
 	return i915_gem_create(file,
 			       intel_memory_region_by_type(i915,
 							   INTEL_MEMORY_SYSTEM),
-			       &args->size, &args->handle);
+			       &args->size, &args->handle, ext_data.user_flags);
 }
 
 static int
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index f9a1d26824b6..6822f11814fa 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1716,6 +1716,15 @@ struct drm_i915_gem_context_param {
  * Default is 16 KiB.
  */
 #define I915_CONTEXT_PARAM_RINGSIZE	0xc
+
+/*
+ * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
+ *
+ * If set to true (1) PAVP content protection is enabled.
+ * When enabled, the context is marked unrecoverable and may
+ * become invalid due to PAVP teardown event or other error.
+ */
+#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
 /* Must be kept compact -- no holes and well documented */
 
 	__u64 value;
@@ -1735,6 +1744,16 @@ struct drm_i915_gem_object_param {
  */
 #define I915_OBJECT_PARAM  (1ull<<32)
 
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
