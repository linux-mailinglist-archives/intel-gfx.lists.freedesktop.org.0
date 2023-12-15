Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C82D881461E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:00:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EDFD10E9F1;
	Fri, 15 Dec 2023 11:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA2410E9F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638024; x=1734174024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i7OOUQPfi8ef7rT5y2wM7x8fW64S4Te1SdM2QH3zTj8=;
 b=hwN73cPYhgIuA3CUcZDwvTpWWOOEIaboJyOfpzqctDovhPFTJxxjf1T6
 VVxK0DwzE6mc5YDrmxTfNyK0hWTA0u9/lg6A8eSBZJHquFu5p3XtZkEoB
 s2u/IbaTcleJtMk83PiJJutjhUeVS5dEn7j9shSD+jZqM07hzU4yh4CDK
 HqhTBkghiseSewISJSe5hEajc9ngov3MgE1Zd1JcH/gikBfwzpRG/P34n
 HyQBG8n/uAPfuI97aTo8o2QNQ8fjpO1QYTyJWe2bwmX6iKd4wiLsbCa3p
 CnKoVin2luflFKoe0Ur/qtuN7F67dXAwMaYpx7c0KSo3gRUfsO589lePO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136981"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136981"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:00:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935308"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935308"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:00:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:00:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 15/15] drm/i915: Try to relocate the BIOS fb to the start
 of ggtt
Date: Fri, 15 Dec 2023 12:59:29 +0200
Message-ID: <20231215105929.29568-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
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

On MTL the GOP (for whatever reason) likes to bind its framebuffer
high up in the ggtt address space. This can conflict with whatever
ggtt_reserve_guc_top() is trying to do, and the result is that
ggtt_reserve_guc_top() fails and then we proceed to explode when
trying to tear down the driver. Thus far I haven't analyzed what
causes the actual fireworks, but it's not super important as even
if it didn't explode we'd still fail the driver load and the user
would be left with an unusable GPU.

To remedy this (without having to figure out exactly what
ggtt_reserve_guc_top() is trying to achieve) we can attempt to
relocate the BIOS framebuffer to a lower ggtt address. We can do
this at this early point in driver init because nothing else is
supposed to be clobbering the ggtt yet. So we simply change where
in the ggtt we pin the vma, the original PTEs will be left as is,
and the new PTEs will get written with the same dma addresses.
The plane will keep on scanning out from the original PTEs until
we are done with the whole process, and at that point we rewrite
the plane's surface address register to point at the new ggtt
address.

Since we don't need a specific ggtt address for the plane
(apart from needing it to land in the mappable region for
normal stolen objects) we'll just try to pin it without a fixed
offset first. It should end up at the lowest available address
(which really should be 0 at this point in the driver init).
If that fails we'll fall back to just pinning it exactly to the
origianal address.

To make sure we don't accidentlally pin it partially over the
original ggtt range (as that would corrupt the original PTEs)
we reserve the original range temporarily during this process.

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 30 ++++++++++
 drivers/gpu/drm/i915/display/i9xx_plane.h     |  7 +++
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++
 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 .../drm/i915/display/intel_plane_initial.c    | 57 ++++++++++++++++++-
 .../drm/i915/display/skl_universal_plane.c    | 28 +++++++++
 .../drm/i915/display/skl_universal_plane.h    |  2 +
 7 files changed, 128 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 91f2bc405cba..0279c8aabdd1 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -1060,3 +1060,33 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	plane_config->fb = intel_fb;
 }
+
+bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
+				     const struct intel_initial_plane_config *plane_config)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	const struct intel_plane_state *plane_state =
+		to_intel_plane_state(plane->base.state);
+	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
+	u32 base;
+
+	if (!plane_state->uapi.visible)
+		return false;
+
+	base = intel_plane_ggtt_offset(plane_state);
+
+	/*
+	 * We may have moved the surface to a different
+	 * part of ggtt, make the plane aware of that.
+	 */
+	if (plane_config->base == base)
+		return false;
+
+	if (DISPLAY_VER(dev_priv) >= 4)
+		intel_de_write(dev_priv, DSPSURF(i9xx_plane), base);
+	else
+		intel_de_write(dev_priv, DSPADDR(i9xx_plane), base);
+
+	return true;
+}
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
index b3d724a144cb..0ca12d1e6839 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
@@ -26,6 +26,8 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe);
 
 void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 				   struct intel_initial_plane_config *plane_config);
+bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
+				     const struct intel_initial_plane_config *plane_config);
 #else
 static inline unsigned int i965_plane_max_stride(struct intel_plane *plane,
 						 u32 pixel_format, u64 modifier,
@@ -46,6 +48,11 @@ static inline void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 						 struct intel_initial_plane_config *plane_config)
 {
 }
+static inline bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
+						   const struct intel_initial_plane_config *plane_config)
+{
+	return false;
+}
 #endif
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d955957b7d18..92b4a894c9b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7820,6 +7820,7 @@ static const struct intel_display_funcs skl_display_funcs = {
 	.crtc_disable = hsw_crtc_disable,
 	.commit_modeset_enables = skl_commit_modeset_enables,
 	.get_initial_plane_config = skl_get_initial_plane_config,
+	.fixup_initial_plane_config = skl_fixup_initial_plane_config,
 };
 
 static const struct intel_display_funcs ddi_display_funcs = {
@@ -7828,6 +7829,7 @@ static const struct intel_display_funcs ddi_display_funcs = {
 	.crtc_disable = hsw_crtc_disable,
 	.commit_modeset_enables = intel_commit_modeset_enables,
 	.get_initial_plane_config = i9xx_get_initial_plane_config,
+	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
 };
 
 static const struct intel_display_funcs pch_split_display_funcs = {
@@ -7836,6 +7838,7 @@ static const struct intel_display_funcs pch_split_display_funcs = {
 	.crtc_disable = ilk_crtc_disable,
 	.commit_modeset_enables = intel_commit_modeset_enables,
 	.get_initial_plane_config = i9xx_get_initial_plane_config,
+	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
 };
 
 static const struct intel_display_funcs vlv_display_funcs = {
@@ -7844,6 +7847,7 @@ static const struct intel_display_funcs vlv_display_funcs = {
 	.crtc_disable = i9xx_crtc_disable,
 	.commit_modeset_enables = intel_commit_modeset_enables,
 	.get_initial_plane_config = i9xx_get_initial_plane_config,
+	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
 };
 
 static const struct intel_display_funcs i9xx_display_funcs = {
@@ -7852,6 +7856,7 @@ static const struct intel_display_funcs i9xx_display_funcs = {
 	.crtc_disable = i9xx_crtc_disable,
 	.commit_modeset_enables = intel_commit_modeset_enables,
 	.get_initial_plane_config = i9xx_get_initial_plane_config,
+	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
 };
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 7e82b87e9cde..3f17328ff690 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -64,6 +64,8 @@ struct intel_display_funcs {
 				struct intel_crtc_state *);
 	void (*get_initial_plane_config)(struct intel_crtc *,
 					 struct intel_initial_plane_config *);
+	bool (*fixup_initial_plane_config)(struct intel_crtc *crtc,
+					   const struct intel_initial_plane_config *plane_config);
 	void (*crtc_enable)(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc);
 	void (*crtc_disable)(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 82ab98985a09..72f509f8bc63 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -3,9 +3,11 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
 #include "intel_atomic_plane.h"
+#include "intel_crtc.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
@@ -138,6 +140,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 {
 	struct intel_memory_region *mem;
 	struct drm_i915_gem_object *obj;
+	struct drm_mm_node orig_mm = {};
 	struct i915_vma *vma;
 	resource_size_t phys_base;
 	u32 base, size;
@@ -195,23 +198,68 @@ initial_plane_vma(struct drm_i915_private *i915,
 		goto err_obj;
 	}
 
+	/*
+	 * MTL GOP likes to place the framebuffer high up in ggtt,
+	 * which can cause problems for ggtt_reserve_guc_top().
+	 * Try to pin it to a low ggtt address instead to avoid that.
+	 */
+	base = 0;
+
+	if (base != plane_config->base) {
+		struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
+		int ret;
+
+		/*
+		 * Make sure the original and new locations
+		 * can't overlap. That would corrupt the original
+		 * PTEs which are still being used for scanout.
+		 */
+		ret = i915_gem_gtt_reserve(&ggtt->vm, NULL, &orig_mm,
+					   size, plane_config->base,
+					   I915_COLOR_UNEVICTABLE, PIN_NOEVICT);
+		if (ret)
+			goto err_obj;
+	}
+
 	vma = i915_vma_instance(obj, &to_gt(i915)->ggtt->vm, NULL);
 	if (IS_ERR(vma))
 		goto err_obj;
 
-	pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
-	if (HAS_GMCH(i915))
+retry:
+	pinctl = PIN_GLOBAL;
+	if (base == plane_config->base)
+		pinctl |= PIN_OFFSET_FIXED | base;
+	if (!i915_gem_object_is_lmem(obj))
 		pinctl |= PIN_MAPPABLE;
-	if (i915_vma_pin(vma, 0, 0, pinctl))
+	if (i915_vma_pin(vma, 0, 0, pinctl)) {
+		if (drm_mm_node_allocated(&orig_mm)) {
+			drm_mm_remove_node(&orig_mm);
+			/*
+			 * Try again, but this time pin
+			 * it to its original location.
+			 */
+			base = plane_config->base;
+			goto retry;
+		}
 		goto err_obj;
+	}
 
 	if (i915_gem_object_is_tiled(obj) &&
 	    !i915_vma_is_map_and_fenceable(vma))
 		goto err_obj;
 
+	if (drm_mm_node_allocated(&orig_mm))
+		drm_mm_remove_node(&orig_mm);
+
+	drm_dbg_kms(&i915->drm,
+		    "Initial plane fb bound to 0x%x in the ggtt (original 0x%x)\n",
+		    i915_ggtt_offset(vma), plane_config->base);
+
 	return vma;
 
 err_obj:
+	if (drm_mm_node_allocated(&orig_mm))
+		drm_mm_remove_node(&orig_mm);
 	i915_gem_object_put(obj);
 	return NULL;
 }
@@ -386,6 +434,9 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
 		 */
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
+		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
+			intel_crtc_wait_for_next_vblank(crtc);
+
 		plane_config_fini(plane_config);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 511dc1544854..392d93e97bf8 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2624,3 +2624,31 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 error:
 	kfree(intel_fb);
 }
+
+bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
+				    const struct intel_initial_plane_config *plane_config)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	const struct intel_plane_state *plane_state =
+		to_intel_plane_state(plane->base.state);
+	enum plane_id plane_id = plane->id;
+	enum pipe pipe = crtc->pipe;
+	u32 base;
+
+	if (!plane_state->uapi.visible)
+		return false;
+
+	base = intel_plane_ggtt_offset(plane_state);
+
+	/*
+	 * We may have moved the surface to a different
+	 * part of ggtt, make the plane aware of that.
+	 */
+	if (plane_config->base == base)
+		return false;
+
+	intel_de_write(i915, PLANE_SURF(pipe, plane_id), base);
+
+	return true;
+}
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
index be64c201f9b3..e92e00c01b29 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
@@ -22,6 +22,8 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 void skl_get_initial_plane_config(struct intel_crtc *crtc,
 				  struct intel_initial_plane_config *plane_config);
+bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
+				    const struct intel_initial_plane_config *plane_config);
 
 int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
 
-- 
2.41.0

