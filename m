Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B6C623D5C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D1210E67B;
	Thu, 10 Nov 2022 08:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BAC310E122
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068516; x=1699604516;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XyDPJzukqnhXMdsj+tOAV5YanVOX3Roluz01jLihSBA=;
 b=iw2kXYe1aFyMAPQLIIRcenhzxSVGnelO9WZxDbMk4gyoZ05ohIM9biGb
 1qP8OMJ6pF9Z+IfHWUh5/hAGyN1VQVbiB4MbFyrOKxyZxLoGp6fb5MjY0
 tZSmYSiSFzBQ7rZjvmlRKog97x1bSxhNEWfWj6FZPgJ2EcxZ6yg56aO1w
 CCN3BGcs0g/39i/kZ2CijucgjEuGgHh3ungymLe35/GqoY6yiansEgviq
 oR6y7KABW/mpnaedFDgsugWpn0GQiuhMCMZdrSo4NR3Im46v89160wXcJ
 fDViG1B1K9CJRkrRerrkYVnyGUTQA5PSHSKNW0X5JKfehv5/IVOZELv6c Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291647244"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="291647244"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:21:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="637085718"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="637085718"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 00:21:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:21:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:29 +0200
Message-Id: <20221110082144.19666-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/18] drm/i915: Clean up 12.4bit precision
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use consistent bit definitions for the 12.4bit precision palette bits.
We just define these alongside the ilk/snb register definitions and
point to those from the icl+ superfine segment defines (and we also
already pointed to them from the ivb+ precision palette defines).

Also use the these appropriately in the LUT entry pack/unpack
functions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 22 ++++++++++++----------
 drivers/gpu/drm/i915/i915_reg.h            | 15 +++++++++------
 2 files changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 6486a0890583..758869971e45 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -485,25 +485,27 @@ static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
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
index 3aa3db2b56f5..ecb34f133980 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5391,6 +5391,14 @@
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
@@ -7656,12 +7664,7 @@ enum skl_power_gate {
 
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

