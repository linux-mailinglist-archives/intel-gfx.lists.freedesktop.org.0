Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3264B6CDB29
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4B910EAE4;
	Wed, 29 Mar 2023 13:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E8110EADD
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097812; x=1711633812;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yywstTLfCDAiRaBRd2+MUoCFmM8BG8bBqvHtH2il3rw=;
 b=ArQU18oVbKjMFjpSgNK3FHQHXz55TvUd+6Ty4qR2AdhGCN4IfyODThuZ
 WmrFDKkn+mtVk79/FmKX0IaNrnbDrDQiJ3eKdMJMe62lGI6gsXCoSr+Eo
 qPeujmP/HpiBnizQtiIVehyWEptOFtcUtVL01zQcrIhOicusz6dNyRiVj
 baGtozop9VGJRJWvOcV8YTUnTBbVDX3isaeT75DcQdh3wmZXF3MnyNCax
 cwquXxuekeTOey9K9MivuzMu6BrBE6ujuPoUFh5yxNsCsZrTmsp0BIg5B
 IfYTBvDrv95f6zgOXdWikXvKKA7TkLU34nRYzWRdExdmQGotNI5k+y+IT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379011"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379011"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029392"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029392"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:52 +0300
Message-Id: <20230329135002.3096-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Introduce intel_csc_matrix
 struct
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

Introduce a structure that can hold our CSC matrices. In there
we shall have the preoffsets, postoffsets, and coefficients,
all in platform specific format (at least for now).

We shall start by converting the ilk+ code to make use of
the new structure. chv will come later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 188 +++++++++---------
 .../drm/i915/display/intel_display_types.h    |   6 +
 2 files changed, 97 insertions(+), 97 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 3c3e2f5a5cde..b1059e0c0665 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -120,40 +120,42 @@ struct intel_color_funcs {
 #define ILK_CSC_COEFF_LIMITED_RANGE ((235 - 16) << (12 - 8)) /* exponent 0 */
 #define ILK_CSC_POSTOFF_LIMITED_RANGE (16 << (12 - 8))
 
-/* Nop pre/post offsets */
-static const u16 ilk_csc_off_zero[3] = {};
-
-/* Identity matrix */
-static const u16 ilk_csc_coeff_identity[9] = {
-	ILK_CSC_COEFF_1_0, 0, 0,
-	0, ILK_CSC_COEFF_1_0, 0,
-	0, 0, ILK_CSC_COEFF_1_0,
-};
-
-/* Limited range RGB post offsets */
-static const u16 ilk_csc_postoff_limited_range[3] = {
-	ILK_CSC_POSTOFF_LIMITED_RANGE,
-	ILK_CSC_POSTOFF_LIMITED_RANGE,
-	ILK_CSC_POSTOFF_LIMITED_RANGE,
+static const struct intel_csc_matrix ilk_csc_matrix_identity = {
+	.preoff = {},
+	.coeff = {
+		ILK_CSC_COEFF_1_0, 0, 0,
+		0, ILK_CSC_COEFF_1_0, 0,
+		0, 0, ILK_CSC_COEFF_1_0,
+	},
+	.postoff = {},
 };
 
 /* Full range RGB -> limited range RGB matrix */
-static const u16 ilk_csc_coeff_limited_range[9] = {
-	ILK_CSC_COEFF_LIMITED_RANGE, 0, 0,
-	0, ILK_CSC_COEFF_LIMITED_RANGE, 0,
-	0, 0, ILK_CSC_COEFF_LIMITED_RANGE,
+static const struct intel_csc_matrix ilk_csc_matrix_limited_range = {
+	.preoff = {},
+	.coeff = {
+		ILK_CSC_COEFF_LIMITED_RANGE, 0, 0,
+		0, ILK_CSC_COEFF_LIMITED_RANGE, 0,
+		0, 0, ILK_CSC_COEFF_LIMITED_RANGE,
+	},
+	.postoff = {
+		ILK_CSC_POSTOFF_LIMITED_RANGE,
+		ILK_CSC_POSTOFF_LIMITED_RANGE,
+		ILK_CSC_POSTOFF_LIMITED_RANGE,
+	},
 };
 
 /* BT.709 full range RGB -> limited range YCbCr matrix */
-static const u16 ilk_csc_coeff_rgb_to_ycbcr[9] = {
-	0x1e08, 0x9cc0, 0xb528,
-	0x2ba8, 0x09d8, 0x37e8,
-	0xbce8, 0x9ad8, 0x1e08,
-};
-
-/* Limited range YCbCr post offsets */
-static const u16 ilk_csc_postoff_rgb_to_ycbcr[3] = {
-	0x0800, 0x0100, 0x0800,
+static const struct intel_csc_matrix ilk_csc_matrix_rgb_to_ycbcr = {
+	.preoff = {},
+	.coeff = {
+		0x1e08, 0x9cc0, 0xb528,
+		0x2ba8, 0x09d8, 0x37e8,
+		0xbce8, 0x9ad8, 0x1e08,
+	},
+	.postoff = {
+		0x0800, 0x0100, 0x0800,
+	},
 };
 
 static bool lut_is_legacy(const struct drm_property_blob *lut)
@@ -188,69 +190,66 @@ static u64 *ctm_mult_by_limited(u64 *result, const u64 *input)
 }
 
 static void ilk_update_pipe_csc(struct intel_crtc *crtc,
-				const u16 preoff[3],
-				const u16 coeff[9],
-				const u16 postoff[3])
+				const struct intel_csc_matrix *csc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(i915, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
-	intel_de_write_fw(i915, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
+	intel_de_write_fw(i915, PIPE_CSC_PREOFF_HI(pipe), csc->preoff[0]);
+	intel_de_write_fw(i915, PIPE_CSC_PREOFF_ME(pipe), csc->preoff[1]);
+	intel_de_write_fw(i915, PIPE_CSC_PREOFF_LO(pipe), csc->preoff[2]);
 
 	intel_de_write_fw(i915, PIPE_CSC_COEFF_RY_GY(pipe),
-			  coeff[0] << 16 | coeff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
+			  csc->coeff[0] << 16 | csc->coeff[1]);
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_BY(pipe),
+			  csc->coeff[2] << 16);
 
 	intel_de_write_fw(i915, PIPE_CSC_COEFF_RU_GU(pipe),
-			  coeff[3] << 16 | coeff[4]);
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
+			  csc->coeff[3] << 16 | csc->coeff[4]);
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_BU(pipe),
+			  csc->coeff[5] << 16);
 
 	intel_de_write_fw(i915, PIPE_CSC_COEFF_RV_GV(pipe),
-			  coeff[6] << 16 | coeff[7]);
-	intel_de_write_fw(i915, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
+			  csc->coeff[6] << 16 | csc->coeff[7]);
+	intel_de_write_fw(i915, PIPE_CSC_COEFF_BV(pipe),
+			  csc->coeff[8] << 16);
 
-	if (DISPLAY_VER(i915) >= 7) {
-		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_HI(pipe),
-				  postoff[0]);
-		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_ME(pipe),
-				  postoff[1]);
-		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe),
-				  postoff[2]);
-	}
+	if (DISPLAY_VER(i915) < 7)
+		return;
+
+	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_HI(pipe), csc->postoff[0]);
+	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_ME(pipe), csc->postoff[1]);
+	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe), csc->postoff[2]);
 }
 
 static void icl_update_output_csc(struct intel_crtc *crtc,
-				  const u16 preoff[3],
-				  const u16 coeff[9],
-				  const u16 postoff[3])
+				  const struct intel_csc_matrix *csc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), csc->preoff[0]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), csc->preoff[1]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), csc->preoff[2]);
 
 	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
-			  coeff[0] << 16 | coeff[1]);
+			  csc->coeff[0] << 16 | csc->coeff[1]);
 	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
-			  coeff[2] << 16);
+			  csc->coeff[2] << 16);
 
 	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
-			  coeff[3] << 16 | coeff[4]);
+			  csc->coeff[3] << 16 | csc->coeff[4]);
 	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
-			  coeff[5] << 16);
+			  csc->coeff[5] << 16);
 
 	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
-			  coeff[6] << 16 | coeff[7]);
+			  csc->coeff[6] << 16 | csc->coeff[7]);
 	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
-			  coeff[8] << 16);
+			  csc->coeff[8] << 16);
 
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
-	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), csc->postoff[0]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), csc->postoff[1]);
+	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), csc->postoff[2]);
 }
 
 static bool ilk_limited_range(const struct intel_crtc_state *crtc_state)
@@ -294,13 +293,20 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
 }
 
 static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
-				u16 coeffs[9], bool limited_color_range)
+				struct intel_csc_matrix *csc,
+				bool limited_color_range)
 {
 	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
 	const u64 *input;
 	u64 temp[9];
 	int i;
 
+	/* for preoff/postoff */
+	if (limited_color_range)
+		*csc = ilk_csc_matrix_limited_range;
+	else
+		*csc = ilk_csc_matrix_identity;
+
 	if (limited_color_range)
 		input = ctm_mult_by_limited(temp, ctm->matrix);
 	else
@@ -319,28 +325,28 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 		 */
 		abs_coeff = clamp_val(abs_coeff, 0, CTM_COEFF_4_0 - 1);
 
-		coeffs[i] = 0;
+		csc->coeff[i] = 0;
 
 		/* sign bit */
 		if (CTM_COEFF_NEGATIVE(input[i]))
-			coeffs[i] |= 1 << 15;
+			csc->coeff[i] |= 1 << 15;
 
 		if (abs_coeff < CTM_COEFF_0_125)
-			coeffs[i] |= (3 << 12) |
+			csc->coeff[i] |= (3 << 12) |
 				ILK_CSC_COEFF_FP(abs_coeff, 12);
 		else if (abs_coeff < CTM_COEFF_0_25)
-			coeffs[i] |= (2 << 12) |
+			csc->coeff[i] |= (2 << 12) |
 				ILK_CSC_COEFF_FP(abs_coeff, 11);
 		else if (abs_coeff < CTM_COEFF_0_5)
-			coeffs[i] |= (1 << 12) |
+			csc->coeff[i] |= (1 << 12) |
 				ILK_CSC_COEFF_FP(abs_coeff, 10);
 		else if (abs_coeff < CTM_COEFF_1_0)
-			coeffs[i] |= ILK_CSC_COEFF_FP(abs_coeff, 9);
+			csc->coeff[i] |= ILK_CSC_COEFF_FP(abs_coeff, 9);
 		else if (abs_coeff < CTM_COEFF_2_0)
-			coeffs[i] |= (7 << 12) |
+			csc->coeff[i] |= (7 << 12) |
 				ILK_CSC_COEFF_FP(abs_coeff, 8);
 		else
-			coeffs[i] |= (6 << 12) |
+			csc->coeff[i] |= (6 << 12) |
 				ILK_CSC_COEFF_FP(abs_coeff, 7);
 	}
 }
@@ -352,21 +358,15 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 
 	if (crtc_state->hw.ctm) {
-		u16 coeff[9];
+		struct intel_csc_matrix tmp;
 
-		ilk_csc_convert_ctm(crtc_state, coeff, limited_color_range);
-		ilk_update_pipe_csc(crtc, ilk_csc_off_zero, coeff,
-				    limited_color_range ?
-				    ilk_csc_postoff_limited_range :
-				    ilk_csc_off_zero);
+		ilk_csc_convert_ctm(crtc_state, &tmp, limited_color_range);
+
+		ilk_update_pipe_csc(crtc, &tmp);
 	} else if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
-		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
-				    ilk_csc_coeff_rgb_to_ycbcr,
-				    ilk_csc_postoff_rgb_to_ycbcr);
+		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_rgb_to_ycbcr);
 	} else if (limited_color_range) {
-		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
-				    ilk_csc_coeff_limited_range,
-				    ilk_csc_postoff_limited_range);
+		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_limited_range);
 	} else if (crtc_state->csc_enable) {
 		/*
 		 * On GLK both pipe CSC and degamma LUT are controlled
@@ -376,9 +376,7 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 		 */
 		drm_WARN_ON(&i915->drm, !IS_GEMINILAKE(i915));
 
-		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
-				    ilk_csc_coeff_identity,
-				    ilk_csc_off_zero);
+		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_identity);
 	}
 }
 
@@ -387,21 +385,17 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (crtc_state->hw.ctm) {
-		u16 coeff[9];
+		struct intel_csc_matrix tmp;
 
-		ilk_csc_convert_ctm(crtc_state, coeff, false);
-		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
-				    coeff, ilk_csc_off_zero);
+		ilk_csc_convert_ctm(crtc_state, &tmp, false);
+
+		ilk_update_pipe_csc(crtc, &tmp);
 	}
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
-		icl_update_output_csc(crtc, ilk_csc_off_zero,
-				      ilk_csc_coeff_rgb_to_ycbcr,
-				      ilk_csc_postoff_rgb_to_ycbcr);
+		icl_update_output_csc(crtc, &ilk_csc_matrix_rgb_to_ycbcr);
 	} else if (crtc_state->limited_color_range) {
-		icl_update_output_csc(crtc, ilk_csc_off_zero,
-				      ilk_csc_coeff_limited_range,
-				      ilk_csc_postoff_limited_range);
+		icl_update_output_csc(crtc, &ilk_csc_matrix_limited_range);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ab146b5b68bd..4829399ea700 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -985,6 +985,12 @@ struct intel_link_m_n {
 	u32 link_n;
 };
 
+struct intel_csc_matrix {
+	u16 coeff[9];
+	u16 preoff[3];
+	u16 postoff[3];
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
-- 
2.39.2

