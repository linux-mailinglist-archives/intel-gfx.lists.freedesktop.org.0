Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E7D42610A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 02:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B816E85C;
	Fri,  8 Oct 2021 00:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08E66E05C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 00:19:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226301647"
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="226301647"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 17:19:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="489235310"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 17:19:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Oct 2021 03:19:12 +0300
Message-Id: <20211008001915.3508011-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211007203517.3364336-8-imre.deak@intel.com>
References: <20211007203517.3364336-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915: Add a platform independent
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++---
 drivers/gpu/drm/i915/display/intel_fb.c      | 25 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fb.h      |  2 ++
 3 files changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8043a9fd665a5..bfb9120cb31ed 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10031,10 +10031,14 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 
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
@@ -10051,7 +10055,7 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 		 * GPU write on it.
 		 */
 		ret = i915_gem_object_read_from_page(intel_fb_obj(fb),
-						     fb->offsets[2] + 16,
+						     fb->offsets[cc_plane] + 16,
 						     &plane_state->ccval,
 						     sizeof(plane_state->ccval));
 		/* The above could only fail if the FB obj has an unexpected backing store type. */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index bca9176e3e905..ead1f69a1873c 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -125,6 +125,7 @@ const struct intel_modifier_desc {
 
 #define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
 		u8 type:3;
+		u8 cc_planes:3;
 	} ccs;
 } intel_modifiers[] = {
 	{
@@ -178,6 +179,7 @@ const struct intel_modifier_desc {
 		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC_CC,
+		.ccs.cc_planes = BIT(2),
 
 		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
 	},
@@ -369,10 +371,29 @@ bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
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
index 442d8d084f100..7bcfc5517a2e7 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -34,6 +34,8 @@ bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
 
+int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
+
 u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
 				  enum intel_plane_caps plane_caps);
 bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier);
-- 
2.27.0

