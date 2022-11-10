Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 153D2623D60
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCC010E67E;
	Thu, 10 Nov 2022 08:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57D8E10E67F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068532; x=1699604532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bmSroC/hhFnVJAsRqufcIq/DVtzcMn224+KsRISXqPo=;
 b=dEtoe1E7VH+KxvOklZVClZfj4JNU/vmJWhJ0k9mBaHomqVZaCyyoiuhy
 D7ySCPitJhFAjxVNy2y6HMWDehXtpG4xyoRMHoy+zZl+CDb4jynIVhlZK
 hJsZ4cv+65susDny+QgsdBd94A+jbL392+61x7QgLWbSm0snjkJJDLMn4
 V88TZoSeqKtJEFzvrcbOdXCekaxgGt+m42hYIqYc5Cz9KWvFXhvv9Q/Bz
 RyHbTAeyjpOrJOB0S9ptPQhEDoGvycXpW6oO9RmFL6ATjex2LCIvZadzm
 cCSC15nGZzPZYMCalTNJDJeWLNcJ65xvC8GKzos8Yb00ICjBv/rPU0n9n Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291647300"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="291647300"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="637085775"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="637085775"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 00:22:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:34 +0200
Message-Id: <20221110082144.19666-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/18] drm/i915: Read out CHV CGM degamma
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

Since CHV has the dedicate CGM degamma unit readout is trivial.
Just do it.

v2: deal with post_csc_lut

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 36 ++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index f82c76754201..e0a0b82ae52a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1086,6 +1086,13 @@ static u32 chv_cgm_degamma_udw(const struct drm_color_lut *color)
 	return REG_FIELD_PREP(CGM_PIPE_DEGAMMA_RED_UDW_MASK, drm_color_lut_extract(color->red, 14));
 }
 
+static void chv_cgm_degamma_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
+{
+	entry->green = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_DEGAMMA_GREEN_LDW_MASK, ldw), 14);
+	entry->blue = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_DEGAMMA_BLUE_LDW_MASK, ldw), 14);
+	entry->red = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_DEGAMMA_RED_UDW_MASK, udw), 14);
+}
+
 static void chv_load_cgm_degamma(struct intel_crtc *crtc,
 				 const struct drm_property_blob *blob)
 {
@@ -2037,6 +2044,32 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
 		crtc_state->post_csc_lut = i965_read_lut_10p6(crtc);
 }
 
+static struct drm_property_blob *chv_read_cgm_degamma(struct intel_crtc *crtc)
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
+	for (i = 0; i < lut_size; i++) {
+		u32 ldw = intel_de_read_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 0));
+		u32 udw = intel_de_read_fw(dev_priv, CGM_PIPE_DEGAMMA(pipe, i, 1));
+
+		chv_cgm_degamma_pack(&lut[i], ldw, udw);
+	}
+
+	return blob;
+}
+
 static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -2067,6 +2100,9 @@ static void chv_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	if (crtc_state->cgm_mode & CGM_PIPE_MODE_DEGAMMA)
+		crtc_state->pre_csc_lut = chv_read_cgm_degamma(crtc);
+
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_GAMMA)
 		crtc_state->post_csc_lut = chv_read_cgm_gamma(crtc);
 	else
-- 
2.37.4

