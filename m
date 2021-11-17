Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A3B4541F5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 08:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90D46E9CC;
	Wed, 17 Nov 2021 07:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36FC6E9CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 07:37:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="257662501"
X-IronPort-AV: E=Sophos;i="5.87,240,1631602800"; 
 d="scan'208,223";a="257662501"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 23:37:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,240,1631602800"; 
 d="scan'208,223";a="472634993"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga002.jf.intel.com with ESMTP; 16 Nov 2021 23:37:17 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Nov 2021 15:41:43 +0800
Message-Id: <20211117074143.23324-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From VBT, ddc pin info suggests the following mapping:
VBT                                    DRIVER
DDI A->ddc_pin=1 should translate to PORT_A->0x1
DDI B->ddc_pin=2 should translate to PORT_B->0x2
TCP 0->ddc_pin=3 should translate to PORT_TC1->0x9
TCP 1->ddc_pin=4 should translate to PORT_TC2->0xa
TCP 2->ddc_pin=5 should translate to PORT_TC3->0xb
TCP 3->ddc_pin=6 should translate to PORT_TC4->0xc

Adding adl_p pin map to facilitate this translation
as we cannot use existing icl ddc pin map due to
DDI C is not available on adl-p platform.

Bspec:20124

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  6 +++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2b1423a43437..c1479e61f032 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1549,6 +1549,15 @@ static const u8 adls_ddc_pin_map[] = {
 	[ADLS_DDC_BUS_PORT_TC4] = GMBUS_PIN_12_TC4_ICP,
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
 static const u8 gen9bc_tgp_ddc_pin_map[] = {
 	[DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
 	[DDC_BUS_DDI_C] = GMBUS_PIN_9_TC1_ICP,
@@ -1563,6 +1572,9 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	if (IS_ALDERLAKE_S(i915)) {
 		ddc_pin_map = adls_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
+	} else if (IS_ALDERLAKE_P(i915)) {
+		ddc_pin_map = adlp_ddc_pin_map;
+		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
 		return vbt_pin;
 	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index a2108a8f544d..d5be01b983f4 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -330,7 +330,11 @@ enum vbt_gmbus_ddi {
 	ADLS_DDC_BUS_PORT_TC1 = 0x2,
 	ADLS_DDC_BUS_PORT_TC2,
 	ADLS_DDC_BUS_PORT_TC3,
-	ADLS_DDC_BUS_PORT_TC4
+	ADLS_DDC_BUS_PORT_TC4,
+	ADLP_DDC_BUS_PORT_TC1 = 0x3,
+	ADLP_DDC_BUS_PORT_TC2,
+	ADLP_DDC_BUS_PORT_TC3,
+	ADLP_DDC_BUS_PORT_TC4,
 };
 
 #define DP_AUX_A 0x40
-- 
2.17.1

