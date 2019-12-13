Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D89F11E9A6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 19:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E5F6E0CB;
	Fri, 13 Dec 2019 18:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEBD86E0CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 18:02:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 10:02:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="296993786"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 10:02:21 -0800
Date: Fri, 13 Dec 2019 10:02:15 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191213180215.fcpavjizz7yp7m3a@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191213001511.678070-1-matthew.d.roper@intel.com>
 <20191213001511.678070-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213001511.678070-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/ehl: Define EHL powerwells
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
Cc: intel-gfx@lists.freedesktop.org,
 Arthur J Runyan <arthur.j.runyan@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 12, 2019 at 04:15:09PM -0800, Matt Roper wrote:
>Outputs C and D on EHL are combo PHY outputs and thus should not be
>using the same TC AUX power well handlers as ICL.  And even though
>icl_combo_phy_aux_power_well_ops works okay for EHL/JSL combo PHYs none
>of its special handling is actually necessary for this platform:
> * EHL/JSL don't actually need to program PORT_CL_DW12
> * Display WA #1178 does not apply to EHL/JSL
>
>Thus we can simply drop back to using our standard "hsw-style" power
>well ops for EHL AUX power wells.
>
>Bspec: 4301
>Fixes: f722b8c1e2a2 ("drm/i915/ehl: All EHL ports are combo phys")
>Cc: Jose Souza <jose.souza@intel.com>
>Cc: Bob Paauwe <bob.j.paauwe@intel.com>
>Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

I find it odd that ehl/jsl supposedly use the same combo phy as ICL. So
I would expect the same WA to apply there too. But if hw people (who
know more than me) disagree then

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> .../drm/i915/display/intel_display_power.c    | 147 ++++++++++++++++++
> 1 file changed, 147 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index 0b3dd2a3b94d..cf34427cc840 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -3688,6 +3688,151 @@ static const struct i915_power_well_desc icl_power_wells[] = {
> 	},
> };
>
>+static const struct i915_power_well_desc ehl_power_wells[] = {
>+	{
>+		.name = "always-on",
>+		.always_on = true,
>+		.domains = POWER_DOMAIN_MASK,
>+		.ops = &i9xx_always_on_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+	},
>+	{
>+		.name = "power well 1",
>+		/* Handled by the DMC firmware */
>+		.always_on = true,
>+		.domains = 0,
>+		.ops = &hsw_power_well_ops,
>+		.id = SKL_DISP_PW_1,
>+		{
>+			.hsw.regs = &hsw_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
>+			.hsw.has_fuses = true,
>+		},
>+	},
>+	{
>+		.name = "DC off",
>+		.domains = ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
>+		.ops = &gen9_dc_off_power_well_ops,
>+		.id = SKL_DISP_DC_OFF,
>+	},
>+	{
>+		.name = "power well 2",
>+		.domains = ICL_PW_2_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = SKL_DISP_PW_2,
>+		{
>+			.hsw.regs = &hsw_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
>+			.hsw.has_fuses = true,
>+		},
>+	},
>+	{
>+		.name = "power well 3",
>+		.domains = ICL_PW_3_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &hsw_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
>+			.hsw.irq_pipe_mask = BIT(PIPE_B),
>+			.hsw.has_vga = true,
>+			.hsw.has_fuses = true,
>+		},
>+	},
>+	{
>+		.name = "DDI A IO",
>+		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &icl_ddi_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
>+		},
>+	},
>+	{
>+		.name = "DDI B IO",
>+		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &icl_ddi_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
>+		},
>+	},
>+	{
>+		.name = "DDI C IO",
>+		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &icl_ddi_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
>+		},
>+	},
>+	{
>+		.name = "DDI D IO",
>+		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &icl_ddi_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
>+		},
>+	},
>+	{
>+		.name = "AUX A",
>+		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &icl_aux_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
>+		},
>+	},
>+	{
>+		.name = "AUX B",
>+		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &icl_aux_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
>+		},
>+	},
>+	{
>+		.name = "AUX C",
>+		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &icl_aux_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
>+		},
>+	},
>+	{
>+		.name = "AUX D",
>+		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &icl_aux_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
>+		},
>+	},
>+	{
>+		.name = "power well 4",
>+		.domains = ICL_PW_4_POWER_DOMAINS,
>+		.ops = &hsw_power_well_ops,
>+		.id = DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs = &hsw_power_well_regs,
>+			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
>+			.hsw.has_fuses = true,
>+			.hsw.irq_pipe_mask = BIT(PIPE_C),
>+		},
>+	},
>+};
>+
> static const struct i915_power_well_desc tgl_power_wells[] = {
> 	{
> 		.name = "always-on",
>@@ -4162,6 +4307,8 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
> 	 */
> 	if (IS_GEN(dev_priv, 12)) {
> 		err = set_power_wells(power_domains, tgl_power_wells);
>+	} else if (IS_ELKHARTLAKE(dev_priv)) {
>+		err = set_power_wells(power_domains, ehl_power_wells);
> 	} else if (IS_GEN(dev_priv, 11)) {
> 		err = set_power_wells(power_domains, icl_power_wells);
> 	} else if (IS_CANNONLAKE(dev_priv)) {
>-- 
>2.23.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
