Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B40BD623D63
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F7810E684;
	Thu, 10 Nov 2022 08:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B7D10E67D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068529; x=1699604529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VBpcZq2EUhIF21KL2tdJDY8cfsPbR7J7qVHp1mExmSM=;
 b=WPooso5YZv+sBg4Pu/wFTmsf4s/4Vm39FJ32GLl54ROJ49DaNHrguZrt
 PSqT/HZHmKy56LTpjDHGdDVy4TUSK/Sq9ij0/si0M5bUbPjw10AEIund0
 vTojooqeI+JJwomUg4lQJqHhU/yUGO60zIAGLICnjHf6GJA0qGzcY6AM5
 98HHige/xIfszzA4VSP8v2Fo4xpR3y+FqNWVsIYIHpP3nY0WEpithSQbp
 C+zdMD6v2zlAwwglxOsNcJdDxhd27Gj/WvBtaa9P740cHdPvYmsXPIjQK
 H+UFMx7+6wSH8eX0l7+ADUYPFBRw3j31IUKDxU3vGIA0R+27ZBY0J9QJh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291647278"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="291647278"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="637085760"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="637085760"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 00:22:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:33 +0200
Message-Id: <20221110082144.19666-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/18] drm/i915: Add glk+ degamma readout
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 9c259e144772..f82c76754201 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2181,10 +2181,51 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
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
 
@@ -2243,6 +2284,9 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	if (crtc_state->gamma_mode & PRE_CSC_GAMMA_ENABLE)
+		crtc_state->pre_csc_lut = glk_read_degamma_lut(crtc);
+
 	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0)
 		return;
 
-- 
2.37.4

