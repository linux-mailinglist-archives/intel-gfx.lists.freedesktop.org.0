Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C43628418
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E218C10E2E7;
	Mon, 14 Nov 2022 15:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE5D10E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440279; x=1699976279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bPtrAByC3JEgQ8zb/d/4amBAQYhBMlcUrAHUUvhIQMw=;
 b=ix4gGLSXnh2H9/1we++IdFBLx0V96JdLpxIuefV4ftmBScjW2t9hzg8b
 BFe9ug0UpZZnmUN1htcObK7aSw3aepr3w5JVvCKG+vX6b97hKsyC9lE6s
 lCf5bAIbeoFrSFlw9TvRAyGUz5C8MoBL1jWVezou/CTxRRKb7mbS4RL2C
 FZgs8f5LWublrVqvSuMQ9rjqqdtGDZKPOumHdkR1i1yfqAL/K2YlwEr38
 QTnDuRyNS1505g3GnhAhmX44A10pJEiDjuyyGZ5Ay/VSC1YAbmSgYaWku
 p57b9KruevoUismL4x/jnqkHO9xamNK6+XmkS+IwHE7xGLAPbB8sr8sAh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290774"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290774"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:37:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968447"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968447"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:37:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:20 +0200
Message-Id: <20221114153732.11773-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/20] drm/i915: Add glk+ degamma readout
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

Read out the degamma LUT on glk+. No state cheker as of yet since
it requires dealing with the glk csc vs. degamma mess.

v2: deal with post_csc_lut
v3: add icl_has_{pre,post}_csc_lut(*) helpers

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 58 +++++++++++++++++++++-
 1 file changed, 56 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e1958a1b4dcc..3dd8a4ff0eca 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1851,9 +1851,19 @@ static int glk_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static bool icl_has_post_csc_lut(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE;
+}
+
+static bool icl_has_pre_csc_lut(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->gamma_mode & PRE_CSC_GAMMA_ENABLE;
+}
+
 static int icl_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 {
-	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0)
+	if (!icl_has_post_csc_lut(crtc_state))
 		return 0;
 
 	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
@@ -2182,10 +2192,51 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 	return blob;
 }
 
+static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	int i, lut_size = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
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
+	/*
+	 * When setting the auto-increment bit, the hardware seems to
+	 * ignore the index bits, so we need to reset it to index 0
+	 * separately.
+	 */
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+			  PRE_CSC_GAMC_AUTO_INCREMENT);
+
+	for (i = 0; i < lut_size; i++) {
+		u32 val = intel_de_read_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe));
+
+		lut[i].red = val;
+		lut[i].green = val;
+		lut[i].blue = val;
+	}
+
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+
+	return blob;
+}
+
 static void glk_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	if (crtc_state->csc_enable)
+		crtc_state->pre_csc_lut = glk_read_degamma_lut(crtc);
+
 	if (!crtc_state->gamma_enable)
 		return;
 
@@ -2244,7 +2295,10 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0)
+	if (icl_has_pre_csc_lut(crtc_state))
+		crtc_state->pre_csc_lut = glk_read_degamma_lut(crtc);
+
+	if (!icl_has_post_csc_lut(crtc_state))
 		return;
 
 	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
-- 
2.37.4

