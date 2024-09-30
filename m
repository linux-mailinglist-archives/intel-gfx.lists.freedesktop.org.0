Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB61198AA98
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C86610E567;
	Mon, 30 Sep 2024 17:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YgDvjKVb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B60C10E56B;
 Mon, 30 Sep 2024 17:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715898; x=1759251898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b3eJpKa7/ysVjG02gULReMOCTtWWaUrU8kxLl9wPkLk=;
 b=YgDvjKVbxy09NygBiDeE56Yd7GVmGkHEHj/p70ZpidNL050jfKxcDK5K
 saldLK3cfw7xvLUcv+RVaYN532teaxYLEE4ctPy+ioH/gylYRrhuN3/pn
 Gi9x0CrWxk2zA9Ajkbdw+dN+5hxiIwrVLQ/LRwmWwyOymEzoGmzxOyL3c
 Un9plWgE43GPaiGB6BaKbjX5lPchg3riPKeXZsfa/HJg5Sb11Kdyr1Jbp
 Hsd4sDXVRD87JttFF46ppx0yzyZeLVgtZORC6XxTMgBTUXi9gOYA2wL4q
 wRb28HDkUe4EjYgA6+LoD2zBWj11ONgK7rggfWrt4m31j0JviZ6S2rTIm g==;
X-CSE-ConnectionGUID: C79lyIXnSJ6BwxenfmAtAA==
X-CSE-MsgGUID: IsxS44hIRNqOMO9Pw9LfSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44277037"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44277037"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:58 -0700
X-CSE-ConnectionGUID: bsA6T4gBTpuMV0+Vm2lDDA==
X-CSE-MsgGUID: P7ExRYkYShiitjME4AYfAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73491014"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 12/13] drm/i915: Plumb 'dsb' all way to the color commit
 hooks
Date: Mon, 30 Sep 2024 20:04:14 +0300
Message-ID: <20240930170415.23841-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

Pass the 'dsb' all the way down to the color commit hooks so that
we'll be able to update the double buffered color management registers
(eg. CSC) via the DSB.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 180 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_color.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_modeset_setup.c    |   4 +-
 4 files changed, 111 insertions(+), 84 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 6175a8e31302..4df580019560 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -39,7 +39,8 @@ struct intel_color_funcs {
 	 * the next vblank start, alongside any other double buffered
 	 * registers involved with the same commit. This hook is optional.
 	 */
-	void (*color_commit_noarm)(const struct intel_crtc_state *crtc_state);
+	void (*color_commit_noarm)(struct intel_dsb *dsb,
+				   const struct intel_crtc_state *crtc_state);
 	/*
 	 * Program arming double buffered color management registers
 	 * during vblank evasion. The registers (and whatever other registers
@@ -47,7 +48,8 @@ struct intel_color_funcs {
 	 * during the next vblank start, alongside any other double buffered
 	 * registers involved with the same commit.
 	 */
-	void (*color_commit_arm)(const struct intel_crtc_state *crtc_state);
+	void (*color_commit_arm)(struct intel_dsb *dsb,
+				 const struct intel_crtc_state *crtc_state);
 	/*
 	 * Perform any extra tasks needed after all the
 	 * double buffered registers have been latched.
@@ -205,37 +207,44 @@ static u64 *ctm_mult_by_limited(u64 *result, const u64 *input)
 	return result;
 }
 
-static void ilk_update_pipe_csc(struct intel_crtc *crtc,
+static void ilk_update_pipe_csc(struct intel_dsb *dsb,
+				struct intel_crtc *crtc,
 				const struct intel_csc_matrix *csc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(i915, PIPE_CSC_PREOFF_HI(pipe), csc->preoff[0]);
-	intel_de_write_fw(i915, PIPE_CSC_PREOFF_ME(pipe), csc->preoff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_PREOFF_LO(pipe), csc->preoff[2]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_PREOFF_HI(pipe),
+			   csc->preoff[0]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_PREOFF_ME(pipe),
+			   csc->preoff[1]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_PREOFF_LO(pipe),
+			   csc->preoff[2]);
 
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_RY_GY(pipe),
-			  csc->coeff[0] << 16 | csc->coeff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_BY(pipe),
-			  csc->coeff[2] << 16);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_COEFF_RY_GY(pipe),
+			   csc->coeff[0] << 16 | csc->coeff[1]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_COEFF_BY(pipe),
+			   csc->coeff[2] << 16);
 
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_RU_GU(pipe),
-			  csc->coeff[3] << 16 | csc->coeff[4]);
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_BU(pipe),
-			  csc->coeff[5] << 16);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_COEFF_RU_GU(pipe),
+			   csc->coeff[3] << 16 | csc->coeff[4]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_COEFF_BU(pipe),
+			   csc->coeff[5] << 16);
 
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_RV_GV(pipe),
-			  csc->coeff[6] << 16 | csc->coeff[7]);
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_BV(pipe),
-			  csc->coeff[8] << 16);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_COEFF_RV_GV(pipe),
+			   csc->coeff[6] << 16 | csc->coeff[7]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_COEFF_BV(pipe),
+			   csc->coeff[8] << 16);
 
-	if (DISPLAY_VER(i915) < 7)
+	if (DISPLAY_VER(display) < 7)
 		return;
 
-	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_HI(pipe), csc->postoff[0]);
-	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_ME(pipe), csc->postoff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe), csc->postoff[2]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_POSTOFF_HI(pipe),
+			   csc->postoff[0]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_POSTOFF_ME(pipe),
+			   csc->postoff[1]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_POSTOFF_LO(pipe),
+			   csc->postoff[2]);
 }
 
 static void ilk_read_pipe_csc(struct intel_crtc *crtc,
@@ -304,34 +313,41 @@ static void skl_read_csc(struct intel_crtc_state *crtc_state)
 		ilk_read_pipe_csc(crtc, &crtc_state->csc);
 }
 
-static void icl_update_output_csc(struct intel_crtc *crtc,
+static void icl_update_output_csc(struct intel_dsb *dsb,
+				  struct intel_crtc *crtc,
 				  const struct intel_csc_matrix *csc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), csc->preoff[0]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), csc->preoff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), csc->preoff[2]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_PREOFF_HI(pipe),
+			   csc->preoff[0]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_PREOFF_ME(pipe),
+			   csc->preoff[1]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_PREOFF_LO(pipe),
+			   csc->preoff[2]);
 
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
-			  csc->coeff[0] << 16 | csc->coeff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
-			  csc->coeff[2] << 16);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
+			   csc->coeff[0] << 16 | csc->coeff[1]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
+			   csc->coeff[2] << 16);
 
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
-			  csc->coeff[3] << 16 | csc->coeff[4]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
-			  csc->coeff[5] << 16);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
+			   csc->coeff[3] << 16 | csc->coeff[4]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
+			   csc->coeff[5] << 16);
 
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
-			  csc->coeff[6] << 16 | csc->coeff[7]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
-			  csc->coeff[8] << 16);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
+			   csc->coeff[6] << 16 | csc->coeff[7]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
+			   csc->coeff[8] << 16);
 
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), csc->postoff[0]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), csc->postoff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), csc->postoff[2]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe),
+			   csc->postoff[0]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe),
+			   csc->postoff[1]);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe),
+			   csc->postoff[2]);
 }
 
 static void icl_read_output_csc(struct intel_crtc *crtc,
@@ -526,12 +542,13 @@ static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
+static void ilk_load_csc_matrix(struct intel_dsb *dsb,
+				const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (crtc_state->csc_enable)
-		ilk_update_pipe_csc(crtc, &crtc_state->csc);
+		ilk_update_pipe_csc(dsb, crtc, &crtc_state->csc);
 }
 
 static void icl_assign_csc(struct intel_crtc_state *crtc_state)
@@ -563,15 +580,16 @@ static void icl_assign_csc(struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
+static void icl_load_csc_matrix(struct intel_dsb *dsb,
+				const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (crtc_state->csc_mode & ICL_CSC_ENABLE)
-		ilk_update_pipe_csc(crtc, &crtc_state->csc);
+		ilk_update_pipe_csc(dsb, crtc, &crtc_state->csc);
 
 	if (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE)
-		icl_update_output_csc(crtc, &crtc_state->output_csc);
+		icl_update_output_csc(dsb, crtc, &crtc_state->output_csc);
 }
 
 static u16 ctm_to_twos_complement(u64 coeff, int int_bits, int frac_bits)
@@ -953,7 +971,8 @@ static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 		REG_FIELD_GET(PREC_PALETTE_12P4_BLUE_LDW_MASK, ldw);
 }
 
-static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
+static void icl_color_commit_noarm(struct intel_dsb *dsb,
+				   const struct intel_crtc_state *crtc_state)
 {
 	/*
 	 * Despite Wa_1406463849, ICL no longer suffers from the SKL
@@ -963,10 +982,11 @@ static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 	 *
 	 * On TGL+ all CSC arming issues have been properly fixed.
 	 */
-	icl_load_csc_matrix(crtc_state);
+	icl_load_csc_matrix(dsb, crtc_state);
 }
 
-static void skl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
+static void skl_color_commit_noarm(struct intel_dsb *dsb,
+				   const struct intel_crtc_state *crtc_state)
 {
 	/*
 	 * Possibly related to display WA #1184, SKL CSC loses the latched
@@ -979,21 +999,24 @@ static void skl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 	 * which is called after PSR exit.
 	 */
 	if (!crtc_state->has_psr)
-		ilk_load_csc_matrix(crtc_state);
+		ilk_load_csc_matrix(dsb, crtc_state);
 }
 
-static void ilk_color_commit_noarm(const struct intel_crtc_state *crtc_state)
+static void ilk_color_commit_noarm(struct intel_dsb *dsb,
+				   const struct intel_crtc_state *crtc_state)
 {
-	ilk_load_csc_matrix(crtc_state);
+	ilk_load_csc_matrix(dsb, crtc_state);
 }
 
-static void i9xx_color_commit_arm(const struct intel_crtc_state *crtc_state)
+static void i9xx_color_commit_arm(struct intel_dsb *dsb,
+				  const struct intel_crtc_state *crtc_state)
 {
 	/* update TRANSCONF GAMMA_MODE */
 	i9xx_set_pipeconf(crtc_state);
 }
 
-static void ilk_color_commit_arm(const struct intel_crtc_state *crtc_state)
+static void ilk_color_commit_arm(struct intel_dsb *dsb,
+				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -1005,7 +1028,8 @@ static void ilk_color_commit_arm(const struct intel_crtc_state *crtc_state)
 			  crtc_state->csc_mode);
 }
 
-static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
+static void hsw_color_commit_arm(struct intel_dsb *dsb,
+				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -1076,15 +1100,16 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->csc_enable = true;
 }
 
-static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
+static void skl_color_commit_arm(struct intel_dsb *dsb,
+				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 val = 0;
 
 	if (crtc_state->has_psr)
-		ilk_load_csc_matrix(crtc_state);
+		ilk_load_csc_matrix(dsb, crtc_state);
 
 	/*
 	 * We don't (yet) allow userspace to control the pipe background color,
@@ -1095,32 +1120,29 @@ static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 		val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
 	if (crtc_state->csc_enable)
 		val |= SKL_BOTTOM_COLOR_CSC_ENABLE;
-	intel_de_write(i915, SKL_BOTTOM_COLOR(pipe), val);
+	intel_de_write_dsb(display, dsb, SKL_BOTTOM_COLOR(pipe), val);
 
-	intel_de_write(i915, GAMMA_MODE(crtc->pipe),
-		       crtc_state->gamma_mode);
+	intel_de_write_dsb(display, dsb, GAMMA_MODE(crtc->pipe), crtc_state->gamma_mode);
 
-	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
-			  crtc_state->csc_mode);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_MODE(crtc->pipe), crtc_state->csc_mode);
 }
 
-static void icl_color_commit_arm(const struct intel_crtc_state *crtc_state)
+static void icl_color_commit_arm(struct intel_dsb *dsb,
+				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	/*
 	 * We don't (yet) allow userspace to control the pipe background color,
 	 * so force it to black.
 	 */
-	intel_de_write(i915, SKL_BOTTOM_COLOR(pipe), 0);
+	intel_de_write_dsb(display, dsb, SKL_BOTTOM_COLOR(pipe), 0);
 
-	intel_de_write(i915, GAMMA_MODE(crtc->pipe),
-		       crtc_state->gamma_mode);
+	intel_de_write_dsb(display, dsb, GAMMA_MODE(crtc->pipe), crtc_state->gamma_mode);
 
-	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
-			  crtc_state->csc_mode);
+	intel_de_write_dsb(display, dsb, PIPE_CSC_MODE(crtc->pipe), crtc_state->csc_mode);
 }
 
 static void icl_color_post_update(const struct intel_crtc_state *crtc_state)
@@ -1876,19 +1898,21 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 	i915->display.funcs.color->load_luts(crtc_state);
 }
 
-void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state)
+void intel_color_commit_noarm(struct intel_dsb *dsb,
+			      const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (i915->display.funcs.color->color_commit_noarm)
-		i915->display.funcs.color->color_commit_noarm(crtc_state);
+		i915->display.funcs.color->color_commit_noarm(dsb, crtc_state);
 }
 
-void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
+void intel_color_commit_arm(struct intel_dsb *dsb,
+			    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	i915->display.funcs.color->color_commit_arm(crtc_state);
+	i915->display.funcs.color->color_commit_arm(dsb, crtc_state);
 
 	if (crtc_state->dsb_color_commit)
 		intel_dsb_commit(crtc_state->dsb_color_commit, false);
@@ -1907,8 +1931,8 @@ void intel_color_modeset(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 
 	intel_color_load_luts(crtc_state);
-	intel_color_commit_noarm(crtc_state);
-	intel_color_commit_arm(crtc_state);
+	intel_color_commit_noarm(NULL, crtc_state);
+	intel_color_commit_arm(NULL, crtc_state);
 
 	if (DISPLAY_VER(display) < 9) {
 		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index ab3aaec06a2a..ba493f381031 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -11,6 +11,7 @@
 struct intel_atomic_state;
 struct intel_crtc_state;
 struct intel_crtc;
+struct intel_dsb;
 struct drm_i915_private;
 struct drm_property_blob;
 
@@ -24,8 +25,10 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);
 bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state);
 void intel_color_wait_commit(const struct intel_crtc_state *crtc_state);
-void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
-void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
+void intel_color_commit_noarm(struct intel_dsb *dsb,
+			      const struct intel_crtc_state *crtc_state);
+void intel_color_commit_arm(struct intel_dsb *dsb,
+			    const struct intel_crtc_state *crtc_state);
 void intel_color_post_update(const struct intel_crtc_state *crtc_state);
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
 void intel_color_modeset(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cf7dbff2998e..dac70db2a6ad 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6861,7 +6861,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 	 */
 	if (!modeset) {
 		if (intel_crtc_needs_color_update(new_crtc_state))
-			intel_color_commit_arm(new_crtc_state);
+			intel_color_commit_arm(NULL, new_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 			bdw_set_pipe_misc(NULL, new_crtc_state);
@@ -6962,7 +6962,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state))
-		intel_color_commit_noarm(new_crtc_state);
+		intel_color_commit_noarm(NULL, new_crtc_state);
 
 	intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index bcc5cf137a88..2c8668b1ebae 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -493,8 +493,8 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 		}
 
 		/* Disable any background color/etc. set by the BIOS */
-		intel_color_commit_noarm(crtc_state);
-		intel_color_commit_arm(crtc_state);
+		intel_color_commit_noarm(NULL, crtc_state);
+		intel_color_commit_arm(NULL, crtc_state);
 	}
 
 	if (!crtc_state->hw.active ||
-- 
2.45.2

