Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 535AD96893D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29BF10E2FD;
	Mon,  2 Sep 2024 13:55:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GuxIUQVt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8260F10E2FD
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285319; x=1756821319;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hQtLxmcBobf4A11v3Ush+33rD8a2obkqPA5ix6jr48s=;
 b=GuxIUQVtXt5IoJBqm+Hyp82epoUQPOFronS+bMz14x5mHphJ3YqZEvDm
 aNb77O52xTcYP9vyiSsrV5s5kax8ZRrlDCC6pZHabNpEvM6CzZdnNIspd
 b0rcJTTxWY8Bh35tClnQkvo4B4tvpZ1ELC0qFEEG9jMgd0gotIQ0V7jra
 aLsnHNKuBbXh/EXENjcde0YJllmi8S+a4FzVzdD6n8hVoene5T7EUm5ts
 xyTU3cddUnZ4+YhIuKAp2yvnzTMxmhVBgDwbDBeIxa0rCXeZPmrlb7Xt8
 t8a89wh4JkNYoLhtWZfb4BMEOFU1w7+HIygMpinDTBuWCiI2dPBxGHfPT w==;
X-CSE-ConnectionGUID: 5NSmwv5DTLy8EZK2OL9L4w==
X-CSE-MsgGUID: DFSAJdjgQGy+1EuGycJ+Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343664"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343664"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:54:19 -0700
X-CSE-ConnectionGUID: 5eH6FhgxQ9yJt8Dc8pxYjA==
X-CSE-MsgGUID: 9dw+UvGdRrCnnFEzFKgN8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623928"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:54:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:54:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/13] drm/i915: Plumb 'dsb' all way to the color commit hooks
Date: Mon,  2 Sep 2024 16:53:41 +0300
Message-ID: <20240902135342.1050-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 176 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_color.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  20 +-
 .../drm/i915/display/intel_modeset_setup.c    |   4 +-
 4 files changed, 117 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 5d701f48351b..685da9f84b0a 100644
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
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 79f230a1709a..aaa91bdcdac4 100644
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
 void intel_color_get_config(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d673e134c73b..7d157fc64a3b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1577,8 +1577,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	 * clocks enabled
 	 */
 	intel_color_load_luts(new_crtc_state);
-	intel_color_commit_noarm(new_crtc_state);
-	intel_color_commit_arm(new_crtc_state);
+	intel_color_commit_noarm(NULL, new_crtc_state);
+	intel_color_commit_arm(NULL, new_crtc_state);
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
@@ -1743,8 +1743,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		 * clocks enabled
 		 */
 		intel_color_load_luts(pipe_crtc_state);
-		intel_color_commit_noarm(pipe_crtc_state);
-		intel_color_commit_arm(pipe_crtc_state);
+		intel_color_commit_noarm(NULL, pipe_crtc_state);
+		intel_color_commit_arm(NULL, pipe_crtc_state);
 		/* update DSPCNTR to configure gamma/csc for pipe bottom color */
 		if (DISPLAY_VER(dev_priv) < 9)
 			intel_disable_primary_plane(pipe_crtc_state);
@@ -2149,8 +2149,8 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	i9xx_pfit_enable(new_crtc_state);
 
 	intel_color_load_luts(new_crtc_state);
-	intel_color_commit_noarm(new_crtc_state);
-	intel_color_commit_arm(new_crtc_state);
+	intel_color_commit_noarm(NULL, new_crtc_state);
+	intel_color_commit_arm(NULL, new_crtc_state);
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
@@ -2189,8 +2189,8 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	i9xx_pfit_enable(new_crtc_state);
 
 	intel_color_load_luts(new_crtc_state);
-	intel_color_commit_noarm(new_crtc_state);
-	intel_color_commit_arm(new_crtc_state);
+	intel_color_commit_noarm(NULL, new_crtc_state);
+	intel_color_commit_arm(NULL, new_crtc_state);
 	/* update DSPCNTR to configure gamma for pipe bottom color */
 	intel_disable_primary_plane(new_crtc_state);
 
@@ -6823,7 +6823,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 	 */
 	if (!modeset) {
 		if (intel_crtc_needs_color_update(new_crtc_state))
-			intel_color_commit_arm(new_crtc_state);
+			intel_color_commit_arm(NULL, new_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 			bdw_set_pipe_misc(NULL, new_crtc_state);
@@ -6924,7 +6924,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state))
-		intel_color_commit_noarm(new_crtc_state);
+		intel_color_commit_noarm(NULL, new_crtc_state);
 
 	intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 72694dde3c22..85d7bf880c63 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -490,8 +490,8 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 		}
 
 		/* Disable any background color/etc. set by the BIOS */
-		intel_color_commit_noarm(crtc_state);
-		intel_color_commit_arm(crtc_state);
+		intel_color_commit_noarm(NULL, crtc_state);
+		intel_color_commit_arm(NULL, crtc_state);
 	}
 
 	if (!crtc_state->hw.active ||
-- 
2.44.2

