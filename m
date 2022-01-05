Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B753F485042
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 10:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991A710E728;
	Wed,  5 Jan 2022 09:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF43E10E7B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 09:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641375728; x=1672911728;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BnygNiRlQgvDExEDBJTTRN0JGly0nux9zjEWth+oL+0=;
 b=cGo845XXIk9wGRHyuNo/sATLzXHD8MoOcKR1fGFBwjG1swyhZN1X6nkB
 qNCNrRr7gXuqswWu4Uk46ftznd8WOJh4qneXM4g9bHaAiK61SHPafRRk2
 ta/C1vGiViJ8bRDfX3n9QKxis9zhNwjiGIzViitXak/0jJnio85DGVZDD
 89v/QRZ+VEAnqiR1m2CeKexh6WkkljCBzF+VlS9NA/hsvdqk50wlrJ4ru
 2c7TaIL85w7mILRkinhEfEAajDyUCmE7oHGuggCscEOUfz5Mm2XX/9eCB
 6qbBCi28K7B2MvlX5XmNzKsAGKi+icG1CSK6s86NdBnXSkS/gCsz6VYSC Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="303159847"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="303159847"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 01:42:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="472429308"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 01:42:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 11:41:55 +0200
Message-Id: <20220105094155.933291-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220105094155.933291-1-jani.nikula@intel.com>
References: <20220105094155.933291-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/vtd: rename functions to have
 the usual prefix
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The prefix should tell where the function is to be found and where it
belongs.

Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |  6 +++---
 drivers/gpu/drm/i915/gt/intel_gtt.c          |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c          |  2 +-
 drivers/gpu/drm/i915/i915_driver.c           |  2 +-
 drivers/gpu/drm/i915/intel_pch.c             |  2 +-
 drivers/gpu/drm/i915/intel_vtd.c             |  2 +-
 drivers/gpu/drm/i915/intel_vtd.h             | 14 +++++++-------
 9 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index d4196ea1bbca..543cae8d9e53 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -104,7 +104,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	 * we should always have valid PTE following the scanout preventing
 	 * the VT-d warning.
 	 */
-	if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
+	if (intel_vtd_scanout_needs_wa(dev_priv) && alignment < 256 * 1024)
 		alignment = 256 * 1024;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 01000f9071c4..e32da9ad9fde 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -127,7 +127,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 	int err = 0;
 
 	/* CHV + VTD workaround use stop_machine(); need to trylock vm->mutex */
-	bool trylock_vm = !ww && intel_vm_no_concurrent_access_wa(i915);
+	bool trylock_vm = !ww && intel_vtd_vm_no_concurrent_access_wa(i915);
 
 	trace_i915_gem_shrink(i915, target, shrink);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 5444bdd20eb1..4eab2dd325a4 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -930,7 +930,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.cleanup = gen6_gmch_remove;
 	ggtt->vm.insert_page = gen8_ggtt_insert_page;
 	ggtt->vm.clear_range = nop_clear_range;
-	if (intel_scanout_needs_vtd_wa(i915))
+	if (intel_vtd_scanout_needs_wa(i915))
 		ggtt->vm.clear_range = gen8_ggtt_clear_range;
 
 	ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
@@ -939,7 +939,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	 * Serialize GTT updates with aperture access on BXT if VT-d is on,
 	 * and always on CHV.
 	 */
-	if (intel_vm_no_concurrent_access_wa(i915)) {
+	if (intel_vtd_vm_no_concurrent_access_wa(i915)) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
 		ggtt->vm.bind_async_flags =
@@ -1078,7 +1078,7 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
 	ggtt->vm.clear_range = nop_clear_range;
-	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
+	if (!HAS_FULL_PPGTT(i915) || intel_vtd_scanout_needs_wa(i915))
 		ggtt->vm.clear_range = gen6_ggtt_clear_range;
 	ggtt->vm.insert_page = gen6_ggtt_insert_page;
 	ggtt->vm.insert_entries = gen6_ggtt_insert_entries;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 281d12908457..0c1a3cc13c3b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -201,7 +201,7 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	mutex_init(&vm->mutex);
 	lockdep_set_subclass(&vm->mutex, subclass);
 
-	if (!intel_vm_no_concurrent_access_wa(vm->i915)) {
+	if (!intel_vtd_vm_no_concurrent_access_wa(vm->i915)) {
 		i915_gem_shrinker_taints_mutex(vm->i915, &vm->mutex);
 	} else {
 		/*
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 5ef9d0af8572..7b868057f433 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -65,7 +65,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 
 	intel_device_info_print_static(INTEL_INFO(i915), &p);
 	intel_device_info_print_runtime(RUNTIME_INFO(i915), &p);
-	i915_print_iommu_status(i915, &p);
+	intel_vtd_print_iommu_status(i915, &p);
 	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fc3b531021d2..a89a74f712cd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -757,7 +757,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
 		intel_device_info_print_static(INTEL_INFO(dev_priv), &p);
 		intel_device_info_print_runtime(RUNTIME_INFO(dev_priv), &p);
-		i915_print_iommu_status(dev_priv, &p);
+		intel_vtd_print_iommu_status(dev_priv, &p);
 		intel_gt_info_print(&to_gt(dev_priv)->info, &p);
 	}
 
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 4d8a98dbf465..6c53cef85115 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -256,7 +256,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 		dev_priv->pch_type = PCH_NOP;
 		dev_priv->pch_id = 0;
 	} else if (!pch) {
-		if (run_as_guest() && HAS_DISPLAY(dev_priv)) {
+		if (intel_vtd_run_as_guest() && HAS_DISPLAY(dev_priv)) {
 			intel_virt_detect_pch(dev_priv, &id, &pch_type);
 			dev_priv->pch_type = pch_type;
 			dev_priv->pch_id = id;
diff --git a/drivers/gpu/drm/i915/intel_vtd.c b/drivers/gpu/drm/i915/intel_vtd.c
index e52432141081..8639e785254b 100644
--- a/drivers/gpu/drm/i915/intel_vtd.c
+++ b/drivers/gpu/drm/i915/intel_vtd.c
@@ -8,7 +8,7 @@
 #include "intel_vtd.h"
 
 void
-i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p)
+intel_vtd_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p)
 {
 	drm_printf(p, "iommu: %s\n", enableddisabled(intel_vtd_active(i915)));
 }
diff --git a/drivers/gpu/drm/i915/intel_vtd.h b/drivers/gpu/drm/i915/intel_vtd.h
index 421bf8ca0b36..d20ae8314f8c 100644
--- a/drivers/gpu/drm/i915/intel_vtd.h
+++ b/drivers/gpu/drm/i915/intel_vtd.h
@@ -14,7 +14,7 @@
 
 struct drm_printer;
 
-static inline bool run_as_guest(void)
+static inline bool intel_vtd_run_as_guest(void)
 {
 	return !hypervisor_is_type(X86_HYPER_NATIVE);
 }
@@ -25,27 +25,27 @@ static inline bool intel_vtd_active(struct drm_i915_private *i915)
 		return true;
 
 	/* Running as a guest, we assume the host is enforcing VT'd */
-	return run_as_guest();
+	return intel_vtd_run_as_guest();
 }
 
-static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
+static inline bool intel_vtd_scanout_needs_wa(struct drm_i915_private *i915)
 {
 	return GRAPHICS_VER(i915) >= 6 && intel_vtd_active(i915);
 }
 
 static inline bool
-intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
+intel_vtd_ggtt_update_needs_wa(struct drm_i915_private *i915)
 {
 	return IS_BROXTON(i915) && intel_vtd_active(i915);
 }
 
 static inline bool
-intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
+intel_vtd_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
 {
-	return IS_CHERRYVIEW(i915) || intel_ggtt_update_needs_vtd_wa(i915);
+	return IS_CHERRYVIEW(i915) || intel_vtd_ggtt_update_needs_wa(i915);
 }
 
 void
-i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
+intel_vtd_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
 
 #endif /* __INTEL_VTD_H__ */
-- 
2.30.2

