Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD02623D64
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB26310E686;
	Thu, 10 Nov 2022 08:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A9110E681
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068539; x=1699604539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M+fK5GSLc3HXpdcAExn676btwc6cq7ee6oJlZ+6zcnc=;
 b=bFPOcU6uFecyNTrhZu22C6NpmrK2KJAzHBHbn2z2xeRZbmKmvFOqeDKx
 0MbJ5Ltho56CAxuY6NhlvqGt+o6fKn27orsRkzeKVgczE6WqDIf09ll9Y
 Q7GPLqQwZZncywDAxzXYMvmueZn3BWQ9szOl3aHs7jRXH5cId+3W6uxIL
 5Y0zN9KadbjWpHjBHJWiiiBaOZu225j406aQQM1YAK/20K/fNWYcV1vwO
 BDvUNRDC2sYLkJwFbb1KTtQUurk5lYOsLXVamv4I4l4/WTvIlzvzMPCIs
 QlXzJ52yJsXrtGi8Bw2iiqUuITSJ4VdRvq3eDBeyd2fBdPntxz9SaDl65 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309965415"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="309965415"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="639531050"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="639531050"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 10 Nov 2022 00:22:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:36 +0200
Message-Id: <20221110082144.19666-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/18] drm/i915: Add gamma/degamma readout
 for ivb/hsw
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

We now have all the code necessary for gamma/degamma readout on
ivb/hsw. Plug it all in. As with bdw+ the cooked {pre,post}_csc_lut
make this trivial even in split gamma mode.

Note that on HSW if IPS is enabled the hardware will hang if
you try to access the LUT in split gamma mode. Thus we need to
reorder the LUT readout vs. IPS enable steps.

v2: deal with {pre,post}_csc_lut
    split gamma is no longer a problem
    handle HSW IPS w/a

Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 72 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.c |  4 +-
 2 files changed, 73 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 63e6665b0ec5..371ffc2bb371 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2182,6 +2182,74 @@ static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 	}
 }
 
+/*
+ * IVB/HSW Bspec / PAL_PREC_INDEX:
+ * "Restriction : Index auto increment mode is not
+ *  supported and must not be enabled."
+ */
+static struct drm_property_blob *ivb_read_lut_10(struct intel_crtc *crtc,
+						 u32 prec_index)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	int i, lut_size = ivb_lut_10_size(prec_index);
+	enum pipe pipe = crtc->pipe;
+	struct drm_property_blob *blob;
+	struct drm_color_lut *lut;
+
+	blob = drm_property_create_blob(&dev_priv->drm,
+					sizeof(lut[0]) * lut_size,
+					NULL);
+	if (IS_ERR(blob))
+		return NULL;
+
+	lut = blob->data;
+
+	for (i = 0; i < lut_size; i++) {
+		u32 val;
+
+		intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
+				  prec_index + i);
+		val = intel_de_read_fw(dev_priv, PREC_PAL_DATA(pipe));
+
+		ilk_lut_10_pack(&lut[i], val);
+	}
+
+	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
+
+	return blob;
+}
+
+static void ivb_read_luts(struct intel_crtc_state *crtc_state)
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
+			ivb_read_lut_10(crtc, PAL_PREC_SPLIT_MODE |
+					PAL_PREC_INDEX_VALUE(0));
+		crtc_state->post_csc_lut =
+			ivb_read_lut_10(crtc, PAL_PREC_SPLIT_MODE |
+					PAL_PREC_INDEX_VALUE(512));
+		break;
+	case GAMMA_MODE_MODE_10BIT:
+		*blob = ivb_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
+		break;
+	default:
+		MISSING_CASE(crtc_state->gamma_mode);
+		break;
+	}
+}
+
 /* On BDW+ the index auto increment mode actually works */
 static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 						 u32 prec_index)
@@ -2428,7 +2496,7 @@ static const struct intel_color_funcs hsw_color_funcs = {
 	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = ivb_load_luts,
-	.read_luts = NULL,
+	.read_luts = ivb_read_luts,
 };
 
 static const struct intel_color_funcs ivb_color_funcs = {
@@ -2436,7 +2504,7 @@ static const struct intel_color_funcs ivb_color_funcs = {
 	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = ilk_color_commit_arm,
 	.load_luts = ivb_load_luts,
-	.read_luts = NULL,
+	.read_luts = ivb_read_luts,
 };
 
 static const struct intel_color_funcs ilk_color_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0d3353c403af..4f1c910a98cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1244,7 +1244,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
 		intel_update_watermarks(dev_priv);
 
-	hsw_ips_post_update(state, crtc);
 	intel_fbc_post_update(state, crtc);
 
 	if (needs_async_flip_vtd_wa(old_crtc_state) &&
@@ -7582,6 +7581,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
 
+		/* Must be done after gamma readout due to HSW split gamma vs. IPS w/a */
+		hsw_ips_post_update(state, crtc);
+
 		/*
 		 * Activate DRRS after state readout to avoid
 		 * dp_m_n vs. dp_m2_n2 confusion on BDW+.
-- 
2.37.4

