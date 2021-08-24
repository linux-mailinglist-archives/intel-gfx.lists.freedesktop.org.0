Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 386E73F5F46
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 15:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 630D46E063;
	Tue, 24 Aug 2021 13:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A696E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 13:34:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="217034705"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="217034705"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="685368750"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 16:34:17 +0300
Message-Id: <490102cf4e9b6d709bf2e536361d428cae011d9c.1629811722.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629811722.git.jani.nikula@intel.com>
References: <cover.1629811722.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/bios: move ddc pin mapping code
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
index 674f1424fcc2..029a10be1586 100644
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
2.20.1

