Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 260276CDB2D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A985C10EAEB;
	Wed, 29 Mar 2023 13:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5B210EAEB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097828; x=1711633828;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ooiYW0ZhrjFkFgbWdkEfaV21bpADqc3mgaJ/Hn/9og4=;
 b=kY/P+UAm0BZKQorPXYlWOWop148g0wpzLIzag/akWihRlnUpMKn8v35/
 YSq06PJe2D6JYhOn4kioJv5DF8rQPnbRCaqBbhbJwfmzXKoW6VK+RDnEP
 9sTpXCSm46M07SVTnGd4fVc7EeVjc3mKMIirm8fWll13c35lb+EzLGFyr
 KYkI7DEtiFzcrqtZ1M1RforNGydYG397IfkcgAavwcPswmAwlCfpHZbfH
 XBCq4xcESdFzqtzhUELAGjbhTLqUUfPkNKVq6JkThBgLcynu4wKV7plse
 lIHL/1wiD97DCtDfOnV48wCS3QUBu2+54AKo/dRoaC0Jnc8NLL7CX3mM1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379069"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379069"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029482"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029482"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:58 +0300
Message-Id: <20230329135002.3096-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/12] drm/i915: Add hardware csc readout for
 ilk+
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

Read out the pipe/output csc matrices on ilk+ and stash the results
(in the hardware specific format) into the appropriate place
in the crtc state.

Note that on skl/glk/icl the pipe csc unit suffers from an issue
where *reads* of the coefficient/offset registers also disarm
the double buffer update (if currently armed via CSC_MODE write).
So it's rather important that the readout only happens after the
csc registers have been latched. Fortunately the state checker
only runs after the start of vblank where the latching happens.

And on skl/glk the DMC + CSC register read has the potential to
corrupt the latched CSC register values, so let's add a comment
reminding us that the DC states should remain off until the
readout has been completed.

TODO: maybe we could somehow check to make sure PSR has in fact
latched the new register values already, and that DC states
have been off all along?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 133 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |   6 +
 2 files changed, 139 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2988c91d8ff6..86b0d8260574 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -25,6 +25,7 @@
 #include "i915_reg.h"
 #include "intel_color.h"
 #include "intel_de.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
 
@@ -70,6 +71,11 @@ struct intel_color_funcs {
 			  const struct drm_property_blob *blob1,
 			  const struct drm_property_blob *blob2,
 			  bool is_pre_csc_lut);
+	/*
+	 * Read out the CSCs (if any) from the hardware into the
+	 * software state. Used by eg. the hardware state checker.
+	 */
+	void (*read_csc)(struct intel_crtc_state *crtc_state);
 };
 
 #define CTM_COEFF_SIGN	(1ULL << 63)
@@ -227,6 +233,72 @@ static void ilk_update_pipe_csc(struct intel_crtc *crtc,
 	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe), csc->postoff[2]);
 }
 
+static void ilk_read_pipe_csc(struct intel_crtc *crtc,
+			      struct intel_csc_matrix *csc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 tmp;
+
+	csc->preoff[0] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_HI(pipe));
+	csc->preoff[1] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_ME(pipe));
+	csc->preoff[2] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_LO(pipe));
+
+	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RY_GY(pipe));
+	csc->coeff[0] = tmp >> 16;
+	csc->coeff[1] = tmp & 0xffff;
+	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BY(pipe));
+	csc->coeff[2] = tmp >> 16;
+
+	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RU_GU(pipe));
+	csc->coeff[3] = tmp >> 16;
+	csc->coeff[4] = tmp & 0xffff;
+	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BU(pipe));
+	csc->coeff[5] = tmp >> 16;
+
+	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RV_GV(pipe));
+	csc->coeff[6] = tmp >> 16;
+	csc->coeff[7] = tmp & 0xffff;
+	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BV(pipe));
+	csc->coeff[8] = tmp >> 16;
+
+	if (DISPLAY_VER(i915) < 7)
+		return;
+
+	csc->postoff[0] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_HI(pipe));
+	csc->postoff[1] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_ME(pipe));
+	csc->postoff[2] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_LO(pipe));
+}
+
+static void ilk_read_csc(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc_state->csc_enable)
+		ilk_read_pipe_csc(crtc, &crtc_state->csc);
+}
+
+static void skl_read_csc(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	/*
+	 * Display WA #1184: skl,glk
+	 * Wa_1406463849: icl
+	 *
+	 * Danger! On SKL-ICL *reads* from the CSC coeff/offset registers
+	 * will disarm an already armed CSC double buffer update.
+	 * So this must not be called while armed. Fortunately the state checker
+	 * readout happens only after the update has been already been latched.
+	 *
+	 * On earlier and later platforms only writes to said registers will
+	 * disarm the update. This is considered normal behavior and also
+	 * happens with various other hardware units.
+	 */
+	if (crtc_state->csc_enable)
+		ilk_read_pipe_csc(crtc, &crtc_state->csc);
+}
+
 static void icl_update_output_csc(struct intel_crtc *crtc,
 				  const struct intel_csc_matrix *csc)
 {
@@ -257,6 +329,56 @@ static void icl_update_output_csc(struct intel_crtc *crtc,
 	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), csc->postoff[2]);
 }
 
+static void icl_read_output_csc(struct intel_crtc *crtc,
+				struct intel_csc_matrix *csc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 tmp;
+
+	csc->preoff[0] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe));
+	csc->preoff[1] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe));
+	csc->preoff[2] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe));
+
+	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe));
+	csc->coeff[0] = tmp >> 16;
+	csc->coeff[1] = tmp & 0xffff;
+	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BY(pipe));
+	csc->coeff[2] = tmp >> 16;
+
+	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe));
+	csc->coeff[3] = tmp >> 16;
+	csc->coeff[4] = tmp & 0xffff;
+	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BU(pipe));
+	csc->coeff[5] = tmp >> 16;
+
+	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe));
+	csc->coeff[6] = tmp >> 16;
+	csc->coeff[7] = tmp & 0xffff;
+	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BV(pipe));
+	csc->coeff[8] = tmp >> 16;
+
+	csc->postoff[0] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe));
+	csc->postoff[1] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe));
+	csc->postoff[2] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe));
+}
+
+static void icl_read_csc(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	/*
+	 * Wa_1406463849: icl
+	 *
+	 * See skl_read_csc()
+	 */
+	if (crtc_state->csc_mode & ICL_CSC_ENABLE)
+		ilk_read_pipe_csc(crtc, &crtc_state->csc);
+
+	if (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE)
+		icl_read_output_csc(crtc, &crtc_state->output_csc);
+}
+
 static bool ilk_limited_range(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -1581,6 +1703,9 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	i915->display.funcs.color->read_luts(crtc_state);
+
+	if (i915->display.funcs.color->read_csc)
+		i915->display.funcs.color->read_csc(crtc_state);
 }
 
 bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
@@ -3229,6 +3354,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
 	.load_luts = icl_load_luts,
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
+	.read_csc = icl_read_csc,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
@@ -3239,6 +3365,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 	.load_luts = icl_load_luts,
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
+	.read_csc = icl_read_csc,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
@@ -3248,6 +3375,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 	.load_luts = glk_load_luts,
 	.read_luts = glk_read_luts,
 	.lut_equal = glk_lut_equal,
+	.read_csc = skl_read_csc,
 };
 
 static const struct intel_color_funcs skl_color_funcs = {
@@ -3257,6 +3385,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.load_luts = bdw_load_luts,
 	.read_luts = bdw_read_luts,
 	.lut_equal = ivb_lut_equal,
+	.read_csc = skl_read_csc,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
@@ -3266,6 +3395,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
 	.load_luts = bdw_load_luts,
 	.read_luts = bdw_read_luts,
 	.lut_equal = ivb_lut_equal,
+	.read_csc = ilk_read_csc,
 };
 
 static const struct intel_color_funcs hsw_color_funcs = {
@@ -3275,6 +3405,7 @@ static const struct intel_color_funcs hsw_color_funcs = {
 	.load_luts = ivb_load_luts,
 	.read_luts = ivb_read_luts,
 	.lut_equal = ivb_lut_equal,
+	.read_csc = ilk_read_csc,
 };
 
 static const struct intel_color_funcs ivb_color_funcs = {
@@ -3284,6 +3415,7 @@ static const struct intel_color_funcs ivb_color_funcs = {
 	.load_luts = ivb_load_luts,
 	.read_luts = ivb_read_luts,
 	.lut_equal = ivb_lut_equal,
+	.read_csc = ilk_read_csc,
 };
 
 static const struct intel_color_funcs ilk_color_funcs = {
@@ -3293,6 +3425,7 @@ static const struct intel_color_funcs ilk_color_funcs = {
 	.load_luts = ilk_load_luts,
 	.read_luts = ilk_read_luts,
 	.lut_equal = ilk_lut_equal,
+	.read_csc = ilk_read_csc,
 };
 
 void intel_color_crtc_init(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b53a1d969344..aa22241c971c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7384,6 +7384,12 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * 7. New _arm() registers are finally written
 	 * 8. Hardware finally latches a complete set of new
 	 *    register values, and subsequent frames will be OK again
+	 *
+	 * Also note that due to the pipe CSC hardware issues on
+	 * SKL/GLK DC states must remain off until the pipe CSC
+	 * state readout has happened. Otherwise we risk corrupting
+	 * the CSC latched register values with the readout (see
+	 * skl_read_csc() and skl_color_commit_noarm()).
 	 */
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DC_OFF);
 
-- 
2.39.2

