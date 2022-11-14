Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E014162841E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E3210E2EC;
	Mon, 14 Nov 2022 15:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C826D10E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440282; x=1699976282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FiI+gimIj7yiD2s5NGrXnHKQE4q6u97y+EzErDnktPo=;
 b=GDziKva1713GtQtPp9Jam9VJf9s9ayJD75m1wAeRGD51532e4+UQeoiO
 u7EEYcq8NoTxLHCFOAtm1nw96N7mX8BZ8qmIwVuofRn0zHVv0Ts/PXFjR
 0lijHnh6bAlPNA0Idb771r/qaNlbfibX/ys09ezSWrypf0wjJ0c291ADi
 qVD9Nij2B1/7KP7y4LbXGJYBkwznEYcm1BYe0MczWaIhxnq4pO2QPD8W7
 W+yazaZEH8oNwx08lk0t3ONp5+PzRUpkqt79DFs/oG7LJ3wamsYKxDJQK
 WVUzNVtdcM1CU4Jwqnk2PYDuDdBk3uNNiXgmcKnQdBIIzJ1z/xWjx0o03 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290799"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290799"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:38:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968471"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968471"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:38:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:21 +0200
Message-Id: <20221114153732.11773-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/20] drm/i915: Read out CHV CGM degamma
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
index 3dd8a4ff0eca..430fa23c102f 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1087,6 +1087,13 @@ static u32 chv_cgm_degamma_udw(const struct drm_color_lut *color)
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
@@ -2048,6 +2055,32 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
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
@@ -2078,6 +2111,9 @@ static void chv_read_luts(struct intel_crtc_state *crtc_state)
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

