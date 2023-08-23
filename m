Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132B3785E24
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A66B10E493;
	Wed, 23 Aug 2023 17:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132EE10E482;
 Wed, 23 Aug 2023 17:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810560; x=1724346560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MCE8oIAVe3bhDEKURcef4nadOnGGxpgFYumE5BoQ+7k=;
 b=bMKfgY1qsLj0FThC6Rv2Lq8YUVzXkkwtjv6Tk+SYpFZYqCZlMsYR56Aa
 Dk0bxOfCf9zycv+r7vdymOZgXGjPKI9Tk/ZhZl31D+IOQRdoe4rSgdaap
 0kGtsG/qHfWiBA+NRutnK9sJkIF7+OamV+0naWSm7X8xjXc9eSyZ7EFH+
 rHCpa//xddKX1SYvDPjSkXtIHLiBeUrcR3cOaY3HwNecYVomBTRaSkZI2
 DxkHSgWqrn8DrubaJJb/QZCiGtJliu3hzVB4BfsLHsRfFYFKBXZ49afDT
 WHgl0p+t0jtZiXdbrfSdnSJWOZja+UzR1tYNsl5tF6CnBeqVp1ZXJnQS5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147489"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147489"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204827"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204827"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:19 -0700
Message-Id: <20230823170740.1180212-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/42] drm/i915/xe2lpd: Add display power well
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Add Display Power Well for LNL platform, mostly it is same as MTL
platform so reused the code

Changes are:
1. AUX_CH_CTL and AUX_CH_DATA1 are different from MTL so added extra
   logic xelpdp_aux_power_well_ops functions.
2. PGPICA1 contains type-C capable port slices which requires the well
   to power powered up, so added new power well definition for PGPICA1

BSpec: 68886
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 36 ++++++++++-
 .../i915/display/intel_display_power_well.c   | 63 ++++++++++++++++++-
 .../i915/display/intel_display_power_well.h   |  1 +
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 27 ++++++++
 4 files changed, 123 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 5ad04cd42c15..cef3b313c9f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1545,6 +1545,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
 	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
 };
 
+I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
+		     POWER_DOMAIN_PORT_DDI_LANES_TC1,
+		     POWER_DOMAIN_PORT_DDI_LANES_TC2,
+		     POWER_DOMAIN_PORT_DDI_LANES_TC3,
+		     POWER_DOMAIN_PORT_DDI_LANES_TC4,
+		     POWER_DOMAIN_AUX_USBC1,
+		     POWER_DOMAIN_AUX_USBC2,
+		     POWER_DOMAIN_AUX_USBC3,
+		     POWER_DOMAIN_AUX_USBC4,
+		     POWER_DOMAIN_AUX_TBT1,
+		     POWER_DOMAIN_AUX_TBT2,
+		     POWER_DOMAIN_AUX_TBT3,
+		     POWER_DOMAIN_AUX_TBT4,
+		     POWER_DOMAIN_INIT);
+
+static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
+	{
+		.instances = &I915_PW_INSTANCES(I915_PW("PICA_TC",
+							&xe2lpd_pwdoms_pica_tc,
+							.id = DISP_PW_ID_NONE),
+					       ),
+		.ops = &xe2lpd_pica_power_well_ops,
+	},
+};
+
+static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
+	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+};
+
 static void init_power_well_domains(const struct i915_power_well_instance *inst,
 				    struct i915_power_well *power_well)
 {
@@ -1652,7 +1684,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
 		return 0;
 	}
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(i915) >= 20)
+		return set_power_wells(power_domains, xe2lpd_power_wells);
+	else if (DISPLAY_VER(i915) >= 14)
 		return set_power_wells(power_domains, xelpdp_power_wells);
 	else if (IS_DG2(i915))
 		return set_power_wells(power_domains, xehpd_power_wells);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 916009894d89..e1fb0bd7b3bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1795,7 +1795,11 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
+				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
+				XELPDP_DP_AUX_CH_CTL(aux_ch);
+
+	intel_de_rmw(dev_priv, aux_ch_ctl,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
 
@@ -1813,7 +1817,11 @@ static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 
-	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
+	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
+				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
+				XELPDP_DP_AUX_CH_CTL(aux_ch);
+
+	intel_de_rmw(dev_priv, aux_ch_ctl,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     0);
 	usleep_range(10, 30);
@@ -1823,11 +1831,53 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
 					  struct i915_power_well *power_well)
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
+	i915_reg_t aux_ch_ctl;
 
-	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
+	aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
+		     XE2LPD_DP_AUX_CH_CTL(aux_ch) :
+		     XELPDP_DP_AUX_CH_CTL(aux_ch);
+
+	return intel_de_read(dev_priv, aux_ch_ctl) &
 		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
 }
 
+static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
+					  struct i915_power_well *power_well)
+{
+	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
+		     XE2LPD_PICA_CTL_POWER_REQUEST,
+		     XE2LPD_PICA_CTL_POWER_REQUEST);
+
+	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
+				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
+		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
+
+		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
+	}
+}
+
+static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
+					   struct i915_power_well *power_well)
+{
+	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
+		     XE2LPD_PICA_CTL_POWER_REQUEST,
+		     0);
+
+	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
+				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
+		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
+
+		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
+	}
+}
+
+static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
+					   struct i915_power_well *power_well)
+{
+	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
+		XE2LPD_PICA_CTL_POWER_STATUS;
+}
+
 const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
 	.sync_hw = i9xx_power_well_sync_hw_noop,
 	.enable = i9xx_always_on_power_well_noop,
@@ -1947,3 +1997,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
 	.disable = xelpdp_aux_power_well_disable,
 	.is_enabled = xelpdp_aux_power_well_enabled,
 };
+
+const struct i915_power_well_ops xe2lpd_pica_power_well_ops = {
+	.sync_hw = i9xx_power_well_sync_hw_noop,
+	.enable = xe2lpd_pica_power_well_enable,
+	.disable = xe2lpd_pica_power_well_disable,
+	.is_enabled = xe2lpd_pica_power_well_enabled,
+};
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index a8736588314d..9357a9a73c06 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -176,5 +176,6 @@ extern const struct i915_power_well_ops icl_aux_power_well_ops;
 extern const struct i915_power_well_ops icl_ddi_power_well_ops;
 extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
 extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
+extern const struct i915_power_well_ops xe2lpd_pica_power_well_ops;
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
index 5185345277c7..d855f3730381 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -83,4 +83,31 @@
 #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
 #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
 
+#define _XE2LPD_DPA_AUX_CH_CTL		0x16FA10
+#define _XE2LPD_DPB_AUX_CH_CTL		0x16FC10
+#define _XE2LPD_DPA_AUX_CH_DATA1	0x16FA14
+#define _XE2LPD_DPB_AUX_CH_DATA1	0x16FC14
+#define XE2LPD_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
+						       _XE2LPD_DPA_AUX_CH_CTL, \
+						       _XE2LPD_DPB_AUX_CH_CTL, \
+						       0, /* port/aux_ch C is non-existent */ \
+						       _XELPDP_USBC1_AUX_CH_CTL, \
+						       _XELPDP_USBC2_AUX_CH_CTL, \
+						       _XELPDP_USBC3_AUX_CH_CTL, \
+						       _XELPDP_USBC4_AUX_CH_CTL))
+#define XE2LPD_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
+						       _XE2LPD_DPA_AUX_CH_DATA1, \
+						       _XE2LPD_DPB_AUX_CH_DATA1, \
+						       0, /* port/aux_ch C is non-existent */ \
+						       _XELPDP_USBC1_AUX_CH_DATA1, \
+						       _XELPDP_USBC2_AUX_CH_DATA1, \
+						       _XELPDP_USBC3_AUX_CH_DATA1, \
+						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
+
+/* PICA Power Well Control register for Xe2 platforms*/
+#define XE2LPD_PICA_PW_CTL	_MMIO(0x16FE04)
+
+#define   XE2LPD_PICA_CTL_POWER_REQUEST BIT(31)
+#define   XE2LPD_PICA_CTL_POWER_STATUS  BIT(30)
+
 #endif /* __INTEL_DP_AUX_REGS_H__ */
-- 
2.40.1

