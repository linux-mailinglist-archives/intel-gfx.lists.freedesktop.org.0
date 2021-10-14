Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6931142E3FE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 00:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5156EC87;
	Thu, 14 Oct 2021 22:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B13EA6EC87
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 22:09:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="227754453"
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; d="scan'208";a="227754453"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 15:09:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; d="scan'208";a="492211792"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 15:09:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Fri, 15 Oct 2021 01:09:17 +0300
Message-Id: <20211014220921.683870-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211014220921.683870-1-imre.deak@intel.com>
References: <20211014220921.683870-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/11] drm/i915: Add a platform independent
 way to get the RC CCS CC plane
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

On future platforms the index of the color-clear plane will change from
the one used by the GEN12 RC CCS CC modifier, so add a way to retrieve
the index independently of the platform/modifier.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++---
 drivers/gpu/drm/i915/display/intel_fb.c      | 25 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fb.h      |  2 ++
 3 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef8a9f235ee0a..dc7778beb938f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9607,10 +9607,14 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
 		struct drm_framebuffer *fb = plane_state->hw.fb;
+		int cc_plane;
 		int ret;
 
-		if (!fb ||
-		    fb->modifier != I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
+		if (!fb)
+			continue;
+
+		cc_plane = intel_fb_rc_ccs_cc_plane(fb);
+		if (cc_plane < 0)
 			continue;
 
 		/*
@@ -9627,7 +9631,7 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 		 * GPU write on it.
 		 */
 		ret = i915_gem_object_read_from_page(intel_fb_obj(fb),
-						     fb->offsets[2] + 16,
+						     fb->offsets[cc_plane] + 16,
 						     &plane_state->ccval,
 						     sizeof(plane_state->ccval));
 		/* The above could only fail if the FB obj has an unexpected backing store type. */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 60ec38cc1e0fb..5273fa5b81622 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -130,6 +130,7 @@ struct intel_modifier_desc {
 
 #define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
 		u8 type:3;
+		u8 cc_planes:3;
 	} ccs;
 };
 
@@ -189,6 +190,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC_CC,
+		.ccs.cc_planes = BIT(2),
 
 		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
 	},
@@ -388,10 +390,29 @@ bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
 	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
 }
 
+/**
+ * intel_fb_rc_ccs_cc_plane: Get the CCS CC color plane index for a framebuffer
+ * @fb: Framebuffer
+ *
+ * Returns:
+ * Returns the index of the color clear plane for @fb, or -1 if @fb is not a
+ * framebuffer using a render compression/color clear modifier.
+ */
+int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb)
+{
+	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
+
+	if (!md->ccs.cc_planes)
+		return -1;
+
+	drm_WARN_ON_ONCE(fb->dev, hweight8(md->ccs.cc_planes) > 1);
+
+	return ilog2((int)md->ccs.cc_planes);
+}
+
 bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
 {
-	return fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
-	       plane == 2;
+	return intel_fb_rc_ccs_cc_plane(fb) == plane;
 }
 
 static bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index a2cdf48f13395..74e0fc03319b9 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -31,6 +31,8 @@ bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
 
+int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
+
 u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
 				  enum intel_plane_caps plane_caps);
 bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier);
-- 
2.27.0

