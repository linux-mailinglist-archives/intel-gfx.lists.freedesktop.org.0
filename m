Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA298623D6A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB1010E68D;
	Thu, 10 Nov 2022 08:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E82710E680
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068535; x=1699604535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0ohbTigKroVv+I0L0mrB1Te5/eflZNZCJPbGyWmxm+c=;
 b=PwipzQZl11XWZ/pyb0KS1DbW1QUnrLRJjOEjCcafOlqGtlpWq8fJ6bzT
 XpqKgmuvcuHlwDGDShTQhmKZCbPj/lqWhkjsFhPgJCrSi+aOzB+18zIR8
 VyBT5ph1UNZbRlV26T4XmVOQhwfUAV7UYLL6O/1yNn+On+dyuiUY9Q6sg
 rnLtP4JwtozFrUQV8SiK8QBiCebP6uhI7AWQxaqAtrgw+jgg+nmMG66Vr
 SracZuL32qHkbw5fDqupUUSGXSb5CCHuD5+7wJZXtRLW400KBfJIjGqvW
 HtQSYkBTOjIXIPohoBnXABekgsGcu48QpeIQLBbxp+CFAgnUp55+ivEup g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291647321"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="291647321"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="637085790"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="637085790"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 00:22:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:35 +0200
Message-Id: <20221110082144.19666-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/18] drm/i915: Add gamma/degamma readout
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 40 ++++++++++++++++++----
 1 file changed, 34 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e0a0b82ae52a..63e6665b0ec5 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2187,14 +2187,11 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
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
@@ -2217,6 +2214,37 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 	return blob;
 }
 
+static void bdw_read_luts(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_property_blob **blob =
+		crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA ?
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
@@ -2384,7 +2412,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = bdw_load_luts,
-	.read_luts = NULL,
+	.read_luts = bdw_read_luts,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
@@ -2392,7 +2420,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
 	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = bdw_load_luts,
-	.read_luts = NULL,
+	.read_luts = bdw_read_luts,
 };
 
 static const struct intel_color_funcs hsw_color_funcs = {
-- 
2.37.4

