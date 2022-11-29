Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F5963BA98
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 08:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14CB910E379;
	Tue, 29 Nov 2022 07:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49ACE10E378;
 Tue, 29 Nov 2022 07:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669706809; x=1701242809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TGN5p7bxuNQQXYkw6MBXLg5xUeAkeDZ7oPDLrAJf5QA=;
 b=RayVoEPvdNGSnXq2h+ZrA5beEi54cgQwBOj3DWPc0YnRieLrwwLTMc3F
 0apf11RFoyDB6siO5pX8HjooiYqgz1rWmOHulQDMVsdbZ90Md9TLEvhwM
 5CsH/1JMJxLL7dL+rJB+XrnZJmgjeD97Ne3mvKNps7vIrQrg4ujU8gUyF
 avFj4CQEqKzyua4YqQsW0BbUYboIexqwiAp6iJkk8g5qNSAvf+kaLo+C+
 M4EJoKF8XZXef0vkTK6O/lW8VlOzvShSlZYQg2FghMa7kf/AFBbNTWJMs
 ocg10SBb1ovj7FD+3V5CgI6f2K5LbBzK4Hn74om1v2WUQcjvYMgB5W3rK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="295418382"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="295418382"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 23:26:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="674525608"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="674525608"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 23:26:46 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 28 Nov 2022 23:26:31 -0800
Message-Id: <20221129072635.847-19-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20221129072635.847-1-niranjana.vishwanathapura@intel.com>
References: <20221129072635.847-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 18/22] drm/i915/vm_bind: Add uapi for user to
 enable vm_bind_mode
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add getparam support for VM_BIND capability version.
Add VM creation time flag to enable vm_bind_mode for the VM.

v2: update kernel-doc
v3: create vm->root_obj only upon I915_VM_CREATE_FLAGS_USE_VM_BIND
v4: replace vm->vm_bind_mode check with i915_gem_vm_is_vm_bind_mode()

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 25 ++++++++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_context.h |  3 +--
 drivers/gpu/drm/i915/gt/intel_gtt.c         |  2 ++
 drivers/gpu/drm/i915/i915_drv.h             |  2 ++
 drivers/gpu/drm/i915/i915_getparam.c        |  3 +++
 include/uapi/drm/i915_drm.h                 | 26 ++++++++++++++++++++-
 6 files changed, 56 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a048bf463916..a85f4febaafe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1809,9 +1809,13 @@ int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
 	if (!HAS_FULL_PPGTT(i915))
 		return -ENODEV;
 
-	if (args->flags)
+	if (args->flags & I915_VM_CREATE_FLAGS_UNKNOWN)
 		return -EINVAL;
 
+	if ((args->flags & I915_VM_CREATE_FLAGS_USE_VM_BIND) &&
+	    !HAS_VM_BIND(i915))
+		return -EOPNOTSUPP;
+
 	ppgtt = i915_ppgtt_create(to_gt(i915), 0);
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
@@ -1824,15 +1828,32 @@ int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
 			goto err_put;
 	}
 
+	if (args->flags & I915_VM_CREATE_FLAGS_USE_VM_BIND) {
+		struct drm_i915_gem_object *obj;
+
+		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+		if (IS_ERR(obj)) {
+			err = PTR_ERR(obj);
+			goto err_put;
+		}
+
+		ppgtt->vm.root_obj = obj;
+	}
+
 	err = xa_alloc(&file_priv->vm_xa, &id, &ppgtt->vm,
 		       xa_limit_32b, GFP_KERNEL);
 	if (err)
-		goto err_put;
+		goto err_root_obj_put;
 
 	GEM_BUG_ON(id == 0); /* reserved for invalid/unassigned ppgtt */
 	args->vm_id = id;
 	return 0;
 
+err_root_obj_put:
+	if (ppgtt->vm.root_obj) {
+		i915_gem_object_put(ppgtt->vm.root_obj);
+		ppgtt->vm.root_obj = NULL;
+	}
 err_put:
 	i915_vm_put(&ppgtt->vm);
 	return err;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index e8b41aa8f8c4..b53aef2853cb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -150,8 +150,7 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
  */
 static inline bool i915_gem_vm_is_vm_bind_mode(struct i915_address_space *vm)
 {
-	/* No support to enable vm_bind mode yet */
-	return false;
+	return !!vm->root_obj;
 }
 
 struct i915_address_space *
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 0573b72ae678..ebf6830574a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -179,6 +179,8 @@ int i915_vm_lock_objects(struct i915_address_space *vm,
 void i915_address_space_fini(struct i915_address_space *vm)
 {
 	drm_mm_takedown(&vm->mm);
+	if (vm->root_obj)
+		i915_gem_object_put(vm->root_obj);
 	GEM_BUG_ON(!RB_EMPTY_ROOT(&vm->va.rb_root));
 	mutex_destroy(&vm->vm_bind_lock);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a380db36d52c..53653ad3ffa5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -967,6 +967,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
 				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 
+#define HAS_VM_BIND(i915) (GRAPHICS_VER(i915) >= 12)
+
 /* intel_device_info.c */
 static inline struct intel_device_info *
 mkwrite_device_info(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 61ef2d9cfa62..20c1bf904a65 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -178,6 +178,9 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 	case I915_PARAM_OA_TIMESTAMP_FREQUENCY:
 		value = i915_perf_oa_timestamp_frequency(i915);
 		break;
+	case I915_PARAM_VM_BIND_VERSION:
+		value = HAS_VM_BIND(i915);
+		break;
 	default:
 		drm_dbg(&i915->drm, "Unknown parameter %d\n", param->param);
 		return -EINVAL;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 9846d4323a42..3f27001a2c8d 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -777,6 +777,22 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_OA_TIMESTAMP_FREQUENCY 57
 
+/*
+ * VM_BIND feature version supported.
+ *
+ * The following versions of VM_BIND have been defined:
+ *
+ * 0: No VM_BIND support.
+ *
+ * 1: In VM_UNBIND calls, the UMD must specify the exact mappings created
+ *    previously with VM_BIND, the ioctl will not support unbinding multiple
+ *    mappings or splitting them. Similarly, VM_BIND calls will not replace
+ *    any existing mappings.
+ *
+ * See struct drm_i915_gem_vm_bind and struct drm_i915_gem_vm_unbind.
+ */
+#define I915_PARAM_VM_BIND_VERSION	58
+
 /* Must be kept compact -- no holes and well documented */
 
 /**
@@ -2644,7 +2660,15 @@ struct drm_i915_gem_vm_control {
 	/** @extensions: Zero-terminated chain of extensions. */
 	__u64 extensions;
 
-	/** @flags: reserved for future usage, currently MBZ */
+	/**
+	 * @flags: Supported flags are,
+	 *
+	 * I915_VM_CREATE_FLAGS_USE_VM_BIND:
+	 *
+	 * VM created will work in VM_BIND mode.
+	 */
+#define I915_VM_CREATE_FLAGS_USE_VM_BIND	(1u << 0)
+#define I915_VM_CREATE_FLAGS_UNKNOWN	(-(I915_VM_CREATE_FLAGS_USE_VM_BIND << 1))
 	__u32 flags;
 
 	/** @vm_id: Id of the VM created or to be destroyed */
-- 
2.21.0.rc0.32.g243a4c7e27

