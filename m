Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571DB62841F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C17D310E2F1;
	Mon, 14 Nov 2022 15:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2544510E0C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440273; x=1699976273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Wo4yynn9JWf++5l8iK3hefhwjl74L2zIX5l8jSbSSo=;
 b=SwqHIUDZUF2t7ec1zkXb0OITFOKTUzgZx+p1b5uI+seg2XmyDNfcRGMf
 e3Cs8JHLWl/WCN91PkCeWBGFPUHVAPPiRY2IB9v7XXWBfbz7Hf0Rv5864
 PGZeBE+3QR2RlmRd06Vaq/qYqX54iosr84CrCEgN17qWUQNvArNmNBgDQ
 BK/0GI4u9e7otug5jtpa8lH4K+gw9X4O3+UNFl5ruqWBexppMEiDEPU2C
 3viqRqvQ6iKooRJ/OlvYeCv7P/Tokj1mG4A58SFgWqe2yo53yMLiLIo3L
 LNDrENovJ1bwJJeYQbhJ7mWq7rPhyq1H76avIRJtvfYVCyr7EkBKHB4LW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374128716"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374128716"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:37:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968396"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:37:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:17 +0200
Message-Id: <20221114153732.11773-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/20] drm/i915: Reorder 12.4 lut udw vs. ldw
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Satisfy my ocd and define ilk_lut_12p4_ldw() before ilk_lut_12p4_udw().
That is the order all the other similar functions use.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a71e4a40ccf7..250e83f1f5ac 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -483,14 +483,6 @@ static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
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
@@ -499,6 +491,14 @@ static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
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

