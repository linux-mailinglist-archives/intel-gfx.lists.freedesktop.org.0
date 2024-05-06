Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A86AC8BCE9D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30C110F7D9;
	Mon,  6 May 2024 12:57:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ig0q0uWb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0690E10F8C6;
 Mon,  6 May 2024 12:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000268; x=1746536268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xau2Ghr5upajPdkmLaX+1B6UIu7ddIW184kgYU53dVE=;
 b=Ig0q0uWbHLyWnsmgF4sn2SvSTxGNRHKNzwy+xWKg3aloi5LJt+VOfOMn
 kRzNzKktEJoRePW+y1egSvshkv50DN8jhZGYt45vviA36eGuyydpQOKtm
 BEaoaCadegVtggn29N0Apmg7/s1LGA6MREhp/vvwhctmoQ+PS0mjzqvmo
 2qc9OpWvri7t7dqwh9dy42fHAoEVExvppmamUCmyjNsXch6DVWFzCs5de
 GlbjfpiCQho098/n1GdIsrDeo2R6ZoMkH5AkKFXqsfQi50r+NhuJQYyx2
 j4RctmL+FuB+InK+iZo7T5Tdmh8I4rD9IdOBAkKh8qt2hvvy4NKZi2CDy g==;
X-CSE-ConnectionGUID: pcV81YLVT4WHbL1XlsPUMg==
X-CSE-MsgGUID: QHysFAyzTWaMKFKarURw5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865353"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865353"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:48 -0700
X-CSE-ConnectionGUID: j07OAAb+SWKlPs+1q7WIFA==
X-CSE-MsgGUID: j7vYUwlVRpioOrpIKxKzug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164955"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915: Rename the fb pinning functions to indicate the
 address space
Date: Mon,  6 May 2024 15:57:18 +0300
Message-ID: <20240506125718.26001-10-ville.syrjala@linux.intel.com>
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

Rename the fb pinning functions such that their name directly
informs us what gets pinned into which address space.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c      |  6 +--
 drivers/gpu/drm/i915/display/intel_dpt.h      |  6 +--
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 46 +++++++++----------
 drivers/gpu/drm/i915/display/intel_fb_pin.h   | 12 ++---
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  8 ++--
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 12 ++---
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  4 +-
 7 files changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 786d3f2e94c7..73a1918e2537 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -121,8 +121,8 @@ static void dpt_cleanup(struct i915_address_space *vm)
 	i915_gem_object_put(dpt->obj);
 }
 
-struct i915_vma *intel_dpt_pin(struct i915_address_space *vm,
-			       unsigned int alignment)
+struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
+				       unsigned int alignment)
 {
 	struct drm_i915_private *i915 = vm->i915;
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
@@ -173,7 +173,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm,
 	return err ? ERR_PTR(err) : vma;
 }
 
-void intel_dpt_unpin(struct i915_address_space *vm)
+void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm)
 {
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
index f467578a4950..ff18a525bfbe 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -13,9 +13,9 @@ struct i915_vma;
 struct intel_framebuffer;
 
 void intel_dpt_destroy(struct i915_address_space *vm);
-struct i915_vma *intel_dpt_pin(struct i915_address_space *vm,
-			       unsigned int alignment);
-void intel_dpt_unpin(struct i915_address_space *vm);
+struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
+				       unsigned int alignment);
+void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm);
 void intel_dpt_suspend(struct drm_i915_private *i915);
 void intel_dpt_resume(struct drm_i915_private *i915);
 struct i915_address_space *
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 7971656982a6..1acc11fa19f4 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -18,11 +18,11 @@
 #include "intel_fb_pin.h"
 
 static struct i915_vma *
-intel_pin_fb_obj_dpt(const struct drm_framebuffer *fb,
-		     const struct i915_gtt_view *view,
-		     unsigned int alignment,
-		     unsigned long *out_flags,
-		     struct i915_address_space *vm)
+intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
+		    const struct i915_gtt_view *view,
+		    unsigned int alignment,
+		    unsigned long *out_flags,
+		    struct i915_address_space *vm)
 {
 	struct drm_device *dev = fb->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -102,11 +102,11 @@ intel_pin_fb_obj_dpt(const struct drm_framebuffer *fb,
 }
 
 struct i915_vma *
-intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
-			   bool phys_cursor,
-			   const struct i915_gtt_view *view,
-			   bool uses_fence,
-			   unsigned long *out_flags)
+intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
+		     bool phys_cursor,
+		     const struct i915_gtt_view *view,
+		     bool uses_fence,
+		     unsigned long *out_flags)
 {
 	struct drm_device *dev = fb->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -226,7 +226,7 @@ intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
 	return vma;
 }
 
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
+void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
 {
 	if (flags & PLANE_HAS_FENCE)
 		i915_vma_unpin_fence(vma);
@@ -242,10 +242,10 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 	struct i915_vma *vma;
 
 	if (!intel_fb_uses_dpt(&fb->base)) {
-		vma = intel_pin_and_fence_fb_obj(&fb->base, intel_plane_needs_physical(plane),
-						 &plane_state->view.gtt,
-						 intel_plane_uses_fence(plane_state),
-						 &plane_state->flags);
+		vma = intel_fb_pin_to_ggtt(&fb->base, intel_plane_needs_physical(plane),
+					   &plane_state->view.gtt,
+					   intel_plane_uses_fence(plane_state),
+					   &plane_state->flags);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
 
@@ -263,17 +263,17 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 	} else {
 		unsigned int alignment = intel_surf_alignment(&fb->base, 0);
 
-		vma = intel_dpt_pin(fb->dpt_vm, alignment / 512);
+		vma = intel_dpt_pin_to_ggtt(fb->dpt_vm, alignment / 512);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
 
 		plane_state->ggtt_vma = vma;
 
-		vma = intel_pin_fb_obj_dpt(&fb->base, &plane_state->view.gtt,
-					   alignment, &plane_state->flags,
-					   fb->dpt_vm);
+		vma = intel_fb_pin_to_dpt(&fb->base, &plane_state->view.gtt,
+					  alignment, &plane_state->flags,
+					  fb->dpt_vm);
 		if (IS_ERR(vma)) {
-			intel_dpt_unpin(fb->dpt_vm);
+			intel_dpt_unpin_from_ggtt(fb->dpt_vm);
 			plane_state->ggtt_vma = NULL;
 			return PTR_ERR(vma);
 		}
@@ -295,14 +295,14 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 	if (!intel_fb_uses_dpt(&fb->base)) {
 		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
 		if (vma)
-			intel_unpin_fb_vma(vma, old_plane_state->flags);
+			intel_fb_unpin_vma(vma, old_plane_state->flags);
 	} else {
 		vma = fetch_and_zero(&old_plane_state->dpt_vma);
 		if (vma)
-			intel_unpin_fb_vma(vma, old_plane_state->flags);
+			intel_fb_unpin_vma(vma, old_plane_state->flags);
 
 		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
 		if (vma)
-			intel_dpt_unpin(fb->dpt_vm);
+			intel_dpt_unpin_from_ggtt(fb->dpt_vm);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index edcebe75afd7..3f8245edcd15 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -14,13 +14,13 @@ struct intel_plane_state;
 struct i915_gtt_view;
 
 struct i915_vma *
-intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
-			   bool phys_cursor,
-			   const struct i915_gtt_view *view,
-			   bool uses_fence,
-			   unsigned long *out_flags);
+intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
+		     bool phys_cursor,
+		     const struct i915_gtt_view *view,
+		     bool uses_fence,
+		     unsigned long *out_flags);
 
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
+void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags);
 
 int intel_plane_pin_fb(struct intel_plane_state *plane_state);
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index e898018ab76a..5ad0b4c8a0fd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -146,7 +146,7 @@ static void intel_fbdev_fb_destroy(struct fb_info *info)
 	 * the info->screen_base mmaping. Leaking the VMA is simpler than
 	 * trying to rectify all the possible error paths leading here.
 	 */
-	intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
+	intel_fb_unpin_vma(ifbdev->vma, ifbdev->vma_flags);
 	drm_framebuffer_remove(&ifbdev->fb->base);
 
 	drm_client_release(&fb_helper->client);
@@ -227,8 +227,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 * This also validates that any existing fb inherited from the
 	 * BIOS is suitable for own access.
 	 */
-	vma = intel_pin_and_fence_fb_obj(&fb->base, false,
-					 &view, false, &flags);
+	vma = intel_fb_pin_to_ggtt(&fb->base, false,
+				   &view, false, &flags);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto out_unlock;
@@ -274,7 +274,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	return 0;
 
 out_unpin:
-	intel_unpin_fb_vma(vma, flags);
+	intel_fb_unpin_vma(vma, flags);
 out_unlock:
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 	return ret;
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 8b7ca3268834..36e15c4961c1 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -333,18 +333,18 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
 }
 
 struct i915_vma *
-intel_pin_and_fence_fb_obj(const struct drm_framebuffer *fb,
-			   bool phys_cursor,
-			   const struct i915_gtt_view *view,
-			   bool uses_fence,
-			   unsigned long *out_flags)
+intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
+		     bool phys_cursor,
+		     const struct i915_gtt_view *view,
+		     bool uses_fence,
+		     unsigned long *out_flags)
 {
 	*out_flags = 0;
 
 	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view);
 }
 
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
+void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
 {
 	__xe_unpin_fb_vma(vma);
 }
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 9693c56d386b..9eaa29e733e1 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -211,8 +211,8 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	intel_fb_fill_view(to_intel_framebuffer(fb),
 			   plane_state->uapi.rotation, &plane_state->view);
 
-	vma = intel_pin_and_fence_fb_obj(fb, false, &plane_state->view.gtt,
-					 false, &plane_state->flags);
+	vma = intel_fb_pin_to_ggtt(fb, false, &plane_state->view.gtt,
+				   false, &plane_state->flags);
 	if (IS_ERR(vma))
 		goto nofb;
 
-- 
2.43.2

