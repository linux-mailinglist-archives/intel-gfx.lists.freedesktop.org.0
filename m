Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C818943CA1B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 14:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 424CA6E7E5;
	Wed, 27 Oct 2021 12:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905406E7E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 12:51:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="210931251"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="210931251"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 05:51:54 -0700
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="497852467"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 05:51:52 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Date: Wed, 27 Oct 2021 15:51:50 +0300
Message-Id: <20211027125150.2891371-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026161517.2694067-4-imre.deak@intel.com>
References: <20211026161517.2694067-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/fb: Fold modifier CCS
 type/tiling attribute to plane caps
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

By using the modifier plane capability flags to encode the modifiers'
CCS type and tiling attributes, it becomes simpler to the check for
any of these capabilities when providing the list of supported
modifiers.

This also allows distinguishing modifiers on future platforms where
platforms with the same display version support different modifiers. An
example is DG2 and ADLP, both being D13, where DG2 supports only F and X
tiling, while ADLP supports only Y and X tiling. With the
INTEL_PLANE_CAP_TILING_* flags added in this patch we can provide
the correct modifiers for each platform.

v2:
- Define PLANE_HAS_* with macros instead of an enum. (Jani)
- Rename PLANE_HAS_*_ANY to PLANE_HAS_*_MASK. (Jani)
- Rename PLANE_HAS_* to INTEL_PLANE_CAP_*.
- Set the CCS_RC_CC cap only for DISPLAY_VER >= 12.
- Set the TILING_Y cap only for DISPLAY_VER < 13 || ADLP.
- Simplify the SKL plane cap display version checks and move them
  to a separate function.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 88 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_fb.h       | 13 +--
 drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
 .../drm/i915/display/skl_universal_plane.c    | 33 +++++--
 6 files changed, 81 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index a939accff7ee2..2e16a66e8f9e7 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -860,7 +860,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 		plane->disable_flip_done = ilk_primary_disable_flip_done;
 	}
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING);
+	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_TILING_X);
 
 	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
 		ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 6b08d8bca5cd4..5ddd3c8fbc634 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -782,7 +782,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
 		cursor->cursor.size = ~0;
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_NO_CAPS);
+	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_NONE);
 
 	ret = drm_universal_plane_init(&dev_priv->drm, &cursor->base,
 				       0, &intel_cursor_plane_funcs,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 6b68f69940f0b..117e32fb3648e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -120,29 +120,29 @@ struct intel_modifier_desc {
 	.formats = format_list, \
 	.format_count = ARRAY_SIZE(format_list)
 
-	u8 tiling;
-	u8 is_linear:1;
+	u8 plane_caps;
 
 	struct {
-#define INTEL_CCS_RC		BIT(0)
-#define INTEL_CCS_RC_CC		BIT(1)
-#define INTEL_CCS_MC		BIT(2)
-
-#define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
-		u8 type:3;
 		u8 cc_planes:3;
 		u8 packed_aux_planes:4;
 		u8 planar_aux_planes:4;
 	} ccs;
 };
 
+#define INTEL_PLANE_CAP_CCS_MASK	(INTEL_PLANE_CAP_CCS_RC | \
+					 INTEL_PLANE_CAP_CCS_RC_CC | \
+					 INTEL_PLANE_CAP_CCS_MC)
+#define INTEL_PLANE_CAP_TILING_MASK	(INTEL_PLANE_CAP_TILING_X | \
+					 INTEL_PLANE_CAP_TILING_Y | \
+					 INTEL_PLANE_CAP_TILING_Yf)
+#define INTEL_PLANE_CAP_TILING_NONE	0
+
 static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
 		.display_ver = { 12, 13 },
-		.tiling = I915_TILING_Y,
+		.plane_caps = INTEL_PLANE_CAP_TILING_Y | INTEL_PLANE_CAP_CCS_MC,
 
-		.ccs.type = INTEL_CCS_MC,
 		.ccs.packed_aux_planes = BIT(1),
 		.ccs.planar_aux_planes = BIT(2) | BIT(3),
 
@@ -150,18 +150,16 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	}, {
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
 		.display_ver = { 12, 13 },
-		.tiling = I915_TILING_Y,
+		.plane_caps = INTEL_PLANE_CAP_TILING_Y | INTEL_PLANE_CAP_CCS_RC,
 
-		.ccs.type = INTEL_CCS_RC,
 		.ccs.packed_aux_planes = BIT(1),
 
 		FORMAT_OVERRIDE(gen12_ccs_formats),
 	}, {
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
 		.display_ver = { 12, 13 },
-		.tiling = I915_TILING_Y,
+		.plane_caps = INTEL_PLANE_CAP_TILING_Y | INTEL_PLANE_CAP_CCS_RC_CC,
 
-		.ccs.type = INTEL_CCS_RC_CC,
 		.ccs.cc_planes = BIT(2),
 		.ccs.packed_aux_planes = BIT(1),
 
@@ -169,39 +167,34 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	}, {
 		.modifier = I915_FORMAT_MOD_Yf_TILED_CCS,
 		.display_ver = { 9, 11 },
-		.tiling = I915_TILING_NONE,
+		.plane_caps = INTEL_PLANE_CAP_TILING_Yf | INTEL_PLANE_CAP_CCS_RC,
 
-		.ccs.type = INTEL_CCS_RC,
 		.ccs.packed_aux_planes = BIT(1),
 
 		FORMAT_OVERRIDE(skl_ccs_formats),
 	}, {
 		.modifier = I915_FORMAT_MOD_Y_TILED_CCS,
 		.display_ver = { 9, 11 },
-		.tiling = I915_TILING_Y,
+		.plane_caps = INTEL_PLANE_CAP_TILING_Y | INTEL_PLANE_CAP_CCS_RC,
 
-		.ccs.type = INTEL_CCS_RC,
 		.ccs.packed_aux_planes = BIT(1),
 
 		FORMAT_OVERRIDE(skl_ccs_formats),
 	}, {
 		.modifier = I915_FORMAT_MOD_Yf_TILED,
 		.display_ver = { 9, 11 },
-		.tiling = I915_TILING_NONE,
+		.plane_caps = INTEL_PLANE_CAP_TILING_Yf,
 	}, {
 		.modifier = I915_FORMAT_MOD_Y_TILED,
 		.display_ver = { 9, 13 },
-		.tiling = I915_TILING_Y,
+		.plane_caps = INTEL_PLANE_CAP_TILING_Y,
 	}, {
 		.modifier = I915_FORMAT_MOD_X_TILED,
 		.display_ver = DISPLAY_VER_ALL,
-		.tiling = I915_TILING_X,
+		.plane_caps = INTEL_PLANE_CAP_TILING_X,
 	}, {
 		.modifier = DRM_FORMAT_MOD_LINEAR,
 		.display_ver = DISPLAY_VER_ALL,
-		.tiling = I915_TILING_NONE,
-
-		.is_linear = true,
 	},
 };
 
@@ -259,9 +252,14 @@ intel_fb_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
 	return lookup_format_info(md->formats, md->format_count, cmd->pixel_format);
 }
 
-static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u8 ccs_type)
+static bool plane_caps_contain_any(u8 caps, u8 mask)
 {
-	return md->ccs.type & ccs_type;
+	return caps & mask;
+}
+
+static bool plane_caps_contain_all(u8 caps, u8 mask)
+{
+	return (caps & mask) == mask;
 }
 
 /**
@@ -274,7 +272,8 @@ static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u8 ccs_ty
  */
 bool intel_fb_is_ccs_modifier(u64 modifier)
 {
-	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_ANY);
+	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
+				      INTEL_PLANE_CAP_CCS_MASK);
 }
 
 /**
@@ -286,7 +285,8 @@ bool intel_fb_is_ccs_modifier(u64 modifier)
  */
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier)
 {
-	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_RC_CC);
+	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
+				      INTEL_PLANE_CAP_CCS_RC_CC);
 }
 
 /**
@@ -298,7 +298,8 @@ bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier)
  */
 bool intel_fb_is_mc_ccs_modifier(u64 modifier)
 {
-	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_MC);
+	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
+				      INTEL_PLANE_CAP_CCS_MC);
 }
 
 static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
@@ -315,16 +316,7 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
 		return false;
 
-	if (!md->is_linear &&
-	    !(plane_caps & PLANE_HAS_TILING))
-		return false;
-
-	if (is_ccs_type_modifier(md, INTEL_CCS_RC | INTEL_CCS_RC_CC) &&
-	    !(plane_caps & PLANE_HAS_CCS_RC))
-		return false;
-
-	if (is_ccs_type_modifier(md, INTEL_CCS_MC) &&
-	    !(plane_caps & PLANE_HAS_CCS_MC))
+	if (!plane_caps_contain_all(plane_caps, md->plane_caps))
 		return false;
 
 	return true;
@@ -392,7 +384,7 @@ static bool format_is_yuv_semiplanar(const struct intel_modifier_desc *md,
 	if (!info->is_yuv)
 		return false;
 
-	if (is_ccs_type_modifier(md, INTEL_CCS_ANY))
+	if (plane_caps_contain_any(md->plane_caps, INTEL_PLANE_CAP_CCS_MASK))
 		yuv_planes = 4;
 	else
 		yuv_planes = 2;
@@ -672,7 +664,21 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
 
 static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 {
-	return lookup_modifier(fb_modifier)->tiling;
+	u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
+			 INTEL_PLANE_CAP_TILING_MASK;
+
+	switch (tiling_caps) {
+	case INTEL_PLANE_CAP_TILING_Y:
+		return I915_TILING_Y;
+	case INTEL_PLANE_CAP_TILING_X:
+		return I915_TILING_X;
+	case INTEL_PLANE_CAP_TILING_Yf:
+	case INTEL_PLANE_CAP_TILING_NONE:
+		return I915_TILING_NONE;
+	default:
+		MISSING_CASE(tiling_caps);
+		return I915_TILING_NONE;
+	}
 }
 
 unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 19f46144474d8..b54997175d6da 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -20,12 +20,13 @@ struct intel_framebuffer;
 struct intel_plane;
 struct intel_plane_state;
 
-enum intel_plane_caps {
-	PLANE_HAS_NO_CAPS = 0,
-	PLANE_HAS_TILING = BIT(0),
-	PLANE_HAS_CCS_RC = BIT(1),
-	PLANE_HAS_CCS_MC = BIT(2),
-};
+#define INTEL_PLANE_CAP_NONE		0
+#define INTEL_PLANE_CAP_CCS_RC		BIT(0)
+#define INTEL_PLANE_CAP_CCS_RC_CC	BIT(1)
+#define INTEL_PLANE_CAP_CCS_MC		BIT(2)
+#define INTEL_PLANE_CAP_TILING_X	BIT(3)
+#define INTEL_PLANE_CAP_TILING_Y	BIT(4)
+#define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
 
 bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 2f4f47ab9da03..367515a70ac4c 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1810,7 +1810,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 	plane->id = PLANE_SPRITE0 + sprite;
 	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING);
+	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_TILING_X);
 
 	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
 				       0, plane_funcs,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 317108e009bba..ef7856db09f79 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2016,6 +2016,28 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 	return plane_id < PLANE_SPRITE4;
 }
 
+static u8 skl_get_plane_caps(struct drm_i915_private *i915,
+			     enum pipe pipe, enum plane_id plane_id)
+{
+	u8 caps = INTEL_PLANE_CAP_TILING_X;
+
+	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
+		caps |= INTEL_PLANE_CAP_TILING_Y;
+	if (DISPLAY_VER(i915) < 12)
+		caps |= INTEL_PLANE_CAP_TILING_Yf;
+
+	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
+		caps |= INTEL_PLANE_CAP_CCS_RC;
+		if (DISPLAY_VER(i915) >= 12)
+			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
+	}
+
+	if (gen12_plane_has_mc_ccs(i915, plane_id))
+		caps |= INTEL_PLANE_CAP_CCS_MC;
+
+	return caps;
+}
+
 struct intel_plane *
 skl_universal_plane_create(struct drm_i915_private *dev_priv,
 			   enum pipe pipe, enum plane_id plane_id)
@@ -2023,7 +2045,6 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	const struct drm_plane_funcs *plane_funcs;
 	struct intel_plane *plane;
 	enum drm_plane_type plane_type;
-	u8 plane_caps;
 	unsigned int supported_rotations;
 	unsigned int supported_csc;
 	const u64 *modifiers;
@@ -2095,14 +2116,8 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane_type = DRM_PLANE_TYPE_OVERLAY;
 
-	plane_caps = PLANE_HAS_TILING;
-	if (skl_plane_has_rc_ccs(dev_priv, pipe, plane_id))
-		plane_caps |= PLANE_HAS_CCS_RC;
-
-	if (gen12_plane_has_mc_ccs(dev_priv, plane_id))
-		plane_caps |= PLANE_HAS_CCS_MC;
-
-	modifiers = intel_fb_plane_get_modifiers(dev_priv, plane_caps);
+	modifiers = intel_fb_plane_get_modifiers(dev_priv,
+						 skl_get_plane_caps(dev_priv, pipe, plane_id));
 
 	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
 				       0, plane_funcs,
-- 
2.27.0

