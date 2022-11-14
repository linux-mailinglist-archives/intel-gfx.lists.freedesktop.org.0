Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E518C628430
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:39:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D91D10E2E7;
	Mon, 14 Nov 2022 15:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14AF10E2DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440272; x=1699976272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ppc2TnnwENyAcflL0Xxm6Mn+tyVrSeB2ASzGYKXQJ4k=;
 b=Rn/LCyK8Fm0rWsQ+epfpyQYMIf0aqWCyb1FdGIbepP1GNWVDTjvVs2QV
 LqrpI0aH71Bnqb3TjUe2BjcZziqIZReEVrLM+cYsdgHrFEKUM3j0yd6MD
 IID0osaMSOQpq4K7oR5gBN0yUEdQJG4Nky5O7DRVqHRkkEOJmlrXTG/Fq
 pc55/cwFlIkwraVZSaEAnA0t+Zef8JaeiCUJIIgCgIqcwUQbpXZDK0xdx
 rdgsF+peb/bp3p94dyE9rstpkjkKHt7m6CAD1kpTQXBNhrVaXkByK5LbZ
 lT+bXwJPn4G3wtKMB59CTyzXaNWWTq+2ViWGjOicuSVqxnPEKG08ydatg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374128715"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374128715"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:37:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968334"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968334"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:37:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:14 +0200
Message-Id: <20221114153732.11773-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/20] drm/i915: Clean up 10bit precision
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

Use consistent bit definitions for the 10bit precision palette bits.
We just define these alongside the ilk/snb register definitions and
point to those from the ivb+ defines.

Also use the these appropriately in the LUT entry pack/unpack
functions.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_reg.h            | 11 +++++------
 2 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2cf92bc55e8d..05257d92408b 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -471,16 +471,16 @@ static u16 i965_lut_11p6_max_pack(u32 val)
 
 static u32 ilk_lut_10(const struct drm_color_lut *color)
 {
-	return drm_color_lut_extract(color->red, 10) << 20 |
-		drm_color_lut_extract(color->green, 10) << 10 |
-		drm_color_lut_extract(color->blue, 10);
+	return REG_FIELD_PREP(PREC_PALETTE_10_RED_MASK, drm_color_lut_extract(color->red, 10)) |
+		REG_FIELD_PREP(PREC_PALETTE_10_GREEN_MASK, drm_color_lut_extract(color->green, 10)) |
+		REG_FIELD_PREP(PREC_PALETTE_10_BLUE_MASK, drm_color_lut_extract(color->blue, 10));
 }
 
 static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
 {
-	entry->red = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_RED_MASK, val), 10);
-	entry->green = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_GREEN_MASK, val), 10);
-	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_BLUE_MASK, val), 10);
+	entry->red = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_10_RED_MASK, val), 10);
+	entry->green = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_10_GREEN_MASK, val), 10);
+	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_10_BLUE_MASK, val), 10);
 }
 
 /* ilk+ "12.4" interpolated format (high 10 bits) */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1a210a4cbd0f..a4c0912a2f4f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5319,9 +5319,10 @@
 /* ilk/snb precision palette */
 #define _PREC_PALETTE_A           0x4b000
 #define _PREC_PALETTE_B           0x4c000
-#define   PREC_PALETTE_RED_MASK   REG_GENMASK(29, 20)
-#define   PREC_PALETTE_GREEN_MASK REG_GENMASK(19, 10)
-#define   PREC_PALETTE_BLUE_MASK  REG_GENMASK(9, 0)
+/* 10bit mode */
+#define   PREC_PALETTE_10_RED_MASK		REG_GENMASK(29, 20)
+#define   PREC_PALETTE_10_GREEN_MASK		REG_GENMASK(19, 10)
+#define   PREC_PALETTE_10_BLUE_MASK		REG_GENMASK(9, 0)
 #define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_PALETTE_B) + (i) * 4)
 
 #define  _PREC_PIPEAGCMAX              0x4d000
@@ -7560,12 +7561,10 @@ enum skl_power_gate {
 #define _PAL_PREC_DATA_A	0x4A404
 #define _PAL_PREC_DATA_B	0x4AC04
 #define _PAL_PREC_DATA_C	0x4B404
+/* see PREC_PALETTE_* for the bits */
 #define _PAL_PREC_GC_MAX_A	0x4A410
 #define _PAL_PREC_GC_MAX_B	0x4AC10
 #define _PAL_PREC_GC_MAX_C	0x4B410
-#define   PREC_PAL_DATA_RED_MASK	REG_GENMASK(29, 20)
-#define   PREC_PAL_DATA_GREEN_MASK	REG_GENMASK(19, 10)
-#define   PREC_PAL_DATA_BLUE_MASK	REG_GENMASK(9, 0)
 #define _PAL_PREC_EXT_GC_MAX_A	0x4A420
 #define _PAL_PREC_EXT_GC_MAX_B	0x4AC20
 #define _PAL_PREC_EXT_GC_MAX_C	0x4B420
-- 
2.37.4

