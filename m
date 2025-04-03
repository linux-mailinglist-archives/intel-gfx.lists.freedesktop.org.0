Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF81A79FB5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706C710E977;
	Thu,  3 Apr 2025 09:12:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jzn76+/q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E1A10E975;
 Thu,  3 Apr 2025 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743671553; x=1775207553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pE7m7hgsD/LPbZezbm/Mb5tVIh0l6w/lfNAKnr59XBI=;
 b=Jzn76+/qDtQsV3OzO5j0RoGXo9WNwK9WIh3scV7xd2Tjr7ZzZGcnjz2K
 Ki/Apb7Yy1Oibp78FBhDyAcg+0KWhEU96JqvQntLgcB/tPsLv0H8i96NH
 5S2nvJ3sz75p+Lh7yELY2KnJZfnSqAzAbp3ffNtMvFs3Lo1q+L5j+GtQX
 V2OaFt79Ne5svz3pjvFH52Q0J9Fe42gq9bfJSjSYngrhaDuk0lLmCeA5c
 cWf4XMrWj5HC1H1dPZO3+WWzNaPb3QAQgjyx2rWFbqzVoUnZW9Lf2i74A
 pWhdBmL4j6qYlnYKZ8Zp43UGrtdXi1SWekSuJJM5DUiW0meq9MXxh5SrU A==;
X-CSE-ConnectionGUID: XWvn8ZB6Su2uwD5KZtVO/g==
X-CSE-MsgGUID: P+mPvFJcRK60tVddVU353w==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45206749"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45206749"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:12:13 -0700
X-CSE-ConnectionGUID: WSFqpIISRsium556I/HSwQ==
X-CSE-MsgGUID: 2eqbI1+/Q32mMZA9KkWBug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127806513"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:12:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/7] drm/i915/wm: convert i9xx_wm.c to intel_de_*() register
 interface
Date: Thu,  3 Apr 2025 12:11:38 +0300
Message-Id: <38f1d8070907a01ff17dd439dc2af43c7ddf2b1a.1743671373.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1743671373.git.jani.nikula@intel.com>
References: <cover.1743671373.git.jani.nikula@intel.com>
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

The registers handled in i9xx_wm.c are mostly display registers. The
MCH_SSKPD and MLTR_ILK registers are not. Convert register access to
intel_de_*() interface where applicaple.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 383 +++++++++++++------------
 1 file changed, 196 insertions(+), 187 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 7202ef503e58..49ded623c084 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -9,6 +9,7 @@
 #include "i9xx_wm_regs.h"
 #include "intel_atomic.h"
 #include "intel_bo.h"
+#include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_trace.h"
 #include "intel_fb.h"
@@ -152,39 +153,39 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 	u32 val;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF_VLV);
+		was_enabled = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
+		intel_de_write(display, FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
+		intel_de_posting_read(display, FW_BLC_SELF_VLV);
 	} else if (IS_G4X(dev_priv) || IS_I965GM(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
+		was_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
+		intel_de_write(display, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
+		intel_de_posting_read(display, FW_BLC_SELF);
 	} else if (IS_PINEVIEW(dev_priv)) {
-		val = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
+		val = intel_de_read(display, DSPFW3(display));
 		was_enabled = val & PINEVIEW_SELF_REFRESH_EN;
 		if (enable)
 			val |= PINEVIEW_SELF_REFRESH_EN;
 		else
 			val &= ~PINEVIEW_SELF_REFRESH_EN;
-		intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv), val);
-		intel_uncore_posting_read(&dev_priv->uncore, DSPFW3(dev_priv));
+		intel_de_write(display, DSPFW3(display), val);
+		intel_de_posting_read(display, DSPFW3(display));
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv)) {
-		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
+		was_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
 		val = enable ? _MASKED_BIT_ENABLE(FW_BLC_SELF_EN) :
 			       _MASKED_BIT_DISABLE(FW_BLC_SELF_EN);
-		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, val);
-		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
+		intel_de_write(display, FW_BLC_SELF, val);
+		intel_de_posting_read(display, FW_BLC_SELF);
 	} else if (IS_I915GM(dev_priv)) {
 		/*
 		 * FIXME can't find a bit like this for 915G, and
 		 * yet it does have the related watermark in
 		 * FW_BLC_SELF. What's going on?
 		 */
-		was_enabled = intel_uncore_read(&dev_priv->uncore, INSTPM) & INSTPM_SELF_EN;
+		was_enabled = intel_de_read(display, INSTPM) & INSTPM_SELF_EN;
 		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
 			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
-		intel_uncore_write(&dev_priv->uncore, INSTPM, val);
-		intel_uncore_posting_read(&dev_priv->uncore, INSTPM);
+		intel_de_write(display, INSTPM, val);
+		intel_de_posting_read(display, INSTPM);
 	} else {
 		return false;
 	}
@@ -272,8 +273,8 @@ static const int pessimal_latency_ns = 5000;
 
 static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct vlv_fifo_state *fifo_state = &crtc_state->wm.vlv.fifo_state;
 	enum pipe pipe = crtc->pipe;
 	int sprite0_start, sprite1_start;
@@ -281,22 +282,20 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 
 	switch (pipe) {
 	case PIPE_A:
-		dsparb = intel_uncore_read(&dev_priv->uncore,
-					   DSPARB(dev_priv));
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
+		dsparb = intel_de_read(display, DSPARB(display));
+		dsparb2 = intel_de_read(display, DSPARB2);
 		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 0, 0);
 		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 8, 4);
 		break;
 	case PIPE_B:
-		dsparb = intel_uncore_read(&dev_priv->uncore,
-					   DSPARB(dev_priv));
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
+		dsparb = intel_de_read(display, DSPARB(display));
+		dsparb2 = intel_de_read(display, DSPARB2);
 		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 16, 8);
 		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 24, 12);
 		break;
 	case PIPE_C:
-		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
-		dsparb3 = intel_uncore_read(&dev_priv->uncore, DSPARB3);
+		dsparb2 = intel_de_read(display, DSPARB2);
+		dsparb3 = intel_de_read(display, DSPARB3);
 		sprite0_start = VLV_FIFO_START(dsparb3, dsparb2, 0, 16);
 		sprite1_start = VLV_FIFO_START(dsparb3, dsparb2, 8, 20);
 		break;
@@ -314,7 +313,8 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
+	struct intel_display *display = &dev_priv->display;
+	u32 dsparb = intel_de_read(display, DSPARB(display));
 	int size;
 
 	size = dsparb & 0x7f;
@@ -330,7 +330,8 @@ static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
+	struct intel_display *display = &dev_priv->display;
+	u32 dsparb = intel_de_read(display, DSPARB(display));
 	int size;
 
 	size = dsparb & 0x1ff;
@@ -347,7 +348,8 @@ static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB(dev_priv));
+	struct intel_display *display = &dev_priv->display;
+	u32 dsparb = intel_de_read(display, DSPARB(display));
 	int size;
 
 	size = dsparb & 0x7f;
@@ -669,10 +671,10 @@ static void pnv_update_wm(struct intel_display *display)
 					&pnv_display_wm,
 					pnv_display_wm.fifo_size,
 					cpp, latency->display_sr);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
+		reg = intel_de_read(display, DSPFW1(display));
 		reg &= ~DSPFW_SR_MASK;
 		reg |= FW_WM(wm, SR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv), reg);
+		intel_de_write(display, DSPFW1(display), reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
@@ -680,27 +682,26 @@ static void pnv_update_wm(struct intel_display *display)
 					&pnv_cursor_wm,
 					pnv_display_wm.fifo_size,
 					4, latency->cursor_sr);
-		intel_uncore_rmw(&dev_priv->uncore, DSPFW3(dev_priv),
-				 DSPFW_CURSOR_SR_MASK,
-				 FW_WM(wm, CURSOR_SR));
+		intel_de_rmw(display, DSPFW3(display),
+			     DSPFW_CURSOR_SR_MASK, FW_WM(wm, CURSOR_SR));
 
 		/* Display HPLL off SR */
 		wm = intel_calculate_wm(dev_priv, pixel_rate,
 					&pnv_display_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					cpp, latency->display_hpll_disable);
-		intel_uncore_rmw(&dev_priv->uncore, DSPFW3(dev_priv),
-				 DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
+		intel_de_rmw(display, DSPFW3(display),
+			     DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
 
 		/* cursor HPLL off SR */
 		wm = intel_calculate_wm(dev_priv, pixel_rate,
 					&pnv_cursor_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					4, latency->cursor_hpll_disable);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
+		reg = intel_de_read(display, DSPFW3(display));
 		reg &= ~DSPFW_HPLL_CURSOR_MASK;
 		reg |= FW_WM(wm, HPLL_CURSOR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv), reg);
+		intel_de_write(display, DSPFW3(display), reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
 
 		intel_set_memory_cxsr(display, true);
@@ -805,25 +806,25 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 	for_each_pipe(dev_priv, pipe)
 		trace_g4x_wm(intel_crtc_for_pipe(display, pipe), wm);
 
-	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
-			   FW_WM(wm->sr.plane, SR) |
-			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
-			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
-			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
-			   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |
-			   FW_WM(wm->sr.fbc, FBC_SR) |
-			   FW_WM(wm->hpll.fbc, FBC_HPLL_SR) |
-			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEB) |
-			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
-			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
-			   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |
-			   FW_WM(wm->sr.cursor, CURSOR_SR) |
-			   FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
-			   FW_WM(wm->hpll.plane, HPLL_SR));
-
-	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1(dev_priv));
+	intel_de_write(display, DSPFW1(display),
+		       FW_WM(wm->sr.plane, SR) |
+		       FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
+		       FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
+		       FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
+	intel_de_write(display, DSPFW2(display),
+		       (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |
+		       FW_WM(wm->sr.fbc, FBC_SR) |
+		       FW_WM(wm->hpll.fbc, FBC_HPLL_SR) |
+		       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEB) |
+		       FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
+		       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
+	intel_de_write(display, DSPFW3(display),
+		       (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |
+		       FW_WM(wm->sr.cursor, CURSOR_SR) |
+		       FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
+		       FW_WM(wm->hpll.plane, HPLL_SR));
+
+	intel_de_posting_read(display, DSPFW1(display));
 }
 
 #define FW_WM_VLV(value, plane) \
@@ -838,11 +839,11 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	for_each_pipe(dev_priv, pipe) {
 		trace_vlv_wm(intel_crtc_for_pipe(display, pipe), wm);
 
-		intel_uncore_write(&dev_priv->uncore, VLV_DDL(pipe),
-				   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |
-				   (wm->ddl[pipe].plane[PLANE_SPRITE1] << DDL_SPRITE_SHIFT(1)) |
-				   (wm->ddl[pipe].plane[PLANE_SPRITE0] << DDL_SPRITE_SHIFT(0)) |
-				   (wm->ddl[pipe].plane[PLANE_PRIMARY] << DDL_PLANE_SHIFT));
+		intel_de_write(display, VLV_DDL(pipe),
+			       (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |
+			       (wm->ddl[pipe].plane[PLANE_SPRITE1] << DDL_SPRITE_SHIFT(1)) |
+			       (wm->ddl[pipe].plane[PLANE_SPRITE0] << DDL_SPRITE_SHIFT(0)) |
+			       (wm->ddl[pipe].plane[PLANE_PRIMARY] << DDL_PLANE_SHIFT));
 	}
 
 	/*
@@ -850,60 +851,60 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	 * high order bits so that there are no out of bounds values
 	 * present in the registers during the reprogramming.
 	 */
-	intel_uncore_write(&dev_priv->uncore, DSPHOWM, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPHOWM1, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW4, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW5, 0);
-	intel_uncore_write(&dev_priv->uncore, DSPFW6, 0);
-
-	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
-			   FW_WM(wm->sr.plane, SR) |
-			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
-			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
-			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
-			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
-			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
-			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
-			   FW_WM(wm->sr.cursor, CURSOR_SR));
+	intel_de_write(display, DSPHOWM, 0);
+	intel_de_write(display, DSPHOWM1, 0);
+	intel_de_write(display, DSPFW4, 0);
+	intel_de_write(display, DSPFW5, 0);
+	intel_de_write(display, DSPFW6, 0);
+
+	intel_de_write(display, DSPFW1(display),
+		       FW_WM(wm->sr.plane, SR) |
+		       FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
+		       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
+		       FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
+	intel_de_write(display, DSPFW2(display),
+		       FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
+		       FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
+		       FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
+	intel_de_write(display, DSPFW3(display),
+		       FW_WM(wm->sr.cursor, CURSOR_SR));
 
 	if (IS_CHERRYVIEW(dev_priv)) {
-		intel_uncore_write(&dev_priv->uncore, DSPFW7_CHV,
-				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
-				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
-		intel_uncore_write(&dev_priv->uncore, DSPFW8_CHV,
-				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |
-				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE0], SPRITEE));
-		intel_uncore_write(&dev_priv->uncore, DSPFW9_CHV,
-				   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |
-				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_CURSOR], CURSORC));
-		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
-				   FW_WM(wm->sr.plane >> 9, SR_HI) |
-				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE1] >> 8, SPRITEF_HI) |
-				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE0] >> 8, SPRITEE_HI) |
-				   FW_WM(wm->pipe[PIPE_C].plane[PLANE_PRIMARY] >> 8, PLANEC_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY] >> 8, PLANEB_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE1] >> 8, SPRITEB_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
+		intel_de_write(display, DSPFW7_CHV,
+			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
+			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
+		intel_de_write(display, DSPFW8_CHV,
+			       FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |
+			       FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE0], SPRITEE));
+		intel_de_write(display, DSPFW9_CHV,
+			       FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |
+			       FW_WM(wm->pipe[PIPE_C].plane[PLANE_CURSOR], CURSORC));
+		intel_de_write(display, DSPHOWM,
+			       FW_WM(wm->sr.plane >> 9, SR_HI) |
+			       FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE1] >> 8, SPRITEF_HI) |
+			       FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE0] >> 8, SPRITEE_HI) |
+			       FW_WM(wm->pipe[PIPE_C].plane[PLANE_PRIMARY] >> 8, PLANEC_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY] >> 8, PLANEB_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE1] >> 8, SPRITEB_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
 	} else {
-		intel_uncore_write(&dev_priv->uncore, DSPFW7,
-				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
-				   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
-		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
-				   FW_WM(wm->sr.plane >> 9, SR_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
-				   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY] >> 8, PLANEB_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE1] >> 8, SPRITEB_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
-				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
+		intel_de_write(display, DSPFW7,
+			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
+			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
+		intel_de_write(display, DSPHOWM,
+			       FW_WM(wm->sr.plane >> 9, SR_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
+			       FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY] >> 8, PLANEB_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE1] >> 8, SPRITEB_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
+			       FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
 	}
 
-	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1(dev_priv));
+	intel_de_posting_read(display, DSPFW1(display));
 }
 
 #undef FW_WM_VLV
@@ -1857,6 +1858,7 @@ static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
 static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	const struct intel_crtc_state *crtc_state =
@@ -1891,8 +1893,8 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 
 	switch (crtc->pipe) {
 	case PIPE_A:
-		dsparb = intel_uncore_read_fw(uncore, DSPARB(dev_priv));
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb = intel_de_read_fw(display, DSPARB(display));
+		dsparb2 = intel_de_read_fw(display, DSPARB2);
 
 		dsparb &= ~(VLV_FIFO(SPRITEA, 0xff) |
 			    VLV_FIFO(SPRITEB, 0xff));
@@ -1904,12 +1906,12 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEA_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITEB_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB(dev_priv), dsparb);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(display, DSPARB(display), dsparb);
+		intel_de_write_fw(display, DSPARB2, dsparb2);
 		break;
 	case PIPE_B:
-		dsparb = intel_uncore_read_fw(uncore, DSPARB(dev_priv));
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb = intel_de_read_fw(display, DSPARB(display));
+		dsparb2 = intel_de_read_fw(display, DSPARB2);
 
 		dsparb &= ~(VLV_FIFO(SPRITEC, 0xff) |
 			    VLV_FIFO(SPRITED, 0xff));
@@ -1921,12 +1923,12 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEC_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITED_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB(dev_priv), dsparb);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(display, DSPARB(display), dsparb);
+		intel_de_write_fw(display, DSPARB2, dsparb2);
 		break;
 	case PIPE_C:
-		dsparb3 = intel_uncore_read_fw(uncore, DSPARB3);
-		dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);
+		dsparb3 = intel_de_read_fw(display, DSPARB3);
+		dsparb2 = intel_de_read_fw(display, DSPARB2);
 
 		dsparb3 &= ~(VLV_FIFO(SPRITEE, 0xff) |
 			     VLV_FIFO(SPRITEF, 0xff));
@@ -1938,14 +1940,14 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 		dsparb2 |= (VLV_FIFO(SPRITEE_HI, sprite0_start >> 8) |
 			   VLV_FIFO(SPRITEF_HI, sprite1_start >> 8));
 
-		intel_uncore_write_fw(uncore, DSPARB3, dsparb3);
-		intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
+		intel_de_write_fw(display, DSPARB3, dsparb3);
+		intel_de_write_fw(display, DSPARB2, dsparb2);
 		break;
 	default:
 		break;
 	}
 
-	intel_uncore_posting_read_fw(uncore, DSPARB(dev_priv));
+	intel_de_read_fw(display, DSPARB(display));
 
 	spin_unlock(&uncore->lock);
 }
@@ -2186,17 +2188,17 @@ static void i965_update_wm(struct intel_display *display)
 		    srwm);
 
 	/* 965 has limitations... */
-	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
-			   FW_WM(srwm, SR) |
-			   FW_WM(8, CURSORB) |
-			   FW_WM(8, PLANEB) |
-			   FW_WM(8, PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
-			   FW_WM(8, CURSORA) |
-			   FW_WM(8, PLANEC_OLD));
+	intel_de_write(display, DSPFW1(display),
+		       FW_WM(srwm, SR) |
+		       FW_WM(8, CURSORB) |
+		       FW_WM(8, PLANEB) |
+		       FW_WM(8, PLANEA));
+	intel_de_write(display, DSPFW2(display),
+		       FW_WM(8, CURSORA) |
+		       FW_WM(8, PLANEC_OLD));
 	/* update cursor SR watermark */
-	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
-			   FW_WM(cursor_sr, CURSOR_SR));
+	intel_de_write(display, DSPFW3(display),
+		       FW_WM(cursor_sr, CURSOR_SR));
 
 	if (cxsr_enabled)
 		intel_set_memory_cxsr(display, true);
@@ -2339,10 +2341,10 @@ static void i9xx_update_wm(struct intel_display *display)
 			srwm = 1;
 
 		if (IS_I945G(dev_priv) || IS_I945GM(dev_priv))
-			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF,
-				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));
+			intel_de_write(display, FW_BLC_SELF,
+				       FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));
 		else
-			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, srwm & 0x3f);
+			intel_de_write(display, FW_BLC_SELF, srwm & 0x3f);
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
@@ -2356,8 +2358,8 @@ static void i9xx_update_wm(struct intel_display *display)
 	fwater_lo = fwater_lo | (1 << 24) | (1 << 8);
 	fwater_hi = fwater_hi | (1 << 8);
 
-	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
-	intel_uncore_write(&dev_priv->uncore, FW_BLC2, fwater_hi);
+	intel_de_write(display, FW_BLC, fwater_lo);
+	intel_de_write(display, FW_BLC2, fwater_hi);
 
 	if (crtc)
 		intel_set_memory_cxsr(display, true);
@@ -2378,13 +2380,13 @@ static void i845_update_wm(struct intel_display *display)
 				       &i845_wm_info,
 				       i845_get_fifo_size(dev_priv, PLANE_A),
 				       4, pessimal_latency_ns);
-	fwater_lo = intel_uncore_read(&dev_priv->uncore, FW_BLC) & ~0xfff;
+	fwater_lo = intel_de_read(display, FW_BLC) & ~0xfff;
 	fwater_lo |= (3<<8) | planea_wm;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Setting FIFO watermarks - A: %d\n", planea_wm);
 
-	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
+	intel_de_write(display, FW_BLC, fwater_lo);
 }
 
 /* latency must be in 0.1us units. */
@@ -3326,22 +3328,23 @@ static unsigned int ilk_compute_wm_dirty(struct drm_i915_private *dev_priv,
 static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
 			       unsigned int dirty)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
 	bool changed = false;
 
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM_LP_ENABLE) {
 		previous->wm_lp[2] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, previous->wm_lp[2]);
+		intel_de_write(display, WM3_LP_ILK, previous->wm_lp[2]);
 		changed = true;
 	}
 	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] & WM_LP_ENABLE) {
 		previous->wm_lp[1] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, previous->wm_lp[1]);
+		intel_de_write(display, WM2_LP_ILK, previous->wm_lp[1]);
 		changed = true;
 	}
 	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] & WM_LP_ENABLE) {
 		previous->wm_lp[0] &= ~WM_LP_ENABLE;
-		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, previous->wm_lp[0]);
+		intel_de_write(display, WM1_LP_ILK, previous->wm_lp[0]);
 		changed = true;
 	}
 
@@ -3360,6 +3363,7 @@ static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
 static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 				struct ilk_wm_values *results)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
 	unsigned int dirty;
 
@@ -3370,44 +3374,44 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	_ilk_disable_lp_wm(dev_priv, dirty);
 
 	if (dirty & WM_DIRTY_PIPE(PIPE_A))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
+		intel_de_write(display, WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
 	if (dirty & WM_DIRTY_PIPE(PIPE_B))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_B), results->wm_pipe[1]);
+		intel_de_write(display, WM0_PIPE_ILK(PIPE_B), results->wm_pipe[1]);
 	if (dirty & WM_DIRTY_PIPE(PIPE_C))
-		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
+		intel_de_write(display, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
 
 	if (dirty & WM_DIRTY_DDB) {
 		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-			intel_uncore_rmw(&dev_priv->uncore, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
-					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
-					 WM_MISC_DATA_PARTITION_5_6);
+			intel_de_rmw(display, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
+				     results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
+				     WM_MISC_DATA_PARTITION_5_6);
 		else
-			intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
-					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
-					 DISP_DATA_PARTITION_5_6);
+			intel_de_rmw(display, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
+				     results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
+				     DISP_DATA_PARTITION_5_6);
 	}
 
 	if (dirty & WM_DIRTY_FBC)
-		intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, DISP_FBC_WM_DIS,
-				 results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);
+		intel_de_rmw(display, DISP_ARB_CTL, DISP_FBC_WM_DIS,
+			     results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);
 
 	if (dirty & WM_DIRTY_LP(1) &&
 	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
-		intel_uncore_write(&dev_priv->uncore, WM1S_LP_ILK, results->wm_lp_spr[0]);
+		intel_de_write(display, WM1S_LP_ILK, results->wm_lp_spr[0]);
 
 	if (DISPLAY_VER(dev_priv) >= 7) {
 		if (dirty & WM_DIRTY_LP(2) && previous->wm_lp_spr[1] != results->wm_lp_spr[1])
-			intel_uncore_write(&dev_priv->uncore, WM2S_LP_IVB, results->wm_lp_spr[1]);
+			intel_de_write(display, WM2S_LP_IVB, results->wm_lp_spr[1]);
 		if (dirty & WM_DIRTY_LP(3) && previous->wm_lp_spr[2] != results->wm_lp_spr[2])
-			intel_uncore_write(&dev_priv->uncore, WM3S_LP_IVB, results->wm_lp_spr[2]);
+			intel_de_write(display, WM3S_LP_IVB, results->wm_lp_spr[2]);
 	}
 
 	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] != results->wm_lp[0])
-		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, results->wm_lp[0]);
+		intel_de_write(display, WM1_LP_ILK, results->wm_lp[0]);
 	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] != results->wm_lp[1])
-		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, results->wm_lp[1]);
+		intel_de_write(display, WM2_LP_ILK, results->wm_lp[1]);
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] != results->wm_lp[2])
-		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, results->wm_lp[2]);
+		intel_de_write(display, WM3_LP_ILK, results->wm_lp[2]);
 
 	dev_priv->display.wm.hw = *results;
 }
@@ -3500,6 +3504,7 @@ static void ilk_optimize_watermarks(struct intel_atomic_state *state,
 
 static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
@@ -3507,7 +3512,7 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 	struct intel_pipe_wm *active = &crtc_state->wm.ilk.optimal;
 	enum pipe pipe = crtc->pipe;
 
-	hw->wm_pipe[pipe] = intel_uncore_read(&dev_priv->uncore, WM0_PIPE_ILK(pipe));
+	hw->wm_pipe[pipe] = intel_de_read(display, WM0_PIPE_ILK(pipe));
 
 	memset(active, 0, sizeof(*active));
 
@@ -3672,15 +3677,16 @@ void ilk_wm_sanitize(struct intel_display *display)
 static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 			       struct g4x_wm_values *wm)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 tmp;
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
+	tmp = intel_de_read(display, DSPFW1(display));
 	wm->sr.plane = _FW_WM(tmp, SR);
 	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEB);
 	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2(dev_priv));
+	tmp = intel_de_read(display, DSPFW2(display));
 	wm->fbc_en = tmp & DSPFW_FBC_SR_EN;
 	wm->sr.fbc = _FW_WM(tmp, FBC_SR);
 	wm->hpll.fbc = _FW_WM(tmp, FBC_HPLL_SR);
@@ -3688,7 +3694,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM(tmp, SPRITEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
+	tmp = intel_de_read(display, DSPFW3(display));
 	wm->hpll_en = tmp & DSPFW_HPLL_SR_EN;
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 	wm->hpll.cursor = _FW_WM(tmp, HPLL_CURSOR);
@@ -3698,11 +3704,12 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 			       struct vlv_wm_values *wm)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 	u32 tmp;
 
 	for_each_pipe(dev_priv, pipe) {
-		tmp = intel_uncore_read(&dev_priv->uncore, VLV_DDL(pipe));
+		tmp = intel_de_read(display, VLV_DDL(pipe));
 
 		wm->ddl[pipe].plane[PLANE_PRIMARY] =
 			(tmp >> DDL_PLANE_SHIFT) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
@@ -3714,34 +3721,34 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 			(tmp >> DDL_SPRITE_SHIFT(1)) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
 	}
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
+	tmp = intel_de_read(display, DSPFW1(display));
 	wm->sr.plane = _FW_WM(tmp, SR);
 	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEB);
 	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2(dev_priv));
+	tmp = intel_de_read(display, DSPFW2(display));
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEB);
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
+	tmp = intel_de_read(display, DSPFW3(display));
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 
 	if (IS_CHERRYVIEW(dev_priv)) {
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW7_CHV);
+		tmp = intel_de_read(display, DSPFW7_CHV);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW8_CHV);
+		tmp = intel_de_read(display, DSPFW8_CHV);
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEF);
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEE);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW9_CHV);
+		tmp = intel_de_read(display, DSPFW9_CHV);
 		wm->pipe[PIPE_C].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEC);
 		wm->pipe[PIPE_C].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPHOWM);
+		tmp = intel_de_read(display, DSPHOWM);
 		wm->sr.plane |= _FW_WM(tmp, SR_HI) << 9;
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE1] |= _FW_WM(tmp, SPRITEF_HI) << 8;
 		wm->pipe[PIPE_C].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEE_HI) << 8;
@@ -3753,11 +3760,11 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 		wm->pipe[PIPE_A].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEA_HI) << 8;
 		wm->pipe[PIPE_A].plane[PLANE_PRIMARY] |= _FW_WM(tmp, PLANEA_HI) << 8;
 	} else {
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW7);
+		tmp = intel_de_read(display, DSPFW7);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
 
-		tmp = intel_uncore_read(&dev_priv->uncore, DSPHOWM);
+		tmp = intel_de_read(display, DSPHOWM);
 		wm->sr.plane |= _FW_WM(tmp, SR_HI) << 9;
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] |= _FW_WM(tmp, SPRITED_HI) << 8;
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEC_HI) << 8;
@@ -3779,7 +3786,7 @@ static void g4x_wm_get_hw_state(struct intel_display *display)
 
 	g4x_read_wm_values(dev_priv, wm);
 
-	wm->cxsr = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
+	wm->cxsr = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
@@ -3924,7 +3931,7 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 
 	vlv_read_wm_values(dev_priv, wm);
 
-	wm->cxsr = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
+	wm->cxsr = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 	wm->level = VLV_WM_LEVEL_PM2;
 
 	if (IS_CHERRYVIEW(dev_priv)) {
@@ -4069,9 +4076,11 @@ static void vlv_wm_sanitize(struct intel_display *display)
  */
 static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_rmw(&dev_priv->uncore, WM3_LP_ILK, WM_LP_ENABLE, 0);
-	intel_uncore_rmw(&dev_priv->uncore, WM2_LP_ILK, WM_LP_ENABLE, 0);
-	intel_uncore_rmw(&dev_priv->uncore, WM1_LP_ILK, WM_LP_ENABLE, 0);
+	struct intel_display *display = &dev_priv->display;
+
+	intel_de_rmw(display, WM3_LP_ILK, WM_LP_ENABLE, 0);
+	intel_de_rmw(display, WM2_LP_ILK, WM_LP_ENABLE, 0);
+	intel_de_rmw(display, WM1_LP_ILK, WM_LP_ENABLE, 0);
 
 	/*
 	 * Don't touch WM_LP_SPRITE_ENABLE here.
@@ -4090,27 +4099,27 @@ static void ilk_wm_get_hw_state(struct intel_display *display)
 	for_each_intel_crtc(&dev_priv->drm, crtc)
 		ilk_pipe_wm_get_hw_state(crtc);
 
-	hw->wm_lp[0] = intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK);
-	hw->wm_lp[1] = intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK);
-	hw->wm_lp[2] = intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK);
+	hw->wm_lp[0] = intel_de_read(display, WM1_LP_ILK);
+	hw->wm_lp[1] = intel_de_read(display, WM2_LP_ILK);
+	hw->wm_lp[2] = intel_de_read(display, WM3_LP_ILK);
 
-	hw->wm_lp_spr[0] = intel_uncore_read(&dev_priv->uncore, WM1S_LP_ILK);
+	hw->wm_lp_spr[0] = intel_de_read(display, WM1S_LP_ILK);
 	if (DISPLAY_VER(dev_priv) >= 7) {
-		hw->wm_lp_spr[1] = intel_uncore_read(&dev_priv->uncore, WM2S_LP_IVB);
-		hw->wm_lp_spr[2] = intel_uncore_read(&dev_priv->uncore, WM3S_LP_IVB);
+		hw->wm_lp_spr[1] = intel_de_read(display, WM2S_LP_IVB);
+		hw->wm_lp_spr[2] = intel_de_read(display, WM3S_LP_IVB);
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, WM_MISC) &
+		hw->partitioning = (intel_de_read(display, WM_MISC) &
 				    WM_MISC_DATA_PARTITION_5_6) ?
 			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
 	else if (IS_IVYBRIDGE(dev_priv))
-		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2) &
+		hw->partitioning = (intel_de_read(display, DISP_ARB_CTL2) &
 				    DISP_DATA_PARTITION_5_6) ?
 			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
 
 	hw->enable_fbc_wm =
-		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
+		!(intel_de_read(display, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
 }
 
 static const struct intel_wm_funcs ilk_wm_funcs = {
-- 
2.39.5

