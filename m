Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6BC636388
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE5810E582;
	Wed, 23 Nov 2022 15:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA5D410E572
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217221; x=1700753221;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=W38Gzu8xkRpp5H2doxX9XVem6Rz4oiV8azAZtlptm68=;
 b=KNVYY0pIViCbUMeav7NjPz3xvwEqxv+iPEty0osSI+q9EP2XZjRygfZG
 3k722t9M0+ue5CIWYgT+zwUn29OeSFSJWKd+XyyIfRo4DAdyWVUTLkBTj
 vODuiGzoPDdYX3L7upMF6C0W1R2Dcu928jhs5izQ2l6pULXNDKjXi0ls4
 dApP9G3nh//S09uUlwHiFl8/a+TyMVXhvO7HJhZCPDDjQ0oAP+zfsCUBV
 jC8emJn/NfC3ezVoUPxVRlLNMQk3LL6s/wQZo0OocmCgkhXA0WLoPSAO4
 YOqqSu1y1GwPC/EEhPmKA6UdFCjGcTxfGF1xoivQWyqQLmNXprbuuBiVl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789942"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789942"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619651009"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619651009"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:26:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:26:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:32 +0200
Message-Id: <20221123152638.20622-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915: Move the DSB->mmio fallback
 into the LUT code
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

The use of DSB has to be done differently on a case by case basis.
So no way this kind of blind mmio fallback in the guts of the DSB
code will work properly. Move it at least one level up into the
LUT loading code. Not sure if this is the way we want do the
DSB vs. mmio handling in the end, but at least it's a bit
closer than what we had before.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 94 ++++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dsb.c   | 18 +----
 2 files changed, 62 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index bd7e781d9d07..5a4f794e1d08 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -836,6 +836,28 @@ static void i965_load_luts(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
+			  i915_reg_t reg, u32 val)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (crtc_state->dsb)
+		intel_dsb_reg_write(crtc_state, reg, val);
+	else
+		intel_de_write_fw(i915, reg, val);
+}
+
+static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
+				  i915_reg_t reg, u32 val)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (crtc_state->dsb)
+		intel_dsb_indexed_reg_write(crtc_state, reg, val);
+	else
+		intel_de_write_fw(i915, reg, val);
+}
+
 static void ilk_load_lut_8(struct intel_crtc *crtc,
 			   const struct drm_property_blob *blob)
 {
@@ -958,9 +980,9 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 
 	/* Program the max register to clamp values > 1.0. */
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
+	ilk_lut_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
+	ilk_lut_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
+	ilk_lut_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
 }
 
 static void glk_load_lut_ext2_max(const struct intel_crtc_state *crtc_state)
@@ -969,9 +991,9 @@ static void glk_load_lut_ext2_max(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 
 	/* Program the max register to clamp values > 1.0. */
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0), 1 << 16);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1), 1 << 16);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2), 1 << 16);
+	ilk_lut_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0), 1 << 16);
+	ilk_lut_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1), 1 << 16);
+	ilk_lut_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2), 1 << 16);
 }
 
 static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
@@ -1118,9 +1140,9 @@ ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
 	enum pipe pipe = crtc->pipe;
 
 	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
-	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 0), color->red);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 1), color->green);
-	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 2), color->blue);
+	ilk_lut_write(crtc_state, PREC_PAL_GC_MAX(pipe, 0), color->red);
+	ilk_lut_write(crtc_state, PREC_PAL_GC_MAX(pipe, 1), color->green);
+	ilk_lut_write(crtc_state, PREC_PAL_GC_MAX(pipe, 2), color->blue);
 }
 
 static void
@@ -1139,23 +1161,23 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 	 * 9 entries, corresponding to values 0, 1/(8 * 128 * 256),
 	 * 2/(8 * 128 * 256) ... 8/(8 * 128 * 256).
 	 */
-	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
-			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
-	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
-			    PAL_PREC_AUTO_INCREMENT |
-			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
+		      PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
+		      PAL_PREC_AUTO_INCREMENT |
+		      PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 
 	for (i = 0; i < 9; i++) {
 		const struct drm_color_lut *entry = &lut[i];
 
-		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
-					    ilk_lut_12p4_ldw(entry));
-		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
-					    ilk_lut_12p4_udw(entry));
+		ilk_lut_write_indexed(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
+				      ilk_lut_12p4_ldw(entry));
+		ilk_lut_write_indexed(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
+				      ilk_lut_12p4_udw(entry));
 	}
 
-	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
-			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
+		      PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 }
 
 static void
@@ -1178,18 +1200,19 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	 * PAL_PREC_INDEX[0] and PAL_PREC_INDEX[1] map to seg2[1],
 	 * seg2[0] being unused by the hardware.
 	 */
-	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
-			    PAL_PREC_INDEX_VALUE(0));
-	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
-			    PAL_PREC_AUTO_INCREMENT |
-			    PAL_PREC_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
+		      PAL_PREC_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
+		      PAL_PREC_AUTO_INCREMENT |
+		      PAL_PREC_INDEX_VALUE(0));
 
 	for (i = 1; i < 257; i++) {
 		entry = &lut[i * 8];
-		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
-					    ilk_lut_12p4_ldw(entry));
-		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
-					    ilk_lut_12p4_udw(entry));
+
+		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
+				      ilk_lut_12p4_ldw(entry));
+		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
+				      ilk_lut_12p4_udw(entry));
 	}
 
 	/*
@@ -1206,14 +1229,15 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	 */
 	for (i = 0; i < 256; i++) {
 		entry = &lut[i * 8 * 128];
-		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
-					    ilk_lut_12p4_ldw(entry));
-		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
-					    ilk_lut_12p4_udw(entry));
+
+		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
+				      ilk_lut_12p4_ldw(entry));
+		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
+				      ilk_lut_12p4_udw(entry));
 	}
 
-	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
-			    PAL_PREC_INDEX_VALUE(0));
+	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
+		      PAL_PREC_INDEX_VALUE(0));
 
 	/* The last entry in the LUT is to be programmed in GCMAX */
 	entry = &lut[256 * 8 * 128];
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 1e1c6107d51b..b4f0356c2463 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -129,14 +129,9 @@ void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
 	struct intel_dsb *dsb = crtc_state->dsb;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 *buf;
+	u32 *buf = dsb->cmd_buf;
 	u32 reg_val;
 
-	if (!dsb) {
-		intel_de_write_fw(dev_priv, reg, val);
-		return;
-	}
-	buf = dsb->cmd_buf;
 	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
 		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
 		return;
@@ -205,16 +200,9 @@ void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_dsb *dsb;
-	u32 *buf;
+	struct intel_dsb *dsb = crtc_state->dsb;
+	u32 *buf = dsb->cmd_buf;
 
-	dsb = crtc_state->dsb;
-	if (!dsb) {
-		intel_de_write_fw(dev_priv, reg, val);
-		return;
-	}
-
-	buf = dsb->cmd_buf;
 	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
 		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
 		return;
-- 
2.37.4

