Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD136CDB2B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4151810EAF5;
	Wed, 29 Mar 2023 13:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF8310EAEC
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097820; x=1711633820;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NgFMgkrMOF82QAPvPz5sQo1qKYdVyu3kSOaBs5g7SA4=;
 b=Pde6zqBrlfIpIDKpUprMyvEJK04vMf3VN3MU5wsnknBo6IS3Gc5QyA94
 TpftW1TXJCSg2ji1UI096A1qny7BC9joa/oIBJPyBS2N0JGcZuExv4Hrq
 iPKaoaebvfwCABdt0ptz+9g2i1P8OldcgSKPh6GCRK5hgEeV3VDopgB7/
 mlqiIt15/jOX1ElelGsr5YiOZ+d5duUJNWcKpJ9E1fI66u7fwIWDbM4gX
 UHPejWbypr3d5QQtWwQKE8PVDoRwUhgLneeq/QsKDb4CgOmyNJXzSp9j5
 tSLQ4UNKF/YNV3vMjjiViqwJWlbCRFftyr2RRJuGj5KZDymwPrmRbUYIT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379039"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379039"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029430"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029430"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:55 +0300
Message-Id: <20230329135002.3096-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Store ilk+ csc matrices in the
 crtc state
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

Embed a pair of intel_csc_matrix structs in the crtc state,
and fill them out appropriately during atomic_check().

Since pre-ivb platforms don't have programmable post offsets
we shall leave those zeroed, mainly in preparation for
state readout+check.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 82 ++++++++++++++-----
 .../drm/i915/display/intel_display_types.h    |  2 +
 2 files changed, 63 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a76cea4ab1ec..a6f7eba59e12 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -158,6 +158,11 @@ static const struct intel_csc_matrix ilk_csc_matrix_rgb_to_ycbcr = {
 	},
 };
 
+static void intel_csc_clear(struct intel_csc_matrix *csc)
+{
+	memset(csc, 0, sizeof(*csc));
+}
+
 static bool lut_is_legacy(const struct drm_property_blob *lut)
 {
 	return lut && drm_color_lut_size(lut) == LEGACY_LUT_LENGTH;
@@ -292,10 +297,21 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
 	return !ilk_lut_limited_range(crtc_state);
 }
 
+static void ilk_csc_copy(struct drm_i915_private *i915,
+			 struct intel_csc_matrix *dst,
+			 const struct intel_csc_matrix *src)
+{
+	*dst = *src;
+
+	if (DISPLAY_VER(i915) < 7)
+		memset(dst->postoff, 0, sizeof(dst->postoff));
+}
+
 static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 				struct intel_csc_matrix *csc,
 				bool limited_color_range)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
 	const u64 *input;
 	u64 temp[9];
@@ -303,9 +319,9 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 
 	/* for preoff/postoff */
 	if (limited_color_range)
-		*csc = ilk_csc_matrix_limited_range;
+		ilk_csc_copy(i915, csc, &ilk_csc_matrix_limited_range);
 	else
-		*csc = ilk_csc_matrix_identity;
+		ilk_csc_copy(i915, csc, &ilk_csc_matrix_identity);
 
 	if (limited_color_range)
 		input = ctm_mult_by_limited(temp, ctm->matrix);
@@ -351,22 +367,17 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
 	}
 }
 
-static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
+static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 
 	if (crtc_state->hw.ctm) {
-		struct intel_csc_matrix tmp;
-
-		ilk_csc_convert_ctm(crtc_state, &tmp, limited_color_range);
-
-		ilk_update_pipe_csc(crtc, &tmp);
+		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, limited_color_range);
 	} else if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
-		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_rgb_to_ycbcr);
+		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_rgb_to_ycbcr);
 	} else if (limited_color_range) {
-		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_limited_range);
+		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_limited_range);
 	} else if (crtc_state->csc_enable) {
 		/*
 		 * On GLK both pipe CSC and degamma LUT are controlled
@@ -376,29 +387,50 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 		 */
 		drm_WARN_ON(&i915->drm, !IS_GEMINILAKE(i915));
 
-		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_identity);
+		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_identity);
+	} else {
+		intel_csc_clear(&crtc_state->csc);
 	}
 }
 
-static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
+static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	if (crtc_state->csc_enable)
+		ilk_update_pipe_csc(crtc, &crtc_state->csc);
+}
+
+static void icl_assign_csc(struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
 	if (crtc_state->hw.ctm) {
-		struct intel_csc_matrix tmp;
-
-		ilk_csc_convert_ctm(crtc_state, &tmp, false);
-
-		ilk_update_pipe_csc(crtc, &tmp);
+		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, false);
+	} else {
+		intel_csc_clear(&crtc_state->csc);
 	}
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
-		icl_update_output_csc(crtc, &ilk_csc_matrix_rgb_to_ycbcr);
+		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_rgb_to_ycbcr);
 	} else if (crtc_state->limited_color_range) {
-		icl_update_output_csc(crtc, &ilk_csc_matrix_limited_range);
+		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_limited_range);
+	} else {
+		intel_csc_clear(&crtc_state->output_csc);
 	}
 }
 
+static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc_state->csc_mode & ICL_CSC_ENABLE)
+		ilk_update_pipe_csc(crtc, &crtc_state->csc);
+
+	if (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE)
+		icl_update_output_csc(crtc, &crtc_state->output_csc);
+}
+
 static void chv_cgm_csc_convert_ctm(struct intel_csc_matrix *csc,
 				    const struct drm_property_blob *blob)
 {
@@ -1962,6 +1994,8 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	ilk_assign_csc(crtc_state);
+
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
@@ -2068,6 +2102,8 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	ilk_assign_csc(crtc_state);
+
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
@@ -2199,6 +2235,8 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	ilk_assign_csc(crtc_state);
+
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
@@ -2261,6 +2299,8 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 
 	intel_assign_luts(crtc_state);
 
+	icl_assign_csc(crtc_state);
+
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4829399ea700..1683827632ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1032,6 +1032,8 @@ struct intel_crtc_state {
 	/* actual state of LUTs */
 	struct drm_property_blob *pre_csc_lut, *post_csc_lut;
 
+	struct intel_csc_matrix csc, output_csc;
+
 	/**
 	 * quirks - bitfield with hw state readout quirks
 	 *
-- 
2.39.2

