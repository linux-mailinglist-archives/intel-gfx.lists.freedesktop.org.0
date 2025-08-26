Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA30B36E2D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 17:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F18710E37B;
	Tue, 26 Aug 2025 15:43:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPaLGpCw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AEAD10E37B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756223033; x=1787759033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y2hDOjHU9H2TNuYvDbjPkjVg3qq69uftT6rFPWMLee4=;
 b=KPaLGpCwYvWDn+Sqmj1YXnsIxN8PMEuduJ8gtlOEgezI0DN42o+sUZCv
 a/+P3vxTHvnWSUKimP9BRp9IaUi3YblgcC509I7tS3X+I4A/r5LE2G/Ee
 aURC66UQGJpQD1EDVtbikxAJdlZNlndfvb+AqKF+6IettL3joLP0OSvq9
 1sW+c/3jMqOMEbr6vgOmzo5Ef0fZC39U7XyOQ4wcjZl4CmYwGBRT5mMdx
 gotXRQV1AXV2EMQb+CnmD2NQK32SN7tjgD0+OjXvnsq4o77b+nziexnRx
 9ADSuMU+luq3SAgQvZ9CROh69xh02hlal8DkF93XHP19UmFR7fu8pO7mr Q==;
X-CSE-ConnectionGUID: vXjPspJTS2+8GLLvOvRKmg==
X-CSE-MsgGUID: eAV1ZY2MTrm7MUqnNv729Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58527756"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58527756"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 08:43:52 -0700
X-CSE-ConnectionGUID: QZxSEfUwTkGAR9u1keqDmA==
X-CSE-MsgGUID: ge55R6t7T1GVfT+ZWB4BBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200498317"
Received: from dut4086lnl.fm.intel.com ([10.105.10.138])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 08:43:53 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 matthew.brost@intel.com, john.c.harrison@intel.com
Subject: [PATCH 1/2] Revert "drm/xe: Add VM bind IOCTL error injection"
Date: Tue, 26 Aug 2025 15:43:54 +0000
Message-ID: <20250826154352.90434-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250826154352.90434-4-jonathan.cavitt@intel.com>
References: <20250826154352.90434-4-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 04e9c0ce19ac68afd8be7fd54772db3b0356cf75.

Error injection should use the error injection interface, and should be
decoupled from CONFIG_DRM_XE_DEBUG.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/xe/xe_device_types.h | 12 ------------
 drivers/gpu/drm/xe/xe_pt.c           | 12 ------------
 drivers/gpu/drm/xe/xe_vm.c           | 23 +----------------------
 drivers/gpu/drm/xe/xe_vm_types.h     | 14 --------------
 4 files changed, 1 insertion(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 71fc29b3372a..42a7d910ca70 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -27,10 +27,6 @@
 #include "xe_step_types.h"
 #include "xe_survivability_mode_types.h"
 
-#if IS_ENABLED(CONFIG_DRM_XE_DEBUG)
-#define TEST_VM_OPS_ERROR
-#endif
-
 struct dram_info;
 struct intel_display;
 struct intel_dg_nvm_dev;
@@ -565,14 +561,6 @@ struct xe_device {
 	/** @atomic_svm_timeslice_ms: Atomic SVM fault timeslice MS */
 	u32 atomic_svm_timeslice_ms;
 
-#ifdef TEST_VM_OPS_ERROR
-	/**
-	 * @vm_inject_error_position: inject errors at different places in VM
-	 * bind IOCTL based on this value
-	 */
-	u8 vm_inject_error_position;
-#endif
-
 #if IS_ENABLED(CONFIG_TRACE_GPU_MEM)
 	/**
 	 * @global_total_pages: global GPU page usage tracked for gpu_mem
diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
index c0a70c80dff9..e7bccccdbc44 100644
--- a/drivers/gpu/drm/xe/xe_pt.c
+++ b/drivers/gpu/drm/xe/xe_pt.c
@@ -2160,12 +2160,6 @@ int xe_pt_update_ops_prepare(struct xe_tile *tile, struct xe_vma_ops *vops)
 	xe_tile_assert(tile, pt_update_ops->current_op <=
 		       pt_update_ops->num_ops);
 
-#ifdef TEST_VM_OPS_ERROR
-	if (vops->inject_error &&
-	    vops->vm->xe->vm_inject_error_position == FORCE_OP_ERROR_PREPARE)
-		return -ENOSPC;
-#endif
-
 	return 0;
 }
 ALLOW_ERROR_INJECTION(xe_pt_update_ops_prepare, ERRNO);
@@ -2396,12 +2390,6 @@ xe_pt_update_ops_run(struct xe_tile *tile, struct xe_vma_ops *vops)
 		return dma_fence_get_stub();
 	}
 
-#ifdef TEST_VM_OPS_ERROR
-	if (vops->inject_error &&
-	    vm->xe->vm_inject_error_position == FORCE_OP_ERROR_RUN)
-		return ERR_PTR(-ENOSPC);
-#endif
-
 	if (pt_update_ops->needs_invalidation) {
 		ijob = xe_gt_tlb_inval_job_create(pt_update_ops->q,
 						  tile->primary_gt,
diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
index e913efa2057b..1a8841116e40 100644
--- a/drivers/gpu/drm/xe/xe_vm.c
+++ b/drivers/gpu/drm/xe/xe_vm.c
@@ -3218,12 +3218,6 @@ static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
 			return err;
 	}
 
-#ifdef TEST_VM_OPS_ERROR
-	if (vops->inject_error &&
-	    vm->xe->vm_inject_error_position == FORCE_OP_ERROR_LOCK)
-		return -ENOSPC;
-#endif
-
 	return 0;
 }
 
@@ -3467,7 +3461,7 @@ static struct dma_fence *vm_bind_ioctl_ops_execute(struct xe_vm *vm,
 }
 ALLOW_ERROR_INJECTION(vm_bind_ioctl_ops_execute, ERRNO);
 
-#define SUPPORTED_FLAGS_STUB  \
+#define SUPPORTED_FLAGS	\
 	(DRM_XE_VM_BIND_FLAG_READONLY | \
 	 DRM_XE_VM_BIND_FLAG_IMMEDIATE | \
 	 DRM_XE_VM_BIND_FLAG_NULL | \
@@ -3475,12 +3469,6 @@ ALLOW_ERROR_INJECTION(vm_bind_ioctl_ops_execute, ERRNO);
 	 DRM_XE_VM_BIND_FLAG_CHECK_PXP | \
 	 DRM_XE_VM_BIND_FLAG_CPU_ADDR_MIRROR)
 
-#ifdef TEST_VM_OPS_ERROR
-#define SUPPORTED_FLAGS	(SUPPORTED_FLAGS_STUB | FORCE_OP_ERROR)
-#else
-#define SUPPORTED_FLAGS	SUPPORTED_FLAGS_STUB
-#endif
-
 #define XE_64K_PAGE_MASK 0xffffull
 #define ALL_DRM_XE_SYNCS_FLAGS (DRM_XE_SYNCS_FLAG_WAIT_FOR_OP)
 
@@ -3863,15 +3851,6 @@ int xe_vm_bind_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
 		err = vm_bind_ioctl_ops_parse(vm, ops[i], &vops);
 		if (err)
 			goto unwind_ops;
-
-#ifdef TEST_VM_OPS_ERROR
-		if (flags & FORCE_OP_ERROR) {
-			vops.inject_error = true;
-			vm->xe->vm_inject_error_position =
-				(vm->xe->vm_inject_error_position + 1) %
-				FORCE_OP_ERROR_COUNT;
-		}
-#endif
 	}
 
 	/* Nothing to do */
diff --git a/drivers/gpu/drm/xe/xe_vm_types.h b/drivers/gpu/drm/xe/xe_vm_types.h
index b5108d010786..a7a9e80777f3 100644
--- a/drivers/gpu/drm/xe/xe_vm_types.h
+++ b/drivers/gpu/drm/xe/xe_vm_types.h
@@ -25,16 +25,6 @@ struct xe_user_fence;
 struct xe_vm;
 struct xe_vm_pgtable_update_op;
 
-#if IS_ENABLED(CONFIG_DRM_XE_DEBUG)
-#define TEST_VM_OPS_ERROR
-#define FORCE_OP_ERROR	BIT(31)
-
-#define FORCE_OP_ERROR_LOCK	0
-#define FORCE_OP_ERROR_PREPARE	1
-#define FORCE_OP_ERROR_RUN	2
-#define FORCE_OP_ERROR_COUNT	3
-#endif
-
 #define XE_VMA_READ_ONLY	DRM_GPUVA_USERBITS
 #define XE_VMA_DESTROYED	(DRM_GPUVA_USERBITS << 1)
 #define XE_VMA_ATOMIC_PTE_BIT	(DRM_GPUVA_USERBITS << 2)
@@ -512,10 +502,6 @@ struct xe_vma_ops {
 #define XE_VMA_OPS_FLAG_HAS_SVM_PREFETCH BIT(0)
 #define XE_VMA_OPS_FLAG_MADVISE          BIT(1)
 	u32 flags;
-#ifdef TEST_VM_OPS_ERROR
-	/** @inject_error: inject error to test error handling */
-	bool inject_error;
-#endif
 };
 
 #endif
-- 
2.43.0

