Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B8C8BCE99
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F5E10F7D8;
	Mon,  6 May 2024 12:57:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NTnJeCbn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1547210F743;
 Mon,  6 May 2024 12:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000259; x=1746536259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ONeNESDZ/3woKABxPWKiXFPBFFajViSORB93E1ewRyY=;
 b=NTnJeCbnYR1PUFAOcGRnzbyPr+0NFBscH18PEFPA+4tvMYNFjZcUjU00
 d2qzev1Pt8lX0xF4XAMlW0rDusv+Ffxow+XxkSUJLYgePtu2dlPzxm6ab
 i1sJh7HhLvy8HpbJec6X8EJTR0K3vFqJFTMj8OC5wwmz/uMUe3z+2xgMb
 GiNt98r90G9ei+eXcjyFEyP3xD2gXaX/cQkFirxljPIqJbMaJhiuByyt9
 sxfQrqZWiRW7B1Bx9k836CdP1kWdkE4goAeCcBuT8PurcY4ktjPMQj/wP
 aXkn0/qiXnR9N/Rqskr978viRBO1TiCyUU3+m8yVu0K3Y+W0UN2xBOMju A==;
X-CSE-ConnectionGUID: pwJEH5l1T9Cuo6gT6sSR+w==
X-CSE-MsgGUID: taVLZbZGSbuHeE+I1zEhHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865330"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865330"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:39 -0700
X-CSE-ConnectionGUID: gVMhyE52RQ2sB05ggCFEAw==
X-CSE-MsgGUID: 42rODzXoR2CN6jJNiR9h6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164951"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915: Constify 'fb' in during pinning
Date: Mon,  6 May 2024 15:57:15 +0300
Message-ID: <20240506125718.26001-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
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

Make the 'fb' pointers const in the pinning code. We never
want to mutate these. Also nuke a few aliasing fb vs. intel_fb
cases by just using the more specific type everywhere in the
same function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 33 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_fb_pin.h |  2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c      |  8 ++---
 3 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 041f09f76628..7971656982a6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -18,7 +18,7 @@
 #include "intel_fb_pin.h"
 
 static struct i915_vma *
-intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
+intel_pin_fb_obj_dpt(const struct drm_framebuffer *fb,
 		     const struct i915_gtt_view *view,
 		     unsigned int alignment,
 		     unsigned long *out_flags,
@@ -102,7 +102,7 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 }
 
 struct i915_vma *
-intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
+intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
 			   bool phys_cursor,
 			   const struct i915_gtt_view *view,
 			   bool uses_fence,
@@ -237,11 +237,12 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_framebuffer *fb = plane_state->hw.fb;
+	const struct intel_framebuffer *fb =
+		to_intel_framebuffer(plane_state->hw.fb);
 	struct i915_vma *vma;
 
-	if (!intel_fb_uses_dpt(fb)) {
-		vma = intel_pin_and_fence_fb_obj(fb, intel_plane_needs_physical(plane),
+	if (!intel_fb_uses_dpt(&fb->base)) {
+		vma = intel_pin_and_fence_fb_obj(&fb->base, intel_plane_needs_physical(plane),
 						 &plane_state->view.gtt,
 						 intel_plane_uses_fence(plane_state),
 						 &plane_state->flags);
@@ -258,22 +259,21 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 		 */
 		if (intel_plane_needs_physical(plane))
 			plane_state->phys_dma_addr =
-				i915_gem_object_get_dma_address(intel_fb_obj(fb), 0);
+				i915_gem_object_get_dma_address(intel_fb_obj(&fb->base), 0);
 	} else {
-		struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
-		unsigned int alignment = intel_surf_alignment(fb, 0);
+		unsigned int alignment = intel_surf_alignment(&fb->base, 0);
 
-		vma = intel_dpt_pin(intel_fb->dpt_vm, alignment / 512);
+		vma = intel_dpt_pin(fb->dpt_vm, alignment / 512);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
 
 		plane_state->ggtt_vma = vma;
 
-		vma = intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt,
+		vma = intel_pin_fb_obj_dpt(&fb->base, &plane_state->view.gtt,
 					   alignment, &plane_state->flags,
-					   intel_fb->dpt_vm);
+					   fb->dpt_vm);
 		if (IS_ERR(vma)) {
-			intel_dpt_unpin(intel_fb->dpt_vm);
+			intel_dpt_unpin(fb->dpt_vm);
 			plane_state->ggtt_vma = NULL;
 			return PTR_ERR(vma);
 		}
@@ -288,22 +288,21 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 {
-	struct drm_framebuffer *fb = old_plane_state->hw.fb;
+	const struct intel_framebuffer *fb =
+		to_intel_framebuffer(old_plane_state->hw.fb);
 	struct i915_vma *vma;
 
-	if (!intel_fb_uses_dpt(fb)) {
+	if (!intel_fb_uses_dpt(&fb->base)) {
 		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
 		if (vma)
 			intel_unpin_fb_vma(vma, old_plane_state->flags);
 	} else {
-		struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
-
 		vma = fetch_and_zero(&old_plane_state->dpt_vma);
 		if (vma)
 			intel_unpin_fb_vma(vma, old_plane_state->flags);
 
 		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
 		if (vma)
-			intel_dpt_unpin(intel_fb->dpt_vm);
+			intel_dpt_unpin(fb->dpt_vm);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index de0efaa25905..edcebe75afd7 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -14,7 +14,7 @@ struct intel_plane_state;
 struct i915_gtt_view;
 
 struct i915_vma *
-intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
+intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
 			   bool phys_cursor,
 			   const struct i915_gtt_view *view,
 			   bool uses_fence,
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 3e1ae37c4c8b..8b7ca3268834 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -77,7 +77,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
 	*dpt_ofs = ALIGN(*dpt_ofs, 4096);
 }
 
-static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
+static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 			       const struct i915_gtt_view *view,
 			       struct i915_vma *vma)
 {
@@ -181,7 +181,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
 	}
 }
 
-static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
+static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 				const struct i915_gtt_view *view,
 				struct i915_vma *vma)
 {
@@ -249,7 +249,7 @@ static int __xe_pin_fb_vma_ggtt(struct intel_framebuffer *fb,
 	return ret;
 }
 
-static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
+static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 					const struct i915_gtt_view *view)
 {
 	struct drm_device *dev = fb->base.dev;
@@ -333,7 +333,7 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
 }
 
 struct i915_vma *
-intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
+intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
 			   bool phys_cursor,
 			   const struct i915_gtt_view *view,
 			   bool uses_fence,
-- 
2.43.2

