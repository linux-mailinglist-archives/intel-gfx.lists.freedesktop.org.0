Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 667AE5EEEAA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A814810E9D6;
	Thu, 29 Sep 2022 07:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0931410E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435747; x=1695971747;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=W9rhmJTP+GAPBGc98YsF2q9P7kjYUzlmgSa8zYBdIw8=;
 b=Q8OfxmU74obBD2ScVadF7AtjsBF7RT0jFDDki9vr2tOApQJCCOIwbjVJ
 106clolO3/sjCzTy+6ty6bHeGGvfHhyyqwKo9JY8bS8sQFq3pU8COVex0
 6E5vDVZ7efQ+pTwUNWPIadqmuPrsUAR/rubaoDDy0sTwk0p6OLGEN++6I
 /DsaYUyh9HCyu6fzfRYHxB/WDn8W7f0ERX9RHrVpPqhazTcRIu9z/ZEg3
 NdgvrIRLIkAh2q7IcpS/c6r3JH7a7O3wU2Kcq/qM5TFmNAF0a6yxjdUpb
 yBP8LVUAFxaIymWClHSV8n1A2YdXtgWx+u3BjPWi+On7jZs9L+sVL/FKT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="288979141"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="288979141"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655441231"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655441231"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2022 00:15:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:18 +0300
Message-Id: <20220929071521.26612-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/10] drm/i915: Introduce crtc_state->{pre,
 post}_csc_lut
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

Add an extra remapping step between the logical state of the LUTs
(hw.(de)gamma_lut) as specified via uapi/bigjoiner copy vs.
the actual state of the LUTs programmed into the hardware.

With this we should be finally able finish the (de)gamma
readout/state checker support for the remaining platforms
(ilk-skl) where the same hardware LUT can be positioned
either before or after the pipe CSC unit. Where we position
it depends on factors such as presence of the logical degamma
LUT, RGB vs. YCbCr output, full vs. limited RGB quantization
range.

Without the extra remapping step the state readout doesn't
really know whether the LUT read from the hardware is the
degamma or gamma LUT, and so we is unable to accurately store
it into our crtc state. With the remapping step we know
exactly where to put it given the order of the LUT vs. CSC
in the hardware state.

Only the initial hw->uapi state readout done during driver
load/resume still has the problem of not really knowing
what to do with the LUT(s). But we can just assume 1:1
mapping there and let subsequent commits fix things up.

Another benefit is that we now have a place for purely
internal LUTs, without complicating the bigjoiner uapi->hw
copy logic. This should prove useful for streamlining
glk degamma LUT handling.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |   8 +
 drivers/gpu/drm/i915/display/intel_color.c    | 141 +++++++++++-------
 .../drm/i915/display/intel_crtc_state_dump.c  |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   4 +
 .../drm/i915/display/intel_modeset_setup.c    |   6 +
 6 files changed, 114 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 18f0a5ae3bac..6621aa245caf 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -252,6 +252,11 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	if (crtc_state->hw.gamma_lut)
 		drm_property_blob_get(crtc_state->hw.gamma_lut);
 
+	if (crtc_state->pre_csc_lut)
+		drm_property_blob_get(crtc_state->pre_csc_lut);
+	if (crtc_state->post_csc_lut)
+		drm_property_blob_get(crtc_state->post_csc_lut);
+
 	crtc_state->update_pipe = false;
 	crtc_state->disable_lp_wm = false;
 	crtc_state->disable_cxsr = false;
@@ -274,6 +279,9 @@ static void intel_crtc_put_color_blobs(struct intel_crtc_state *crtc_state)
 	drm_property_blob_put(crtc_state->hw.degamma_lut);
 	drm_property_blob_put(crtc_state->hw.gamma_lut);
 	drm_property_blob_put(crtc_state->hw.ctm);
+
+	drm_property_blob_put(crtc_state->pre_csc_lut);
+	drm_property_blob_put(crtc_state->post_csc_lut);
 }
 
 void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index abaa1abab64d..380f44720fe6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -578,9 +578,9 @@ static void i9xx_load_lut_8(struct intel_crtc *crtc,
 static void i9xx_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 
-	i9xx_load_lut_8(crtc, gamma_lut);
+	i9xx_load_lut_8(crtc, post_csc_lut);
 }
 
 static void i965_load_lut_10p6(struct intel_crtc *crtc,
@@ -606,12 +606,12 @@ static void i965_load_lut_10p6(struct intel_crtc *crtc,
 static void i965_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 
 	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
-		i9xx_load_lut_8(crtc, gamma_lut);
+		i9xx_load_lut_8(crtc, post_csc_lut);
 	else
-		i965_load_lut_10p6(crtc, gamma_lut);
+		i965_load_lut_10p6(crtc, post_csc_lut);
 }
 
 static void ilk_load_lut_8(struct intel_crtc *crtc,
@@ -648,9 +648,9 @@ static void ilk_load_lut_10(struct intel_crtc *crtc,
 static void ilk_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
-	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
-	const struct drm_property_blob *blob = gamma_lut ?: degamma_lut;
+	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
+	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
+	const struct drm_property_blob *blob = post_csc_lut ?: pre_csc_lut;
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
@@ -764,19 +764,19 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
-	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
-	const struct drm_property_blob *blob = gamma_lut ?: degamma_lut;
+	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
+	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
+	const struct drm_property_blob *blob = post_csc_lut ?: pre_csc_lut;
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
 		ilk_load_lut_8(crtc, blob);
 		break;
 	case GAMMA_MODE_MODE_SPLIT:
-		ivb_load_lut_10(crtc, degamma_lut, PAL_PREC_SPLIT_MODE |
+		ivb_load_lut_10(crtc, pre_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
-		ivb_load_lut_10(crtc, gamma_lut, PAL_PREC_SPLIT_MODE |
+		ivb_load_lut_10(crtc, post_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(512));
 		break;
 	case GAMMA_MODE_MODE_10BIT:
@@ -793,19 +793,19 @@ static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
 static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
-	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
-	const struct drm_property_blob *blob = gamma_lut ?: degamma_lut;
+	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
+	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
+	const struct drm_property_blob *blob = post_csc_lut ?: pre_csc_lut;
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
 		ilk_load_lut_8(crtc, blob);
 		break;
 	case GAMMA_MODE_MODE_SPLIT:
-		bdw_load_lut_10(crtc, degamma_lut, PAL_PREC_SPLIT_MODE |
+		bdw_load_lut_10(crtc, pre_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
-		bdw_load_lut_10(crtc, gamma_lut, PAL_PREC_SPLIT_MODE |
+		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(512));
 		break;
 	case GAMMA_MODE_MODE_10BIT:
@@ -902,8 +902,8 @@ static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_stat
 
 static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 {
-	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
-	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
+	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	/*
@@ -914,17 +914,17 @@ static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 	 * the degama LUT so that we don't have to reload
 	 * it every time the pipe CSC is being enabled.
 	 */
-	if (degamma_lut)
-		glk_load_degamma_lut(crtc_state, degamma_lut);
+	if (pre_csc_lut)
+		glk_load_degamma_lut(crtc_state, pre_csc_lut);
 	else
 		glk_load_degamma_lut_linear(crtc_state);
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, gamma_lut);
+		ilk_load_lut_8(crtc, post_csc_lut);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		bdw_load_lut_10(crtc, gamma_lut, PAL_PREC_INDEX_VALUE(0));
+		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
 		break;
 	default:
@@ -964,7 +964,7 @@ static void
 icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_property_blob *blob = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *blob = crtc_state->post_csc_lut;
 	const struct drm_color_lut *lut = blob->data;
 	enum pipe pipe = crtc->pipe;
 	int i;
@@ -993,7 +993,7 @@ static void
 icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct drm_property_blob *blob = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *blob = crtc_state->post_csc_lut;
 	const struct drm_color_lut *lut = blob->data;
 	const struct drm_color_lut *entry;
 	enum pipe pipe = crtc->pipe;
@@ -1047,23 +1047,23 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 
 static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 {
-	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
-	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
+	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (degamma_lut)
-		glk_load_degamma_lut(crtc_state, degamma_lut);
+	if (pre_csc_lut)
+		glk_load_degamma_lut(crtc_state, pre_csc_lut);
 
 	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, gamma_lut);
+		ilk_load_lut_8(crtc, post_csc_lut);
 		break;
 	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
 		icl_program_gamma_superfine_segment(crtc_state);
 		icl_program_gamma_multi_segment(crtc_state);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		bdw_load_lut_10(crtc, gamma_lut, PAL_PREC_INDEX_VALUE(0));
+		bdw_load_lut_10(crtc, post_csc_lut, PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
 		break;
 	default:
@@ -1139,18 +1139,18 @@ static void chv_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
-	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
+	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
 	const struct drm_property_blob *ctm = crtc_state->hw.ctm;
 
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC)
 		chv_load_cgm_csc(crtc, ctm);
 
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_DEGAMMA)
-		chv_load_cgm_degamma(crtc, degamma_lut);
+		chv_load_cgm_degamma(crtc, pre_csc_lut);
 
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_GAMMA)
-		chv_load_cgm_gamma(crtc, gamma_lut);
+		chv_load_cgm_gamma(crtc, post_csc_lut);
 	else
 		i965_load_luts(crtc_state);
 
@@ -1188,8 +1188,8 @@ static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 
-	return !old_crtc_state->hw.gamma_lut &&
-		!old_crtc_state->hw.degamma_lut;
+	return !old_crtc_state->post_csc_lut &&
+		!old_crtc_state->pre_csc_lut;
 }
 
 static bool chv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
@@ -1208,7 +1208,7 @@ static bool chv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 	if (old_crtc_state->cgm_mode || new_crtc_state->cgm_mode)
 		return false;
 
-	return !old_crtc_state->hw.gamma_lut;
+	return !old_crtc_state->post_csc_lut;
 }
 
 static bool glk_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
@@ -1226,7 +1226,7 @@ static bool glk_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 	 * linear hardware degamma mid scanout.
 	 */
 	return !old_crtc_state->csc_enable &&
-		!old_crtc_state->hw.gamma_lut;
+		!old_crtc_state->post_csc_lut;
 }
 
 int intel_color_check(struct intel_crtc_state *crtc_state)
@@ -1355,6 +1355,14 @@ static u32 i9xx_gamma_mode(struct intel_crtc_state *crtc_state)
 		return GAMMA_MODE_MODE_10BIT; /* i965+ only */
 }
 
+static void intel_assign_luts(struct intel_crtc_state *crtc_state)
+{
+	drm_property_replace_blob(&crtc_state->pre_csc_lut,
+				  crtc_state->hw.degamma_lut);
+	drm_property_replace_blob(&crtc_state->post_csc_lut,
+				  crtc_state->hw.gamma_lut);
+}
+
 static int i9xx_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
@@ -1373,6 +1381,8 @@ static int i9xx_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	intel_assign_luts(crtc_state);
+
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
@@ -1427,6 +1437,8 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	intel_assign_luts(crtc_state);
+
 	crtc_state->preload_luts = chv_can_preload_luts(crtc_state);
 
 	return 0;
@@ -1452,10 +1464,29 @@ static u32 ilk_csc_mode(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
 		return CSC_BLACK_SCREEN_OFFSET;
 
+	if (crtc_state->hw.degamma_lut)
+		return CSC_MODE_YUV_TO_RGB;
+
 	return CSC_MODE_YUV_TO_RGB |
 		CSC_POSITION_BEFORE_GAMMA;
 }
 
+static void ilk_assign_luts(struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->hw.degamma_lut ||
+	    crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) {
+		drm_property_replace_blob(&crtc_state->pre_csc_lut,
+					  crtc_state->hw.degamma_lut);
+		drm_property_replace_blob(&crtc_state->post_csc_lut,
+					  crtc_state->hw.gamma_lut);
+	} else {
+		drm_property_replace_blob(&crtc_state->pre_csc_lut,
+					  crtc_state->hw.gamma_lut);
+		drm_property_replace_blob(&crtc_state->post_csc_lut,
+					  NULL);
+	}
+}
+
 static int ilk_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
@@ -1483,6 +1514,8 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	ilk_assign_luts(crtc_state);
+
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
@@ -1550,6 +1583,8 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	ilk_assign_luts(crtc_state);
+
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
@@ -1598,6 +1633,8 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	intel_assign_luts(crtc_state);
+
 	crtc_state->preload_luts = glk_can_preload_luts(crtc_state);
 
 	return 0;
@@ -1658,6 +1695,8 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 
 	crtc_state->csc_mode = icl_csc_mode(crtc_state);
 
+	intel_assign_luts(crtc_state);
+
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
@@ -1863,7 +1902,7 @@ static void i9xx_read_luts(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->gamma_enable)
 		return;
 
-	crtc_state->hw.gamma_lut = i9xx_read_lut_8(crtc);
+	crtc_state->post_csc_lut = i9xx_read_lut_8(crtc);
 }
 
 static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
@@ -1904,9 +1943,9 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
 		return;
 
 	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
-		crtc_state->hw.gamma_lut = i9xx_read_lut_8(crtc);
+		crtc_state->post_csc_lut = i9xx_read_lut_8(crtc);
 	else
-		crtc_state->hw.gamma_lut = i965_read_lut_10p6(crtc);
+		crtc_state->post_csc_lut = i965_read_lut_10p6(crtc);
 }
 
 static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
@@ -1940,7 +1979,7 @@ static void chv_read_luts(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_GAMMA)
-		crtc_state->hw.gamma_lut = chv_read_cgm_gamma(crtc);
+		crtc_state->post_csc_lut = chv_read_cgm_gamma(crtc);
 	else
 		i965_read_luts(crtc_state);
 }
@@ -2007,10 +2046,10 @@ static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		crtc_state->hw.gamma_lut = ilk_read_lut_8(crtc);
+		crtc_state->post_csc_lut = ilk_read_lut_8(crtc);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		crtc_state->hw.gamma_lut = ilk_read_lut_10(crtc);
+		crtc_state->post_csc_lut = ilk_read_lut_10(crtc);
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
@@ -2062,10 +2101,10 @@ static void glk_read_luts(struct intel_crtc_state *crtc_state)
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		crtc_state->hw.gamma_lut = ilk_read_lut_8(crtc);
+		crtc_state->post_csc_lut = ilk_read_lut_8(crtc);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		crtc_state->hw.gamma_lut = bdw_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
+		crtc_state->post_csc_lut = bdw_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
@@ -2120,13 +2159,13 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
 
 	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
 	case GAMMA_MODE_MODE_8BIT:
-		crtc_state->hw.gamma_lut = ilk_read_lut_8(crtc);
+		crtc_state->post_csc_lut = ilk_read_lut_8(crtc);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		crtc_state->hw.gamma_lut = bdw_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
+		crtc_state->post_csc_lut = bdw_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
 		break;
 	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
-		crtc_state->hw.gamma_lut = icl_read_lut_multi_segment(crtc);
+		crtc_state->post_csc_lut = icl_read_lut_multi_segment(crtc);
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index e9212f69c360..98e36ab55e9e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -298,11 +298,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			    pipe_config->csc_mode, pipe_config->gamma_mode,
 			    pipe_config->gamma_enable, pipe_config->csc_enable);
 
-	drm_dbg_kms(&i915->drm, "degamma lut: %d entries, gamma lut: %d entries\n",
-		    pipe_config->hw.degamma_lut ?
-		    drm_color_lut_size(pipe_config->hw.degamma_lut) : 0,
-		    pipe_config->hw.gamma_lut ?
-		    drm_color_lut_size(pipe_config->hw.gamma_lut) : 0);
+	drm_dbg_kms(&i915->drm, "pre csc lut: %d entries, post csc lut: %d entries\n",
+		    pipe_config->pre_csc_lut ?
+		    drm_color_lut_size(pipe_config->pre_csc_lut) : 0,
+		    pipe_config->post_csc_lut ?
+		    drm_color_lut_size(pipe_config->post_csc_lut) : 0);
 
 dump_planes:
 	if (!state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a103413cb081..20569b6838d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5815,7 +5815,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 		bp_gamma = intel_color_get_gamma_bit_precision(pipe_config);
 		if (bp_gamma)
-			PIPE_CONF_CHECK_COLOR_LUT(gamma_mode, hw.gamma_lut, bp_gamma);
+			PIPE_CONF_CHECK_COLOR_LUT(gamma_mode, post_csc_lut, bp_gamma);
 
 		if (current_config->active_planes) {
 			PIPE_CONF_CHECK_BOOL(has_psr);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2b853e9e51d..cd76236d5fa3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1001,11 +1001,15 @@ struct intel_crtc_state {
 	 */
 	struct {
 		bool active, enable;
+		/* logical state of LUTs */
 		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
 		struct drm_display_mode mode, pipe_mode, adjusted_mode;
 		enum drm_scaling_filter scaling_filter;
 	} hw;
 
+	/* actual state of LUTs */
+	struct drm_property_blob *pre_csc_lut, *post_csc_lut;
+
 	/**
 	 * quirks - bitfield with hw state readout quirks
 	 *
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index cbfabd58b75a..55ccdafefd27 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -155,6 +155,12 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 	crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
 	crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
 
+	/* assume 1:1 mapping */
+	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
+				  crtc_state->pre_csc_lut);
+	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
+				  crtc_state->post_csc_lut);
+
 	drm_property_replace_blob(&crtc_state->uapi.degamma_lut,
 				  crtc_state->hw.degamma_lut);
 	drm_property_replace_blob(&crtc_state->uapi.gamma_lut,
-- 
2.35.1

