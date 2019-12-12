Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A4711D97B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 23:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E2186E220;
	Thu, 12 Dec 2019 22:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049206E221
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 22:37:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 14:37:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="245907413"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2019 14:37:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:37:33 -0800
Message-Id: <20191212223735.666014-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191212223735.666014-1-matthew.d.roper@intel.com>
References: <20191212223735.666014-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/ehl: Define EHL powerwells
 independently of ICL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Outputs C and D on EHL are combo PHY outputs and thus should not be
using the same TC AUX power well handlers as ICL.  And even though
icl_combo_phy_aux_power_well_ops works okay for EHL/JSL combo PHYs none
of its special handling is actually necessary for this platform:
 * EHL/JSL don't actually need to program PORT_CL_DW12
 * Display WA #1178 does not apply to EHL/JSL

Thus we can simply drop back to using our standard "hsw-style" power
well ops for EHL AUX power wells.

Bspec: 4301
Fixes: f722b8c1e2a2 ("drm/i915/ehl: All EHL ports are combo phys")
Cc: Jose Souza <jose.souza@intel.com>
Cc: Bob Paauwe <bob.j.paauwe@intel.com>
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 147 ++++++++++++++++++
 1 file changed, 147 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 0b3dd2a3b94d..cf34427cc840 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -3688,6 +3688,151 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc ehl_power_wells[] = {
+	{
+		.name = "always-on",
+		.always_on = true,
+		.domains = POWER_DOMAIN_MASK,
+		.ops = &i9xx_always_on_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+	},
+	{
+		.name = "power well 1",
+		/* Handled by the DMC firmware */
+		.always_on = true,
+		.domains = 0,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_1,
+		{
+			.hsw.regs = &hsw_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
+			.hsw.has_fuses = true,
+		},
+	},
+	{
+		.name = "DC off",
+		.domains = ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
+		.ops = &gen9_dc_off_power_well_ops,
+		.id = SKL_DISP_DC_OFF,
+	},
+	{
+		.name = "power well 2",
+		.domains = ICL_PW_2_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = SKL_DISP_PW_2,
+		{
+			.hsw.regs = &hsw_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+			.hsw.has_fuses = true,
+		},
+	},
+	{
+		.name = "power well 3",
+		.domains = ICL_PW_3_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &hsw_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
+			.hsw.irq_pipe_mask = BIT(PIPE_B),
+			.hsw.has_vga = true,
+			.hsw.has_fuses = true,
+		},
+	},
+	{
+		.name = "DDI A IO",
+		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &icl_ddi_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
+		},
+	},
+	{
+		.name = "DDI B IO",
+		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &icl_ddi_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
+		},
+	},
+	{
+		.name = "DDI C IO",
+		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &icl_ddi_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
+		},
+	},
+	{
+		.name = "DDI D IO",
+		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &icl_ddi_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
+		},
+	},
+	{
+		.name = "AUX A",
+		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &icl_aux_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
+		},
+	},
+	{
+		.name = "AUX B",
+		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &icl_aux_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
+		},
+	},
+	{
+		.name = "AUX C",
+		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &icl_aux_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
+		},
+	},
+	{
+		.name = "AUX D",
+		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &icl_aux_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
+		},
+	},
+	{
+		.name = "power well 4",
+		.domains = ICL_PW_4_POWER_DOMAINS,
+		.ops = &hsw_power_well_ops,
+		.id = DISP_PW_ID_NONE,
+		{
+			.hsw.regs = &hsw_power_well_regs,
+			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
+			.hsw.has_fuses = true,
+			.hsw.irq_pipe_mask = BIT(PIPE_C),
+		},
+	},
+};
+
 static const struct i915_power_well_desc tgl_power_wells[] = {
 	{
 		.name = "always-on",
@@ -4162,6 +4307,8 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 	 */
 	if (IS_GEN(dev_priv, 12)) {
 		err = set_power_wells(power_domains, tgl_power_wells);
+	} else if (IS_ELKHARTLAKE(dev_priv)) {
+		err = set_power_wells(power_domains, ehl_power_wells);
 	} else if (IS_GEN(dev_priv, 11)) {
 		err = set_power_wells(power_domains, icl_power_wells);
 	} else if (IS_CANNONLAKE(dev_priv)) {
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
