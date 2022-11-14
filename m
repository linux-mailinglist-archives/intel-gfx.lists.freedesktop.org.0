Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A91628419
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69CF110E2DE;
	Mon, 14 Nov 2022 15:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC1710E2DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440292; x=1699976292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DXPsRf014jkyu5VDZmUVnsi6vrYvJNPhngjPVBBX8Xo=;
 b=ObV3dD7fjhSjbeT4sVs0aYq5JXle74UgY1VbXhfEFH9amHaUG7tkovNZ
 J2U9QOck5CcOsYd6vDhr8/fd/PnqnohZ8mFY4ElhjaF/K9b4SyGEffbul
 ry0YnJDTzJ9DRAbowtPp9dod9x6EtwdewDpMXFQIg0eVBXwcODl6kxwnh
 Gw10lvnUy+ZbtEHZ8DlUTOVrwBfaXs1fNDZAamThBd7A4IWZtX4cOPAb/
 ogVlpLerbRfY17Py2ErxWSmmr0J6ij6Dvg0mj3Xd/RgUOLYuATuIKYgp2
 Ev5Ln5FNuvojiwwDSGKq96iisCVtTmKtKhSLuWAK+XMDAYInrXP45idDe A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290813"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290813"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:38:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968528"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968528"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:38:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:38:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:22 +0200
Message-Id: <20221114153732.11773-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/20] drm/i915: Add gamma/degamma readout
 for bdw+
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

Read out the gamma/degamma LUT on bdw+. Now that the
{pre,post}_csc_lut match the hardware LUT size even
in split gamma mode this is trivial.

v2: deal with {pre,post}_csc_lut
    split gamma is no longer a problem
v3: add ilk_has_post_csc_lut() helper

Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 51 +++++++++++++++++-----
 1 file changed, 41 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 430fa23c102f..bdc218dbc623 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1815,12 +1815,15 @@ static int i9xx_post_csc_lut_precision(const struct intel_crtc_state *crtc_state
 	}
 }
 
+static bool ilk_has_post_csc_lut(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->gamma_enable &&
+		(crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) != 0;
+}
+
 static int ilk_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->gamma_enable)
-		return 0;
-
-	if ((crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) == 0)
+	if (!ilk_has_post_csc_lut(crtc_state))
 		return 0;
 
 	switch (crtc_state->gamma_mode) {
@@ -2198,14 +2201,11 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 						 u32 prec_index)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	int i, hw_lut_size = ivb_lut_10_size(prec_index);
-	int lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
+	int i, lut_size = ivb_lut_10_size(prec_index);
 	enum pipe pipe = crtc->pipe;
 	struct drm_property_blob *blob;
 	struct drm_color_lut *lut;
 
-	drm_WARN_ON(&i915->drm, lut_size != hw_lut_size);
-
 	blob = drm_property_create_blob(&i915->drm,
 					sizeof(lut[0]) * lut_size,
 					NULL);
@@ -2228,6 +2228,37 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 	return blob;
 }
 
+static void bdw_read_luts(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_property_blob **blob =
+		ilk_has_post_csc_lut(crtc_state) ?
+		&crtc_state->post_csc_lut : &crtc_state->pre_csc_lut;
+
+	if (!crtc_state->gamma_enable)
+		return;
+
+	switch (crtc_state->gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		*blob = ilk_read_lut_8(crtc);
+		break;
+	case GAMMA_MODE_MODE_SPLIT:
+		crtc_state->pre_csc_lut =
+			bdw_read_lut_10(crtc, PAL_PREC_SPLIT_MODE |
+					PAL_PREC_INDEX_VALUE(0));
+		crtc_state->post_csc_lut =
+			bdw_read_lut_10(crtc, PAL_PREC_SPLIT_MODE |
+					PAL_PREC_INDEX_VALUE(512));
+		break;
+	case GAMMA_MODE_MODE_10BIT:
+		*blob = bdw_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
+		break;
+	default:
+		MISSING_CASE(crtc_state->gamma_mode);
+		break;
+	}
+}
+
 static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -2395,7 +2426,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = bdw_load_luts,
-	.read_luts = NULL,
+	.read_luts = bdw_read_luts,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
@@ -2403,7 +2434,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
 	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = bdw_load_luts,
-	.read_luts = NULL,
+	.read_luts = bdw_read_luts,
 };
 
 static const struct intel_color_funcs hsw_color_funcs = {
-- 
2.37.4

