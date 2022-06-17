Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8409254FBBE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A6610F3F3;
	Fri, 17 Jun 2022 16:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FB810F3BF;
 Fri, 17 Jun 2022 16:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655485047; x=1687021047;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vUDXYpfxP5ixE/okZ7+Kd35Fi0syrmdBj809l9Zc+o4=;
 b=mREFlZ05EZdsQZwVQcRp0qDnmtj8/qxAOJqzFtrHa5SPDpZralB2ltld
 tyxeVNJGhxRcmzHMj2Fj3Av/+8eqwV0WIrOwKsicAvmt/zK4OD1sKekAS
 BA4VtKbirmSDIWW0d+MyWYkxyCUUBkWPV8dD23SJbFjRaEPSkvmU1TcTu
 o0JPlPxw4f9AufYDjDTWHFPCjFgUvs5wDeAnwpjO1OSSQAS8kXEiRt+NV
 5QqUho/c/IA7ecLUoVpGcDjynXItB3l9jPsNKdDxReGD33yznHRgAlxwG
 yJLXAtT7kTgbcLbw/TR4kC2OElUAZ7MY0GRF1OTqDBygqJbLa6opAT6ca Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="304938635"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="304938635"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 08:29:12 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="653654963"
Received: from ettammin-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.175])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 08:29:06 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 17 Jun 2022 17:28:55 +0200
Message-Id: <20220617152856.249295-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915: Improve on suspend / resume time
 with VT-d enabled
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
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When DMAR / VT-d is enabled, the display engine uses overfetching,
presumably to deal with the increased latency. To avoid display engine
errors and DMAR faults, as a workaround the GGTT is populated with scatch
PTEs when VT-d is enabled. However starting with gen10, Write-combined
writing of scratch PTES is no longer possible and as a result, populating
the full GGTT with scratch PTEs like on resume becomes very slow as
uncached access is needed.

Therefore, on integrated GPUs utilize the fact that the PTEs are stored in
stolen memory which retain content across S3 suspend. Don't clear the PTEs
on suspend and resume. This improves on resume time with around 100 ms.
While 100+ms might appear like a short time it's 10% to 20% of total resume
time and important in some applications.

One notable exception is Intel Rapid Start Technology which may cause
stolen memory to be lost across what the OS percieves as S3 suspend.
If IRST is enabled or if we can't detect whether IRST is enabled, retain
the old workaround, clearing and re-instating PTEs.

As an additional measure, if we detect that the last ggtt pte was lost
during suspend, print a warning and re-populate the GGTT ptes

On discrete GPUs, the display engine scans out from LMEM which isn't
subject to DMAR, and presumably the workaround is therefore not needed,
but that needs to be verified and disabling the workaround for dGPU,
if possible, will be deferred to a follow-up patch.

v2:
- Rely on retained ptes to also speed up suspend and resume re-binding.
- Re-build GGTT ptes if Intel rst is enabled.
v3:
- Re-build GGTT ptes also if we can't detect whether Intel rst is enabled,
  and if the guard page PTE and end of GGTT was lost.
v4:
- Fix some kerneldoc issues (Matthew Auld), rebase.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 56 +++++++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gtt.h  | 24 ++++++++++++
 drivers/gpu/drm/i915/i915_driver.c   | 16 ++++++++
 3 files changed, 90 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index e6b2eb122ad7..0849a6f66309 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -22,6 +22,13 @@
 #include "intel_gtt.h"
 #include "gen8_ppgtt.h"
 
+static inline bool suspend_retains_ptes(struct i915_address_space *vm)
+{
+	return GRAPHICS_VER(vm->i915) >= 8 &&
+		!HAS_LMEM(vm->i915) &&
+		vm->is_ggtt;
+}
+
 static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
 				   unsigned long color,
 				   u64 *start,
@@ -93,6 +100,23 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
 	return 0;
 }
 
+/*
+ * Return the value of the last GGTT pte cast to an u64, if
+ * the system is supposed to retain ptes across resume. 0 otherwise.
+ */
+static u64 read_last_pte(struct i915_address_space *vm)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
+	gen8_pte_t __iomem *ptep;
+
+	if (!suspend_retains_ptes(vm))
+		return 0;
+
+	GEM_BUG_ON(GRAPHICS_VER(vm->i915) < 8);
+	ptep = (typeof(ptep))ggtt->gsm + (ggtt_total_entries(ggtt) - 1);
+	return readq(ptep);
+}
+
 /**
  * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT VM
  * @vm: The VM to suspend the mappings for
@@ -156,7 +180,10 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 		i915_gem_object_unlock(obj);
 	}
 
-	vm->clear_range(vm, 0, vm->total);
+	if (!suspend_retains_ptes(vm))
+		vm->clear_range(vm, 0, vm->total);
+	else
+		i915_vm_to_ggtt(vm)->probed_pte = read_last_pte(vm);
 
 	vm->skip_pte_rewrite = save_skip_rewrite;
 
@@ -299,6 +326,8 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 	struct drm_mm_node *entry;
 	int ret;
 
+	ggtt->pte_lost = true;
+
 	/*
 	 * GuC requires all resources that we're sharing with it to be placed in
 	 * non-WOPCM memory. If GuC is not present or not in use we still need a
@@ -675,11 +704,20 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
 {
 	struct i915_vma *vma;
 	bool write_domain_objs = false;
+	bool retained_ptes;
 
 	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
 
-	/* First fill our portion of the GTT with scratch pages */
-	vm->clear_range(vm, 0, vm->total);
+	/*
+	 * First fill our portion of the GTT with scratch pages if
+	 * they were not retained across suspend.
+	 */
+	retained_ptes = suspend_retains_ptes(vm) &&
+		!i915_vm_to_ggtt(vm)->pte_lost &&
+		!GEM_WARN_ON(i915_vm_to_ggtt(vm)->probed_pte != read_last_pte(vm));
+
+	if (!retained_ptes)
+		vm->clear_range(vm, 0, vm->total);
 
 	/* clflush objects bound into the GGTT and rebind them. */
 	list_for_each_entry(vma, &vm->bound_list, vm_link) {
@@ -688,9 +726,10 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
 			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
 
 		GEM_BUG_ON(!was_bound);
-		vma->ops->bind_vma(vm, NULL, vma->resource,
-				   obj ? obj->cache_level : 0,
-				   was_bound);
+		if (!retained_ptes)
+			vma->ops->bind_vma(vm, NULL, vma->resource,
+					   obj ? obj->cache_level : 0,
+					   was_bound);
 		if (obj) { /* only used during resume => exclusive access */
 			write_domain_objs |= fetch_and_zero(&obj->write_domain);
 			obj->read_domains |= I915_GEM_DOMAIN_GTT;
@@ -718,3 +757,8 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 
 	intel_ggtt_restore_fences(ggtt);
 }
+
+void i915_ggtt_mark_pte_lost(struct drm_i915_private *i915, bool val)
+{
+	to_gt(i915)->ggtt->pte_lost = val;
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index a40d928b3888..128b31476938 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -345,6 +345,19 @@ struct i915_ggtt {
 
 	bool do_idle_maps;
 
+	/**
+	 * @pte_lost: Are ptes lost on resume?
+	 *
+	 * Whether the system was recently restored from hibernate and
+	 * thus may have lost pte content.
+	 */
+	bool pte_lost;
+
+	/**
+	 * @probed_pte: Probed pte value on suspend. Re-checked on resume.
+	 */
+	u64 probed_pte;
+
 	int mtrr;
 
 	/** Bit 6 swizzling required for X tiling */
@@ -581,6 +594,17 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm);
 void i915_ggtt_suspend(struct i915_ggtt *gtt);
 void i915_ggtt_resume(struct i915_ggtt *ggtt);
 
+/**
+ * i915_ggtt_mark_pte_lost - Mark ggtt ptes as lost or clear such a marking
+ * @i915 The device private.
+ * @val whether the ptes should be marked as lost.
+ *
+ * In some cases pte content is retained across suspend, but typically lost
+ * across hibernate. Typically they should be marked as lost on
+ * hibernation restore and such marking cleared on suspend.
+ */
+void i915_ggtt_mark_pte_lost(struct drm_i915_private *i915, bool val);
+
 void
 fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d26dcca7e654..0e224761d0ed 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -100,6 +100,9 @@
 #include "intel_region_ttm.h"
 #include "vlv_suspend.h"
 
+/* Intel Rapid Start Technology ACPI device name */
+static const char irst_name[] = "INT3392";
+
 static const struct drm_driver i915_drm_driver;
 
 static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
@@ -1441,6 +1444,8 @@ static int i915_pm_suspend(struct device *kdev)
 		return -ENODEV;
 	}
 
+	i915_ggtt_mark_pte_lost(i915, false);
+
 	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
 		return 0;
 
@@ -1493,6 +1498,14 @@ static int i915_pm_resume(struct device *kdev)
 	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
 		return 0;
 
+	/*
+	 * If IRST is enabled, or if we can't detect whether it's enabled,
+	 * then we must assume we lost the GGTT page table entries, since
+	 * they are not retained if IRST decided to enter S4.
+	 */
+	if (!IS_ENABLED(CONFIG_ACPI) || acpi_dev_present(irst_name, NULL, -1))
+		i915_ggtt_mark_pte_lost(i915, true);
+
 	return i915_drm_resume(&i915->drm);
 }
 
@@ -1552,6 +1565,9 @@ static int i915_pm_restore_early(struct device *kdev)
 
 static int i915_pm_restore(struct device *kdev)
 {
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+
+	i915_ggtt_mark_pte_lost(i915, true);
 	return i915_pm_resume(kdev);
 }
 
-- 
2.34.3

