Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAEA701F0D
	for <lists+intel-gfx@lfdr.de>; Sun, 14 May 2023 20:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002EB10E033;
	Sun, 14 May 2023 18:43:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2558710E033
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 May 2023 18:43:21 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-4f14468ef54so13686194e87.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 May 2023 11:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684089798; x=1686681798;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dU8ACWRJaUnk8nOdTJ6Z4fawgco5uenAqyfuq0VsCT8=;
 b=ov67bIDn/HYTbRq33wNEVsILyw8jSdkzBz04fd3ihcS7DbDNHVfmrFDO3DDfTpI3zI
 LINTOUtReXKubRBrM898OrI/KMEHZVx/RG/2E527EwdKHnMb4TE8vPOQ8/EWhnq42g/n
 WJkwiQ6vDrrnZgcGmE+O5teXBQTCot0y6dMTcnRJmRfCnRfG+e+w5H3ogUplzbDTZtLr
 aXGthkweQBXU3cRbpPHsMDCCXKPbFT5WjALx5VAQd3Fxm9RPyyRNod/cnXn5YLXpXuza
 CX3nv3hKXGsjFM839aqcIJOfQHaq2NBwqEZwoI5jpyuzTPqZson6mbuW7mU5SRfgEUIA
 rWzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684089798; x=1686681798;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dU8ACWRJaUnk8nOdTJ6Z4fawgco5uenAqyfuq0VsCT8=;
 b=eg6UF3hAwiYjmajGBcBxFictfl+ZZo65SJq/g++nFcKuanHhFwTxAlvu/EQ4C63sRx
 xObhfcM/LiOVQPvXqCk3aMhgSCj3J1OxYvMitt72LO4EGhBklDH1E/Jq+S9jVMEtLOpz
 lCO0N0Y8PYGNKWKsCobMtg9qa6WQYh8Kv8O1kG5rRFa4Hn4NBOaXxVhv3bMX25VBELJS
 DsmueCnIZeV/jqpyM8qPW7Qz/kl8hP19f7drtGNZSmlHsaqOETlbaElyaXIAHQ6WdBsK
 Ft/D5opmgVrBiat1bj9kSte529BjWkrk29S0Ahe6tRaZ5QJQJgx8o25uBcYYFumUG7T1
 PxBQ==
X-Gm-Message-State: AC+VfDxmD9xkmDAytYdCuB/uFxozXa8gHX9pERuxUzsJrST1U4Yl0Qj8
 IVWvCA75TFKXPk1HBzo7b87JLw1e2Y/Mxw==
X-Google-Smtp-Source: ACHHUZ5i9UBgLj3UaMoeVvZKFVJweoVQMrixDOsN9Pwvbrqn+EWYEUkxNMzsRmgxgVjFoqyAMqNrkg==
X-Received: by 2002:a19:f813:0:b0:4ec:a48a:28c0 with SMTP id
 a19-20020a19f813000000b004eca48a28c0mr5607250lff.25.1684089798227; 
 Sun, 14 May 2023 11:43:18 -0700 (PDT)
Received: from localhost.localdomain (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 g11-20020a19ac0b000000b004efd3c2b746sm2254332lfc.162.2023.05.14.11.43.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 May 2023 11:43:17 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 May 2023 21:42:40 +0300
Message-Id: <20230514184240.6184-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230514184240.6184-1-juhapekka.heikkila@gmail.com>
References: <20230514184240.6184-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add handling for MTL ccs
 modifiers
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

Add Tile4 ccs modifiers w/ auxbuffer handling

Implement Wa_14017240301

Bspec: 49251, 49252, 49253
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 42 ++++++++++++++++++-
 .../drm/i915/display/skl_universal_plane.c    | 22 +++++++++-
 2 files changed, 61 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c004f08fcfe1..0d27a98dcbbe 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -157,6 +157,32 @@ struct intel_modifier_desc {
 
 static const struct intel_modifier_desc intel_modifiers[] = {
 	{
+		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
+		.display_ver = { 14, 14 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
+
+		.ccs.packed_aux_planes = BIT(1),
+		.ccs.planar_aux_planes = BIT(2) | BIT(3),
+
+		FORMAT_OVERRIDE(gen12_ccs_formats),
+	}, {
+		.modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS,
+		.display_ver = { 14, 14 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
+
+		.ccs.packed_aux_planes = BIT(1),
+
+		FORMAT_OVERRIDE(gen12_ccs_formats),
+	}, {
+		.modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC,
+		.display_ver = { 14, 14 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC_CC,
+
+		.ccs.cc_planes = BIT(2),
+		.ccs.packed_aux_planes = BIT(1),
+
+		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
+	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
 		.display_ver = { 13, 13 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
@@ -370,6 +396,14 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	if (!plane_caps_contain_all(plane_caps, md->plane_caps))
 		return false;
 
+	/*
+	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
+	 * where supported.
+	 */
+	if (intel_fb_is_ccs_modifier(md->modifier) &&
+	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
+		return false;
+
 	return true;
 }
 
@@ -489,7 +523,7 @@ static bool intel_fb_is_gen12_ccs_aux_plane(const struct drm_framebuffer *fb, in
 {
 	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
 
-	return check_modifier_display_ver_range(md, 12, 13) &&
+	return check_modifier_display_ver_range(md, 12, 14) &&
 	       ccs_aux_plane_mask(md, fb->format) & BIT(color_plane);
 }
 
@@ -605,6 +639,9 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
 			return 128;
 		fallthrough;
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
@@ -791,6 +828,9 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
 		return 16 * 1024;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8ea0598a5a07..f6f760e59c9e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -789,6 +789,14 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 			PLANE_CTL_CLEAR_COLOR_DISABLE;
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
 		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
+		return PLANE_CTL_TILED_4 |
+			PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
+			PLANE_CTL_CLEAR_COLOR_DISABLE;
+	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
+		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
+	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
+		return PLANE_CTL_TILED_4 | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
@@ -2160,6 +2168,11 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
+	/* Wa_14017240301 */
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
+		return false;
+
 	/* Wa_22011186057 */
 	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
@@ -2441,12 +2454,17 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	case PLANE_CTL_TILED_Y:
 		plane_config->tiling = I915_TILING_Y;
 		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-			if (DISPLAY_VER(dev_priv) >= 12)
+			if (DISPLAY_VER(dev_priv) >= 14)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS;
+			else if (DISPLAY_VER(dev_priv) >= 12)
 				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
 			else
 				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
 		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
-			fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
+			if (DISPLAY_VER(dev_priv) >= 14)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS;
+			else
+				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
 		else
 			fb->modifier = I915_FORMAT_MOD_Y_TILED;
 		break;
-- 
2.25.1

