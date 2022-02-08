Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E6B4ADEB3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 17:54:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E891F10E79C;
	Tue,  8 Feb 2022 16:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A991810E7C9
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 16:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644339259; x=1675875259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GhM6eQoiRvdUDjdCqmVPPvoGTvUAA90TJFTit9tv2po=;
 b=ic8ENohEjMn0dclZOeEs45+IWBpiFAe5L7QJWeOnduuAbk3HbcIW7cTv
 ZenFvcYL1Rpy/nSlrDzUztt0MqewVb3LDYdPs9PVcKmU749Tl0muHSqf7
 GerWzwD+kZZ4VJtGpd79GKGUYD883S+/lFkHsomVt2kF7VfZcxAILKwkb
 T7xRmDNbzPux1O7Dcx8IM285akd69qy/dAUDxK/GIs9BI+tVpVIRKlwhw
 yCY4kRrWVHWFQ+YiFO0pqqyT44Anu30IjciwEcg4JVTQt3fGeknhIf6HE
 gkRAXgLsFp0VB45jff2bqk8WBf89iLvmdFTx9J6384GO0NfAu2MGdaY8t g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="247827435"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="247827435"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 08:54:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="482002699"
Received: from ijbeckin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.19.63])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 08:54:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 18:54:03 +0200
Message-Id: <077d39ac6acc8512a66e98f39fe81ff8c356184c.1644339170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644339170.git.jani.nikula@intel.com>
References: <cover.1644339170.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/vtd: rename functions to have
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The prefix should tell where the function is to be found and where it
belongs.

Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
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
index 05339b3bc39b..39cff135c2ae 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -108,7 +108,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	 * we should always have valid PTE following the scanout preventing
 	 * the VT-d warning.
 	 */
-	if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
+	if (intel_vtd_scanout_needs_wa(dev_priv) && alignment < 256 * 1024)
 		alignment = 256 * 1024;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 0fb0921c81ab..3ae9d1ae7ba6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -123,7 +123,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 	int err = 0;
 
 	/* CHV + VTD workaround use stop_machine(); need to trylock vm->mutex */
-	bool trylock_vm = !ww && intel_vm_no_concurrent_access_wa(i915);
+	bool trylock_vm = !ww && intel_vtd_vm_no_concurrent_access_wa(i915);
 
 	trace_i915_gem_shrink(i915, target, shrink);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index e49d8d17095a..f3ca1f93192a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -974,7 +974,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.cleanup = gen6_gmch_remove;
 	ggtt->vm.insert_page = gen8_ggtt_insert_page;
 	ggtt->vm.clear_range = nop_clear_range;
-	if (intel_scanout_needs_vtd_wa(i915))
+	if (intel_vtd_scanout_needs_wa(i915))
 		ggtt->vm.clear_range = gen8_ggtt_clear_range;
 
 	ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
@@ -983,7 +983,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	 * Serialize GTT updates with aperture access on BXT if VT-d is on,
 	 * and always on CHV.
 	 */
-	if (intel_vm_no_concurrent_access_wa(i915)) {
+	if (intel_vtd_vm_no_concurrent_access_wa(i915)) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
 		ggtt->vm.bind_async_flags =
@@ -1122,7 +1122,7 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
 	ggtt->vm.clear_range = nop_clear_range;
-	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
+	if (!HAS_FULL_PPGTT(i915) || intel_vtd_scanout_needs_wa(i915))
 		ggtt->vm.clear_range = gen6_ggtt_clear_range;
 	ggtt->vm.insert_page = gen6_ggtt_insert_page;
 	ggtt->vm.insert_entries = gen6_ggtt_insert_entries;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 524f3c3eb027..5331ad7decfe 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -206,7 +206,7 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	mutex_init(&vm->mutex);
 	lockdep_set_subclass(&vm->mutex, subclass);
 
-	if (!intel_vm_no_concurrent_access_wa(vm->i915)) {
+	if (!intel_vtd_vm_no_concurrent_access_wa(vm->i915)) {
 		i915_gem_shrinker_taints_mutex(vm->i915, &vm->mutex);
 	} else {
 		/*
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 001958238cfe..2aeee6130fe1 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -66,7 +66,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 
 	intel_device_info_print_static(INTEL_INFO(i915), &p);
 	intel_device_info_print_runtime(RUNTIME_INFO(i915), &p);
-	i915_print_iommu_status(i915, &p);
+	intel_vtd_print_iommu_status(i915, &p);
 	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 32a3265a177a..ff1f74891b8c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -762,7 +762,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
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

