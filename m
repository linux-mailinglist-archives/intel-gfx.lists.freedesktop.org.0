Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A4639172
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 23:31:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4DD10E7B3;
	Fri, 25 Nov 2022 22:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D28410E7B3;
 Fri, 25 Nov 2022 22:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669415467; x=1700951467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wAUO3vPuGeEk0LHtAL6dVHzHtqKg3Fou2q2AWzcmr4s=;
 b=mpFWdScqHzYFri8QEfA8Vf8iIxwCccgJtf5gxkykEV52UlXbhQEHBNHB
 D+iXWBxWOL5wYtEcs6qOZJmPtFpUbHO/2BvQunfHjX+zs1twxUL0gYljJ
 gJgWqEoRukGpKvQYm8of15aPNtkib41ULD6kvky5XYvBMeSIhkTkioG1N
 W+Cv+A3T6cXFeGkbgSYtcDcT2SS78rumzd2wtjicnOqagdHpa7OYLzh9k
 ovPDJ7oBA3zt+2JhPOnxG8TetN2XRW2DGo5CBOxQ8cCtzLiTVMzpq9HgY
 92YO6KxRLmENM99F0de/jFYBgsN1jDeUGjFNzfNr7rKc6XKBCBbRhwvoz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="294931108"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="294931108"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 14:31:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="767467458"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="767467458"
Received: from ncataldi-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.50.225])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 14:31:04 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 25 Nov 2022 23:30:28 +0100
Message-Id: <20221125223029.323339-5-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221125223029.323339-1-andi.shyti@linux.intel.com>
References: <20221125223029.323339-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/5] Revert "drm/i915: Improve on suspend /
 resume time with VT-d enabled"
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 2ef6efa79fecd5e3457b324155d35524d95f2b6b.

Checking the presence if the IRST (Intel Rapid Start Technology)
through the ACPI to decide whether to rebuild or not the GGTT
puts us at the mercy of the boot firmware and we need to
unnecessarily rely on third parties.

Because now we avoid adding scratch pages to the entire GGTT we
don't need this hack anymore.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 69 ++++++----------------------
 drivers/gpu/drm/i915/gt/intel_gtt.h  | 24 ----------
 drivers/gpu/drm/i915/i915_driver.c   | 16 -------
 3 files changed, 13 insertions(+), 96 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 5ccec5c9206d2..9d76a573255f6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -26,13 +26,6 @@
 #include "intel_gtt.h"
 #include "gen8_ppgtt.h"
 
-static inline bool suspend_retains_ptes(struct i915_address_space *vm)
-{
-	return GRAPHICS_VER(vm->i915) >= 8 &&
-		!HAS_LMEM(vm->i915) &&
-		vm->is_ggtt;
-}
-
 static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
 				   unsigned long color,
 				   u64 *start,
@@ -104,23 +97,6 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
 	return 0;
 }
 
-/*
- * Return the value of the last GGTT pte cast to an u64, if
- * the system is supposed to retain ptes across resume. 0 otherwise.
- */
-static u64 read_last_pte(struct i915_address_space *vm)
-{
-	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
-	gen8_pte_t __iomem *ptep;
-
-	if (!suspend_retains_ptes(vm))
-		return 0;
-
-	GEM_BUG_ON(GRAPHICS_VER(vm->i915) < 8);
-	ptep = (typeof(ptep))ggtt->gsm + (ggtt_total_entries(ggtt) - 1);
-	return readq(ptep);
-}
-
 /**
  * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT VM
  * @vm: The VM to suspend the mappings for
@@ -184,10 +160,7 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 		i915_gem_object_unlock(obj);
 	}
 
-	if (!suspend_retains_ptes(vm))
-		vm->clear_range(vm, 0, vm->total);
-	else
-		i915_vm_to_ggtt(vm)->probed_pte = read_last_pte(vm);
+	vm->clear_range(vm, 0, vm->total);
 
 	vm->skip_pte_rewrite = save_skip_rewrite;
 
@@ -536,8 +509,6 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 	struct drm_mm_node *entry;
 	int ret;
 
-	ggtt->pte_lost = true;
-
 	/*
 	 * GuC requires all resources that we're sharing with it to be placed in
 	 * non-WOPCM memory. If GuC is not present or not in use we still need a
@@ -1236,20 +1207,11 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
 {
 	struct i915_vma *vma;
 	bool write_domain_objs = false;
-	bool retained_ptes;
 
 	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
 
-	/*
-	 * First fill our portion of the GTT with scratch pages if
-	 * they were not retained across suspend.
-	 */
-	retained_ptes = suspend_retains_ptes(vm) &&
-		!i915_vm_to_ggtt(vm)->pte_lost &&
-		!GEM_WARN_ON(i915_vm_to_ggtt(vm)->probed_pte != read_last_pte(vm));
-
-	if (!retained_ptes)
-		vm->clear_range(vm, 0, vm->total);
+	/* First fill our portion of the GTT with scratch pages */
+	vm->clear_range(vm, 0, vm->total);
 
 	/* clflush objects bound into the GGTT and rebind them. */
 	list_for_each_entry(vma, &vm->bound_list, vm_link) {
@@ -1258,16 +1220,16 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
 			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
 
 		GEM_BUG_ON(!was_bound);
-		if (!retained_ptes) {
-			/*
-			 * Clear the bound flags of the vma resource to allow
-			 * ptes to be repopulated.
-			 */
-			vma->resource->bound_flags = 0;
-			vma->ops->bind_vma(vm, NULL, vma->resource,
-					   obj ? obj->cache_level : 0,
-					   was_bound);
-		}
+
+		/*
+		 * Clear the bound flags of the vma resource to allow
+		 * ptes to be repopulated.
+		 */
+		vma->resource->bound_flags = 0;
+		vma->ops->bind_vma(vm, NULL, vma->resource,
+				   obj ? obj->cache_level : 0,
+				   was_bound);
+
 		if (obj) { /* only used during resume => exclusive access */
 			write_domain_objs |= fetch_and_zero(&obj->write_domain);
 			obj->read_domains |= I915_GEM_DOMAIN_GTT;
@@ -1295,8 +1257,3 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 
 	intel_ggtt_restore_fences(ggtt);
 }
-
-void i915_ggtt_mark_pte_lost(struct drm_i915_private *i915, bool val)
-{
-	to_gt(i915)->ggtt->pte_lost = val;
-}
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 4d75ba4bb41da..eae880dced4d7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -355,19 +355,6 @@ struct i915_ggtt {
 
 	bool do_idle_maps;
 
-	/**
-	 * @pte_lost: Are ptes lost on resume?
-	 *
-	 * Whether the system was recently restored from hibernate and
-	 * thus may have lost pte content.
-	 */
-	bool pte_lost;
-
-	/**
-	 * @probed_pte: Probed pte value on suspend. Re-checked on resume.
-	 */
-	u64 probed_pte;
-
 	int mtrr;
 
 	/** Bit 6 swizzling required for X tiling */
@@ -600,17 +587,6 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm);
 void i915_ggtt_suspend(struct i915_ggtt *gtt);
 void i915_ggtt_resume(struct i915_ggtt *ggtt);
 
-/**
- * i915_ggtt_mark_pte_lost - Mark ggtt ptes as lost or clear such a marking
- * @i915 The device private.
- * @val whether the ptes should be marked as lost.
- *
- * In some cases pte content is retained across suspend, but typically lost
- * across hibernate. Typically they should be marked as lost on
- * hibernation restore and such marking cleared on suspend.
- */
-void i915_ggtt_mark_pte_lost(struct drm_i915_private *i915, bool val);
-
 void
 fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 69103ae377792..94ea2e7f1ad2e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -102,9 +102,6 @@
 #include "intel_region_ttm.h"
 #include "vlv_suspend.h"
 
-/* Intel Rapid Start Technology ACPI device name */
-static const char irst_name[] = "INT3392";
-
 static const struct drm_driver i915_drm_driver;
 
 static void i915_release_bridge_dev(struct drm_device *dev,
@@ -1494,8 +1491,6 @@ static int i915_pm_suspend(struct device *kdev)
 		return -ENODEV;
 	}
 
-	i915_ggtt_mark_pte_lost(i915, false);
-
 	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
 		return 0;
 
@@ -1548,14 +1543,6 @@ static int i915_pm_resume(struct device *kdev)
 	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
 		return 0;
 
-	/*
-	 * If IRST is enabled, or if we can't detect whether it's enabled,
-	 * then we must assume we lost the GGTT page table entries, since
-	 * they are not retained if IRST decided to enter S4.
-	 */
-	if (!IS_ENABLED(CONFIG_ACPI) || acpi_dev_present(irst_name, NULL, -1))
-		i915_ggtt_mark_pte_lost(i915, true);
-
 	return i915_drm_resume(&i915->drm);
 }
 
@@ -1615,9 +1602,6 @@ static int i915_pm_restore_early(struct device *kdev)
 
 static int i915_pm_restore(struct device *kdev)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(kdev);
-
-	i915_ggtt_mark_pte_lost(i915, true);
 	return i915_pm_resume(kdev);
 }
 
-- 
2.38.1

