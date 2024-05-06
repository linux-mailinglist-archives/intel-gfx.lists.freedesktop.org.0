Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295B88BD4EE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 20:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9048112330;
	Mon,  6 May 2024 18:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y3bLmQmR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE34110F253;
 Mon,  6 May 2024 18:52:55 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id
 2adb3069b0e04-51f1e8eaee5so3569474e87.1; 
 Mon, 06 May 2024 11:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715021573; x=1715626373; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xeaPqsuCveAZqCPpRXP73BKzrGSBNna04Pd/8kyPoU4=;
 b=Y3bLmQmRmJDC6QBtnjtVjC9xoCxzI+9SO2Rhg0wp+cyIkEAFfIjhpblVk3ia+99+As
 2qkEqXWwFOq3RokPYiAWqtNvZ7l0PbFmIwbqkS9Z+vwYesSLWuK7gC5fFv35vfD2xwWE
 ERsKRTGfH67d7m2go5K/XM/EXMkkxjWzBLyptElc960WciPV3fBXUOh2Ax87dZ21rsJ9
 61QUZyquR0385ubO6lXuS3UcAF1gnVwbMoIBRsOarj/zIwSeWuXK1f99SB+N7sSfRC4X
 /HT++YmoO0uYmOHzS+Bz+Cj6RftgKD13scvjm8qthaenV3uG830w8ZS+AZzgGKsL8h1e
 VvsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715021573; x=1715626373;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xeaPqsuCveAZqCPpRXP73BKzrGSBNna04Pd/8kyPoU4=;
 b=OwZcrr+WRfU2CO1i2O0AJxRoZQC3VClnWTsg1VF03sdZRn/hvKQDt/awQXVn8pqE2F
 o9+QkdhgD9bnxYqZPHfF4KPemxj9fOg7cB5UTadRBaNZmLTGeAiTMmNkYO3KeyIB9+yR
 13jQNc983YPGPhFynHMKl1b47a3gVGsDqr6Q8+OY1sAzokWLEMNx5crUvEhWUCOAYeTO
 J2B62b+FMzOZiVdpzaGquLSy9G/Ow0x7m3KBmlyW9Z4dT8MRxF2/5LpJ54nN2MnyfN/J
 8DtbH8zOx+aKcQC3zLEhED5x+K5gttqzNFmgvNeuJ1D4wSI+2lK7utKxKo86H6OPjU8r
 C13Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUWJt0rrcg5jDag99FJ32TaTJDgF9TvmFlxBYoRTX5vXbUe1Khk3U+9YkDTSPB2ir2yWZxPDYdjkTKeopdTRpdgFb6tvNiOJtg9nvAk5WTR
X-Gm-Message-State: AOJu0YzxsHkhp2nrqiOR3rm/eHIzCXxc6/21yEuqbCnn83uDHN/5ZniL
 0Dv2EtV+H1F0uQ6cvUohiYGx7XHT7nEGPkDEYl55OTIxjPbwTy4VZBvF7JW/aUfCDA==
X-Google-Smtp-Source: AGHT+IEaOOjtyM9j5Mc0DnMRavCZ0N13P24Q7F0Jbxe19X6d7wPgU+aSu9+1F8N27CL65rioR6z5sw==
X-Received: by 2002:a19:640d:0:b0:51f:4a03:9775 with SMTP id
 2adb3069b0e04-5211086bd48mr116591e87.31.1715021573336; 
 Mon, 06 May 2024 11:52:53 -0700 (PDT)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 c11-20020a05651c014b00b002dcdeb98653sm1673945ljd.8.2024.05.06.11.52.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 May 2024 11:52:52 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 "Mathew, Alwin" <alwin.mathew@intel.com>,
 "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: [RFC PATCH 3/3] drm/i915/display: allow creation of case
 I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
Date: Mon,  6 May 2024 21:52:38 +0300
Message-Id: <20240506185238.364539-4-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
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

Add I915_FORMAT_MOD_4_TILED_XE2_CCS to possible created tiling for new framebuffer
on Xe driver.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 +++-
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef986b508431..083147a21edb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6150,6 +6150,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
 		case I915_FORMAT_MOD_4_TILED:
+		case I915_FORMAT_MOD_4_TILED_XE2_CCS:
 			break;
 		default:
 			drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index bf24f48a1e76..6a44746b8381 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -161,6 +161,10 @@ struct intel_modifier_desc {
 
 static const struct intel_modifier_desc intel_modifiers[] = {
 	{
+		.modifier = I915_FORMAT_MOD_4_TILED_XE2_CCS,
+		.display_ver = { 14, -1 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4,
+	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
 		.display_ver = { 14, 14 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
@@ -435,6 +439,10 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
 		return false;
 
+	if (md->modifier == I915_FORMAT_MOD_4_TILED_XE2_CCS &&
+	    GRAPHICS_VER(i915) < 20)
+		return false;
+
 	return true;
 }
 
@@ -657,6 +665,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 128;
 		else
 			return 512;
+	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
 	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
@@ -858,6 +867,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
 	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
 		return 16 * 1024;
+	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Yf_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED:
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 0a8e781a3648..e590fea1180a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -792,6 +792,7 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 	case I915_FORMAT_MOD_Y_TILED:
 		return PLANE_CTL_TILED_Y;
 	case I915_FORMAT_MOD_4_TILED:
+	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
 		return PLANE_CTL_TILED_4;
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
 		return PLANE_CTL_TILED_4 |
@@ -949,7 +950,8 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
 
 	if (GRAPHICS_VER(dev_priv) >= 20 &&
-	    fb->modifier == I915_FORMAT_MOD_4_TILED) {
+	    (fb->modifier == I915_FORMAT_MOD_4_TILED ||
+	     fb->modifier == I915_FORMAT_MOD_4_TILED_XE2_CCS)) {
 		plane_ctl |= PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
 	}
 
-- 
2.43.2

