Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8334628416
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91CB710E2DA;
	Mon, 14 Nov 2022 15:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F4010E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440273; x=1699976273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lVzu1EZC0weDPa9r2A1RH74+5MdiCv7k1JA8EsJT6h8=;
 b=ilgLF3rVv1tfBAyjZ2/Eyfjo2bkfKygPn2uvSYO/JvwPV6hHGtuQpkpm
 gTx9X66Ky+MzdGOeL8YPVg71na5d8Q/y5hmb2ZWYDdWX0rWwkeHRJP7Og
 KIAp7wDizHRU1EeveWMhgQYXnT5iwG4HosXiqFlcxXRKKTlNjQVY5hcaI
 WEiA6Bfr6C1A338jFbq56o+CUQona3cpLfhKPvOvDMc0vW1b/dwzQ/PDG
 WlD8Bt74GkwT/I/peCFIn+YBtCeLEG8snZMUlfJsBhUy5rC7xoSm/PPDB
 gegaarNB4Cbal8izoFpXA8BNON4PxxS+cOJPtrbSWuDdW98iEINGY46aX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374128717"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374128717"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:37:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968389"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968389"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:37:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:16 +0200
Message-Id: <20221114153732.11773-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/20] drm/i915: Clean up chv CGM (de)gamma
 defines
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add the missing ldw vs. udw information to the CGM (de)gamma
bit definitions to make it a bit easier to see which should
be used where.

Also use the these appropriately in the LUT entry pack/unpack
functions.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 18 +++++++++---------
 drivers/gpu/drm/i915/i915_reg.h            | 16 ++++++++++------
 2 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8dfccf50dc7d..a71e4a40ccf7 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1078,13 +1078,13 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 
 static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
 {
-	return drm_color_lut_extract(color->green, 14) << 16 |
-		drm_color_lut_extract(color->blue, 14);
+	return REG_FIELD_PREP(CGM_PIPE_DEGAMMA_GREEN_LDW_MASK, drm_color_lut_extract(color->green, 14)) |
+		REG_FIELD_PREP(CGM_PIPE_DEGAMMA_BLUE_LDW_MASK, drm_color_lut_extract(color->blue, 14));
 }
 
 static u32 chv_cgm_degamma_udw(const struct drm_color_lut *color)
 {
-	return drm_color_lut_extract(color->red, 14);
+	return REG_FIELD_PREP(CGM_PIPE_DEGAMMA_RED_UDW_MASK, drm_color_lut_extract(color->red, 14));
 }
 
 static void chv_load_cgm_degamma(struct intel_crtc *crtc,
@@ -1105,20 +1105,20 @@ static void chv_load_cgm_degamma(struct intel_crtc *crtc,
 
 static u32 chv_cgm_gamma_ldw(const struct drm_color_lut *color)
 {
-	return drm_color_lut_extract(color->green, 10) << 16 |
-		drm_color_lut_extract(color->blue, 10);
+	return REG_FIELD_PREP(CGM_PIPE_GAMMA_GREEN_LDW_MASK, drm_color_lut_extract(color->green, 10)) |
+		REG_FIELD_PREP(CGM_PIPE_GAMMA_BLUE_LDW_MASK, drm_color_lut_extract(color->blue, 10));
 }
 
 static u32 chv_cgm_gamma_udw(const struct drm_color_lut *color)
 {
-	return drm_color_lut_extract(color->red, 10);
+	return REG_FIELD_PREP(CGM_PIPE_GAMMA_RED_UDW_MASK, drm_color_lut_extract(color->red, 10));
 }
 
 static void chv_cgm_gamma_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 {
-	entry->green = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_GREEN_MASK, ldw), 10);
-	entry->blue = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_BLUE_MASK, ldw), 10);
-	entry->red = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_RED_MASK, udw), 10);
+	entry->green = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_GREEN_LDW_MASK, ldw), 10);
+	entry->blue = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_BLUE_LDW_MASK, ldw), 10);
+	entry->red = intel_color_lut_pack(REG_FIELD_GET(CGM_PIPE_GAMMA_RED_UDW_MASK, udw), 10);
 }
 
 static void chv_load_cgm_gamma(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4341f69c7c9c..c0dc9425a37c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7666,13 +7666,17 @@ enum skl_power_gate {
 #define _CGM_PIPE_A_CSC_COEFF67	(VLV_DISPLAY_BASE + 0x6790C)
 #define _CGM_PIPE_A_CSC_COEFF8	(VLV_DISPLAY_BASE + 0x67910)
 #define _CGM_PIPE_A_DEGAMMA	(VLV_DISPLAY_BASE + 0x66000)
-#define   CGM_PIPE_DEGAMMA_RED_MASK	REG_GENMASK(13, 0)
-#define   CGM_PIPE_DEGAMMA_GREEN_MASK	REG_GENMASK(29, 16)
-#define   CGM_PIPE_DEGAMMA_BLUE_MASK	REG_GENMASK(13, 0)
+/* cgm degamma ldw */
+#define   CGM_PIPE_DEGAMMA_GREEN_LDW_MASK	REG_GENMASK(29, 16)
+#define   CGM_PIPE_DEGAMMA_BLUE_LDW_MASK	REG_GENMASK(13, 0)
+/* cgm degamma udw */
+#define   CGM_PIPE_DEGAMMA_RED_UDW_MASK		REG_GENMASK(13, 0)
 #define _CGM_PIPE_A_GAMMA	(VLV_DISPLAY_BASE + 0x67000)
-#define   CGM_PIPE_GAMMA_RED_MASK	REG_GENMASK(9, 0)
-#define   CGM_PIPE_GAMMA_GREEN_MASK	REG_GENMASK(25, 16)
-#define   CGM_PIPE_GAMMA_BLUE_MASK	REG_GENMASK(9, 0)
+/* cgm gamma ldw */
+#define   CGM_PIPE_GAMMA_GREEN_LDW_MASK		REG_GENMASK(25, 16)
+#define   CGM_PIPE_GAMMA_BLUE_LDW_MASK		REG_GENMASK(9, 0)
+/* cgm gamma udw */
+#define   CGM_PIPE_GAMMA_RED_UDW_MASK		REG_GENMASK(9, 0)
 #define _CGM_PIPE_A_MODE	(VLV_DISPLAY_BASE + 0x67A00)
 #define   CGM_PIPE_MODE_GAMMA	(1 << 2)
 #define   CGM_PIPE_MODE_CSC	(1 << 1)
-- 
2.37.4

