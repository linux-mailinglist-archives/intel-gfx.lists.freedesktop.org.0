Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D28A4623D5B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44A710E67A;
	Thu, 10 Nov 2022 08:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7555510E122
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068513; x=1699604513;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=D6nMLIF3aFgNxEw2erfkHCgZIUL5sd6YX2Tk3E8BRrE=;
 b=C8lx7A0NqMWxXr4B59YIVdgDUnTpYzDwSeTuLVGnmSQOzyYNTFtWnQSg
 yDoB3w6iWzaI45fH8Zht3Wd2RIXtdok1zrewUukevsR2OwxwClseyrVxj
 vSvmghDkkf1M+UvnY/Plz5ya18lcm7pa9Mh36OOJmusHB82a3/PUj/nG9
 y3cnpVp0+9R5uSZqCMFkhwNlY25uKpFtAAib6o2KTDPMkA8TPFPQuhnRc
 G94jkZM12rv4fXP6r1PmlUtfyv6dSgsM3DaaDizPGuT34KsoWNYbLxW1O
 7aBbdpNqj9Xe5W9vA/+EhYPaRryylEVsU4WdQfBDme+SyMfa9FDfUlaSC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291647238"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="291647238"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="637085717"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="637085717"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 00:21:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:21:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:28 +0200
Message-Id: <20221110082144.19666-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/18] drm/i915: Clean up 10bit precision
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

Use consistent bit definitions for the 10bit precision palette bits.
We just define these alongside the ilk/snb register definitions and
point to those from the ivb+ defines.

Also use the these appropriately in the LUT entry pack/unpack
functions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_reg.h            | 11 +++++------
 2 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ff4a5167df57..6486a0890583 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -470,16 +470,16 @@ static u16 i965_lut_11p6_max_pack(u32 val)
 
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
index 91ee00c347e4..3aa3db2b56f5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5387,9 +5387,10 @@
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
@@ -7619,12 +7620,10 @@ enum skl_power_gate {
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

