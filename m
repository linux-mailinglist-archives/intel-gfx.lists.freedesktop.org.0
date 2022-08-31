Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1B65A8870
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 23:51:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D37F10E4F6;
	Wed, 31 Aug 2022 21:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84AC710E4F9;
 Wed, 31 Aug 2022 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661982633; x=1693518633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bmSWH3TmJlQc1L8KHohS5eEIh4faS/dKhKhD/8GHwmg=;
 b=SqfOo8OHetHAb9PKUAxJC+vDONJrxRyZSkmhDCKT+5RftWHPFLtfoCPh
 OXebuGOIPwnk00l6swN7nc4Ms3jFz9erXuCXOESe+1WaH8dfIcMTmVTYk
 zXPMIQGGuodcKnQRlntLatTF2qC7BFRXOZRdRJhkquII+kaEOj6pYEb4X
 1WWTkJHZfwtcohZeo1dtktV/6DnB0kcBoV4wCCAEHJs4NpZPKvCS1S5xT
 OCjVTRmAqKGJqcIGBWiE2c5iGq4Ig6VveVxUKarPxKYunHz3yhSJRy2xF
 jNwtUajI2zqRbrMy6RjLEko/0BvAjbXZpOJ/zptQFsivf1xqSVWMymLp7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="296833066"
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="296833066"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 14:50:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="940586230"
Received: from invictus.jf.intel.com ([10.165.21.206])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 14:50:31 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Aug 2022 14:49:53 -0700
Message-Id: <20220831214958.109753-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220831214958.109753-1-radhakrishna.sripada@intel.com>
References: <20220831214958.109753-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/11] drm/i915/mtl: Add display power wells
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Imre Deak <imre.deak@intel.com>

Add support for display power wells on MTL. The differences from XE_LPD:
- The AUX HW block is moved to the PICA block, where the registers are on
  an always-on power well and the functionality needs to be powered on/off
  via the AUX_CH_CTL register: [1], [2]
- The DDI IO power on/off programming sequence is moved to the PHY PLL
  enable/disable sequence. [3], [4], [5]

Bspec: [1] 49233, [2] 65247, [3] 64568, [4] 65451, [5] 65450

v2:
 - Update the comment in aux power well enable
 - Reuse the noop sync fn for aux sync.
 - Use REG_BIT for new register bit definitions

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 115 +++++++++++++++++-
 .../i915/display/intel_display_power_well.c   |  44 +++++++
 .../i915/display/intel_display_power_well.h   |   4 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   8 ++
 drivers/gpu/drm/i915/i915_reg.h               |  21 ++++
 5 files changed, 191 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 5ddd1b93751c..dc04afc6cc8f 100644
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
index 29cc05c04c65..9bf98a37204b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1798,6 +1798,43 @@ tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
 	return intel_power_well_refcount(power_well);
 }
 
+static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
+					 struct i915_power_well *power_well)
+{
+	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
+
+	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
+		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
+
+	/*
+	 * The power status flag cannot be used to determine whether aux
+	 * power wells have finished powering up.  Instead we're
+	 * expected to just wait a fixed 600us after raising the request
+	 * bit.
+	 */
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
@@ -1911,3 +1948,10 @@ const struct i915_power_well_ops tgl_tc_cold_off_ops = {
 	.disable = tgl_tc_cold_off_power_well_disable,
 	.is_enabled = tgl_tc_cold_off_power_well_is_enabled,
 };
+
+const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
+	.sync_hw = i9xx_power_well_sync_hw_noop,
+	.enable = xelpdp_aux_power_well_enable,
+	.disable = xelpdp_aux_power_well_disable,
+	.is_enabled = xelpdp_aux_power_well_enabled,
+};
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 31a898176ebb..e13b521e322a 100644
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
index f2ad1d09ab43..98bd33645b43 100644
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
index f52ed6d00030..42e26057f44a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3451,6 +3451,25 @@
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
 #define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
 #define   DP_AUX_CH_CTL_DONE		    (1 << 30)
 #define   DP_AUX_CH_CTL_INTERRUPT	    (1 << 29)
@@ -3463,6 +3482,8 @@
 #define   DP_AUX_CH_CTL_RECEIVE_ERROR	    (1 << 25)
 #define   DP_AUX_CH_CTL_MESSAGE_SIZE_MASK    (0x1f << 20)
 #define   DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT   20
+#define   XELPDP_DP_AUX_CH_CTL_POWER_REQUEST REG_BIT(19)
+#define   XELPDP_DP_AUX_CH_CTL_POWER_STATUS  REG_BIT(18)
 #define   DP_AUX_CH_CTL_PRECHARGE_2US_MASK   (0xf << 16)
 #define   DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT  16
 #define   DP_AUX_CH_CTL_AUX_AKSV_SELECT	    (1 << 15)
-- 
2.25.1

