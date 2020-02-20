Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572BC1660E6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 16:26:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97CAC6EDB5;
	Thu, 20 Feb 2020 15:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A39AA6EDB5
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 15:26:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 07:26:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="229511399"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga008.jf.intel.com with ESMTP; 20 Feb 2020 07:26:52 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 17:23:47 +0200
Message-Id: <20200220152347.2530-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1] drm/i915: Use intel_plane_data_rate for
 min_cdclk calculation
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There seems to be a bit of confusing redundancy in a way, how
plane data rate/min cdclk are calculated.
In fact both min cdclk, pixel rate and plane data rate are all
part of the same formula as per BSpec.

However currently we have intel_plane_data_rate, which is used
to calculate plane data rate and which is also used in bandwidth
calculations. However for calculating min_cdclk we have another
piece of code, doing almost same calculation, but a bit differently
and in a different place. However as both are actually part of same
formula, probably would be wise to use plane data rate calculations
as a basis anyway, thus avoiding code duplication and possible bugs
related to this.

Another thing is that I've noticed that during min_cdclk calculations
we account for plane scaling, while for plane data rate, we don't.
crtc->pixel_rate seems to account only for pipe ratio, however it is
clearly stated in BSpec that plane data rate also need to account
plane ratio as well.

So what this commit does is:
- Adds a plane ratio calculation to intel_plane_data_rate
- Removes redundant calculations from skl_plane_min_cdclk which is
  used for gen9+ and now uses intel_plane_data_rate as a basis from
  there as well.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 16 ++++++-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 46 +++++++++++--------
 2 files changed, 41 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index c86d7a35c816..702dfa14d112 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -133,15 +133,27 @@ intel_plane_destroy_state(struct drm_plane *plane,
 	kfree(plane_state);
 }
 
+
+
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int cpp;
+	unsigned int src_w, src_h, dst_w, dst_h;
 
 	if (!plane_state->uapi.visible)
 		return 0;
 
+	src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
+	src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
+	dst_w = drm_rect_width(&plane_state->uapi.dst);
+	dst_h = drm_rect_height(&plane_state->uapi.dst);
+
+	/* Downscaling limits the maximum pixel rate */
+	dst_w = min(src_w, dst_w);
+	dst_h = min(src_h, dst_h);
+
 	cpp = fb->format->cpp[0];
 
 	/*
@@ -153,7 +165,9 @@ unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 	if (fb->format->is_yuv && fb->format->num_planes > 1)
 		cpp *= 4;
 
-	return cpp * crtc_state->pixel_rate;
+	return DIV64_U64_ROUND_UP(mul_u32_u32(cpp * crtc_state->pixel_rate,
+					      src_w * src_h),
+				  mul_u32_u32(dst_w, dst_h));
 }
 
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 7abeefe8dce5..75afb78ff1b0 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -330,24 +330,34 @@ bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id)
 }
 
 static void
-skl_plane_ratio(const struct intel_crtc_state *crtc_state,
-		const struct intel_plane_state *plane_state,
-		unsigned int *num, unsigned int *den)
+skl_plane_bpp_constraints(const struct intel_crtc_state *crtc_state,
+			  const struct intel_plane_state *plane_state,
+			  unsigned int *num, unsigned int *den)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int cpp = fb->format->cpp[0];
+
+	/*
+	 * Based on HSD#:1408715493
+	 * NV12 cpp == 4, P010 cpp == 8
+	 *
+	 * FIXME what is the logic behind this?
+	 */
+	if (fb->format->is_yuv && fb->format->num_planes > 1)
+		cpp *= 4;
 
 	if (fb->format->cpp[0] == 8) {
 		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
 			*num = 10;
-			*den = 8;
+			*den = 8 * cpp;
 		} else {
 			*num = 9;
-			*den = 8;
+			*den = 8 * cpp;
 		}
 	} else {
 		*num = 1;
-		*den = 1;
+		*den = cpp;
 	}
 }
 
@@ -355,27 +365,23 @@ static int skl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			       const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane_state->uapi.plane->dev);
-	unsigned int pixel_rate = crtc_state->pixel_rate;
-	unsigned int src_w, src_h, dst_w, dst_h;
 	unsigned int num, den;
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
-	skl_plane_ratio(crtc_state, plane_state, &num, &den);
+	skl_plane_bpp_constraints(crtc_state, plane_state, &num, &den);
 
 	/* two pixels per clock on glk+ */
 	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		den *= 2;
 
-	src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
-	src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
-	dst_w = drm_rect_width(&plane_state->uapi.dst);
-	dst_h = drm_rect_height(&plane_state->uapi.dst);
-
-	/* Downscaling limits the maximum pixel rate */
-	dst_w = min(src_w, dst_w);
-	dst_h = min(src_h, dst_h);
-
-	return DIV64_U64_ROUND_UP(mul_u32_u32(pixel_rate * num, src_w * src_h),
-				  mul_u32_u32(den, dst_w * dst_h));
+	/*
+	 * intel_atomic_check_planes has already been called by this
+	 * time in intel_atomic_check, so use calculated plane
+	 * data rate as a basis, in order not to have duplicate code.
+	 * According to BSpec, plane data rate is anyway used as
+	 * a basis for this calculation.
+	 */
+	return DIV64_U64_ROUND_UP(crtc_state->data_rate[plane->id] * num, den);
 }
 
 static unsigned int
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
