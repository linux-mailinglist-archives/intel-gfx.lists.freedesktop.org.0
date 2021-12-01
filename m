Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF82464D7F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 13:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D426E8E4;
	Wed,  1 Dec 2021 12:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAA16E8E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 12:06:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="322690167"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="322690167"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 04:06:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="540802054"
Received: from raviteja-system-product-name.iind.intel.com ([10.145.162.127])
 by orsmga001.jf.intel.com with ESMTP; 01 Dec 2021 04:06:07 -0800
From: ravitejax.goud.talla@intel.com
To: intel-gfx@lists.freedesktop.org,
 tejaskumarx.surendrakumar.upadhyay@intel.com
Date: Wed,  1 Dec 2021 17:39:35 +0530
Message-Id: <20211201120935.3672190-1-ravitejax.goud.talla@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl_p: Add adl-p ddc pin mapping
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
Cc: ravitejax.goud.talla@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: raviteja goud talla <ravitejax.goud.talla@intel.com>

From VBT, ddc pin info suggests the following mapping:
    VBT                                    DRIVER
    DDI TC1->ddc_pin=3 should translate to PORT_TC1->0x9
    DDI TC2->ddc_pin=4 should translate to PORT_TC2->0xa
    DDI TC3->ddc_pin=5 should translate to PORT_TC3->0xb
    DDI TC4->ddc_pin=6 should translate to PORT_TC4->0xc

Adding pin map to facilitate this translation as we cannot use existing
icl ddc pin map due to conflict with DDI C and DDI TC1 info.

Bspec:20124

Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Acked-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: raviteja goud talla <ravitejax.goud.talla@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 14 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  7 ++++++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2b1423a43437..9d989c9f5da4 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1555,12 +1555,24 @@ static const u8 gen9bc_tgp_ddc_pin_map[] = {
 	[DDC_BUS_DDI_D] = GMBUS_PIN_10_TC2_ICP,
 };
 
+static const u8 adlp_ddc_pin_map[] = {
+	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
+	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
+	[ADLP_DDC_BUS_PORT_TC1] = GMBUS_PIN_9_TC1_ICP,
+	[ADLP_DDC_BUS_PORT_TC2] = GMBUS_PIN_10_TC2_ICP,
+	[ADLP_DDC_BUS_PORT_TC3] = GMBUS_PIN_11_TC3_ICP,
+	[ADLP_DDC_BUS_PORT_TC4] = GMBUS_PIN_12_TC4_ICP,
+};
+
 static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 {
 	const u8 *ddc_pin_map;
 	int n_entries;
 
-	if (IS_ALDERLAKE_S(i915)) {
+	if (IS_ALDERLAKE_P(i915)) {
+		ddc_pin_map = adlp_ddc_pin_map;
+		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
+	} else if (IS_ALDERLAKE_S(i915)) {
 		ddc_pin_map = adls_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index a2108a8f544d..f043d85ba64d 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -330,7 +330,12 @@ enum vbt_gmbus_ddi {
 	ADLS_DDC_BUS_PORT_TC1 = 0x2,
 	ADLS_DDC_BUS_PORT_TC2,
 	ADLS_DDC_BUS_PORT_TC3,
-	ADLS_DDC_BUS_PORT_TC4
+	ADLS_DDC_BUS_PORT_TC4,
+	ADLP_DDC_BUS_PORT_TC1 = 0x3,
+	ADLP_DDC_BUS_PORT_TC2,
+	ADLP_DDC_BUS_PORT_TC3,
+	ADLP_DDC_BUS_PORT_TC4
+
 };
 
 #define DP_AUX_A 0x40
-- 
2.30.2

