Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C1B58365E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BA8E10E88E;
	Thu, 28 Jul 2022 01:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC1810E28F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2py5c/I0o8DuQ7OdRx+LgF4WFCUYnMsgTl2Tf99mtag=;
 b=cZxDpQuXoFtKJ0yGylDEzPzQuHghL3JHnCB4nnLEkm1WioKynetwARJd
 HWdFogXGWsuSc1xXpgjKiScfbPfa5GlvZvFyZvuzn2pccv+YHilKFYD+G
 BB6MEwd67B6/zr4W9kUqRdR3QUz9ehI+R199TvlmQEf+2hLULV1u65PMd
 aEoC7Z5lcH72sA0wYDtvNaeFt1hp7g78Dbe94UmJSEZTFk+vd4NSrtQC9
 Z7D2iNWl1AzMMvTZXXcYyn/i7uBLL0PrQKm0mGCNrTZ5U4Rur4NFTvInD
 m4/zLltDdcF9SxMwYATmSX6nKlC/c+tHBelLmjwaRuS7hEKRFS4X8+534 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693658"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693658"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456998"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:07 -0700
Message-Id: <20220728013420.3750388-11-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/23] drm/i915/mtl: Add display power wells
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

From: Imre Deak <imre.deak@intel.com>

Add support for display power wells on MTL. The differences from D13:
- The AUX HW block is moved to the PICA block, where the registers are on
  an always-on power well and the functionality needs to be powered on/off
  via the AUX_CH_CTL register: [1], [2]
- The DDI IO power on/off programming sequence is moved to the PHY PLL
  enable/disable sequence. [3], [4], [5]

Bspec: [1] 49233, [2] 65247, [3] 64568, [4] 65451, [5] 65450

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 115 +++++++++++++++++-
 .../i915/display/intel_display_power_well.c   |  43 +++++++
 .../i915/display/intel_display_power_well.h   |   4 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   8 ++
 drivers/gpu/drm/i915/i915_reg.h               |  30 +++++
 5 files changed, 199 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 97b367f39f35..cd28976f8076 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1350,6 +1350,117 @@ static const struct i915_power_well_desc_list xelpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
 };
 
+/*
+ * MTL is based on XELPD power domains with the exception of power gating for:
+ * - DDI_IO (moved to PLL logic)
+ * - AUX and AUX_IO functionality and register access for USBC1-4 (PICA always-on)
+ */
+#define XELPDP_PW_2_POWER_DOMAINS \
+	XELPD_PW_B_POWER_DOMAINS, \
+	XELPD_PW_C_POWER_DOMAINS, \
+	XELPD_PW_D_POWER_DOMAINS, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC4
+
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_pw_2,
+	XELPDP_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
+	XELPDP_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc1,
+	POWER_DOMAIN_AUX_USBC1,
+	POWER_DOMAIN_AUX_TBT1);
+
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc2,
+	POWER_DOMAIN_AUX_USBC2,
+	POWER_DOMAIN_AUX_TBT2);
+
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc3,
+	POWER_DOMAIN_AUX_USBC3,
+	POWER_DOMAIN_AUX_TBT3);
+
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc4,
+	POWER_DOMAIN_AUX_USBC4,
+	POWER_DOMAIN_AUX_TBT4);
+
+static const struct i915_power_well_desc xelpdp_power_wells_main[] = {
+	{
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &xelpdp_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
+		.ops = &gen9_dc_off_power_well_ops,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &xelpdp_pwdoms_pw_2,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
+		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_A", &xelpd_pwdoms_pw_a,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_A),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_A),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_B", &xelpd_pwdoms_pw_b,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_B),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_B),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_C", &xelpd_pwdoms_pw_c,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_C),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_C),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_D", &xelpd_pwdoms_pw_d,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_D),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_D),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
+			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
+			I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
+			I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
+			I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
+			I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
+		),
+		.ops = &xelpdp_aux_power_well_ops,
+	},
+};
+
+static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
+};
+
 static void init_power_well_domains(const struct i915_power_well_instance *inst,
 				    struct i915_power_well *power_well)
 {
@@ -1457,7 +1568,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
 		return 0;
 	}
 
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(i915) >= 14)
+		return set_power_wells(power_domains, xelpdp_power_wells);
+	else if (DISPLAY_VER(i915) >= 13)
 		return set_power_wells(power_domains, xelpd_power_wells);
 	else if (IS_DG1(i915))
 		return set_power_wells(power_domains, dg1_power_wells);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 91cfd5890f46..7c854c1a110b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1797,6 +1797,42 @@ tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
 	return intel_power_well_refcount(power_well);
 }
 
+static void xelpdp_aux_power_well_sync_hw(struct drm_i915_private *i915,
+					  struct i915_power_well *power_well)
+{
+}
+
+static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
+					 struct i915_power_well *power_well)
+{
+	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
+
+	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
+		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
+	/* The power status flag doesn't indicate that the power up completed. */
+	usleep_range(600, 1200);
+}
+
+static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
+					  struct i915_power_well *power_well)
+{
+	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
+
+	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
+		     0);
+	usleep_range(10, 30);
+}
+
+static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
+					  struct i915_power_well *power_well)
+{
+	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
+
+	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
+		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
+}
 
 const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
@@ -1910,3 +1946,10 @@ const struct i915_power_well_ops tgl_tc_cold_off_ops = {
 	.disable = tgl_tc_cold_off_power_well_disable,
 	.is_enabled = tgl_tc_cold_off_power_well_is_enabled,
 };
+
+const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
+	.sync_hw = xelpdp_aux_power_well_sync_hw,
+	.enable = xelpdp_aux_power_well_enable,
+	.disable = xelpdp_aux_power_well_disable,
+	.is_enabled = xelpdp_aux_power_well_enabled,
+};
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index d0624642dcb6..03d11576327d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -80,6 +80,9 @@ struct i915_power_well_instance {
 			 */
 			u8 idx;
 		} hsw;
+		struct {
+			u8 aux_ch;
+		} xelpdp;
 	};
 };
 
@@ -169,5 +172,6 @@ extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
 extern const struct i915_power_well_ops icl_aux_power_well_ops;
 extern const struct i915_power_well_ops icl_ddi_power_well_ops;
 extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
+extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 2bc119374555..40c4bdd9cb26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -150,6 +150,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 				u32 unused)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_i915_private *i915 =	to_i915(dig_port->base.base.dev);
 	u32 ret;
 
 	/*
@@ -170,6 +171,13 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		ret |= DP_AUX_CH_CTL_TBT_IO;
 
+	/*
+	 * Power request bit is already set during aux power well enable.
+	 * Preserve the bit across aux transactions.
+	 */
+	if (DISPLAY_VER(i915) >= 14)
+		ret |= XELPDP_DP_AUX_CH_CTL_POWER_REQUEST;
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index baf747adf1db..6087d40eed70 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3619,6 +3619,34 @@
 #define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
 #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
 
+#define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
+#define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
+#define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
+#define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
+
+#define _XELPDP_USBC1_AUX_CH_DATA1	0x16F214
+#define _XELPDP_USBC2_AUX_CH_DATA1	0x16F414
+#define _XELPDP_USBC3_AUX_CH_DATA1	0x16F614
+#define _XELPDP_USBC4_AUX_CH_DATA1	0x16F814
+
+#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
+						       _DPA_AUX_CH_CTL, \
+						       _DPB_AUX_CH_CTL, \
+						       0, /* port/aux_ch C is non-existent */ \
+						       _XELPDP_USBC1_AUX_CH_CTL, \
+						       _XELPDP_USBC2_AUX_CH_CTL, \
+						       _XELPDP_USBC3_AUX_CH_CTL, \
+						       _XELPDP_USBC4_AUX_CH_CTL))
+
+#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
+						       _DPA_AUX_CH_DATA1, \
+						       _DPB_AUX_CH_DATA1, \
+						       0, /* port/aux_ch C is non-existent */ \
+						       _XELPDP_USBC1_AUX_CH_DATA1, \
+						       _XELPDP_USBC2_AUX_CH_DATA1, \
+						       _XELPDP_USBC3_AUX_CH_DATA1, \
+						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
+
 #define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
 #define   DP_AUX_CH_CTL_DONE		    (1 << 30)
 #define   DP_AUX_CH_CTL_INTERRUPT	    (1 << 29)
@@ -3631,6 +3659,8 @@
 #define   DP_AUX_CH_CTL_RECEIVE_ERROR	    (1 << 25)
 #define   DP_AUX_CH_CTL_MESSAGE_SIZE_MASK    (0x1f << 20)
 #define   DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT   20
+#define   XELPDP_DP_AUX_CH_CTL_POWER_REQUEST (1 << 19)
+#define   XELPDP_DP_AUX_CH_CTL_POWER_STATUS  (1 << 18)
 #define   DP_AUX_CH_CTL_PRECHARGE_2US_MASK   (0xf << 16)
 #define   DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT  16
 #define   DP_AUX_CH_CTL_AUX_AKSV_SELECT	    (1 << 15)
-- 
2.25.1

