Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67146628413
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD7710E0FB;
	Mon, 14 Nov 2022 15:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DCF910E0C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440272; x=1699976272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5euEFNsiMBP/7PpEhJ1mT9hHz8Xg5oOXfI8znaEVAss=;
 b=DZAjeM5HhfavoaAprD9BRbzjsqZV43ztLcplRRhNx25aHTqXwvOhKMRS
 B0UdSy58lMUvDPgX/zYqGXn9PXV6EgcUs6FRPF8gQmL2GpPbeLZsbyp59
 muvP1mrwhCChjIU4fUFvXYwCxaGQBaj049Ie1tS0khNWvX0U3GgGoTSXA
 gQWjF+L1P4orGNLY1T2Gn8ZaU/6k3GHt3H26G5Kn/KPKuQa0n0AXJDIZl
 7yGi6VIHEhzDhbSURW/EAor+gkRmLwpQfaUdwuSVa0MNmh7nCQZQ3fnWS
 05GYs+/0JST3Shkuucz9gltxc6K1u4z3UIg6FvM0xrAB3eAUubjs1KqoI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374128711"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374128711"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:37:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968328"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968328"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:37:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:13 +0200
Message-Id: <20221114153732.11773-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/20] drm/i915: Clean up legacy palette
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

Use consistent bit definitions for the legacy gamma LUT. We just
define these alongside the pre-ilk register definitions and point
to those from the ilk+ defines.

Also use the these appropriately in the LUT entry pack/unpack
functions.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 24 +++++++++++-----------
 drivers/gpu/drm/i915/i915_reg.h            | 11 +++++-----
 2 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 12f5b976c795..2cf92bc55e8d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -425,32 +425,32 @@ static u32 intel_color_lut_pack(u32 val, int bit_precision)
 
 static u32 i9xx_lut_8(const struct drm_color_lut *color)
 {
-	return drm_color_lut_extract(color->red, 8) << 16 |
-		drm_color_lut_extract(color->green, 8) << 8 |
-		drm_color_lut_extract(color->blue, 8);
+	return REG_FIELD_PREP(PALETTE_RED_MASK, drm_color_lut_extract(color->red, 8)) |
+		REG_FIELD_PREP(PALETTE_GREEN_MASK, drm_color_lut_extract(color->green, 8)) |
+		REG_FIELD_PREP(PALETTE_BLUE_MASK, drm_color_lut_extract(color->blue, 8));
 }
 
 static void i9xx_lut_8_pack(struct drm_color_lut *entry, u32 val)
 {
-	entry->red = intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_RED_MASK, val), 8);
-	entry->green = intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_GREEN_MASK, val), 8);
-	entry->blue = intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_BLUE_MASK, val), 8);
+	entry->red = intel_color_lut_pack(REG_FIELD_GET(PALETTE_RED_MASK, val), 8);
+	entry->green = intel_color_lut_pack(REG_FIELD_GET(PALETTE_GREEN_MASK, val), 8);
+	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PALETTE_BLUE_MASK, val), 8);
 }
 
 /* i965+ "10.6" bit interpolated format "even DW" (low 8 bits) */
 static u32 i965_lut_10p6_ldw(const struct drm_color_lut *color)
 {
-	return (color->red & 0xff) << 16 |
-		(color->green & 0xff) << 8 |
-		(color->blue & 0xff);
+	return REG_FIELD_PREP(PALETTE_RED_MASK, color->red & 0xff) |
+		REG_FIELD_PREP(PALETTE_GREEN_MASK, color->green & 0xff) |
+		REG_FIELD_PREP(PALETTE_BLUE_MASK, color->blue & 0xff);
 }
 
 /* i965+ "10.6" interpolated format "odd DW" (high 8 bits) */
 static u32 i965_lut_10p6_udw(const struct drm_color_lut *color)
 {
-	return (color->red >> 8) << 16 |
-		(color->green >> 8) << 8 |
-		(color->blue >> 8);
+	return REG_FIELD_PREP(PALETTE_RED_MASK, color->red >> 8) |
+		REG_FIELD_PREP(PALETTE_GREEN_MASK, color->green >> 8) |
+		REG_FIELD_PREP(PALETTE_BLUE_MASK, color->blue >> 8);
 }
 
 static void i965_lut_10p6_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c4921c9a6077..1a210a4cbd0f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1714,9 +1714,10 @@
 #define _PALETTE_A		0xa000
 #define _PALETTE_B		0xa800
 #define _CHV_PALETTE_C		0xc000
-#define PALETTE_RED_MASK        REG_GENMASK(23, 16)
-#define PALETTE_GREEN_MASK      REG_GENMASK(15, 8)
-#define PALETTE_BLUE_MASK       REG_GENMASK(7, 0)
+/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
+#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
+#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
+#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
 #define PALETTE(pipe, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
 				      _PICK((pipe), _PALETTE_A,		\
 					    _PALETTE_B, _CHV_PALETTE_C) + \
@@ -5312,9 +5313,7 @@
 /* legacy palette */
 #define _LGC_PALETTE_A           0x4a000
 #define _LGC_PALETTE_B           0x4a800
-#define LGC_PALETTE_RED_MASK     REG_GENMASK(23, 16)
-#define LGC_PALETTE_GREEN_MASK   REG_GENMASK(15, 8)
-#define LGC_PALETTE_BLUE_MASK    REG_GENMASK(7, 0)
+/* see PALETTE_* for the bits */
 #define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A, _LGC_PALETTE_B) + (i) * 4)
 
 /* ilk/snb precision palette */
-- 
2.37.4

