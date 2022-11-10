Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FC6623D61
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4DBF10E680;
	Thu, 10 Nov 2022 08:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6CC210E67B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068522; x=1699604522;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EhxCTPzKwPcIwjznS33pNSyHDZzGzn7vXMgaXu4eG+w=;
 b=j5XkhWO8kEwssLfHZc7kair3CV40JOnk4qIpPL3xZKR6/LkPLmUWHHVY
 Mx5OBmfiyfW98aIFy5oYRRClXQeKEIaDa5Wk7/URHEMWVCK+gJeZ9e87d
 2RtDOqG/kznmOlaWURnl4TBLkEndtvbyJjSZJqOsXxRaPk6FcYvzgjvsp
 7wCUGY2/FvlZNECpytPNGRveGe3yksAt41QCkTWT/+gSqlvUjvXrhix3U
 4NinMgxORenFOUwm8fHgX24QpIpkjG0yk8xrkRvrQ3rfK930qNBAjVpHB
 F9GlzyMbW9bIL/iDqp+VfG5igv38bzLiiMW7th4pB/8Kzl625bkupXgkV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291647262"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="291647262"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="637085732"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="637085732"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 00:22:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:21:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:31 +0200
Message-Id: <20221110082144.19666-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/18] drm/i915: Reorder 12.4 lut udw vs. ldw
 functions
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

Satisfy my ocd and define ilk_lut_12p4_ldw() before ilk_lut_12p4_udw().
That is the order all the other similar functions use.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8e92eb61abac..9c259e144772 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -482,14 +482,6 @@ static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
 	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_10_BLUE_MASK, val), 10);
 }
 
-/* ilk+ "12.4" interpolated format (high 10 bits) */
-static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
-{
-	return REG_FIELD_PREP(PREC_PALETTE_12P4_RED_UDW_MASK, color->red >> 6) |
-		REG_FIELD_PREP(PREC_PALETTE_12P4_GREEN_UDW_MASK, color->green >> 6) |
-		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_UDW_MASK, color->blue >> 6);
-}
-
 /* ilk+ "12.4" interpolated format (low 6 bits) */
 static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
 {
@@ -498,6 +490,14 @@ static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
 		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_LDW_MASK, color->blue & 0x3f);
 }
 
+/* ilk+ "12.4" interpolated format (high 10 bits) */
+static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
+{
+	return REG_FIELD_PREP(PREC_PALETTE_12P4_RED_UDW_MASK, color->red >> 6) |
+		REG_FIELD_PREP(PREC_PALETTE_12P4_GREEN_UDW_MASK, color->green >> 6) |
+		REG_FIELD_PREP(PREC_PALETTE_12P4_BLUE_UDW_MASK, color->blue >> 6);
+}
+
 static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
 {
 	entry->red = REG_FIELD_GET(PREC_PALETTE_12P4_RED_UDW_MASK, udw) << 6 |
-- 
2.37.4

