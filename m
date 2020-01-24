Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 443911485F8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE88C72A6D;
	Fri, 24 Jan 2020 13:25:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05DE372A6E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:18 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="375510084"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:25 +0200
Message-Id: <80d2cac864eb3f964587e74fbb004940889a2928.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 04/33] drm/i915/color: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 204 ++++++++++++---------
 1 file changed, 114 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 3980e8b50c28..b5d9ff56a8eb 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -157,23 +157,29 @@ static void ilk_update_pipe_csc(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	I915_WRITE(PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
-	I915_WRITE(PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
-	I915_WRITE(PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
+	intel_de_write(dev_priv, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
+	intel_de_write(dev_priv, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
+	intel_de_write(dev_priv, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
 
-	I915_WRITE(PIPE_CSC_COEFF_RY_GY(pipe), coeff[0] << 16 | coeff[1]);
-	I915_WRITE(PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
+	intel_de_write(dev_priv, PIPE_CSC_COEFF_RY_GY(pipe),
+		       coeff[0] << 16 | coeff[1]);
+	intel_de_write(dev_priv, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
 
-	I915_WRITE(PIPE_CSC_COEFF_RU_GU(pipe), coeff[3] << 16 | coeff[4]);
-	I915_WRITE(PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
+	intel_de_write(dev_priv, PIPE_CSC_COEFF_RU_GU(pipe),
+		       coeff[3] << 16 | coeff[4]);
+	intel_de_write(dev_priv, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
 
-	I915_WRITE(PIPE_CSC_COEFF_RV_GV(pipe), coeff[6] << 16 | coeff[7]);
-	I915_WRITE(PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
+	intel_de_write(dev_priv, PIPE_CSC_COEFF_RV_GV(pipe),
+		       coeff[6] << 16 | coeff[7]);
+	intel_de_write(dev_priv, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
 
 	if (INTEL_GEN(dev_priv) >= 7) {
-		I915_WRITE(PIPE_CSC_POSTOFF_HI(pipe), postoff[0]);
-		I915_WRITE(PIPE_CSC_POSTOFF_ME(pipe), postoff[1]);
-		I915_WRITE(PIPE_CSC_POSTOFF_LO(pipe), postoff[2]);
+		intel_de_write(dev_priv, PIPE_CSC_POSTOFF_HI(pipe),
+			       postoff[0]);
+		intel_de_write(dev_priv, PIPE_CSC_POSTOFF_ME(pipe),
+			       postoff[1]);
+		intel_de_write(dev_priv, PIPE_CSC_POSTOFF_LO(pipe),
+			       postoff[2]);
 	}
 }
 
@@ -185,22 +191,28 @@ static void icl_update_output_csc(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	I915_WRITE(PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
-	I915_WRITE(PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
-	I915_WRITE(PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
 
-	I915_WRITE(PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe), coeff[0] << 16 | coeff[1]);
-	I915_WRITE(PIPE_CSC_OUTPUT_COEFF_BY(pipe), coeff[2] << 16);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
+		       coeff[0] << 16 | coeff[1]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
+		       coeff[2] << 16);
 
-	I915_WRITE(PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe), coeff[3] << 16 | coeff[4]);
-	I915_WRITE(PIPE_CSC_OUTPUT_COEFF_BU(pipe), coeff[5] << 16);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
+		       coeff[3] << 16 | coeff[4]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
+		       coeff[5] << 16);
 
-	I915_WRITE(PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe), coeff[6] << 16 | coeff[7]);
-	I915_WRITE(PIPE_CSC_OUTPUT_COEFF_BV(pipe), coeff[8] << 16);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
+		       coeff[6] << 16 | coeff[7]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
+		       coeff[8] << 16);
 
-	I915_WRITE(PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
-	I915_WRITE(PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
-	I915_WRITE(PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
+	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
 }
 
 static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
@@ -304,7 +316,8 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 				    ilk_csc_off_zero);
 	}
 
-	I915_WRITE(PIPE_CSC_MODE(crtc->pipe), crtc_state->csc_mode);
+	intel_de_write(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+		       crtc_state->csc_mode);
 }
 
 static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
@@ -330,7 +343,8 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 				      ilk_csc_postoff_limited_range);
 	}
 
-	I915_WRITE(PIPE_CSC_MODE(crtc->pipe), crtc_state->csc_mode);
+	intel_de_write(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+		       crtc_state->csc_mode);
 }
 
 /*
@@ -363,18 +377,18 @@ static void cherryview_load_csc_matrix(const struct intel_crtc_state *crtc_state
 			coeffs[i] |= (abs_coeff >> 20) & 0xfff;
 		}
 
-		I915_WRITE(CGM_PIPE_CSC_COEFF01(pipe),
-			   coeffs[1] << 16 | coeffs[0]);
-		I915_WRITE(CGM_PIPE_CSC_COEFF23(pipe),
-			   coeffs[3] << 16 | coeffs[2]);
-		I915_WRITE(CGM_PIPE_CSC_COEFF45(pipe),
-			   coeffs[5] << 16 | coeffs[4]);
-		I915_WRITE(CGM_PIPE_CSC_COEFF67(pipe),
-			   coeffs[7] << 16 | coeffs[6]);
-		I915_WRITE(CGM_PIPE_CSC_COEFF8(pipe), coeffs[8]);
+		intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF01(pipe),
+			       coeffs[1] << 16 | coeffs[0]);
+		intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF23(pipe),
+			       coeffs[3] << 16 | coeffs[2]);
+		intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF45(pipe),
+			       coeffs[5] << 16 | coeffs[4]);
+		intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF67(pipe),
+			       coeffs[7] << 16 | coeffs[6]);
+		intel_de_write(dev_priv, CGM_PIPE_CSC_COEFF8(pipe), coeffs[8]);
 	}
 
-	I915_WRITE(CGM_PIPE_MODE(pipe), crtc_state->cgm_mode);
+	intel_de_write(dev_priv, CGM_PIPE_MODE(pipe), crtc_state->cgm_mode);
 }
 
 /* i965+ "10.6" bit interpolated format "even DW" (low 8 bits) */
@@ -426,9 +440,11 @@ static void i9xx_load_luts_internal(const struct intel_crtc_state *crtc_state,
 				drm_color_lut_extract(lut[i].blue, 8);
 
 			if (HAS_GMCH(dev_priv))
-				I915_WRITE(PALETTE(pipe, i), word);
+				intel_de_write(dev_priv, PALETTE(pipe, i),
+					       word);
 			else
-				I915_WRITE(LGC_PALETTE(pipe, i), word);
+				intel_de_write(dev_priv, LGC_PALETTE(pipe, i),
+					       word);
 		}
 	}
 }
@@ -445,10 +461,10 @@ static void i9xx_color_commit(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	u32 val;
 
-	val = I915_READ(PIPECONF(pipe));
+	val = intel_de_read(dev_priv, PIPECONF(pipe));
 	val &= ~PIPECONF_GAMMA_MODE_MASK_I9XX;
 	val |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
-	I915_WRITE(PIPECONF(pipe), val);
+	intel_de_write(dev_priv, PIPECONF(pipe), val);
 }
 
 static void ilk_color_commit(const struct intel_crtc_state *crtc_state)
@@ -458,10 +474,10 @@ static void ilk_color_commit(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	u32 val;
 
-	val = I915_READ(PIPECONF(pipe));
+	val = intel_de_read(dev_priv, PIPECONF(pipe));
 	val &= ~PIPECONF_GAMMA_MODE_MASK_ILK;
 	val |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
-	I915_WRITE(PIPECONF(pipe), val);
+	intel_de_write(dev_priv, PIPECONF(pipe), val);
 
 	ilk_load_csc_matrix(crtc_state);
 }
@@ -471,7 +487,8 @@ static void hsw_color_commit(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	I915_WRITE(GAMMA_MODE(crtc->pipe), crtc_state->gamma_mode);
+	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
+		       crtc_state->gamma_mode);
 
 	ilk_load_csc_matrix(crtc_state);
 }
@@ -492,9 +509,10 @@ static void skl_color_commit(const struct intel_crtc_state *crtc_state)
 		val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
 	if (crtc_state->csc_enable)
 		val |= SKL_BOTTOM_COLOR_CSC_ENABLE;
-	I915_WRITE(SKL_BOTTOM_COLOR(pipe), val);
+	intel_de_write(dev_priv, SKL_BOTTOM_COLOR(pipe), val);
 
-	I915_WRITE(GAMMA_MODE(crtc->pipe), crtc_state->gamma_mode);
+	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
+		       crtc_state->gamma_mode);
 
 	if (INTEL_GEN(dev_priv) >= 11)
 		icl_load_csc_matrix(crtc_state);
@@ -511,15 +529,15 @@ static void i965_load_lut_10p6(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		I915_WRITE(PALETTE(pipe, 2 * i + 0),
-			   i965_lut_10p6_ldw(&lut[i]));
-		I915_WRITE(PALETTE(pipe, 2 * i + 1),
-			   i965_lut_10p6_udw(&lut[i]));
+		intel_de_write(dev_priv, PALETTE(pipe, 2 * i + 0),
+			       i965_lut_10p6_ldw(&lut[i]));
+		intel_de_write(dev_priv, PALETTE(pipe, 2 * i + 1),
+			       i965_lut_10p6_udw(&lut[i]));
 	}
 
-	I915_WRITE(PIPEGCMAX(pipe, 0), lut[i].red);
-	I915_WRITE(PIPEGCMAX(pipe, 1), lut[i].green);
-	I915_WRITE(PIPEGCMAX(pipe, 2), lut[i].blue);
+	intel_de_write(dev_priv, PIPEGCMAX(pipe, 0), lut[i].red);
+	intel_de_write(dev_priv, PIPEGCMAX(pipe, 1), lut[i].green);
+	intel_de_write(dev_priv, PIPEGCMAX(pipe, 2), lut[i].blue);
 }
 
 static void i965_load_luts(const struct intel_crtc_state *crtc_state)
@@ -542,7 +560,8 @@ static void ilk_load_lut_10(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++)
-		I915_WRITE(PREC_PALETTE(pipe, i), ilk_lut_10(&lut[i]));
+		intel_de_write(dev_priv, PREC_PALETTE(pipe, i),
+		               ilk_lut_10(&lut[i]));
 }
 
 static void ilk_load_luts(const struct intel_crtc_state *crtc_state)
@@ -584,15 +603,16 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
 		const struct drm_color_lut *entry =
 			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
 
-		I915_WRITE(PREC_PAL_INDEX(pipe), prec_index++);
-		I915_WRITE(PREC_PAL_DATA(pipe), ilk_lut_10(entry));
+		intel_de_write(dev_priv, PREC_PAL_INDEX(pipe), prec_index++);
+		intel_de_write(dev_priv, PREC_PAL_DATA(pipe),
+			       ilk_lut_10(entry));
 	}
 
 	/*
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	I915_WRITE(PREC_PAL_INDEX(pipe), 0);
+	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe), 0);
 }
 
 /* On BDW+ the index auto increment mode actually works */
@@ -606,22 +626,23 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
-	I915_WRITE(PREC_PAL_INDEX(pipe), prec_index |
-		   PAL_PREC_AUTO_INCREMENT);
+	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe),
+		       prec_index | PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i < hw_lut_size; i++) {
 		/* We discard half the user entries in split gamma mode */
 		const struct drm_color_lut *entry =
 			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
 
-		I915_WRITE(PREC_PAL_DATA(pipe), ilk_lut_10(entry));
+		intel_de_write(dev_priv, PREC_PAL_DATA(pipe),
+			       ilk_lut_10(entry));
 	}
 
 	/*
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	I915_WRITE(PREC_PAL_INDEX(pipe), 0);
+	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe), 0);
 }
 
 static void ivb_load_lut_ext_max(struct intel_crtc *crtc)
@@ -712,8 +733,9 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	I915_WRITE(PRE_CSC_GAMC_INDEX(pipe), 0);
-	I915_WRITE(PRE_CSC_GAMC_INDEX(pipe), PRE_CSC_GAMC_AUTO_INCREMENT);
+	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+		       PRE_CSC_GAMC_AUTO_INCREMENT);
 
 	for (i = 0; i < lut_size; i++) {
 		/*
@@ -729,12 +751,13 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
 		 * ToDo: Extend to max 7.0. Enable 32 bit input value
 		 * as compared to just 16 to achieve this.
 		 */
-		I915_WRITE(PRE_CSC_GAMC_DATA(pipe), lut[i].green);
+		intel_de_write(dev_priv, PRE_CSC_GAMC_DATA(pipe),
+		               lut[i].green);
 	}
 
 	/* Clamp values > 1.0. */
 	while (i++ < 35)
-		I915_WRITE(PRE_CSC_GAMC_DATA(pipe), 1 << 16);
+		intel_de_write(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 }
 
 static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_state)
@@ -750,18 +773,19 @@ static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_stat
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	I915_WRITE(PRE_CSC_GAMC_INDEX(pipe), 0);
-	I915_WRITE(PRE_CSC_GAMC_INDEX(pipe), PRE_CSC_GAMC_AUTO_INCREMENT);
+	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+		       PRE_CSC_GAMC_AUTO_INCREMENT);
 
 	for (i = 0; i < lut_size; i++) {
 		u32 v = (i << 16) / (lut_size - 1);
 
-		I915_WRITE(PRE_CSC_GAMC_DATA(pipe), v);
+		intel_de_write(dev_priv, PRE_CSC_GAMC_DATA(pipe), v);
 	}
 
 	/* Clamp values > 1.0. */
 	while (i++ < 35)
-		I915_WRITE(PRE_CSC_GAMC_DATA(pipe), 1 << 16);
+		intel_de_write(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
 }
 
 static void glk_load_luts(const struct intel_crtc_state *crtc_state)
@@ -954,10 +978,10 @@ static void chv_load_cgm_degamma(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		I915_WRITE(CGM_PIPE_DEGAMMA(pipe, i, 0),
-			   chv_cgm_degamma_ldw(&lut[i]));
-		I915_WRITE(CGM_PIPE_DEGAMMA(pipe, i, 1),
-			   chv_cgm_degamma_udw(&lut[i]));
+		intel_de_write(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 0),
+			       chv_cgm_degamma_ldw(&lut[i]));
+		intel_de_write(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 1),
+			       chv_cgm_degamma_udw(&lut[i]));
 	}
 }
 
@@ -981,10 +1005,10 @@ static void chv_load_cgm_gamma(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		I915_WRITE(CGM_PIPE_GAMMA(pipe, i, 0),
-			   chv_cgm_gamma_ldw(&lut[i]));
-		I915_WRITE(CGM_PIPE_GAMMA(pipe, i, 1),
-			   chv_cgm_gamma_udw(&lut[i]));
+		intel_de_write(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0),
+			       chv_cgm_gamma_ldw(&lut[i]));
+		intel_de_write(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1),
+			       chv_cgm_gamma_udw(&lut[i]));
 	}
 }
 
@@ -1663,9 +1687,9 @@ i9xx_read_lut_8(const struct intel_crtc_state *crtc_state)
 
 	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
 		if (HAS_GMCH(dev_priv))
-			val = I915_READ(PALETTE(pipe, i));
+			val = intel_de_read(dev_priv, PALETTE(pipe, i));
 		else
-			val = I915_READ(LGC_PALETTE(pipe, i));
+			val = intel_de_read(dev_priv, LGC_PALETTE(pipe, i));
 
 		blob_data[i].red = intel_color_lut_pack(REG_FIELD_GET(
 							LGC_PALETTE_RED_MASK, val), 8);
@@ -1706,8 +1730,8 @@ i965_read_lut_10p6(const struct intel_crtc_state *crtc_state)
 	blob_data = blob->data;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		val1 = I915_READ(PALETTE(pipe, 2 * i + 0));
-		val2 = I915_READ(PALETTE(pipe, 2 * i + 1));
+		val1 = intel_de_read(dev_priv, PALETTE(pipe, 2 * i + 0));
+		val2 = intel_de_read(dev_priv, PALETTE(pipe, 2 * i + 1));
 
 		blob_data[i].red = REG_FIELD_GET(PALETTE_RED_MASK, val2) << 8 |
 						 REG_FIELD_GET(PALETTE_RED_MASK, val1);
@@ -1718,11 +1742,11 @@ i965_read_lut_10p6(const struct intel_crtc_state *crtc_state)
 	}
 
 	blob_data[i].red = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
-					 I915_READ(PIPEGCMAX(pipe, 0)));
+					 intel_de_read(dev_priv, PIPEGCMAX(pipe, 0)));
 	blob_data[i].green = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
-					   I915_READ(PIPEGCMAX(pipe, 1)));
+					   intel_de_read(dev_priv, PIPEGCMAX(pipe, 1)));
 	blob_data[i].blue = REG_FIELD_GET(PIPEGCMAX_RGB_MASK,
-					  I915_READ(PIPEGCMAX(pipe, 2)));
+					  intel_de_read(dev_priv, PIPEGCMAX(pipe, 2)));
 
 	return blob;
 }
@@ -1758,13 +1782,13 @@ chv_read_cgm_lut(const struct intel_crtc_state *crtc_state)
 	blob_data = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		val = I915_READ(CGM_PIPE_GAMMA(pipe, i, 0));
+		val = intel_de_read(dev_priv, CGM_PIPE_GAMMA(pipe, i, 0));
 		blob_data[i].green = intel_color_lut_pack(REG_FIELD_GET(
 							  CGM_PIPE_GAMMA_GREEN_MASK, val), 10);
 		blob_data[i].blue = intel_color_lut_pack(REG_FIELD_GET(
 							 CGM_PIPE_GAMMA_BLUE_MASK, val), 10);
 
-		val = I915_READ(CGM_PIPE_GAMMA(pipe, i, 1));
+		val = intel_de_read(dev_priv, CGM_PIPE_GAMMA(pipe, i, 1));
 		blob_data[i].red = intel_color_lut_pack(REG_FIELD_GET(
 							CGM_PIPE_GAMMA_RED_MASK, val), 10);
 	}
@@ -1800,7 +1824,7 @@ ilk_read_lut_10(const struct intel_crtc_state *crtc_state)
 	blob_data = blob->data;
 
 	for (i = 0; i < lut_size; i++) {
-		val = I915_READ(PREC_PALETTE(pipe, i));
+		val = intel_de_read(dev_priv, PREC_PALETTE(pipe, i));
 
 		blob_data[i].red = intel_color_lut_pack(REG_FIELD_GET(
 							PREC_PALETTE_RED_MASK, val), 10);
@@ -1846,11 +1870,11 @@ glk_read_lut_10(const struct intel_crtc_state *crtc_state, u32 prec_index)
 
 	blob_data = blob->data;
 
-	I915_WRITE(PREC_PAL_INDEX(pipe), prec_index |
-		   PAL_PREC_AUTO_INCREMENT);
+	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe),
+		       prec_index | PAL_PREC_AUTO_INCREMENT);
 
 	for (i = 0; i < hw_lut_size; i++) {
-		val = I915_READ(PREC_PAL_DATA(pipe));
+		val = intel_de_read(dev_priv, PREC_PAL_DATA(pipe));
 
 		blob_data[i].red = intel_color_lut_pack(REG_FIELD_GET(
 							PREC_PAL_DATA_RED_MASK, val), 10);
@@ -1860,7 +1884,7 @@ glk_read_lut_10(const struct intel_crtc_state *crtc_state, u32 prec_index)
 							PREC_PAL_DATA_BLUE_MASK, val), 10);
 	}
 
-	I915_WRITE(PREC_PAL_INDEX(pipe), 0);
+	intel_de_write(dev_priv, PREC_PAL_INDEX(pipe), 0);
 
 	return blob;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
