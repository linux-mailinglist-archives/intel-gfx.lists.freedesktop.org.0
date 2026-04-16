Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMJYLyEg4Wl0pQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D04132F4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBA9E10E924;
	Thu, 16 Apr 2026 17:45:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhUXWTX7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9AA10E923;
 Thu, 16 Apr 2026 17:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776361502; x=1807897502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ir92kbMTFjqAoMyOPd6RyLtSOKIU+a0LF4hNCmtj9G0=;
 b=lhUXWTX7DL7ranj98wI/dp8Rv2bzkpxyUV7WwQCtNRwm1jXWyBHeEuTw
 RjFd8SgGCyztv2IqFD2zKlRI5AFKD4AsoC/a60lHsZ2fbK0qnByk4DOwC
 n47FdQ1MvYGZOrQVt+GKFQtddmU0jMKZE1OyMvj35iy39fNxIJkuBp9E7
 WWKG6hNzSlu4Xe1Dc5IPfyoTKy141OmpVNNNjrk9CyykXOuGmXRkpL+0R
 Fih6lCj1d1Dc35V/j4VrkClAwPnLFLINzduukB6BpsBHsweiej3VFkB3J
 Tlrnf1thm6rLIeFuWlbkc+dBUXc4sQPrOqwaquwCJOgpsSM3KAipn0LSz w==;
X-CSE-ConnectionGUID: d4yV/mFvQDeHAk0iebA+Sg==
X-CSE-MsgGUID: 2YiBpXEhS/+rOh1x37TWpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77445439"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77445439"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:02 -0700
X-CSE-ConnectionGUID: rghnR45YSNqZWDGJwpS/Xg==
X-CSE-MsgGUID: Qk6R+9KyQUq0HQyFS4aKyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="230668847"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.241])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/11] drm/i915: Introduce struct intel_fb_pin_params
Date: Thu, 16 Apr 2026 20:44:38 +0300
Message-ID: <20260416174448.28264-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6C8D04132F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We need to pass a lot of information between the display driver
and the core driver to get framebuffers mapped into GGTT/DPT
correctly. Rather than passing around a swarm of integers and
boolean as function arguments, let's collect it all into a
structure (struct intel_fb_pin_params).

Start by moving the gtt view, alignment, phys_alignment,
and vtd_guard there. Going forward additional things need
to added as well (mainly various boolean flags).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.h   | 12 +++--
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 13 +++--
 drivers/gpu/drm/i915/i915_fb_pin.c            | 54 ++++++++++---------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 39 +++++++-------
 drivers/gpu/drm/xe/display/xe_initial_plane.c |  6 ++-
 5 files changed, 69 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index 2eca42b74c4a..e6271437459d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -14,12 +14,16 @@ struct intel_plane_state;
 struct i915_gtt_view;
 struct iosys_map;
 
+struct intel_fb_pin_params {
+	const struct i915_gtt_view *view;
+	unsigned int alignment;
+	unsigned int phys_alignment;
+	unsigned int vtd_guard;
+};
+
 struct i915_vma *
 intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
-		     const struct i915_gtt_view *view,
-		     unsigned int alignment,
-		     unsigned int phys_alignment,
-		     unsigned int vtd_guard,
+		     const struct intel_fb_pin_params *pin_params,
 		     int *out_fence_id);
 
 void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 1e22b3fd79ba..136fa827c8f0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -264,6 +264,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 {
 	struct intel_display *display = to_intel_display(helper->dev);
 	struct intel_fbdev *ifbdev = to_intel_fbdev(helper);
+	struct intel_fb_pin_params pin_params = {};
 	struct intel_framebuffer *fb = ifbdev->fb;
 	struct fb_info *info = helper->info;
 	struct ref_tracker *wakeref;
@@ -308,11 +309,13 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 	 * This also validates that any existing fb inherited from the
 	 * BIOS is suitable for own access.
 	 */
-	vma = intel_fb_pin_to_ggtt(&fb->base, &fb->normal_view.gtt,
-				   fb->min_alignment, 0,
-				   intel_fb_view_vtd_guard(&fb->base, &fb->normal_view,
-							   DRM_MODE_ROTATE_0),
-				   NULL);
+	pin_params.view = &fb->normal_view.gtt;
+	pin_params.alignment = fb->min_alignment;
+	pin_params.vtd_guard = intel_fb_view_vtd_guard(&fb->base,
+						       &fb->normal_view,
+						       DRM_MODE_ROTATE_0);
+
+	vma = intel_fb_pin_to_ggtt(&fb->base, &pin_params, NULL);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto out_unlock;
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 85649bae25fb..4fe6b9859b3f 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -24,9 +24,8 @@
 
 static struct i915_vma *
 intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
-		    const struct i915_gtt_view *view,
-		    unsigned int alignment,
-		    struct intel_dpt *dpt)
+		    struct intel_dpt *dpt,
+		    const struct intel_fb_pin_params *pin_params)
 {
 	struct drm_i915_private *i915 = to_i915(fb->dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
@@ -74,19 +73,20 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 		if (ret)
 			continue;
 
-		vma = i915_vma_instance(obj, vm, view);
+		vma = i915_vma_instance(obj, vm, pin_params->view);
 		if (IS_ERR(vma)) {
 			ret = PTR_ERR(vma);
 			continue;
 		}
 
-		if (i915_vma_misplaced(vma, 0, alignment, 0)) {
+		if (i915_vma_misplaced(vma, 0, pin_params->alignment, 0)) {
 			ret = i915_vma_unbind(vma);
 			if (ret)
 				continue;
 		}
 
-		ret = i915_vma_pin_ww(vma, &ww, 0, alignment, PIN_GLOBAL);
+		ret = i915_vma_pin_ww(vma, &ww, 0, pin_params->alignment,
+				      PIN_GLOBAL);
 		if (ret)
 			continue;
 	}
@@ -95,7 +95,8 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 		goto err;
 	}
 
-	vma->display_alignment = max(vma->display_alignment, alignment);
+	vma->display_alignment = max(vma->display_alignment,
+				     pin_params->alignment);
 
 	i915_gem_object_flush_if_display(obj);
 
@@ -108,10 +109,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 
 struct i915_vma *
 intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
-		     const struct i915_gtt_view *view,
-		     unsigned int alignment,
-		     unsigned int phys_alignment,
-		     unsigned int vtd_guard,
+		     const struct intel_fb_pin_params *pin_params,
 		     int *out_fence_id)
 {
 	struct intel_display *display = to_intel_display(fb->dev);
@@ -127,7 +125,8 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	if (drm_WARN_ON(&i915->drm, !i915_gem_object_is_framebuffer(obj)))
 		return ERR_PTR(-EINVAL);
 
-	if (drm_WARN_ON(&i915->drm, alignment && !is_power_of_2(alignment)))
+	if (drm_WARN_ON(&i915->drm, pin_params->alignment &&
+			!is_power_of_2(pin_params->alignment)))
 		return ERR_PTR(-EINVAL);
 
 	/*
@@ -156,8 +155,8 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	i915_gem_ww_ctx_init(&ww, true);
 retry:
 	ret = i915_gem_object_lock(obj, &ww);
-	if (!ret && phys_alignment)
-		ret = i915_gem_object_attach_phys(obj, phys_alignment);
+	if (!ret && pin_params->phys_alignment)
+		ret = i915_gem_object_attach_phys(obj, pin_params->phys_alignment);
 	else if (!ret && HAS_LMEM(i915))
 		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
 	if (!ret)
@@ -165,8 +164,10 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	if (ret)
 		goto err;
 
-	vma = i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
-						   vtd_guard, view, pinctl);
+	vma = i915_gem_object_pin_to_display_plane(obj, &ww,
+						   pin_params->alignment,
+						   pin_params->vtd_guard,
+						   pin_params->view, pinctl);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto err_unpin;
@@ -269,12 +270,15 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 	struct i915_vma *vma;
 
 	if (!intel_fb_uses_dpt(&fb->base)) {
+		struct intel_fb_pin_params pin_params = {
+			.view = &plane_state->view.gtt,
+			.alignment = intel_plane_fb_min_alignment(plane_state),
+			.phys_alignment = intel_plane_fb_min_phys_alignment(plane_state),
+			.vtd_guard = intel_plane_fb_vtd_guard(plane_state),
+		};
 		int fence_id = -1;
 
-		vma = intel_fb_pin_to_ggtt(&fb->base, &plane_state->view.gtt,
-					   intel_plane_fb_min_alignment(plane_state),
-					   intel_plane_fb_min_phys_alignment(plane_state),
-					   intel_plane_fb_vtd_guard(plane_state),
+		vma = intel_fb_pin_to_ggtt(&fb->base, &pin_params,
 					   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
@@ -282,16 +286,18 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		plane_state->ggtt_vma = vma;
 		plane_state->fence_id = fence_id;
 	} else {
-		unsigned int alignment = intel_plane_fb_min_alignment(plane_state);
+		struct intel_fb_pin_params pin_params = {
+			.view = &plane_state->view.gtt,
+			.alignment = intel_plane_fb_min_alignment(plane_state),
+		};
 
-		vma = i915_dpt_pin_to_ggtt(fb->dpt, alignment / 512);
+		vma = i915_dpt_pin_to_ggtt(fb->dpt, pin_params.alignment / 512);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
 
 		plane_state->ggtt_vma = vma;
 
-		vma = intel_fb_pin_to_dpt(&fb->base, &plane_state->view.gtt,
-					  alignment, fb->dpt);
+		vma = intel_fb_pin_to_dpt(&fb->base, fb->dpt, &pin_params);
 		if (IS_ERR(vma)) {
 			i915_dpt_unpin_from_ggtt(fb->dpt);
 			plane_state->ggtt_vma = NULL;
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 91e5c1052589..58cd527e1fde 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -140,14 +140,14 @@ write_dpt_remapped(struct xe_bo *bo,
 }
 
 static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
-			       const struct i915_gtt_view *view,
-			       struct i915_vma *vma,
-			       unsigned int alignment)
+			       const struct intel_fb_pin_params *pin_params,
+			       struct i915_vma *vma)
 {
 	struct xe_device *xe = to_xe_device(fb->base.dev);
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
 	struct xe_ggtt *ggtt = tile0->mem.ggtt;
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
+	const struct i915_gtt_view *view = pin_params->view;
 	struct xe_bo *bo = gem_to_xe_bo(obj), *dpt;
 	u32 dpt_size, size = bo->ttm.base.size;
 
@@ -168,7 +168,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 						   XE_BO_FLAG_VRAM0 |
 						   XE_BO_FLAG_GGTT |
 						   XE_BO_FLAG_PAGETABLE,
-						   alignment, false);
+						   pin_params->alignment, false);
 	else
 		dpt = xe_bo_create_pin_map_at_novm(xe, tile0,
 						   dpt_size,  ~0ull,
@@ -176,7 +176,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 						   XE_BO_FLAG_STOLEN |
 						   XE_BO_FLAG_GGTT |
 						   XE_BO_FLAG_PAGETABLE,
-						   alignment, false);
+						   pin_params->alignment, false);
 	if (IS_ERR(dpt))
 		dpt = xe_bo_create_pin_map_at_novm(xe, tile0,
 						   dpt_size,  ~0ull,
@@ -185,7 +185,7 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 						   XE_BO_FLAG_GGTT |
 						   XE_BO_FLAG_PAGETABLE |
 						   XE_BO_FLAG_FORCE_WC,
-						   alignment, false);
+						   pin_params->alignment, false);
 	if (IS_ERR(dpt))
 		return PTR_ERR(dpt);
 
@@ -269,11 +269,11 @@ static void write_ggtt_rotated_node(struct xe_ggtt *ggtt, struct xe_ggtt_node *n
 }
 
 static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
-				const struct i915_gtt_view *view,
-				struct i915_vma *vma,
-				unsigned int alignment)
+				const struct intel_fb_pin_params *pin_params,
+				struct i915_vma *vma)
 {
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
+	const struct i915_gtt_view *view = pin_params->view;
 	struct xe_bo *bo = gem_to_xe_bo(obj);
 	struct xe_device *xe = to_xe_device(fb->base.dev);
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
@@ -319,8 +319,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 }
 
 static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
-					const struct i915_gtt_view *view,
-					unsigned int alignment)
+					const struct intel_fb_pin_params *pin_params)
 {
 	struct drm_device *dev = fb->base.dev;
 	struct xe_device *xe = to_xe_device(dev);
@@ -377,9 +376,9 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 
 	vma->bo = bo;
 	if (intel_fb_uses_dpt(&fb->base))
-		ret = __xe_pin_fb_vma_dpt(fb, view, vma, alignment);
+		ret = __xe_pin_fb_vma_dpt(fb, pin_params, vma);
 	else
-		ret = __xe_pin_fb_vma_ggtt(fb, view, vma,  alignment);
+		ret = __xe_pin_fb_vma_ggtt(fb, pin_params, vma);
 	if (ret)
 		goto err_unpin;
 
@@ -414,16 +413,13 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
 
 struct i915_vma *
 intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
-		     const struct i915_gtt_view *view,
-		     unsigned int alignment,
-		     unsigned int phys_alignment,
-		     unsigned int vtd_guard,
+		     const struct intel_fb_pin_params *pin_params,
 		     int *out_fence_id)
 {
 	if (out_fence_id)
 		*out_fence_id = -1;
 
-	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view, alignment);
+	return __xe_pin_fb_vma(to_intel_framebuffer(fb), pin_params);
 }
 
 void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
@@ -475,7 +471,10 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 	struct i915_vma *vma;
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
-	unsigned int alignment = plane->min_alignment(plane, fb, 0);
+	struct intel_fb_pin_params pin_params = {
+		.view = &new_plane_state->view.gtt,
+		.alignment = plane->min_alignment(plane, fb, 0),
+	};
 
 	if (reuse_vma(new_plane_state, old_plane_state))
 		return 0;
@@ -483,7 +482,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 	/* We reject creating !SCANOUT fb's, so this is weird.. */
 	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_FORCE_WC));
 
-	vma = __xe_pin_fb_vma(intel_fb, &new_plane_state->view.gtt, alignment);
+	vma = __xe_pin_fb_vma(intel_fb, &pin_params);
 
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 381d68c58463..4f0ad4692ed6 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -134,9 +134,11 @@ xe_initial_plane_setup(struct drm_plane_state *_plane_state,
 {
 	struct intel_plane_state *plane_state = to_intel_plane_state(_plane_state);
 	struct i915_vma *vma;
+	struct intel_fb_pin_params pin_params = {
+		.view = &plane_state->view.gtt,
+	};
 
-	vma = intel_fb_pin_to_ggtt(fb, &plane_state->view.gtt,
-				   0, 0, 0, NULL);
+	vma = intel_fb_pin_to_ggtt(fb, &pin_params, NULL);
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-- 
2.52.0

