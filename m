Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC21881527
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68DFA10EF6D;
	Wed, 20 Mar 2024 16:04:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fXweXp2k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB6210FDA6
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710950671; x=1742486671;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rPqkoVQccxxB6gdE4oqITeQi5vMnVqNmHXV9Le0RHTg=;
 b=fXweXp2k0DkU69sWEExeealCx5sKv22lEQSC5mBDwzk1phnT1lAI2X3x
 iheAg8iMPfUX/MbO9S7gLfgwkwoLGdHHQllCxLgt+5ybmbKxcq7ZfwVXG
 f3QeGYAWv9KYlhA9kvixvuZwF0D5G8Mx0dPb6PtWR4lLXasJHRd+mCdOG
 +kuAkF1ilpGsNyej8CJI5kkrdMgNFW0gShqVMKnF/y4XLJW7LicyaN9g4
 sRjdO05NJmlJdiLeKCwax2H22JNdchzfNS7eUem3RL6Z+HD/R8xo6NiSP
 1U11YyHdj/XbslnB0qQ3l0HlWeD5qipVq66Nyi1vmiYgsvZKxMukJGzT5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="8834765"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="8834765"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="827782598"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782598"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 09:04:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 18:04:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915: Align PLANE_SURF to 16k on ADL for async flips
Date: Wed, 20 Mar 2024 18:04:19 +0200
Message-ID: <20240320160424.700-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240320160424.700-1-ville.syrjala@linux.intel.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
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

On ADL async flips apparently generate DMAR and GGTT faults
(with accompanying visual glitches) unless PLANE_SURF is
aligned to at least 16k. Bump up the alignment to 16k.

TODO: analyze things better to figure out what is really
      going on here

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c    |  7 ++++---
 drivers/gpu/drm/i915/display/intel_dpt.h    |  3 ++-
 drivers/gpu/drm/i915/display/intel_fb.c     | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 10 +++++-----
 4 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index b29bceff73f2..786d3f2e94c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -121,7 +121,8 @@ static void dpt_cleanup(struct i915_address_space *vm)
 	i915_gem_object_put(dpt->obj);
 }
 
-struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
+struct i915_vma *intel_dpt_pin(struct i915_address_space *vm,
+			       unsigned int alignment)
 {
 	struct drm_i915_private *i915 = vm->i915;
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
@@ -143,8 +144,8 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 		if (err)
 			continue;
 
-		vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
-						  pin_flags);
+		vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0,
+						  alignment, pin_flags);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
index e18a9f767b11..f467578a4950 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -13,7 +13,8 @@ struct i915_vma;
 struct intel_framebuffer;
 
 void intel_dpt_destroy(struct i915_address_space *vm);
-struct i915_vma *intel_dpt_pin(struct i915_address_space *vm);
+struct i915_vma *intel_dpt_pin(struct i915_address_space *vm,
+			       unsigned int alignment);
 void intel_dpt_unpin(struct i915_address_space *vm);
 void intel_dpt_suspend(struct drm_i915_private *i915);
 void intel_dpt_resume(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3ea6470d6d92..58ead05fba6f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -805,8 +805,23 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 {
 	struct drm_i915_private *dev_priv = to_i915(fb->dev);
 
-	if (intel_fb_uses_dpt(fb))
+	if (intel_fb_uses_dpt(fb)) {
+		/* AUX_DIST needs only 4K alignment */
+		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
+			return 512 * 4096;
+
+		/*
+		 * FIXME ADL sees GGTT/DMAR faults with async
+		 * flips unless we align to 16k at least.
+		 * Figure out what's going on here...
+		 */
+		if (IS_ALDERLAKE_P(dev_priv) &&
+		    !intel_fb_is_ccs_modifier(fb->modifier) &&
+		    HAS_ASYNC_FLIPS(dev_priv))
+			return 512 * 16 * 1024;
+
 		return 512 * 4096;
+	}
 
 	/* AUX_DIST needs only 4K alignment */
 	if (intel_fb_is_ccs_aux_plane(fb, color_plane))
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 7b42aef37d2f..c28ae99ebe6a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -19,6 +19,7 @@
 static struct i915_vma *
 intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 		     const struct i915_gtt_view *view,
+		     unsigned int alignment,
 		     bool uses_fence,
 		     unsigned long *out_flags,
 		     struct i915_address_space *vm)
@@ -28,7 +29,6 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
-	u32 alignment;
 	int ret;
 
 	/*
@@ -41,8 +41,6 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
 		return ERR_PTR(-EINVAL);
 
-	alignment = 4096 * 512;
-
 	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
 
 	for_i915_gem_ww(&ww, ret, true) {
@@ -257,14 +255,16 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 		plane_state->ggtt_vma = vma;
 	} else {
 		struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
+		unsigned int alignment = intel_surf_alignment(fb, 0);
 
-		vma = intel_dpt_pin(intel_fb->dpt_vm);
+		vma = intel_dpt_pin(intel_fb->dpt_vm, alignment / 512);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
 
 		plane_state->ggtt_vma = vma;
 
-		vma = intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt, false,
+		vma = intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt,
+					   alignment, false,
 					   &plane_state->flags, intel_fb->dpt_vm);
 		if (IS_ERR(vma)) {
 			intel_dpt_unpin(intel_fb->dpt_vm);
-- 
2.43.2

