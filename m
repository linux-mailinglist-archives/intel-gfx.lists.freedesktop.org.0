Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE7360DFC4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B95E810E4C3;
	Wed, 26 Oct 2022 11:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A14C10E4B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784367; x=1698320367;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uZMbBqRVBFtZQsYe/KaOZ7CC4j/F1J5gKdB1OEaSpds=;
 b=A/Er/NXE/XSor4FR20Ibqlu5ldw7XyXIvuig/JV9t8tYcDQi5JbnHhtd
 BI0h3H2dnY40WdO8PXn6yFy0W/bbBHiXZgaoPSzn5MFkOxQ8CAyfScgRj
 U2Ui8gWtkxkh6BuPCUYVAL/mWPztHSoujqY4LRW5LbRxJf7D7eBlkNSYh
 I8KKNcMQuwsbTIl83n+bW9fuThPrItIQcXKVal2GXXxuHW16QMRiLwpOQ
 Bk3Z3tYZ9G8gzWHLaQmj6vE+CpCAk99vcw5hr22mUNa+mQjcPd4fDI5EG
 W3WsfrE2L1u7+ZJNYwIMoDukVsiMlxHkDPu8xtA5W/EUndHonyyGE38Am g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614262"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614262"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164506"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164506"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:39:01 +0300
Message-Id: <20221026113906.10551-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: Deconfuse the ilk+ 12.4 LUT
 entry functions
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

s/icl_lut_multi_seg_pack/ilk_lut_12p4_pack/ since that's what it is
and group the corresponding "unpack" functions next to it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 38 +++++++++++-----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 3b78b882e0c0..e881c95ee451 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -482,14 +482,28 @@ static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
 	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_BLUE_MASK, val), 10);
 }
 
-static void icl_lut_multi_seg_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
+/* ilk+ "12.4" interpolated format (high 10 bits) */
+static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
+{
+	return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
+		(color->blue >> 6);
+}
+
+/* ilk+ "12.4" interpolated format (low 6 bits) */
+static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
+{
+	return (color->red & 0x3f) << 24 | (color->green & 0x3f) << 14 |
+		(color->blue & 0x3f) << 4;
+}
+
+static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 {
 	entry->red = REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_UDW_MASK, udw) << 6 |
-				   REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
+		REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
 	entry->green = REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_UDW_MASK, udw) << 6 |
-				     REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
+		REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
 	entry->blue = REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_UDW_MASK, udw) << 6 |
-				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
+		REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
 }
 
 static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
@@ -917,20 +931,6 @@ static void glk_load_luts(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-/* ilk+ "12.4" interpolated format (high 10 bits) */
-static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
-{
-	return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
-		(color->blue >> 6);
-}
-
-/* ilk+ "12.4" interpolated format (low 6 bits) */
-static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
-{
-	return (color->red & 0x3f) << 24 | (color->green & 0x3f) << 14 |
-		(color->blue & 0x3f) << 4;
-}
-
 static void
 ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
 		 const struct drm_color_lut *color)
@@ -2151,7 +2151,7 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
 		u32 ldw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
 		u32 udw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
 
-		icl_lut_multi_seg_pack(&lut[i], ldw, udw);
+		ilk_lut_12p4_pack(&lut[i], ldw, udw);
 	}
 
 	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
-- 
2.37.4

