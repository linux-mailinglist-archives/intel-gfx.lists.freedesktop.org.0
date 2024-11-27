Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4A29DA204
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 07:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3BD10E41B;
	Wed, 27 Nov 2024 06:11:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WJkQ+b7J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840CD10E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 06:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732687894; x=1764223894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fUd+kId7JrnpuU0nelCSw1p2wTK4ktXTlO8jzVqHgPU=;
 b=WJkQ+b7Jkm2IiQRmBnCpg8F5+vAsn72SxJ3h4e30pK1vuPDhJYlgoeoO
 aX9lfWmSRDUfw7kVCBEuy+hzA67wx3ufyME+Dz63xsoxzH4O0IxQHn6Mj
 XPBc+2A/VwcznMpcAKVlNzqRYB3qrgwqGHp9h51Gmy10sXRGskSW/kcvi
 NDNriaOeB/q7uyF8t2XwpLTGg6YePlWAmMktLLPIm5/N8pRcKMgXVCOyF
 4nNMNi9/PwreKmjujyKN4WqO1kIZHZSRohUP2JlZLMWduyiQuTw8hlYIC
 KHn13n0Z+waMYqqGk9JKMplVqxEsvXbL5Kz1v0HwfWS1+SYr8SS/p87o1 A==;
X-CSE-ConnectionGUID: i/EyYOgvROaHN0Hx6BLRVA==
X-CSE-MsgGUID: MUA8GfEORFOxU7u1PScmng==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="33125395"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="33125395"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 22:11:33 -0800
X-CSE-ConnectionGUID: ybY4isJWQU+t1Ecx+wsQNg==
X-CSE-MsgGUID: PFNTo6aBR+qrwdZ6vDLr1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="91982068"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Nov 2024 22:11:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2024 08:11:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Brian Geffon <bgeffon@google.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 3/4] drm/i915/dpt: Evict all DPT VMAs on suspend
Date: Wed, 27 Nov 2024 08:11:16 +0200
Message-ID: <20241127061117.25622-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently intel_dpt_resume() tries to blindly rewrite all the
PTEs for currently bound DPT VMAs. That is problematic because
the CPU mapping for the DPT is only really guaranteed to exist
while the DPT object has been pinned. In the past we worked
around this issue by making DPT objects unshrinkable, but that
is undesirable as it'll waste physical RAM.

Let's instead forcefully evict all the DPT VMAs on suspend,
thus guaranteeing that intel_dpt_resume() has nothing to do.
To guarantee that all the DPT VMAs are evictable by
intel_dpt_suspend() we need to flush the cleanup workqueue
after the display output has been shut down.

And for good measure throw in a few extra WARNs to catch
any mistakes.

Cc: Brian Geffon <bgeffon@google.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  3 +++
 drivers/gpu/drm/i915/display/intel_dpt.c      |  4 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 19 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 ++--
 4 files changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 286d6f893afa..973bee43b554 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -680,6 +680,9 @@ int intel_display_driver_suspend(struct drm_i915_private *i915)
 	else
 		i915->display.restore.modeset_state = state;
 
+	/* ensure all DPT VMAs have been unpinned for intel_dpt_suspend() */
+	flush_workqueue(i915->display.wq.cleanup);
+
 	intel_dp_mst_suspend(i915);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index ce8c76e44e6a..8b1f0e92a11c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -205,7 +205,7 @@ void intel_dpt_resume(struct drm_i915_private *i915)
 		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
 
 		if (fb->dpt_vm)
-			i915_ggtt_resume_vm(fb->dpt_vm);
+			i915_ggtt_resume_vm(fb->dpt_vm, true);
 	}
 	mutex_unlock(&i915->drm.mode_config.fb_lock);
 }
@@ -233,7 +233,7 @@ void intel_dpt_suspend(struct drm_i915_private *i915)
 		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
 
 		if (fb->dpt_vm)
-			i915_ggtt_suspend_vm(fb->dpt_vm);
+			i915_ggtt_suspend_vm(fb->dpt_vm, true);
 	}
 
 	mutex_unlock(&i915->drm.mode_config.fb_lock);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index d60a6ca0cae5..f6c59f20832f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -107,11 +107,12 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
 /**
  * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT VM
  * @vm: The VM to suspend the mappings for
+ * @evict_all: Evict all VMAs
  *
  * Suspend the memory mappings for all objects mapped to HW via the GGTT or a
  * DPT page table.
  */
-void i915_ggtt_suspend_vm(struct i915_address_space *vm)
+void i915_ggtt_suspend_vm(struct i915_address_space *vm, bool evict_all)
 {
 	struct i915_vma *vma, *vn;
 	int save_skip_rewrite;
@@ -157,7 +158,7 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 			goto retry;
 		}
 
-		if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
+		if (evict_all || !i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
 			i915_vma_wait_for_bind(vma);
 
 			__i915_vma_evict(vma, false);
@@ -172,13 +173,15 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 	vm->skip_pte_rewrite = save_skip_rewrite;
 
 	mutex_unlock(&vm->mutex);
+
+	drm_WARN_ON(&vm->i915->drm, evict_all && !list_empty(&vm->bound_list));
 }
 
 void i915_ggtt_suspend(struct i915_ggtt *ggtt)
 {
 	struct intel_gt *gt;
 
-	i915_ggtt_suspend_vm(&ggtt->vm);
+	i915_ggtt_suspend_vm(&ggtt->vm, false);
 	ggtt->invalidate(ggtt);
 
 	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
@@ -1545,6 +1548,7 @@ int i915_ggtt_enable_hw(struct drm_i915_private *i915)
 /**
  * i915_ggtt_resume_vm - Restore the memory mappings for a GGTT or DPT VM
  * @vm: The VM to restore the mappings for
+ * @all_evicted: Were all VMAs expected to be evicted on suspend?
  *
  * Restore the memory mappings for all objects mapped to HW via the GGTT or a
  * DPT page table.
@@ -1552,13 +1556,18 @@ int i915_ggtt_enable_hw(struct drm_i915_private *i915)
  * Returns %true if restoring the mapping for any object that was in a write
  * domain before suspend.
  */
-bool i915_ggtt_resume_vm(struct i915_address_space *vm)
+bool i915_ggtt_resume_vm(struct i915_address_space *vm, bool all_evicted)
 {
 	struct i915_vma *vma;
 	bool write_domain_objs = false;
 
 	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
 
+	if (all_evicted) {
+		drm_WARN_ON(&vm->i915->drm, !list_empty(&vm->bound_list));
+		return false;
+	}
+
 	/* First fill our portion of the GTT with scratch pages */
 	vm->clear_range(vm, 0, vm->total);
 
@@ -1598,7 +1607,7 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
 		intel_gt_check_and_clear_faults(gt);
 
-	flush = i915_ggtt_resume_vm(&ggtt->vm);
+	flush = i915_ggtt_resume_vm(&ggtt->vm, false);
 
 	if (drm_mm_node_allocated(&ggtt->error_capture))
 		ggtt->vm.scratch_range(&ggtt->vm, ggtt->error_capture.start,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 6b85222ee3ea..0a36ea751b63 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -608,8 +608,8 @@ int i915_ppgtt_init_hw(struct intel_gt *gt);
 struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt,
 				     unsigned long lmem_pt_obj_flags);
 
-void i915_ggtt_suspend_vm(struct i915_address_space *vm);
-bool i915_ggtt_resume_vm(struct i915_address_space *vm);
+void i915_ggtt_suspend_vm(struct i915_address_space *vm, bool evict_all);
+bool i915_ggtt_resume_vm(struct i915_address_space *vm, bool all_evicted);
 void i915_ggtt_suspend(struct i915_ggtt *gtt);
 void i915_ggtt_resume(struct i915_ggtt *ggtt);
 
-- 
2.45.2

