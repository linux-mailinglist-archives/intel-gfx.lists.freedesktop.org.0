Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2CA8B6EDD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:56:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FE610E8BB;
	Tue, 30 Apr 2024 09:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SM1Nma4n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA10A10E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 09:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471005; x=1746007005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nW+mR0HAW3P0+uuEazrRiK3cl0Ufw3J8zhl0glfHAiw=;
 b=SM1Nma4n/s657xUIlFwTU4R5pjgHxq1ANvnlu2CXK02171+D3G36g8CD
 cddMKiUs3+UW3iBrVGSv3RBK5O6B6k6SgUmiIhq9yst4tS3xJ3h8S5iHX
 F2DN0hrCZLhntUzlMUNch67cE8dUHLzQC1VFFR+L9/nqz46PJY5mhgtsn
 mtjBlxMxR6h9WAOeQ8UMciuXmxa3NJMHwQpYQXdhsazbFP4+sbtn+9Llt
 8CAIwtdt6ZZhY9tWnpujwa4HHROtozRhjiTzV89lRi01+4ocd+Hh6LFGI
 YuYyWpck7iokBYxZubx1X2b7Se1Cr16qnw3U8ZYaiQ90aENLZVka3d+0W g==;
X-CSE-ConnectionGUID: H8uuUow4T2Kpwo3OIX0GUw==
X-CSE-MsgGUID: TA5MQqVVTFiDOPyqLmOa/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27617857"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27617857"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:56:45 -0700
X-CSE-ConnectionGUID: lB5xAg2qQHWHjNEXvEaFQQ==
X-CSE-MsgGUID: 6qUTnyjVTYa2wb6NCkRMBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26419306"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Apr 2024 02:56:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2024 12:56:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v2 1/5] drm/i915: Align PLANE_SURF to 16k on ADL for async
 flips
Date: Tue, 30 Apr 2024 12:56:35 +0300
Message-ID: <20240430095639.26390-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
References: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
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
index 86b443433e8b..bf24f48a1e76 100644
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
index b6df9baf481b..be095cc696ba 100644
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
@@ -267,14 +265,16 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 				i915_gem_object_get_dma_address(intel_fb_obj(fb), 0);
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

