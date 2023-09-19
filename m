Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C37F7A6B7D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7087410E299;
	Tue, 19 Sep 2023 19:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D44E10E1D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151287; x=1726687287;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZHPPCYI3/2NeUKdVbYUO+Ph7Fqlw6jK0devr29IYsRk=;
 b=beUFwgrRXXtsccd1iDasTCsevjc2bAknUeCc7qJxOfZC+6eTKv4m1RWE
 EFLRHf6nuo4uMlaQhFJq+LbP6C9xm/WeBLQsqaOXHZvcarAxauqXMUYfM
 1VNgtB/wqWP0T9nRQGmfQXFvPaU2apSJuQ8HskJVtU8aTQY1pSkWN3KwQ
 NAsxVVFOpvRhrDC5QciJH2PpPdIjdbMSGdwgoqHm8vxd2GtCRI2AMzcrD
 HAlf6qECM3uTrZwpmDhW++MmXd3/sJGzy55Uz5QJl4q48KaHy/jGlcc9b
 o9y2TgFgBemcmEV6dF1AyOLHL+QKrpxHd64qxKJN2dnS3sS4ib5O0vaZj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423149"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423149"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350107"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350107"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:26 -0700
Message-Id: <20230919192128.2045154-20-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 20/22] drm/i915/xe2lpd: Add display power well
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Add Display Power Well for Xe2_LPD. It's mostly the same as Xe_LPD+,
so reuse the code. PGPICA1 contains type-C capable port slices
which requires the well to power powered up, so add new power well
definition for it.

The DC_OFF fake power well will be added in a follow up commit.

v2: Do not rmw as bit 31 is the only R/W bit in the regiser (Matt Roper)

BSpec: 68886
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 36 +++++++++++++++-
 .../i915/display/intel_display_power_well.c   | 41 +++++++++++++++++++
 .../i915/display/intel_display_power_well.h   |  1 +
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  |  5 +++
 4 files changed, 82 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 0f1b93d139ca..31c11586ede5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1536,6 +1536,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
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
@@ -1643,7 +1675,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
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
index ca0714eba17a..07d650050099 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1833,6 +1833,40 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
 		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
 }
 
+static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
+					  struct i915_power_well *power_well)
+{
+	intel_de_write(dev_priv, XE2LPD_PICA_PW_CTL,
+		       XE2LPD_PICA_CTL_POWER_REQUEST);
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
+	intel_de_write(dev_priv, XE2LPD_PICA_PW_CTL, 0);
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
@@ -1952,3 +1986,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
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
index 9d141e86a4b6..e8f426d5ce20 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -86,4 +86,9 @@
 		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
 		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))
 
+/* PICA Power Well Control */
+#define XE2LPD_PICA_PW_CTL			_MMIO(0x16fe04)
+#define   XE2LPD_PICA_CTL_POWER_REQUEST		REG_BIT(31)
+#define   XE2LPD_PICA_CTL_POWER_STATUS		REG_BIT(30)
+
 #endif /* __INTEL_DP_AUX_REGS_H__ */
-- 
2.40.1

