Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4246BCBEA78
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:29:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB42C10E602;
	Mon, 15 Dec 2025 15:29:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBqjxK/B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABD3F10E602;
 Mon, 15 Dec 2025 15:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812583; x=1797348583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RozmOpEz/DbtLJT4ofIUjllFj4AnnXB+392A6NgSZzE=;
 b=gBqjxK/Bz67V0ib5YuBX4Cbps6xWNZYG2USxL4Bt3fWY7X7xP1Kc1S+d
 TlbIr7Cw9mLP8wdPreuHs+QBqHbSotTtwLD8FhOS4zQOPchALuLzfXoBw
 66HNHVH9gZRAR6QDq1ZLWvk0Uy8dO18mfQAeHfcsN1oGnQt5sYNSn5Buf
 i3wpEVmzoSrsiiWNjIFvcJXEYR0eEpDMUzLV4hBYwBXvxQqUeOQ97UHjt
 gbhQ3pbR4Cw30ZFwMD6nkpjnMHDuSoo4BXjJWcDg8t54V2vsYrZTgR3fI
 /euVHHO5LPMVguRfDulNR/MQOevdg2C38jdhiwx2SpbmxwUt9uka2ChTS g==;
X-CSE-ConnectionGUID: YJHkp/yXTV2wTP9pZ6svCg==
X-CSE-MsgGUID: 1Y3yNOxDQGeDG5KdIfrfKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78026597"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78026597"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:43 -0800
X-CSE-ConnectionGUID: E0reXG6KT4K8bHKgfIa8/g==
X-CSE-MsgGUID: pkSA0BHoSjOqjBNUxXFD1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="198252617"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:29:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 15/15] drm/i915: drop dependency on struct intel_display from
 i915 initial plane
Date: Mon, 15 Dec 2025 17:28:29 +0200
Message-ID: <58d7605a16b360080921ff2af7120b6da2eb042d.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

The i915 core initial plane handling doesn't actually need struct
intel_display for anything. Switch to i915 specific data structures in
i915 core code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_initial_plane.c | 43 +++++++++--------------
 1 file changed, 17 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index de90ca69e0bb..7fb52d81f7b6 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -7,8 +7,6 @@
 #include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_crtc.h"
-#include "display/intel_display.h"
-#include "display/intel_display_core.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
 #include "gem/i915_gem_lmem.h"
@@ -23,11 +21,9 @@ static void i915_initial_plane_vblank_wait(struct drm_crtc *crtc)
 }
 
 static enum intel_memory_type
-initial_plane_memory_type(struct intel_display *display)
+initial_plane_memory_type(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (display->platform.dgfx)
+	if (IS_DGFX(i915))
 		return INTEL_MEMORY_LOCAL;
 	else if (HAS_LMEMBAR_SMEM_STOLEN(i915))
 		return INTEL_MEMORY_STOLEN_LOCAL;
@@ -36,10 +32,9 @@ initial_plane_memory_type(struct intel_display *display)
 }
 
 static bool
-initial_plane_phys(struct intel_display *display,
+initial_plane_phys(struct drm_i915_private *i915,
 		   struct intel_initial_plane_config *plane_config)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_memory_region *mem;
 	enum intel_memory_type mem_type;
@@ -47,10 +42,10 @@ initial_plane_phys(struct intel_display *display,
 	dma_addr_t dma_addr;
 	u32 base;
 
-	mem_type = initial_plane_memory_type(display);
+	mem_type = initial_plane_memory_type(i915);
 	mem = intel_memory_region_by_type(i915, mem_type);
 	if (!mem) {
-		drm_dbg_kms(display->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Initial plane memory region (type %s) not initialized\n",
 			    intel_memory_type_str(mem_type));
 		return false;
@@ -61,27 +56,24 @@ initial_plane_phys(struct intel_display *display,
 	dma_addr = intel_ggtt_read_entry(&ggtt->vm, base, &is_present, &is_local);
 
 	if (!is_present) {
-		drm_err(display->drm,
-			"Initial plane FB PTE not present\n");
+		drm_err(&i915->drm, "Initial plane FB PTE not present\n");
 		return false;
 	}
 
 	if (intel_memory_type_is_local(mem->type) != is_local) {
-		drm_err(display->drm,
-			"Initial plane FB PTE unsuitable for %s\n",
+		drm_err(&i915->drm, "Initial plane FB PTE unsuitable for %s\n",
 			mem->region.name);
 		return false;
 	}
 
 	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
-		drm_err(display->drm,
+		drm_err(&i915->drm,
 			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
 			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
 		return false;
 	}
 
-	drm_dbg(display->drm,
-		"Using dma_addr=%pa, based on initial plane programming\n",
+	drm_dbg(&i915->drm, "Using dma_addr=%pa, based on initial plane programming\n",
 		&dma_addr);
 
 	plane_config->phys_base = dma_addr - mem->region.start;
@@ -91,10 +83,9 @@ initial_plane_phys(struct intel_display *display,
 }
 
 static struct i915_vma *
-initial_plane_vma(struct intel_display *display,
+initial_plane_vma(struct drm_i915_private *i915,
 		  struct intel_initial_plane_config *plane_config)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_memory_region *mem;
 	struct drm_i915_gem_object *obj;
 	struct drm_mm_node orig_mm = {};
@@ -107,7 +98,7 @@ initial_plane_vma(struct intel_display *display,
 	if (plane_config->size == 0)
 		return NULL;
 
-	if (!initial_plane_phys(display, plane_config))
+	if (!initial_plane_phys(i915, plane_config))
 		return NULL;
 
 	phys_base = plane_config->phys_base;
@@ -126,7 +117,7 @@ initial_plane_vma(struct intel_display *display,
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
 	    size * 2 > i915->dsm.usable_size) {
-		drm_dbg_kms(display->drm, "Initial FB size exceeds half of stolen, discarding\n");
+		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
 		return NULL;
 	}
 
@@ -134,7 +125,7 @@ initial_plane_vma(struct intel_display *display,
 					       I915_BO_ALLOC_USER |
 					       I915_BO_PREALLOC);
 	if (IS_ERR(obj)) {
-		drm_dbg_kms(display->drm, "Failed to preallocate initial FB in %s\n",
+		drm_dbg_kms(&i915->drm, "Failed to preallocate initial FB in %s\n",
 			    mem->region.name);
 		return NULL;
 	}
@@ -214,7 +205,7 @@ initial_plane_vma(struct intel_display *display,
 	if (drm_mm_node_allocated(&orig_mm))
 		drm_mm_remove_node(&orig_mm);
 
-	drm_dbg_kms(display->drm,
+	drm_dbg_kms(&i915->drm,
 		    "Initial plane fb bound to 0x%x in the ggtt (original 0x%x)\n",
 		    i915_ggtt_offset(vma), plane_config->base);
 
@@ -231,12 +222,12 @@ static struct drm_gem_object *
 i915_alloc_initial_plane_obj(struct drm_device *drm,
 			     struct intel_initial_plane_config *plane_config)
 {
-	struct intel_display *display = to_intel_display(drm);
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_framebuffer *fb = &plane_config->fb->base;
 	struct i915_vma *vma;
 
-	vma = initial_plane_vma(display, plane_config);
+	vma = initial_plane_vma(i915, plane_config);
 	if (!vma)
 		return NULL;
 
@@ -250,7 +241,7 @@ i915_alloc_initial_plane_obj(struct drm_device *drm,
 	if (intel_framebuffer_init(to_intel_framebuffer(fb),
 				   intel_bo_to_drm_bo(vma->obj),
 				   fb->format, &mode_cmd)) {
-		drm_dbg_kms(display->drm, "intel fb init failed\n");
+		drm_dbg_kms(&i915->drm, "intel fb init failed\n");
 		goto err_vma;
 	}
 
-- 
2.47.3

