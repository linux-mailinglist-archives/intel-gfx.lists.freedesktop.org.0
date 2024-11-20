Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 328489D3984
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:30:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A7D10E713;
	Wed, 20 Nov 2024 11:30:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h1P3FHOn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE6210E719;
 Wed, 20 Nov 2024 11:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732102255; x=1763638255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=modE1ReVdSardocxjQSIHcxrtG84ztuOZBvjzR+opig=;
 b=h1P3FHOnrNuVp7FzoztwniAryjrFIYgyCU9CDOYFj62tsnmw0ljcqG9p
 SXxLW+vCawyEj3b26yV4zt6yAtU4pcKU58GI+xT5PB4aYGqlJETpFQyQd
 PylvDqVlGtYfstzJGgNaQyGAHWApjwZI5bQF3+AW0BGuoVjCPYmN9obsJ
 BmJVcwDf4BoHSTYcNh26ysSCCAQZ5YYqaSzMu9hEEqiZLaSI6YX01+r9Z
 V4EQtFxaH9BFcoIBOwuz8r/tYVmTmfkIh0HSWlYxxWQ0+3f2/MHnRDB7T
 IVIsm/6xbIZ59VJ+rMnuHhQmZ3a/BcGFFSYmfnc/Oi2QAtZU2GzTLHArL w==;
X-CSE-ConnectionGUID: 3N9Ep3bqSB6R+pco55ry5g==
X-CSE-MsgGUID: coMvYHQES8yWaBtiMFw7+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32266673"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32266673"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:54 -0800
X-CSE-ConnectionGUID: ppQT4wQvRr+czkByWahAlA==
X-CSE-MsgGUID: hQcAXtS7TaStEAQyh6COyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94951523"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 3/5] drm/i915/plane: convert initial plane setup to struct
 intel_display
Date: Wed, 20 Nov 2024 13:30:31 +0200
Message-Id: <9e370d8e90235165539f81ca2d00fdd2e883397f.1732102179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732102179.git.jani.nikula@intel.com>
References: <cover.1732102179.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

struct intel_display replaces struct drm_i915_private as the main
display device pointer. Convert initial plane setup to it, as much as
possible.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 .../drm/i915/display/intel_plane_initial.c    | 56 ++++++++++---------
 .../drm/i915/display/intel_plane_initial.h    |  4 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  8 +--
 4 files changed, 37 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 50b93ce11b78..2a6301b8674a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -472,7 +472,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	intel_acpi_assign_connector_fwnodes(display);
 	drm_modeset_unlock_all(dev);
 
-	intel_initial_plane_config(i915);
+	intel_initial_plane_config(display);
 
 	/*
 	 * Make sure hardware watermarks really match the state we read out.
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 62401f6a04e4..6789b7f14095 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -20,10 +20,10 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 			      struct drm_framebuffer **fb,
 			      struct i915_vma **vma)
 {
-	struct drm_i915_private *i915 = to_i915(this->base.dev);
+	struct intel_display *display = to_intel_display(this);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_plane *plane =
 			to_intel_plane(crtc->base.primary);
 		const struct intel_plane_state *plane_state =
@@ -48,9 +48,10 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 }
 
 static bool
-initial_plane_phys_lmem(struct drm_i915_private *i915,
+initial_plane_phys_lmem(struct intel_display *display,
 			struct intel_initial_plane_config *plane_config)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
 	struct intel_memory_region *mem;
 	dma_addr_t dma_addr;
@@ -63,7 +64,7 @@ initial_plane_phys_lmem(struct drm_i915_private *i915,
 
 	pte = ioread64(gte);
 	if (!(pte & GEN12_GGTT_PTE_LM)) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Initial plane programming missing PTE_LM bit\n");
 		return false;
 	}
@@ -75,7 +76,7 @@ initial_plane_phys_lmem(struct drm_i915_private *i915,
 	else
 		mem = i915->mm.stolen_region;
 	if (!mem) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Initial plane memory region not initialized\n");
 		return false;
 	}
@@ -85,13 +86,13 @@ initial_plane_phys_lmem(struct drm_i915_private *i915,
 	 * ever be placed in the stolen portion.
 	 */
 	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
 			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
 		return false;
 	}
 
-	drm_dbg(&i915->drm,
+	drm_dbg(display->drm,
 		"Using dma_addr=%pa, based on initial plane programming\n",
 		&dma_addr);
 
@@ -102,9 +103,10 @@ initial_plane_phys_lmem(struct drm_i915_private *i915,
 }
 
 static bool
-initial_plane_phys_smem(struct drm_i915_private *i915,
+initial_plane_phys_smem(struct intel_display *display,
 			struct intel_initial_plane_config *plane_config)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_memory_region *mem;
 	u32 base;
 
@@ -112,7 +114,7 @@ initial_plane_phys_smem(struct drm_i915_private *i915,
 
 	mem = i915->mm.stolen_region;
 	if (!mem) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Initial plane memory region not initialized\n");
 		return false;
 	}
@@ -125,19 +127,22 @@ initial_plane_phys_smem(struct drm_i915_private *i915,
 }
 
 static bool
-initial_plane_phys(struct drm_i915_private *i915,
+initial_plane_phys(struct intel_display *display,
 		   struct intel_initial_plane_config *plane_config)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915))
-		return initial_plane_phys_lmem(i915, plane_config);
+		return initial_plane_phys_lmem(display, plane_config);
 	else
-		return initial_plane_phys_smem(i915, plane_config);
+		return initial_plane_phys_smem(display, plane_config);
 }
 
 static struct i915_vma *
-initial_plane_vma(struct drm_i915_private *i915,
+initial_plane_vma(struct intel_display *display,
 		  struct intel_initial_plane_config *plane_config)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_memory_region *mem;
 	struct drm_i915_gem_object *obj;
 	struct drm_mm_node orig_mm = {};
@@ -149,7 +154,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (plane_config->size == 0)
 		return NULL;
 
-	if (!initial_plane_phys(i915, plane_config))
+	if (!initial_plane_phys(display, plane_config))
 		return NULL;
 
 	phys_base = plane_config->phys_base;
@@ -168,7 +173,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
 	    size * 2 > i915->dsm.usable_size) {
-		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
+		drm_dbg_kms(display->drm, "Initial FB size exceeds half of stolen, discarding\n");
 		return NULL;
 	}
 
@@ -176,7 +181,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 					       I915_BO_ALLOC_USER |
 					       I915_BO_PREALLOC);
 	if (IS_ERR(obj)) {
-		drm_dbg_kms(&i915->drm, "Failed to preallocate initial FB in %s\n",
+		drm_dbg_kms(display->drm, "Failed to preallocate initial FB in %s\n",
 			    mem->region.name);
 		return NULL;
 	}
@@ -254,7 +259,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (drm_mm_node_allocated(&orig_mm))
 		drm_mm_remove_node(&orig_mm);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Initial plane fb bound to 0x%x in the ggtt (original 0x%x)\n",
 		    i915_ggtt_offset(vma), plane_config->base);
 
@@ -271,8 +276,7 @@ static bool
 intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 			      struct intel_initial_plane_config *plane_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_framebuffer *fb = &plane_config->fb->base;
 	struct i915_vma *vma;
@@ -284,13 +288,13 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	case I915_FORMAT_MOD_4_TILED:
 		break;
 	default:
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Unsupported modifier for initial FB: 0x%llx\n",
 			fb->modifier);
 		return false;
 	}
 
-	vma = initial_plane_vma(dev_priv, plane_config);
+	vma = initial_plane_vma(display, plane_config);
 	if (!vma)
 		return false;
 
@@ -303,7 +307,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 
 	if (intel_framebuffer_init(to_intel_framebuffer(fb),
 				   intel_bo_to_drm_bo(vma->obj), &mode_cmd)) {
-		drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
+		drm_dbg_kms(display->drm, "intel fb init failed\n");
 		goto err_vma;
 	}
 
@@ -410,12 +414,12 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 		i915_vma_put(plane_config->vma);
 }
 
-void intel_initial_plane_config(struct drm_i915_private *i915)
+void intel_initial_plane_config(struct intel_display *display)
 {
 	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_initial_plane_config *plane_config =
 			&plane_configs[crtc->pipe];
 
@@ -429,7 +433,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		 * can even allow for smooth boot transitions if the BIOS
 		 * fb is large enough for the active pipe configuration.
 		 */
-		i915->display.funcs.display->get_initial_plane_config(crtc, plane_config);
+		display->funcs.display->get_initial_plane_config(crtc, plane_config);
 
 		/*
 		 * If the fb is shared between multiple heads, we'll
@@ -437,7 +441,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		 */
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
-		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
+		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
 			intel_crtc_wait_for_next_vblank(crtc);
 
 		plane_config_fini(plane_config);
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_plane_initial.h
index 64ab95239cd4..6c6aa717ed21 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
@@ -6,8 +6,8 @@
 #ifndef __INTEL_PLANE_INITIAL_H__
 #define __INTEL_PLANE_INITIAL_H__
 
-struct drm_i915_private;
+struct intel_display;
 
-void intel_initial_plane_config(struct drm_i915_private *i915);
+void intel_initial_plane_config(struct intel_display *display);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 8c113463a3d5..2eb9633f163a 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -275,12 +275,12 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 	}
 }
 
-void intel_initial_plane_config(struct drm_i915_private *i915)
+void intel_initial_plane_config(struct intel_display *display)
 {
 	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_initial_plane_config *plane_config =
 			&plane_configs[crtc->pipe];
 
@@ -294,7 +294,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		 * can even allow for smooth boot transitions if the BIOS
 		 * fb is large enough for the active pipe configuration.
 		 */
-		i915->display.funcs.display->get_initial_plane_config(crtc, plane_config);
+		display->funcs.display->get_initial_plane_config(crtc, plane_config);
 
 		/*
 		 * If the fb is shared between multiple heads, we'll
@@ -302,7 +302,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		 */
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
-		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
+		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
 			intel_crtc_wait_for_next_vblank(crtc);
 
 		plane_config_fini(plane_config);
-- 
2.39.5

