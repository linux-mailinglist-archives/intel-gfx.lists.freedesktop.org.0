Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE87F63637C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D16D910E578;
	Wed, 23 Nov 2022 15:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203EF10E572
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217220; x=1700753220;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=b+Md9GhiS+T4PTd3aChJGYR5Ksohh6gh27XI0GNKcso=;
 b=B8OSHQIdWApT5h9lPVfOkej4v0dj27UhMnmWI97D/m1meaSegfLbgLVO
 UozhULAfs7g1/PTq3jM/hWyqDEJtnwLMUFcgCLZten5dEwhG7xp/LOJ8n
 r+LP3Z4zEHQS1+4tKyTP+fsCF34au0ST93NQnlgJtZhrTsIWtxZTvDO3t
 c4YpYKPouhFONzgIiJxQbD/tXACfi/5dHyaltr8SwTIWKFX3ZTeSCG67R
 JFncSwl0hVtQgE8/rYdAk44+a7MkG9w93SqqWkHgL8zisLFgkGzhwQ5ca
 2XXs/b7o+1wdV2WiuJkZS1aeoWZtP+2Sk6XeWYSKofdU38HhIa4d+xwQV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789908"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789908"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619650967"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619650967"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:26:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:26:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:29 +0200
Message-Id: <20221123152638.20622-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915: Clean up various indexed LUT
 registers
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

Use REG_BIT() & co. for the LUT index registers, and also
use the REG_FIELD_PREP() stuff a bit more consistently when
generating the values for said registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 46 +++++++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h            | 18 +++++----
 2 files changed, 41 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 956b221860e6..c960c2aaf328 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -910,7 +910,8 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size; i++) {
-		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), prec_index++);
+		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+				  prec_index + i);
 		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
 				  ilk_lut_10(&lut[i]));
 	}
@@ -919,7 +920,8 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+			  PAL_PREC_INDEX_VALUE(0));
 }
 
 /* On BDW+ the index auto increment mode actually works */
@@ -933,7 +935,8 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
-			  prec_index | PAL_PREC_AUTO_INCREMENT);
+			  PAL_PREC_AUTO_INCREMENT |
+			  prec_index);
 
 	for (i = 0; i < lut_size; i++)
 		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
@@ -943,7 +946,8 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 	 * Reset the index, otherwise it prevents the legacy palette to be
 	 * written properly.
 	 */
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+			  PAL_PREC_INDEX_VALUE(0));
 }
 
 static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
@@ -1049,9 +1053,11 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
 	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
-			  PRE_CSC_GAMC_AUTO_INCREMENT);
+			  PRE_CSC_GAMC_INDEX_VALUE(0));
+	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
+			  PRE_CSC_GAMC_AUTO_INCREMENT |
+			  PRE_CSC_GAMC_INDEX_VALUE(0));
 
 	for (i = 0; i < lut_size; i++) {
 		/*
@@ -1165,7 +1171,9 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	 * seg2[0] being unused by the hardware.
 	 */
 	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
-			    PAL_PREC_AUTO_INCREMENT);
+			    PAL_PREC_AUTO_INCREMENT |
+			    PAL_PREC_INDEX_VALUE(0));
+
 	for (i = 1; i < 257; i++) {
 		entry = &lut[i * 8];
 		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
@@ -2756,7 +2764,8 @@ static struct drm_property_blob *ivb_read_lut_10(struct intel_crtc *crtc,
 		ilk_lut_10_pack(&lut[i], val);
 	}
 
-	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
+			  PAL_PREC_INDEX_VALUE(0));
 
 	return blob;
 }
@@ -2811,7 +2820,8 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 	lut = blob->data;
 
 	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
-			  prec_index | PAL_PREC_AUTO_INCREMENT);
+			  PAL_PREC_AUTO_INCREMENT |
+			  prec_index);
 
 	for (i = 0; i < lut_size; i++) {
 		u32 val = intel_de_read_fw(i915, PREC_PAL_DATA(pipe));
@@ -2819,7 +2829,8 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 		ilk_lut_10_pack(&lut[i], val);
 	}
 
-	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+			  PAL_PREC_INDEX_VALUE(0));
 
 	return blob;
 }
@@ -2876,9 +2887,11 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
 	 * ignore the index bits, so we need to reset it to index 0
 	 * separately.
 	 */
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
 	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
-			  PRE_CSC_GAMC_AUTO_INCREMENT);
+			  PRE_CSC_GAMC_INDEX_VALUE(0));
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+			  PRE_CSC_GAMC_AUTO_INCREMENT |
+			  PRE_CSC_GAMC_INDEX_VALUE(0));
 
 	for (i = 0; i < lut_size; i++) {
 		u32 val = intel_de_read_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe));
@@ -2888,7 +2901,8 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
 		lut[i].blue = val;
 	}
 
-	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
+	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
+			  PRE_CSC_GAMC_INDEX_VALUE(0));
 
 	return blob;
 }
@@ -2934,7 +2948,8 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
-			  PAL_PREC_AUTO_INCREMENT);
+			  PAL_PREC_MULTI_SEG_AUTO_INCREMENT |
+			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 
 	for (i = 0; i < 9; i++) {
 		u32 ldw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
@@ -2943,7 +2958,8 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
 		ilk_lut_12p4_pack(&lut[i], ldw, udw);
 	}
 
-	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
+	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
+			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 
 	/*
 	 * FIXME readouts from PAL_PREC_DATA register aren't giving
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 80ac50d80af4..22fb9fd78483 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7531,11 +7531,10 @@ enum skl_power_gate {
 #define _PAL_PREC_INDEX_A	0x4A400
 #define _PAL_PREC_INDEX_B	0x4AC00
 #define _PAL_PREC_INDEX_C	0x4B400
-#define   PAL_PREC_10_12_BIT		(0 << 31)
-#define   PAL_PREC_SPLIT_MODE		(1 << 31)
-#define   PAL_PREC_AUTO_INCREMENT	(1 << 15)
-#define   PAL_PREC_INDEX_VALUE_MASK	(0x3ff << 0)
-#define   PAL_PREC_INDEX_VALUE(x)	((x) << 0)
+#define   PAL_PREC_SPLIT_MODE		REG_BIT(31)
+#define   PAL_PREC_AUTO_INCREMENT	REG_BIT(15)
+#define   PAL_PREC_INDEX_VALUE_MASK	REG_GENMASK(9, 0)
+#define   PAL_PREC_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_INDEX_VALUE_MASK, (x))
 #define _PAL_PREC_DATA_A	0x4A404
 #define _PAL_PREC_DATA_B	0x4AC04
 #define _PAL_PREC_DATA_C	0x4B404
@@ -7559,7 +7558,9 @@ enum skl_power_gate {
 #define _PRE_CSC_GAMC_INDEX_A	0x4A484
 #define _PRE_CSC_GAMC_INDEX_B	0x4AC84
 #define _PRE_CSC_GAMC_INDEX_C	0x4B484
-#define   PRE_CSC_GAMC_AUTO_INCREMENT	(1 << 10)
+#define   PRE_CSC_GAMC_AUTO_INCREMENT	REG_BIT(10)
+#define   PRE_CSC_GAMC_INDEX_VALUE_MASK	REG_GENMASK(7, 0)
+#define   PRE_CSC_GAMC_INDEX_VALUE(x)	REG_FIELD_PREP(PRE_CSC_GAMC_INDEX_VALUE_MASK, (x))
 #define _PRE_CSC_GAMC_DATA_A	0x4A488
 #define _PRE_CSC_GAMC_DATA_B	0x4AC88
 #define _PRE_CSC_GAMC_DATA_C	0x4B488
@@ -7570,8 +7571,9 @@ enum skl_power_gate {
 /* ICL Multi segmented gamma */
 #define _PAL_PREC_MULTI_SEG_INDEX_A	0x4A408
 #define _PAL_PREC_MULTI_SEG_INDEX_B	0x4AC08
-#define  PAL_PREC_MULTI_SEGMENT_AUTO_INCREMENT		REG_BIT(15)
-#define  PAL_PREC_MULTI_SEGMENT_INDEX_VALUE_MASK	REG_GENMASK(4, 0)
+#define   PAL_PREC_MULTI_SEG_AUTO_INCREMENT	REG_BIT(15)
+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK	REG_GENMASK(4, 0)
+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK, (x))
 
 #define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
 #define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
-- 
2.37.4

