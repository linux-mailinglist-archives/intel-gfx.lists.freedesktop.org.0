Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8966FCA4BFD
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 18:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5CB410E9A1;
	Thu,  4 Dec 2025 17:24:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHmXw4+3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1048D89861;
 Thu,  4 Dec 2025 17:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764869074; x=1796405074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jhkZe1An0IlqZl5xDvJJ5WpZyMZ8smkPQpCs9U3jXYY=;
 b=gHmXw4+3LyXaUhRYVB/2rfBM9mt1NneZSIlNqSvLzzJ0fftm86ypgIny
 KmRJUPYOnFbMDQCGzH9Y6k0oN9zfLw824kfHxK7p2k6Xd57ikjRQZwaO2
 rGMqqAZWAI81IOtBnV2TrXlM1MjGNOIfFtz/FLyQzpL2Fku8cuCYUZ1sT
 HlekY3lDeVbdpGHmEWBpkQP5rCHY9lDgF6gPJIUvA83K0KWTxajXDsno+
 hlnI8UKOCCNSZyJSMavwjOjvLQkmiM7gi5SF+ly2yDyMqtC9lalw1TVDw
 r2SnZu5D3IlQywIMtxAUDVS0sMXrAtskiM2XuiKatqfr1nH7b2MMReLxi g==;
X-CSE-ConnectionGUID: 6T6WPGxHTCqv4l/xn2bdiQ==
X-CSE-MsgGUID: YND4psc8Siafp+bsZ4ZDtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="67060901"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="67060901"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 09:24:34 -0800
X-CSE-ConnectionGUID: gwQeP0XcRfGFXULFMbqmxQ==
X-CSE-MsgGUID: JZafcPMySZS3ua5yE3gOAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="200169574"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 09:24:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/4] drm/{i915,
 xe}/stolen: move stolen memory handling to display parent interface
Date: Thu,  4 Dec 2025 19:24:06 +0200
Message-ID: <cc2125f57b98401ea47746ad4784bb4bc6b198c2.1764868989.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764868989.git.jani.nikula@intel.com>
References: <cover.1764868989.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Call the stolen memory interface through the display parent interface.

This makes xe compat gem/i915_gem_stolen.h redundant, and it can be
removed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 69 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_parent.c   | 66 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   | 19 +++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    | 52 +++++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    | 23 +------
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 .../compat-i915-headers/gem/i915_gem_stolen.h | 40 -----------
 drivers/gpu/drm/xe/display/xe_display.c       |  4 +-
 drivers/gpu/drm/xe/display/xe_stolen.c        | 47 +++++++++----
 drivers/gpu/drm/xe/display/xe_stolen.h        |  9 +++
 include/drm/intel/display_parent_interface.h  | 20 ++++++
 11 files changed, 221 insertions(+), 129 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_stolen.h

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 66d9674b4e47..3a85cf88b8d5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -45,8 +45,6 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
 
-#include "gem/i915_gem_stolen.h"
-
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
 #include "intel_de.h"
@@ -391,17 +389,17 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 	struct intel_display *display = fbc->display;
 
 	drm_WARN_ON(display->drm,
-		    range_end_overflows_t(u64, i915_gem_stolen_area_address(display->drm),
-					  i915_gem_stolen_node_offset(fbc->compressed_fb),
+		    range_end_overflows_t(u64, intel_parent_stolen_area_address(display),
+					  intel_parent_stolen_node_offset(display, fbc->compressed_fb),
 					  U32_MAX));
 	drm_WARN_ON(display->drm,
-		    range_end_overflows_t(u64, i915_gem_stolen_area_address(display->drm),
-					  i915_gem_stolen_node_offset(fbc->compressed_llb),
+		    range_end_overflows_t(u64, intel_parent_stolen_area_address(display),
+					  intel_parent_stolen_node_offset(display, fbc->compressed_llb),
 					  U32_MAX));
 	intel_de_write(display, FBC_CFB_BASE,
-		       i915_gem_stolen_node_address(fbc->compressed_fb));
+		       intel_parent_stolen_node_address(display, fbc->compressed_fb));
 	intel_de_write(display, FBC_LL_BASE,
-		       i915_gem_stolen_node_address(fbc->compressed_llb));
+		       intel_parent_stolen_node_address(display, fbc->compressed_llb));
 }
 
 static const struct intel_fbc_funcs i8xx_fbc_funcs = {
@@ -509,7 +507,7 @@ static void g4x_fbc_program_cfb(struct intel_fbc *fbc)
 	struct intel_display *display = fbc->display;
 
 	intel_de_write(display, DPFC_CB_BASE,
-		       i915_gem_stolen_node_offset(fbc->compressed_fb));
+		       intel_parent_stolen_node_offset(display, fbc->compressed_fb));
 }
 
 static const struct intel_fbc_funcs g4x_fbc_funcs = {
@@ -578,7 +576,7 @@ static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
 	struct intel_display *display = fbc->display;
 
 	intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
-		       i915_gem_stolen_node_offset(fbc->compressed_fb));
+		       intel_parent_stolen_node_offset(display, fbc->compressed_fb));
 }
 
 static const struct intel_fbc_funcs ilk_fbc_funcs = {
@@ -817,7 +815,7 @@ static u64 intel_fbc_stolen_end(struct intel_display *display)
 	 * underruns, even if that range is not reserved by the BIOS. */
 	if (display->platform.broadwell ||
 	    (DISPLAY_VER(display) == 9 && !display->platform.broxton))
-		end = i915_gem_stolen_area_size(display->drm) - 8 * 1024 * 1024;
+		end = intel_parent_stolen_area_size(display) - 8 * 1024 * 1024;
 	else
 		end = U64_MAX;
 
@@ -852,14 +850,14 @@ static int find_compression_limit(struct intel_fbc *fbc,
 	size /= limit;
 
 	/* Try to over-allocate to reduce reallocations and fragmentation. */
-	ret = i915_gem_stolen_insert_node_in_range(fbc->compressed_fb,
-						   size <<= 1, 4096, 0, end);
+	ret = intel_parent_stolen_insert_node_in_range(display, fbc->compressed_fb,
+						       size <<= 1, 4096, 0, end);
 	if (ret == 0)
 		return limit;
 
 	for (; limit <= intel_fbc_max_limit(display); limit <<= 1) {
-		ret = i915_gem_stolen_insert_node_in_range(fbc->compressed_fb,
-							   size >>= 1, 4096, 0, end);
+		ret = intel_parent_stolen_insert_node_in_range(display, fbc->compressed_fb,
+							       size >>= 1, 4096, 0, end);
 		if (ret == 0)
 			return limit;
 	}
@@ -874,12 +872,12 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 	int ret;
 
 	drm_WARN_ON(display->drm,
-		    i915_gem_stolen_node_allocated(fbc->compressed_fb));
+		    intel_parent_stolen_node_allocated(display, fbc->compressed_fb));
 	drm_WARN_ON(display->drm,
-		    i915_gem_stolen_node_allocated(fbc->compressed_llb));
+		    intel_parent_stolen_node_allocated(display, fbc->compressed_llb));
 
 	if (DISPLAY_VER(display) < 5 && !display->platform.g4x) {
-		ret = i915_gem_stolen_insert_node(fbc->compressed_llb, 4096, 4096);
+		ret = intel_parent_stolen_insert_node(display, fbc->compressed_llb, 4096, 4096);
 		if (ret)
 			goto err;
 	}
@@ -895,14 +893,14 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 
 	drm_dbg_kms(display->drm,
 		    "reserved %llu bytes of contiguous stolen space for FBC, limit: %d\n",
-		    i915_gem_stolen_node_size(fbc->compressed_fb), fbc->limit);
+		    intel_parent_stolen_node_size(display, fbc->compressed_fb), fbc->limit);
 	return 0;
 
 err_llb:
-	if (i915_gem_stolen_node_allocated(fbc->compressed_llb))
-		i915_gem_stolen_remove_node(fbc->compressed_llb);
+	if (intel_parent_stolen_node_allocated(display, fbc->compressed_llb))
+		intel_parent_stolen_remove_node(display, fbc->compressed_llb);
 err:
-	if (i915_gem_stolen_initialized(display->drm))
+	if (intel_parent_stolen_initialized(display))
 		drm_info_once(display->drm,
 			      "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
 	return -ENOSPC;
@@ -956,13 +954,15 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 
 static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
 {
+	struct intel_display *display = fbc->display;
+
 	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
 		return;
 
-	if (i915_gem_stolen_node_allocated(fbc->compressed_llb))
-		i915_gem_stolen_remove_node(fbc->compressed_llb);
-	if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
-		i915_gem_stolen_remove_node(fbc->compressed_fb);
+	if (intel_parent_stolen_node_allocated(display, fbc->compressed_llb))
+		intel_parent_stolen_remove_node(display, fbc->compressed_llb);
+	if (intel_parent_stolen_node_allocated(display, fbc->compressed_fb))
+		intel_parent_stolen_remove_node(display, fbc->compressed_fb);
 }
 
 void intel_fbc_cleanup(struct intel_display *display)
@@ -975,8 +975,8 @@ void intel_fbc_cleanup(struct intel_display *display)
 		__intel_fbc_cleanup_cfb(fbc);
 		mutex_unlock(&fbc->lock);
 
-		i915_gem_stolen_node_free(fbc->compressed_fb);
-		i915_gem_stolen_node_free(fbc->compressed_llb);
+		intel_parent_stolen_node_free(display, fbc->compressed_fb);
+		intel_parent_stolen_node_free(display, fbc->compressed_llb);
 
 		kfree(fbc);
 	}
@@ -1407,12 +1407,13 @@ static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
 
 static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct intel_fbc *fbc = plane->fbc;
 
 	return intel_fbc_min_limit(plane_state) <= fbc->limit &&
 		intel_fbc_cfb_size(plane_state) <= fbc->limit *
-			i915_gem_stolen_node_size(fbc->compressed_fb);
+			intel_parent_stolen_node_size(display, fbc->compressed_fb);
 }
 
 static bool intel_fbc_is_ok(const struct intel_plane_state *plane_state)
@@ -1504,7 +1505,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	if (!fbc)
 		return 0;
 
-	if (!i915_gem_stolen_initialized(display->drm)) {
+	if (!intel_parent_stolen_initialized(display)) {
 		plane_state->no_fbc_reason = "stolen memory not initialised";
 		return 0;
 	}
@@ -2205,10 +2206,10 @@ static struct intel_fbc *intel_fbc_create(struct intel_display *display,
 	if (!fbc)
 		return NULL;
 
-	fbc->compressed_fb = i915_gem_stolen_node_alloc(display->drm);
+	fbc->compressed_fb = intel_parent_stolen_node_alloc(display);
 	if (!fbc->compressed_fb)
 		goto err;
-	fbc->compressed_llb = i915_gem_stolen_node_alloc(display->drm);
+	fbc->compressed_llb = intel_parent_stolen_node_alloc(display);
 	if (!fbc->compressed_llb)
 		goto err;
 
@@ -2233,8 +2234,8 @@ static struct intel_fbc *intel_fbc_create(struct intel_display *display,
 	return fbc;
 
 err:
-	i915_gem_stolen_node_free(fbc->compressed_llb);
-	i915_gem_stolen_node_free(fbc->compressed_fb);
+	intel_parent_stolen_node_free(display, fbc->compressed_llb);
+	intel_parent_stolen_node_free(display, fbc->compressed_fb);
 	kfree(fbc);
 
 	return NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 2ea310cc3509..49cb64ca8c4c 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -79,6 +79,72 @@ void intel_parent_rps_ilk_irq_handler(struct intel_display *display)
 		display->parent->rps->ilk_irq_handler(display->drm);
 }
 
+int intel_parent_stolen_insert_node_in_range(struct intel_display *display,
+					     struct intel_stolen_node *node, u64 size,
+					     unsigned int align, u64 start, u64 end)
+{
+	return display->parent->stolen->insert_node_in_range(node, size, align, start, end);
+}
+
+int intel_parent_stolen_insert_node(struct intel_display *display, struct intel_stolen_node *node, u64 size,
+				    unsigned int align)
+{
+	return display->parent->stolen->insert_node(node, size, align);
+}
+
+void intel_parent_stolen_remove_node(struct intel_display *display,
+				     struct intel_stolen_node *node)
+{
+	display->parent->stolen->remove_node(node);
+}
+
+bool intel_parent_stolen_initialized(struct intel_display *display)
+{
+	return display->parent->stolen->initialized(display->drm);
+}
+
+bool intel_parent_stolen_node_allocated(struct intel_display *display,
+					const struct intel_stolen_node *node)
+{
+	return display->parent->stolen->node_allocated(node);
+}
+
+u32 intel_parent_stolen_node_offset(struct intel_display *display, struct intel_stolen_node *node)
+{
+	return display->parent->stolen->node_offset(node);
+}
+
+u64 intel_parent_stolen_area_address(struct intel_display *display)
+{
+	return display->parent->stolen->area_address(display->drm);
+}
+
+u64 intel_parent_stolen_area_size(struct intel_display *display)
+{
+	return display->parent->stolen->area_size(display->drm);
+}
+
+u64 intel_parent_stolen_node_address(struct intel_display *display, struct intel_stolen_node *node)
+{
+	return display->parent->stolen->node_address(node);
+}
+
+u64 intel_parent_stolen_node_size(struct intel_display *display, const struct intel_stolen_node *node)
+{
+	return display->parent->stolen->node_size(node);
+}
+
+struct intel_stolen_node *intel_parent_stolen_node_alloc(struct intel_display *display)
+{
+	return display->parent->stolen->node_alloc(display->drm);
+}
+
+void intel_parent_stolen_node_free(struct intel_display *display, const struct intel_stolen_node *node)
+{
+	display->parent->stolen->node_free(node);
+}
+
+
 bool intel_parent_vgpu_active(struct intel_display *display)
 {
 	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 8f91a6f75c53..bc740dfad985 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -9,6 +9,7 @@
 struct dma_fence;
 struct intel_display;
 struct intel_hdcp_gsc_context;
+struct intel_stolen_node;
 
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
 				       struct intel_hdcp_gsc_context *gsc_context,
@@ -27,6 +28,24 @@ void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct
 void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
 void intel_parent_rps_ilk_irq_handler(struct intel_display *display);
 
+int intel_parent_stolen_insert_node_in_range(struct intel_display *display,
+					     struct intel_stolen_node *node, u64 size,
+					     unsigned int align, u64 start, u64 end);
+int intel_parent_stolen_insert_node(struct intel_display *display, struct intel_stolen_node *node, u64 size,
+				    unsigned int align);
+void intel_parent_stolen_remove_node(struct intel_display *display,
+				     struct intel_stolen_node *node);
+bool intel_parent_stolen_initialized(struct intel_display *display);
+bool intel_parent_stolen_node_allocated(struct intel_display *display,
+					const struct intel_stolen_node *node);
+u32 intel_parent_stolen_node_offset(struct intel_display *display, struct intel_stolen_node *node);
+u64 intel_parent_stolen_area_address(struct intel_display *display);
+u64 intel_parent_stolen_area_size(struct intel_display *display);
+u64 intel_parent_stolen_node_address(struct intel_display *display, struct intel_stolen_node *node);
+u64 intel_parent_stolen_node_size(struct intel_display *display, const struct intel_stolen_node *node);
+struct intel_stolen_node *intel_parent_stolen_node_alloc(struct intel_display *display);
+void intel_parent_stolen_node_free(struct intel_display *display, const struct intel_stolen_node *node);
+
 bool intel_parent_vgpu_active(struct intel_display *display);
 
 bool intel_parent_has_fenced_regions(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index f859c99f969b..c3e0b8da485c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm_mm.h>
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 #include <drm/intel/i915_drm.h>
 
 #include "gem/i915_gem_lmem.h"
@@ -64,8 +65,8 @@ static int __i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
 	return ret;
 }
 
-int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
-					 unsigned int alignment, u64 start, u64 end)
+static int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
+						unsigned int alignment, u64 start, u64 end)
 {
 	return __i915_gem_stolen_insert_node_in_range(node->i915, &node->node,
 						      size, alignment,
@@ -82,8 +83,8 @@ static int __i915_gem_stolen_insert_node(struct drm_i915_private *i915,
 						      U64_MAX);
 }
 
-int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size,
-				unsigned int alignment)
+static int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size,
+				       unsigned int alignment)
 {
 	return __i915_gem_stolen_insert_node(node->i915, &node->node, size, alignment);
 }
@@ -96,7 +97,7 @@ static void __i915_gem_stolen_remove_node(struct drm_i915_private *i915,
 	mutex_unlock(&i915->mm.stolen_lock);
 }
 
-void i915_gem_stolen_remove_node(struct intel_stolen_node *node)
+static void i915_gem_stolen_remove_node(struct intel_stolen_node *node)
 {
 	__i915_gem_stolen_remove_node(node->i915, &node->node);
 }
@@ -1025,50 +1026,50 @@ bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj)
 	return obj->ops == &i915_gem_object_stolen_ops;
 }
 
-bool i915_gem_stolen_initialized(struct drm_device *drm)
+static bool i915_gem_stolen_initialized(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
 	return drm_mm_initialized(&i915->mm.stolen);
 }
 
-u64 i915_gem_stolen_area_address(struct drm_device *drm)
+static u64 i915_gem_stolen_area_address(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
 	return i915->dsm.stolen.start;
 }
 
-u64 i915_gem_stolen_area_size(struct drm_device *drm)
+static u64 i915_gem_stolen_area_size(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
 	return resource_size(&i915->dsm.stolen);
 }
 
-u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node)
+static u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node)
+{
+	return node->node.start;
+}
+
+static u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node)
 {
 	struct drm_i915_private *i915 = node->i915;
 
 	return i915->dsm.stolen.start + i915_gem_stolen_node_offset(node);
 }
 
-bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node)
+static bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node)
 {
 	return drm_mm_node_allocated(&node->node);
 }
 
-u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node)
-{
-	return node->node.start;
-}
-
-u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
+static u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
 {
 	return node->node.size;
 }
 
-struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm)
+static struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_stolen_node *node;
@@ -1082,7 +1083,22 @@ struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm)
 	return node;
 }
 
-void i915_gem_stolen_node_free(const struct intel_stolen_node *node)
+static void i915_gem_stolen_node_free(const struct intel_stolen_node *node)
 {
 	kfree(node);
 }
+
+const struct intel_display_stolen_interface i915_display_stolen_interface = {
+	.insert_node_in_range = i915_gem_stolen_insert_node_in_range,
+	.insert_node = i915_gem_stolen_insert_node,
+	.remove_node = i915_gem_stolen_remove_node,
+	.initialized = i915_gem_stolen_initialized,
+	.node_allocated = i915_gem_stolen_node_allocated,
+	.node_offset = i915_gem_stolen_node_offset,
+	.area_address = i915_gem_stolen_area_address,
+	.area_size = i915_gem_stolen_area_size,
+	.node_address = i915_gem_stolen_node_address,
+	.node_size = i915_gem_stolen_node_size,
+	.node_alloc = i915_gem_stolen_node_alloc,
+	.node_free = i915_gem_stolen_node_free,
+};
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index 7b0386002ed4..6db5262046a2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -8,17 +8,9 @@
 
 #include <linux/types.h>
 
-struct drm_device;
 struct drm_i915_gem_object;
 struct drm_i915_private;
-struct intel_stolen_node;
-
-int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size,
-				unsigned alignment);
-int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
-					 unsigned alignment, u64 start,
-					 u64 end);
-void i915_gem_stolen_remove_node(struct intel_stolen_node *node);
+
 struct intel_memory_region *
 i915_gem_stolen_smem_setup(struct drm_i915_private *i915, u16 type,
 			   u16 instance);
@@ -34,17 +26,6 @@ bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj);
 
 #define I915_GEM_STOLEN_BIAS SZ_128K
 
-bool i915_gem_stolen_initialized(struct drm_device *drm);
-u64 i915_gem_stolen_area_address(struct drm_device *drm);
-u64 i915_gem_stolen_area_size(struct drm_device *drm);
-
-u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node);
-
-bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node);
-u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node);
-u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node);
-
-struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm);
-void i915_gem_stolen_node_free(const struct intel_stolen_node *node);
+extern const struct intel_display_stolen_interface i915_display_stolen_interface;
 
 #endif /* __I915_GEM_STOLEN_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d98839427ef9..fe84df4eae8f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -762,6 +762,7 @@ static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
 	.rps = &i915_display_rps_interface,
+	.stolen = &i915_display_stolen_interface,
 	.vgpu_active = vgpu_active,
 	.has_fenced_regions = has_fenced_regions,
 	.fence_priority_display = fence_priority_display,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
deleted file mode 100644
index 368045a470d1..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ /dev/null
@@ -1,40 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2024 Intel Corporation
- */
-
-#ifndef _I915_GEM_STOLEN_H_
-#define _I915_GEM_STOLEN_H_
-
-#include <linux/types.h>
-
-struct drm_device;
-struct intel_stolen_node;
-
-int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
-					 unsigned int align, u64 start, u64 end);
-
-int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size,
-				unsigned int align);
-
-void i915_gem_stolen_remove_node(struct intel_stolen_node *node);
-
-bool i915_gem_stolen_initialized(struct drm_device *drm);
-
-bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node);
-
-u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node);
-
-u64 i915_gem_stolen_area_address(struct drm_device *drm);
-
-u64 i915_gem_stolen_area_size(struct drm_device *drm);
-
-u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node);
-
-u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node);
-
-struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm);
-
-void i915_gem_stolen_node_free(const struct intel_stolen_node *node);
-
-#endif
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 9d2aa69ea428..9fb5c2f3ddd8 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -36,8 +36,9 @@
 #include "intel_opregion.h"
 #include "skl_watermark.h"
 #include "xe_display_rpm.h"
-#include "xe_module.h"
 #include "xe_hdcp_gsc.h"
+#include "xe_module.h"
+#include "xe_stolen.h"
 
 /* Ensure drm and display members are placed properly. */
 INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct xe_device, drm, display);
@@ -538,6 +539,7 @@ static const struct intel_display_parent_interface parent = {
 	.hdcp = &xe_display_hdcp_interface,
 	.rpm = &xe_display_rpm_interface,
 	.irq = &xe_display_irq_interface,
+	.stolen = &xe_display_stolen_interface,
 };
 
 /**
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.c b/drivers/gpu/drm/xe/display/xe_stolen.c
index 387506586288..cc7aec7db76c 100644
--- a/drivers/gpu/drm/xe/display/xe_stolen.c
+++ b/drivers/gpu/drm/xe/display/xe_stolen.c
@@ -1,8 +1,10 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
-#include "gem/i915_gem_stolen.h"
+#include <drm/intel/display_parent_interface.h>
+
 #include "xe_res_cursor.h"
+#include "xe_stolen.h"
 #include "xe_ttm_stolen_mgr.h"
 #include "xe_validation.h"
 
@@ -11,8 +13,8 @@ struct intel_stolen_node {
 	struct xe_bo *bo;
 };
 
-int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
-					 unsigned int align, u64 start, u64 end)
+static int xe_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 size,
+					  unsigned int align, u64 start, u64 end)
 {
 	struct xe_device *xe = node->xe;
 
@@ -41,7 +43,7 @@ int i915_gem_stolen_insert_node_in_range(struct intel_stolen_node *node, u64 siz
 	return err;
 }
 
-int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size, unsigned int align)
+static int xe_stolen_insert_node(struct intel_stolen_node *node, u64 size, unsigned int align)
 {
 	/* Not used on xe */
 	WARN_ON(1);
@@ -49,25 +51,25 @@ int i915_gem_stolen_insert_node(struct intel_stolen_node *node, u64 size, unsign
 	return -ENODEV;
 }
 
-void i915_gem_stolen_remove_node(struct intel_stolen_node *node)
+static void xe_stolen_remove_node(struct intel_stolen_node *node)
 {
 	xe_bo_unpin_map_no_vm(node->bo);
 	node->bo = NULL;
 }
 
-bool i915_gem_stolen_initialized(struct drm_device *drm)
+static bool xe_stolen_initialized(struct drm_device *drm)
 {
 	struct xe_device *xe = to_xe_device(drm);
 
 	return ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
 }
 
-bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node)
+static bool xe_stolen_node_allocated(const struct intel_stolen_node *node)
 {
 	return node->bo;
 }
 
-u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node)
+static u64 xe_stolen_node_offset(const struct intel_stolen_node *node)
 {
 	struct xe_res_cursor res;
 
@@ -76,7 +78,7 @@ u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node)
 }
 
 /* Used for < gen4. These are not supported by Xe */
-u64 i915_gem_stolen_area_address(struct drm_device *drm)
+static u64 xe_stolen_area_address(struct drm_device *drm)
 {
 	WARN_ON(1);
 
@@ -84,26 +86,26 @@ u64 i915_gem_stolen_area_address(struct drm_device *drm)
 }
 
 /* Used for gen9 specific WA. Gen9 is not supported by Xe */
-u64 i915_gem_stolen_area_size(struct drm_device *drm)
+static u64 xe_stolen_area_size(struct drm_device *drm)
 {
 	WARN_ON(1);
 
 	return 0;
 }
 
-u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node)
+static u64 xe_stolen_node_address(const struct intel_stolen_node *node)
 {
 	struct xe_device *xe = node->xe;
 
-	return xe_ttm_stolen_gpu_offset(xe) + i915_gem_stolen_node_offset(node);
+	return xe_ttm_stolen_gpu_offset(xe) + xe_stolen_node_offset(node);
 }
 
-u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node)
+static u64 xe_stolen_node_size(const struct intel_stolen_node *node)
 {
 	return node->bo->ttm.base.size;
 }
 
-struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm)
+static struct intel_stolen_node *xe_stolen_node_alloc(struct drm_device *drm)
 {
 	struct xe_device *xe = to_xe_device(drm);
 	struct intel_stolen_node *node;
@@ -117,7 +119,22 @@ struct intel_stolen_node *i915_gem_stolen_node_alloc(struct drm_device *drm)
 	return node;
 }
 
-void i915_gem_stolen_node_free(const struct intel_stolen_node *node)
+static void xe_stolen_node_free(const struct intel_stolen_node *node)
 {
 	kfree(node);
 }
+
+const struct intel_display_stolen_interface xe_display_stolen_interface = {
+	.insert_node_in_range = xe_stolen_insert_node_in_range,
+	.insert_node = xe_stolen_insert_node,
+	.remove_node = xe_stolen_remove_node,
+	.initialized = xe_stolen_initialized,
+	.node_allocated = xe_stolen_node_allocated,
+	.node_offset = xe_stolen_node_offset,
+	.area_address = xe_stolen_area_address,
+	.area_size = xe_stolen_area_size,
+	.node_address = xe_stolen_node_address,
+	.node_size = xe_stolen_node_size,
+	.node_alloc = xe_stolen_node_alloc,
+	.node_free = xe_stolen_node_free,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.h b/drivers/gpu/drm/xe/display/xe_stolen.h
new file mode 100644
index 000000000000..db86b9e01242
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_stolen.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __XE_STOLEN_H__
+#define __XE_STOLEN_H__
+
+extern const struct intel_display_stolen_interface xe_display_stolen_interface;
+
+#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 61d1b22adc83..f590e846464d 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -9,6 +9,7 @@
 struct dma_fence;
 struct drm_device;
 struct intel_hdcp_gsc_context;
+struct intel_stolen_node;
 struct ref_tracker;
 
 struct intel_display_rpm_interface {
@@ -47,6 +48,22 @@ struct intel_display_rps_interface {
 	void (*ilk_irq_handler)(struct drm_device *drm);
 };
 
+struct intel_display_stolen_interface {
+	int (*insert_node_in_range)(struct intel_stolen_node *node, u64 size,
+				    unsigned int align, u64 start, u64 end);
+	int (*insert_node)(struct intel_stolen_node *node, u64 size, unsigned int align);
+	void (*remove_node)(struct intel_stolen_node *node);
+	bool (*initialized)(struct drm_device *drm);
+	bool (*node_allocated)(const struct intel_stolen_node *node);
+	u64 (*node_offset)(const struct intel_stolen_node *node);
+	u64 (*area_address)(struct drm_device *drm);
+	u64 (*area_size)(struct drm_device *drm);
+	u64 (*node_address)(const struct intel_stolen_node *node);
+	u64 (*node_size)(const struct intel_stolen_node *node);
+	struct intel_stolen_node *(*node_alloc)(struct drm_device *drm);
+	void (*node_free)(const struct intel_stolen_node *node);
+};
+
 /**
  * struct intel_display_parent_interface - services parent driver provides to display
  *
@@ -72,6 +89,9 @@ struct intel_display_parent_interface {
 	/** @rpm: RPS interface. Optional. */
 	const struct intel_display_rps_interface *rps;
 
+	/** @stolen: Stolen memory. */
+	const struct intel_display_stolen_interface *stolen;
+
 	/** @vgpu_active: Is vGPU active? Optional. */
 	bool (*vgpu_active)(struct drm_device *drm);
 
-- 
2.47.3

