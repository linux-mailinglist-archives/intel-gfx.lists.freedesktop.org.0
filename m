Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5027769D733
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 00:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E1710E32B;
	Mon, 20 Feb 2023 23:41:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFEB10E32B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 23:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676936477; x=1708472477;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Z5elQqMKHBukttMxgn/VR0/E/gGxCeVaZqYra0+mxpI=;
 b=cSX26CM0VLPoT69tD8he6kHSV8Knh5+9eMsg2Wrd6I7mWpMKYk3xOWq4
 BndtV1LS+YuDJDGn07DEzoOGUS79CSOyYYbtJ+afWgUIBXXB0iTNIId2P
 JUEiQ23z7PIr6RdLsfAxULDRbmPzkURqIv+E9ffi7s3h+XCkpUMMBsIhi
 lYJjfTgOfd8q9Lsp7bfT3+NGaFHPTkQORC/4NkDqc8ruhfDc7iabZ1+7d
 MjzyHBkgUSQJ12blKdxHR7+zE/ZwtaXLqWXb6yD1S3rmyu9ZcFkMH2DtZ
 YcWcukJEIdyZHwC48TSop7+wgtX6DW8wAnt/kHg9nThMu1GjMq0oA6R5k Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="394989059"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="394989059"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664769730"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="664769730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2023 15:41:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 01:41:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 01:40:37 +0200
Message-Id: <20230220234046.29716-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/18] drm/i915: Flip VBT DDC pin maps around
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

Swap the roles of the index vs. value for the VBT DDC pin
mapping tables. This is not strictly necessary for DDC pins
but it will make this work exactly like the AUX CH mapping
tables where the role reversal is necessary (or at least makes
things easier). Consistency is good.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 70 ++++++++++++-----------
 1 file changed, 36 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 5eae34295d4e..cec38ed935e0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2134,60 +2134,60 @@ static u8 translate_iboost(u8 val)
 }
 
 static const u8 cnp_ddc_pin_map[] = {
 	[0] = 0, /* N/A */
-	[DDC_BUS_DDI_B] = GMBUS_PIN_1_BXT,
-	[DDC_BUS_DDI_C] = GMBUS_PIN_2_BXT,
-	[DDC_BUS_DDI_D] = GMBUS_PIN_4_CNP, /* sic */
-	[DDC_BUS_DDI_F] = GMBUS_PIN_3_BXT, /* sic */
+	[GMBUS_PIN_1_BXT] = DDC_BUS_DDI_B,
+	[GMBUS_PIN_2_BXT] = DDC_BUS_DDI_C,
+	[GMBUS_PIN_4_CNP] = DDC_BUS_DDI_D, /* sic */
+	[GMBUS_PIN_3_BXT] = DDC_BUS_DDI_F, /* sic */
 };
 
 static const u8 icp_ddc_pin_map[] = {
-	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
-	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
-	[TGL_DDC_BUS_DDI_C] = GMBUS_PIN_3_BXT,
-	[ICL_DDC_BUS_PORT_1] = GMBUS_PIN_9_TC1_ICP,
-	[ICL_DDC_BUS_PORT_2] = GMBUS_PIN_10_TC2_ICP,
-	[ICL_DDC_BUS_PORT_3] = GMBUS_PIN_11_TC3_ICP,
-	[ICL_DDC_BUS_PORT_4] = GMBUS_PIN_12_TC4_ICP,
-	[TGL_DDC_BUS_PORT_5] = GMBUS_PIN_13_TC5_TGP,
-	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
+	[GMBUS_PIN_1_BXT] = ICL_DDC_BUS_DDI_A,
+	[GMBUS_PIN_2_BXT] = ICL_DDC_BUS_DDI_B,
+	[GMBUS_PIN_3_BXT] = TGL_DDC_BUS_DDI_C,
+	[GMBUS_PIN_9_TC1_ICP] = ICL_DDC_BUS_PORT_1,
+	[GMBUS_PIN_10_TC2_ICP] = ICL_DDC_BUS_PORT_2,
+	[GMBUS_PIN_11_TC3_ICP] = ICL_DDC_BUS_PORT_3,
+	[GMBUS_PIN_12_TC4_ICP] = ICL_DDC_BUS_PORT_4,
+	[GMBUS_PIN_13_TC5_TGP] = TGL_DDC_BUS_PORT_5,
+	[GMBUS_PIN_14_TC6_TGP] = TGL_DDC_BUS_PORT_6,
 };
 
 static const u8 rkl_pch_tgp_ddc_pin_map[] = {
-	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
-	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
-	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
-	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
+	[GMBUS_PIN_1_BXT] = ICL_DDC_BUS_DDI_A,
+	[GMBUS_PIN_2_BXT] = ICL_DDC_BUS_DDI_B,
+	[GMBUS_PIN_9_TC1_ICP] = RKL_DDC_BUS_DDI_D,
+	[GMBUS_PIN_10_TC2_ICP] = RKL_DDC_BUS_DDI_E,
 };
 
 static const u8 adls_ddc_pin_map[] = {
-	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
-	[ADLS_DDC_BUS_PORT_TC1] = GMBUS_PIN_9_TC1_ICP,
-	[ADLS_DDC_BUS_PORT_TC2] = GMBUS_PIN_10_TC2_ICP,
-	[ADLS_DDC_BUS_PORT_TC3] = GMBUS_PIN_11_TC3_ICP,
-	[ADLS_DDC_BUS_PORT_TC4] = GMBUS_PIN_12_TC4_ICP,
+	[GMBUS_PIN_1_BXT] = ICL_DDC_BUS_DDI_A,
+	[GMBUS_PIN_9_TC1_ICP] = ADLS_DDC_BUS_PORT_TC1,
+	[GMBUS_PIN_10_TC2_ICP] = ADLS_DDC_BUS_PORT_TC2,
+	[GMBUS_PIN_11_TC3_ICP] = ADLS_DDC_BUS_PORT_TC3,
+	[GMBUS_PIN_12_TC4_ICP] = ADLS_DDC_BUS_PORT_TC4,
 };
 
 static const u8 gen9bc_tgp_ddc_pin_map[] = {
-	[DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
-	[DDC_BUS_DDI_C] = GMBUS_PIN_9_TC1_ICP,
-	[DDC_BUS_DDI_D] = GMBUS_PIN_10_TC2_ICP,
+	[GMBUS_PIN_2_BXT] = DDC_BUS_DDI_B,
+	[GMBUS_PIN_9_TC1_ICP] = DDC_BUS_DDI_C,
+	[GMBUS_PIN_10_TC2_ICP] = DDC_BUS_DDI_D,
 };
 
 static const u8 adlp_ddc_pin_map[] = {
-	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
-	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
-	[ADLP_DDC_BUS_PORT_TC1] = GMBUS_PIN_9_TC1_ICP,
-	[ADLP_DDC_BUS_PORT_TC2] = GMBUS_PIN_10_TC2_ICP,
-	[ADLP_DDC_BUS_PORT_TC3] = GMBUS_PIN_11_TC3_ICP,
-	[ADLP_DDC_BUS_PORT_TC4] = GMBUS_PIN_12_TC4_ICP,
+	[GMBUS_PIN_1_BXT] = ICL_DDC_BUS_DDI_A,
+	[GMBUS_PIN_2_BXT] = ICL_DDC_BUS_DDI_B,
+	[GMBUS_PIN_9_TC1_ICP] = ADLP_DDC_BUS_PORT_TC1,
+	[GMBUS_PIN_10_TC2_ICP] = ADLP_DDC_BUS_PORT_TC2,
+	[GMBUS_PIN_11_TC3_ICP] = ADLP_DDC_BUS_PORT_TC3,
+	[GMBUS_PIN_12_TC4_ICP] = ADLP_DDC_BUS_PORT_TC4,
 };
 
 static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 {
 	const u8 *ddc_pin_map;
-	int n_entries;
+	int i, n_entries;
 
 	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
 		ddc_pin_map = adlp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
@@ -2212,10 +2212,12 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 		/* Assuming direct map */
 		return vbt_pin;
 	}
 
-	if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] != 0)
-		return ddc_pin_map[vbt_pin];
+	for (i = 0; i < n_entries; i++) {
+		if (ddc_pin_map[i] == vbt_pin)
+			return i;
+	}
 
 	drm_dbg_kms(&i915->drm,
 		    "Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\n",
 		    vbt_pin);
-- 
2.39.2

