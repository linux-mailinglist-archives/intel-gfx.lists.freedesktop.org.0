Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 477E5628412
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C16F10E0C1;
	Mon, 14 Nov 2022 15:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD2910E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440272; x=1699976272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wz5Iuj7yrMRJ8pHfExMfbpe6KRXbAASPuuZ0WZZZTfU=;
 b=PMsFYwVPGQpT0+DXhHJ8Q4MiluJ5UV1Sicjvud96DgAA+nBT3lQUdHzS
 WZfH2I7pOfGwBmVEvCRdYffA36g0OE6umQDbaQHTWBtYZCs3xaJRd2IWJ
 n9IJFsnzLapMfrFIwCrevYpOt1ogDK3/SJCoWlSS65+r9gBNH3qINXVsQ
 gEE7pSxI7VpKTHwI+SGAyO8/tOQeIQXvRH/NcFmTzwn2ZkSt8NuFtFwin
 RZKj+qnytr+jP/sZMEnevbITl8A71QkMhxzzQYmJfhUSgXfU+u1D6Rg70
 /H/SYrsytSzTETsmM+JorgnrjpQ0AT/2RwN71qtS92jeg5McYtAA1ZQPF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374128713"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374128713"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:37:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968350"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968350"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:37:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:15 +0200
Message-Id: <20221114153732.11773-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/20] drm/i915: Clean up 12.4bit precision
 palette defines
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

Use consistent bit definitions for the 12.4bit precision palette bits.
We just define these alongside the ilk/snb register definitions and
point to those from the icl+ superfine segment defines (and we also
already pointed to them from the ivb+ precision palette defines).

Also use the these appropriately in the LUT entry pack/unpack
functions.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 22 ++++++++++++----------
 drivers/gpu/drm/i915/i915_reg.h            | 15 +++++++++------
 2 files changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 05257d92408b..8dfccf50dc7d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -486,25 +486,27 @@ static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
 /* ilk+ "12.4" interpolated format (high 10 bits) */
 static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
 {
-	return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
-		(color->blue >> 6);
+	return REG_FIELD_PREP(PREC_PALETTE_12P4_RED_UDW_MASK, color->red >> 6) |
+		REG_FIELD_PREP(PREC_PALETTE_12P4_GREEN_UDW_MASK, color->green >> 6) |
+		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_UDW_MASK, color->blue >> 6);
 }
 
 /* ilk+ "12.4" interpolated format (low 6 bits) */
 static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
 {
-	return (color->red & 0x3f) << 24 | (color->green & 0x3f) << 14 |
-		(color->blue & 0x3f) << 4;
+	return REG_FIELD_PREP(PREC_PALETTE_12P4_RED_LDW_MASK, color->red & 0x3f) |
+		REG_FIELD_PREP(PREC_PALETTE_12P4_GREEN_LDW_MASK, color->green & 0x3f) |
+		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_LDW_MASK, color->blue & 0x3f);
 }
 
 static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 {
-	entry->red = REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_UDW_MASK, udw) << 6 |
-		REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
-	entry->green = REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_UDW_MASK, udw) << 6 |
-		REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
-	entry->blue = REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_UDW_MASK, udw) << 6 |
-		REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
+	entry->red = REG_FIELD_GET(PREC_PALETTE_12P4_RED_UDW_MASK, udw) << 6 |
+		REG_FIELD_GET(PREC_PALETTE_12P4_RED_LDW_MASK, ldw);
+	entry->green = REG_FIELD_GET(PREC_PALETTE_12P4_GREEN_UDW_MASK, udw) << 6 |
+		REG_FIELD_GET(PREC_PALETTE_12P4_GREEN_LDW_MASK, ldw);
+	entry->blue = REG_FIELD_GET(PREC_PALETTE_12P4_BLUE_UDW_MASK, udw) << 6 |
+		REG_FIELD_GET(PREC_PALETTE_12P4_BLUE_LDW_MASK, ldw);
 }
 
 static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a4c0912a2f4f..4341f69c7c9c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5323,6 +5323,14 @@
 #define   PREC_PALETTE_10_RED_MASK		REG_GENMASK(29, 20)
 #define   PREC_PALETTE_10_GREEN_MASK		REG_GENMASK(19, 10)
 #define   PREC_PALETTE_10_BLUE_MASK		REG_GENMASK(9, 0)
+/* 12.4 interpolated mode ldw */
+#define   PREC_PALETTE_12P4_RED_LDW_MASK	REG_GENMASK(29, 24)
+#define   PREC_PALETTE_12P4_GREEN_LDW_MASK	REG_GENMASK(19, 14)
+#define   PREC_PALETTE_12P4_BLUE_LDW_MASK	REG_GENMASK(9, 4)
+/* 12.4 interpolated mode udw */
+#define   PREC_PALETTE_12P4_RED_UDW_MASK	REG_GENMASK(29, 20)
+#define   PREC_PALETTE_12P4_GREEN_UDW_MASK	REG_GENMASK(19, 10)
+#define   PREC_PALETTE_12P4_BLUE_UDW_MASK	REG_GENMASK(9, 0)
 #define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_PALETTE_B) + (i) * 4)
 
 #define  _PREC_PIPEAGCMAX              0x4d000
@@ -7597,12 +7605,7 @@ enum skl_power_gate {
 
 #define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
 #define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
-#define  PAL_PREC_MULTI_SEG_RED_LDW_MASK   REG_GENMASK(29, 24)
-#define  PAL_PREC_MULTI_SEG_RED_UDW_MASK   REG_GENMASK(29, 20)
-#define  PAL_PREC_MULTI_SEG_GREEN_LDW_MASK REG_GENMASK(19, 14)
-#define  PAL_PREC_MULTI_SEG_GREEN_UDW_MASK REG_GENMASK(19, 10)
-#define  PAL_PREC_MULTI_SEG_BLUE_LDW_MASK  REG_GENMASK(9, 4)
-#define  PAL_PREC_MULTI_SEG_BLUE_UDW_MASK  REG_GENMASK(9, 0)
+/* see PREC_PALETTE_12P4_* for the bits */
 
 #define PREC_PAL_MULTI_SEG_INDEX(pipe)	_MMIO_PIPE(pipe, \
 					_PAL_PREC_MULTI_SEG_INDEX_A, \
-- 
2.37.4

