Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C0882B04A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 15:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB55710E20A;
	Thu, 11 Jan 2024 14:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3048A10E20A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 14:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704981984; x=1736517984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wvcn4u4b5rnL3uTrPsIh9FypWfKwCg8QLvAZjrz/vNk=;
 b=EJgso1YYzZ1acPkFx5zCzCQ6dWGpPaX2gW5DCZjqWS7QPPdG3QtAH1TG
 T7GQspKfzDI4LWcaJX7JI33Vm0u2rfVplPovRtOZ4czzwxZ7yWrl54JSi
 1RfFyV52ncg4HWFOGStTOzE4Cvn0HoFSzeP2fQO9KNMds+GZddB6w26bA
 nAZ56y7aeMd0ah4LY4Z5PkdwzqK1NZILCALvWSwgVMmjTRsq7yuPntQQg
 c4Xc4hZvZ8F3eh4v+NCZecThgLINLXm5benhWShx34y46d5/6tV+udMer
 9bGKFP9EEfHs1yMAY+SXZMISCwJ5zn+1jOvftSEcmntKJKYe7HmO9XuLe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="463140126"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="463140126"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 06:06:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="775618337"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="775618337"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Jan 2024 06:06:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jan 2024 16:06:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 15/15] drm/i915: Try to relocate the BIOS fb to the start
 of ggtt
Date: Thu, 11 Jan 2024 16:06:17 +0200
Message-ID: <20240111140617.16931-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215105929.29568-16-ville.syrjala@linux.intel.com>
References: <20231215105929.29568-16-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
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

v2: Try to pin explicitly to ggtt offset 0 as otherwise DG2 puts it
    even higher (atm we have no PIN_LOW flag to force it low)

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 30 +++++++++++
 drivers/gpu/drm/i915/display/i9xx_plane.h     |  7 +++
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++
 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 .../drm/i915/display/intel_plane_initial.c    | 53 ++++++++++++++++++-
 .../drm/i915/display/skl_universal_plane.c    | 28 ++++++++++
 .../drm/i915/display/skl_universal_plane.h    |  2 +
 7 files changed, 125 insertions(+), 2 deletions(-)

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
index 82ab98985a09..00e194ee129a 100644
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
@@ -195,23 +198,66 @@ initial_plane_vma(struct drm_i915_private *i915,
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
 
+retry:
 	pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
-	if (HAS_GMCH(i915))
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
@@ -386,6 +432,9 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
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

