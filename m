Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2573FDF75
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF64E6E216;
	Wed,  1 Sep 2021 16:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE3136E216
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:10:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="279802633"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="279802633"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:10:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="690763205"
Received: from josearun-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.212.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:10:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	jose.souza@intel.com,
	ankit.k.nautiyal@intel.com
Date: Wed,  1 Sep 2021 19:10:03 +0300
Message-Id: <8c5f723e0b2d8ffd6f47068edf710947b45843be.1630512523.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1630512523.git.jani.nikula@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915/bios: move ddc pin mapping code
 next to ddc pin sanitize
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

Move code around to avoid a forward declaration in the future.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 154 +++++++++++-----------
 1 file changed, 77 insertions(+), 77 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 69d7da66f168..b4113506b3b8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1501,6 +1501,83 @@ static u8 translate_iboost(u8 val)
 	return mapping[val];
 }
 
+static const u8 cnp_ddc_pin_map[] = {
+	[0] = 0, /* N/A */
+	[DDC_BUS_DDI_B] = GMBUS_PIN_1_BXT,
+	[DDC_BUS_DDI_C] = GMBUS_PIN_2_BXT,
+	[DDC_BUS_DDI_D] = GMBUS_PIN_4_CNP, /* sic */
+	[DDC_BUS_DDI_F] = GMBUS_PIN_3_BXT, /* sic */
+};
+
+static const u8 icp_ddc_pin_map[] = {
+	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
+	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
+	[TGL_DDC_BUS_DDI_C] = GMBUS_PIN_3_BXT,
+	[ICL_DDC_BUS_PORT_1] = GMBUS_PIN_9_TC1_ICP,
+	[ICL_DDC_BUS_PORT_2] = GMBUS_PIN_10_TC2_ICP,
+	[ICL_DDC_BUS_PORT_3] = GMBUS_PIN_11_TC3_ICP,
+	[ICL_DDC_BUS_PORT_4] = GMBUS_PIN_12_TC4_ICP,
+	[TGL_DDC_BUS_PORT_5] = GMBUS_PIN_13_TC5_TGP,
+	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
+};
+
+static const u8 rkl_pch_tgp_ddc_pin_map[] = {
+	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
+	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
+	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
+	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
+};
+
+static const u8 adls_ddc_pin_map[] = {
+	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
+	[ADLS_DDC_BUS_PORT_TC1] = GMBUS_PIN_9_TC1_ICP,
+	[ADLS_DDC_BUS_PORT_TC2] = GMBUS_PIN_10_TC2_ICP,
+	[ADLS_DDC_BUS_PORT_TC3] = GMBUS_PIN_11_TC3_ICP,
+	[ADLS_DDC_BUS_PORT_TC4] = GMBUS_PIN_12_TC4_ICP,
+};
+
+static const u8 gen9bc_tgp_ddc_pin_map[] = {
+	[DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
+	[DDC_BUS_DDI_C] = GMBUS_PIN_9_TC1_ICP,
+	[DDC_BUS_DDI_D] = GMBUS_PIN_10_TC2_ICP,
+};
+
+static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
+{
+	const u8 *ddc_pin_map;
+	int n_entries;
+
+	if (IS_ALDERLAKE_S(i915)) {
+		ddc_pin_map = adls_ddc_pin_map;
+		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
+		return vbt_pin;
+	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
+		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
+		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
+	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(i915) == 9) {
+		ddc_pin_map = gen9bc_tgp_ddc_pin_map;
+		n_entries = ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
+		ddc_pin_map = icp_ddc_pin_map;
+		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
+	} else if (HAS_PCH_CNP(i915)) {
+		ddc_pin_map = cnp_ddc_pin_map;
+		n_entries = ARRAY_SIZE(cnp_ddc_pin_map);
+	} else {
+		/* Assuming direct map */
+		return vbt_pin;
+	}
+
+	if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] != 0)
+		return ddc_pin_map[vbt_pin];
+
+	drm_dbg_kms(&i915->drm,
+		    "Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\n",
+		    vbt_pin);
+	return 0;
+}
+
 static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
 {
 	const struct ddi_vbt_port_info *info;
@@ -1606,83 +1683,6 @@ static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
 	child->aux_channel = 0;
 }
 
-static const u8 cnp_ddc_pin_map[] = {
-	[0] = 0, /* N/A */
-	[DDC_BUS_DDI_B] = GMBUS_PIN_1_BXT,
-	[DDC_BUS_DDI_C] = GMBUS_PIN_2_BXT,
-	[DDC_BUS_DDI_D] = GMBUS_PIN_4_CNP, /* sic */
-	[DDC_BUS_DDI_F] = GMBUS_PIN_3_BXT, /* sic */
-};
-
-static const u8 icp_ddc_pin_map[] = {
-	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
-	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
-	[TGL_DDC_BUS_DDI_C] = GMBUS_PIN_3_BXT,
-	[ICL_DDC_BUS_PORT_1] = GMBUS_PIN_9_TC1_ICP,
-	[ICL_DDC_BUS_PORT_2] = GMBUS_PIN_10_TC2_ICP,
-	[ICL_DDC_BUS_PORT_3] = GMBUS_PIN_11_TC3_ICP,
-	[ICL_DDC_BUS_PORT_4] = GMBUS_PIN_12_TC4_ICP,
-	[TGL_DDC_BUS_PORT_5] = GMBUS_PIN_13_TC5_TGP,
-	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
-};
-
-static const u8 rkl_pch_tgp_ddc_pin_map[] = {
-	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
-	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
-	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
-	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
-};
-
-static const u8 adls_ddc_pin_map[] = {
-	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
-	[ADLS_DDC_BUS_PORT_TC1] = GMBUS_PIN_9_TC1_ICP,
-	[ADLS_DDC_BUS_PORT_TC2] = GMBUS_PIN_10_TC2_ICP,
-	[ADLS_DDC_BUS_PORT_TC3] = GMBUS_PIN_11_TC3_ICP,
-	[ADLS_DDC_BUS_PORT_TC4] = GMBUS_PIN_12_TC4_ICP,
-};
-
-static const u8 gen9bc_tgp_ddc_pin_map[] = {
-	[DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
-	[DDC_BUS_DDI_C] = GMBUS_PIN_9_TC1_ICP,
-	[DDC_BUS_DDI_D] = GMBUS_PIN_10_TC2_ICP,
-};
-
-static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
-{
-	const u8 *ddc_pin_map;
-	int n_entries;
-
-	if (IS_ALDERLAKE_S(i915)) {
-		ddc_pin_map = adls_ddc_pin_map;
-		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
-	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
-		return vbt_pin;
-	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
-		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
-		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
-	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(i915) == 9) {
-		ddc_pin_map = gen9bc_tgp_ddc_pin_map;
-		n_entries = ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
-	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
-		ddc_pin_map = icp_ddc_pin_map;
-		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
-	} else if (HAS_PCH_CNP(i915)) {
-		ddc_pin_map = cnp_ddc_pin_map;
-		n_entries = ARRAY_SIZE(cnp_ddc_pin_map);
-	} else {
-		/* Assuming direct map */
-		return vbt_pin;
-	}
-
-	if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] != 0)
-		return ddc_pin_map[vbt_pin];
-
-	drm_dbg_kms(&i915->drm,
-		    "Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\n",
-		    vbt_pin);
-	return 0;
-}
-
 static enum port __dvo_port_to_port(int n_ports, int n_dvo,
 				    const int port_mapping[][3], u8 dvo_port)
 {
-- 
2.30.2

