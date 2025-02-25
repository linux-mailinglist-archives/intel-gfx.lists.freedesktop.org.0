Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CBEA446D7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:50:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE3310E763;
	Tue, 25 Feb 2025 16:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KA9z//Th";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852A810E793;
 Tue, 25 Feb 2025 16:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502203; x=1772038203;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jeiv7iFK/lkrt6pYgjndA7ID9xdJjfLA+bp0qrh9I4s=;
 b=KA9z//ThDI4z/0dt3gnOTgaRZqMUrKge4qN0y8RXOHG0hbPreHvgMM2C
 kZbWzwJx7uSFfhPcicT25w3YTxBki0POdxRfTe03zNa/My3jABfF/fv9t
 1FLV5iJ0GwmwVu4ddZAwr2XLXOhJ3oJS1ziRjPBmWx43+IT2UyYXogWbn
 /+u3PXutYtp/1CP2fGSh4VYt08VCYwYVtL1YRw8FuCgSV39QBSltNMSja
 beRIJt62ytP90QtPVPOW6XU5OCUBhoeOKAbeDEqHkognW7VsG05iIE50o
 fTHGlpiC6Zg6geQ00pXxQPCl14+vU0bmCzMh7xEall2Hfwky8+r+sFdg2 A==;
X-CSE-ConnectionGUID: tY8ROeFUSuiP9iclhS+6BA==
X-CSE-MsgGUID: uoNDTAboRyKxXmtPhtz0Gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52741769"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52741769"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:50:02 -0800
X-CSE-ConnectionGUID: Fx60KiaOQrmQYknYmlRJZA==
X-CSE-MsgGUID: 7qBOMqUtRCG7IROcZYt1ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121691861"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:50:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/12] drm/i915/fbc: convert intel_fbc.[ch] to struct
 intel_display
Date: Tue, 25 Feb 2025 18:49:10 +0200
Message-Id: <4dfd7d62e99b75d26563bdf29f541ed2ffbe548e.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_fbc.[ch] to struct
intel_display. In a few places, change the variable declaration order to
prefer having display first.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 113 +++++++-----------
 drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   5 +-
 3 files changed, 51 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index df05904bac8a..33142427f121 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -215,11 +215,9 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
  */
 static unsigned int intel_fbc_max_cfb_height(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 8)
 		return 2560;
-	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
+	else if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		return 2048;
 	else
 		return 1536;
@@ -269,9 +267,8 @@ static bool intel_fbc_has_fences(struct intel_display *display)
 
 static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	unsigned int cfb_stride;
 	u32 fbc_ctl;
 
@@ -287,7 +284,7 @@ static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 		FBC_CTL_INTERVAL(fbc_state->interval) |
 		FBC_CTL_STRIDE(cfb_stride);
 
-	if (IS_I945GM(i915))
+	if (display->platform.i945gm)
 		fbc_ctl |= FBC_CTL_C3_IDLE; /* 945 needs special SR handling */
 
 	if (fbc_state->fence_id >= 0)
@@ -333,8 +330,8 @@ static void i8xx_fbc_deactivate(struct intel_fbc *fbc)
 
 static void i8xx_fbc_activate(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	int i;
 
 	/* Clear old tags */
@@ -365,12 +362,12 @@ static bool i8xx_fbc_is_compressing(struct intel_fbc *fbc)
 
 static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 {
+	struct intel_display *display = fbc->display;
 	struct intel_fbc_state *fbc_state = &fbc->state;
 	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
-	struct drm_i915_private *dev_priv = to_i915(fbc->display->drm);
 
-	intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane),
-			  intel_de_read_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane)));
+	intel_de_write_fw(display, DSPADDR(display, i9xx_plane),
+			  intel_de_read_fw(display, DSPADDR(display, i9xx_plane)));
 }
 
 static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
@@ -386,9 +383,9 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
 					  i915_gem_stolen_node_offset(&fbc->compressed_llb),
 					  U32_MAX));
-	intel_de_write(i915, FBC_CFB_BASE,
+	intel_de_write(display, FBC_CFB_BASE,
 		       i915_gem_stolen_node_address(i915, &fbc->compressed_fb));
-	intel_de_write(i915, FBC_LL_BASE,
+	intel_de_write(display, FBC_LL_BASE,
 		       i915_gem_stolen_node_address(i915, &fbc->compressed_llb));
 }
 
@@ -403,12 +400,12 @@ static const struct intel_fbc_funcs i8xx_fbc_funcs = {
 
 static void i965_fbc_nuke(struct intel_fbc *fbc)
 {
+	struct intel_display *display = fbc->display;
 	struct intel_fbc_state *fbc_state = &fbc->state;
 	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
-	struct drm_i915_private *dev_priv = to_i915(fbc->display->drm);
 
-	intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane),
-			  intel_de_read_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane)));
+	intel_de_write_fw(display, DSPSURF(display, i9xx_plane),
+			  intel_de_read_fw(display, DSPSURF(display, i9xx_plane)));
 }
 
 static const struct intel_fbc_funcs i965_fbc_funcs = {
@@ -437,15 +434,14 @@ static u32 g4x_dpfc_ctl_limit(struct intel_fbc *fbc)
 
 static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	u32 dpfc_ctl;
 
 	dpfc_ctl = g4x_dpfc_ctl_limit(fbc) |
 		DPFC_CTL_PLANE_G4X(fbc_state->plane->i9xx_plane);
 
-	if (IS_G4X(i915))
+	if (display->platform.g4x)
 		dpfc_ctl |= DPFC_CTL_SR_EN;
 
 	if (fbc_state->fence_id >= 0) {
@@ -460,8 +456,8 @@ static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
 
 static void g4x_fbc_activate(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 
 	intel_de_write(display, DPFC_FENCE_YOFF,
 		       fbc_state->fence_y_offset);
@@ -512,8 +508,8 @@ static const struct intel_fbc_funcs g4x_fbc_funcs = {
 
 static void ilk_fbc_activate(struct intel_fbc *fbc)
 {
-	struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
+	struct intel_fbc_state *fbc_state = &fbc->state;
 
 	intel_de_write(display, ILK_DPFC_FENCE_YOFF(fbc->id),
 		       fbc_state->fence_y_offset);
@@ -564,8 +560,8 @@ static const struct intel_fbc_funcs ilk_fbc_funcs = {
 
 static void snb_fbc_program_fence(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	u32 ctl = 0;
 
 	if (fbc_state->fence_id >= 0)
@@ -601,8 +597,8 @@ static const struct intel_fbc_funcs snb_fbc_funcs = {
 
 static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	u32 val = 0;
 
 	if (fbc_state->override_cfb_stride)
@@ -614,8 +610,8 @@ static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
 
 static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	u32 val = 0;
 
 	/* Display WA #0529: skl, kbl, bxt. */
@@ -630,14 +626,13 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
 
 static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 {
-	const struct intel_fbc_state *fbc_state = &fbc->state;
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	const struct intel_fbc_state *fbc_state = &fbc->state;
 	u32 dpfc_ctl;
 
 	dpfc_ctl = g4x_dpfc_ctl_limit(fbc);
 
-	if (IS_IVYBRIDGE(i915))
+	if (display->platform.ivybridge)
 		dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
 
 	if (DISPLAY_VER(display) >= 20)
@@ -759,9 +754,7 @@ static void intel_fbc_deactivate(struct intel_fbc *fbc, const char *reason)
 
 static u64 intel_fbc_cfb_base_max(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
+	if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		return BIT_ULL(28);
 	else
 		return BIT_ULL(32);
@@ -776,8 +769,8 @@ static u64 intel_fbc_stolen_end(struct intel_display *display)
 	 * reserved range size, so it always assumes the maximum (8mb) is used.
 	 * If we enable FBC using a CFB on that memory range we'll get FIFO
 	 * underruns, even if that range is not reserved by the BIOS. */
-	if (IS_BROADWELL(i915) ||
-	    (DISPLAY_VER(display) == 9 && !IS_BROXTON(i915)))
+	if (display->platform.broadwell ||
+	    (DISPLAY_VER(display) == 9 && !display->platform.broxton))
 		end = i915_gem_stolen_area_size(i915) - 8 * 1024 * 1024;
 	else
 		end = U64_MAX;
@@ -792,10 +785,8 @@ static int intel_fbc_min_limit(const struct intel_plane_state *plane_state)
 
 static int intel_fbc_max_limit(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	/* WaFbcOnly1to1Ratio:ctg */
-	if (IS_G4X(i915))
+	if (display->platform.g4x)
 		return 1;
 
 	/*
@@ -843,7 +834,7 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
 	drm_WARN_ON(display->drm,
 		    i915_gem_stolen_node_allocated(&fbc->compressed_llb));
 
-	if (DISPLAY_VER(display) < 5 && !IS_G4X(i915)) {
+	if (DISPLAY_VER(display) < 5 && !display->platform.g4x) {
 		ret = i915_gem_stolen_insert_node(i915, &fbc->compressed_llb,
 						  4096, 4096);
 		if (ret)
@@ -882,9 +873,8 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
 static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	if (IS_SKYLAKE(i915) || IS_BROXTON(i915)) {
+	if (display->platform.skylake || display->platform.broxton) {
 		/*
 		 * WaFbcHighMemBwCorruptionAvoidance:skl,bxt
 		 * Display WA #0883: skl,bxt
@@ -893,8 +883,8 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 			     0, DPFC_DISABLE_DUMMY0);
 	}
 
-	if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) ||
-	    IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
+	if (display->platform.skylake || display->platform.kabylake ||
+	    display->platform.coffeelake || display->platform.cometlake) {
 		/*
 		 * WaFbcNukeOnHostModify:skl,kbl,cfl
 		 * Display WA #0873: skl,kbl,cfl
@@ -909,7 +899,7 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
-	if (DISPLAY_VER(display) >= 11 && !IS_DG2(i915))
+	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
 }
@@ -986,13 +976,12 @@ static bool icl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
 static bool stride_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (DISPLAY_VER(display) >= 11)
 		return icl_fbc_stride_is_valid(plane_state);
 	else if (DISPLAY_VER(display) >= 9)
 		return skl_fbc_stride_is_valid(plane_state);
-	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
+	else if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		return g4x_fbc_stride_is_valid(plane_state);
 	else if (DISPLAY_VER(display) == 4)
 		return i965_fbc_stride_is_valid(plane_state);
@@ -1023,7 +1012,6 @@ static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane
 static bool g4x_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	switch (fb->format->format) {
@@ -1032,7 +1020,7 @@ static bool g4x_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_
 		return true;
 	case DRM_FORMAT_RGB565:
 		/* WaFbcOnly1to1Ratio:ctg */
-		if (IS_G4X(i915))
+		if (display->platform.g4x)
 			return false;
 		return true;
 	default:
@@ -1059,11 +1047,10 @@ static bool lnl_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_
 static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (DISPLAY_VER(display) >= 20)
 		return lnl_fbc_pixel_format_is_valid(plane_state);
-	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
+	else if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		return g4x_fbc_pixel_format_is_valid(plane_state);
 	else
 		return i8xx_fbc_pixel_format_is_valid(plane_state);
@@ -1094,11 +1081,10 @@ static bool skl_fbc_rotation_is_valid(const struct intel_plane_state *plane_stat
 static bool rotation_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (DISPLAY_VER(display) >= 9)
 		return skl_fbc_rotation_is_valid(plane_state);
-	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
+	else if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		return g4x_fbc_rotation_is_valid(plane_state);
 	else
 		return i8xx_fbc_rotation_is_valid(plane_state);
@@ -1107,8 +1093,6 @@ static bool rotation_is_valid(const struct intel_plane_state *plane_state)
 static void intel_fbc_max_surface_size(struct intel_display *display,
 				       unsigned int *w, unsigned int *h)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 11) {
 		*w = 8192;
 		*h = 4096;
@@ -1118,7 +1102,7 @@ static void intel_fbc_max_surface_size(struct intel_display *display,
 	} else if (DISPLAY_VER(display) >= 7) {
 		*w = 4096;
 		*h = 4096;
-	} else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915)) {
+	} else if (DISPLAY_VER(display) >= 5 || display->platform.g4x) {
 		*w = 4096;
 		*h = 2048;
 	} else {
@@ -1151,15 +1135,13 @@ static bool intel_fbc_surface_size_ok(const struct intel_plane_state *plane_stat
 static void intel_fbc_max_plane_size(struct intel_display *display,
 				     unsigned int *w, unsigned int *h)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 10) {
 		*w = 5120;
 		*h = 4096;
-	} else if (DISPLAY_VER(display) >= 8 || IS_HASWELL(i915)) {
+	} else if (DISPLAY_VER(display) >= 8 || display->platform.haswell) {
 		*w = 4096;
 		*h = 4096;
-	} else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915)) {
+	} else if (DISPLAY_VER(display) >= 5 || display->platform.g4x) {
 		*w = 4096;
 		*h = 2048;
 	} else {
@@ -1317,7 +1299,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	}
 
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
-	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
+	if (i915_vtd_active(i915) && (display->platform.skylake || display->platform.broxton)) {
 		plane_state->no_fbc_reason = "VT-d enabled";
 		return 0;
 	}
@@ -1347,7 +1329,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(display, 12, 13) ||
-	     IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0)) &&
+	     IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0)) &&
 	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
@@ -1410,7 +1392,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	}
 
 	/* WaFbcExceedCdClockThreshold:hsw,bdw */
-	if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
+	if (display->platform.haswell || display->platform.broadwell) {
 		const struct intel_cdclk_state *cdclk_state;
 
 		cdclk_state = intel_atomic_get_cdclk_state(state);
@@ -1614,14 +1596,14 @@ static void __intel_fbc_invalidate(struct intel_fbc *fbc,
 	mutex_unlock(&fbc->lock);
 }
 
-void intel_fbc_invalidate(struct drm_i915_private *i915,
+void intel_fbc_invalidate(struct intel_display *display,
 			  unsigned int frontbuffer_bits,
 			  enum fb_op_origin origin)
 {
 	struct intel_fbc *fbc;
 	enum intel_fbc_id fbc_id;
 
-	for_each_intel_fbc(&i915->display, fbc, fbc_id)
+	for_each_intel_fbc(display, fbc, fbc_id)
 		__intel_fbc_invalidate(fbc, frontbuffer_bits, origin);
 
 }
@@ -1653,14 +1635,14 @@ static void __intel_fbc_flush(struct intel_fbc *fbc,
 	mutex_unlock(&fbc->lock);
 }
 
-void intel_fbc_flush(struct drm_i915_private *i915,
+void intel_fbc_flush(struct intel_display *display,
 		     unsigned int frontbuffer_bits,
 		     enum fb_op_origin origin)
 {
 	struct intel_fbc *fbc;
 	enum intel_fbc_id fbc_id;
 
-	for_each_intel_fbc(&i915->display, fbc, fbc_id)
+	for_each_intel_fbc(display, fbc, fbc_id)
 		__intel_fbc_flush(fbc, frontbuffer_bits, origin);
 }
 
@@ -1897,15 +1879,13 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display)
  */
 static int intel_sanitize_fbc_option(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (display->params.enable_fbc >= 0)
 		return !!display->params.enable_fbc;
 
 	if (!HAS_FBC(display))
 		return 0;
 
-	if (IS_BROADWELL(i915) || DISPLAY_VER(display) >= 9)
+	if (display->platform.broadwell || DISPLAY_VER(display) >= 9)
 		return 1;
 
 	return 0;
@@ -1919,7 +1899,6 @@ void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
 static struct intel_fbc *intel_fbc_create(struct intel_display *display,
 					  enum intel_fbc_id fbc_id)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_fbc *fbc;
 
 	fbc = kzalloc(sizeof(*fbc), GFP_KERNEL);
@@ -1937,7 +1916,7 @@ static struct intel_fbc *intel_fbc_create(struct intel_display *display,
 		fbc->funcs = &snb_fbc_funcs;
 	else if (DISPLAY_VER(display) == 5)
 		fbc->funcs = &ilk_fbc_funcs;
-	else if (IS_G4X(i915))
+	else if (display->platform.g4x)
 		fbc->funcs = &g4x_fbc_funcs;
 	else if (DISPLAY_VER(display) == 4)
 		fbc->funcs = &i965_fbc_funcs;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index ceae55458e14..df20e63d6102 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -9,11 +9,11 @@
 #include <linux/types.h>
 
 enum fb_op_origin;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
+struct intel_display;
 struct intel_fbc;
 struct intel_plane;
 struct intel_plane_state;
@@ -38,10 +38,10 @@ void intel_fbc_sanitize(struct intel_display *display);
 void intel_fbc_update(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc);
 void intel_fbc_disable(struct intel_crtc *crtc);
-void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
+void intel_fbc_invalidate(struct intel_display *display,
 			  unsigned int frontbuffer_bits,
 			  enum fb_op_origin origin);
-void intel_fbc_flush(struct drm_i915_private *dev_priv,
+void intel_fbc_flush(struct intel_display *display,
 		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
 void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
 void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 89a145b3194c..f023f5a4dba6 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -101,7 +101,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 	intel_td_flush(display);
 	intel_drrs_flush(display, frontbuffer_bits);
 	intel_psr_flush(display, frontbuffer_bits, origin);
-	intel_fbc_flush(i915, frontbuffer_bits, origin);
+	intel_fbc_flush(display, frontbuffer_bits, origin);
 }
 
 /**
@@ -176,7 +176,6 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 			   unsigned int frontbuffer_bits)
 {
 	struct intel_display *display = to_intel_display(front->obj->dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&display->fb_tracking.lock);
@@ -190,7 +189,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 	might_sleep();
 	intel_psr_invalidate(display, frontbuffer_bits, origin);
 	intel_drrs_invalidate(display, frontbuffer_bits);
-	intel_fbc_invalidate(i915, frontbuffer_bits, origin);
+	intel_fbc_invalidate(display, frontbuffer_bits, origin);
 }
 
 void __intel_fb_flush(struct intel_frontbuffer *front,
-- 
2.39.5

