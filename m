Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3698C231441
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 22:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294986E3F7;
	Tue, 28 Jul 2020 20:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62926E3F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 20:51:55 +0000 (UTC)
IronPort-SDR: UxXLHB9p9G2lkwxr0jyONizRa/4ACHo8mbibkOxwHr4LJHt2HaXIjuc7fXnPSoWtBw1aiANa0m
 4YgROdUX1FBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="130871856"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="130871856"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 13:51:54 -0700
IronPort-SDR: e4xbZVijkZJOgKtmKwvurB03oWe6/OlA+h9PSecOYR1+LWRPQkTLIU0I3iKN8BP4bupj79NZ2U
 /lFM/xL3Kuiw==
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="330183536"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 13:51:54 -0700
Date: Tue, 28 Jul 2020 13:51:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200728205153.GD35208@mdroper-desk1.amr.corp.intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724213918.27424-4-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 03/22] drm/i915/dg1: Add DG1 power wells
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 24, 2020 at 02:38:59PM -0700, Lucas De Marchi wrote:
> From: Uma Shankar <uma.shankar@intel.com>
> 
> Most of TGL power wells are re-used for DG1. However, AUDIO Power
> Domain is moved from PG3 to PG0. Handle the change and initialize
> power wells with the new power well structure.
> 
> Some of the Audio Streaming logic still remains in PW3 so still
> it needs to be enabled.
> 
> DDIA, DDIB, TC1 and TC2 are the active ports on DG1.
> 
> Need to keep Transcoder C and D to Pipe Power wells, this is against
> the spec but else hitting unclaimed register warnings (kept the logic
> same as TGL)

I think this paragraph is old; the bspec shows transcoders C and D in
the same power wells as pipes C and D now so this is no longer a spec
violation.

Although the bspec went through a few revisions early on, it looks like
DG1 is just a strict subset of the TGL power wells now, so there
probably isn't a need to duplicate it as a whole new table here; I think
the only thing keeping us from re-using TGL's table as-is for DG1 is the
fake "TC COLD" well that blindly makes assumptions about which outputs
are TC rather than paying attention to the real output type.  I think
Aditya has some code that would fix the TCCOLD's assumptions and then we
can just point DG1 to the TGL table.


Matt

> 
> Bspec: 49182
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 201 +++++++++++++++++-
>  1 file changed, 200 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 0c713e83274d..b51b82cb2398 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2970,6 +2970,44 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
>  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
>  	BIT_ULL(POWER_DOMAIN_INIT))
>  
> +#define DG1_PW_5_POWER_DOMAINS (			\
> +	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
> +	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
> +	BIT_ULL(POWER_DOMAIN_PIPE_D_PANEL_FITTER) |     \
> +	BIT_ULL(POWER_DOMAIN_INIT))
> +
> +#define DG1_PW_4_POWER_DOMAINS (			\
> +	DG1_PW_5_POWER_DOMAINS |			\
> +	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
> +	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
> +	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
> +	BIT_ULL(POWER_DOMAIN_INIT))
> +
> +#define DG1_PW_3_POWER_DOMAINS (			\
> +	DG1_PW_4_POWER_DOMAINS |			\
> +	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> +	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> +	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
> +	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
> +	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
> +	BIT_ULL(POWER_DOMAIN_AUX_D) |		\
> +	BIT_ULL(POWER_DOMAIN_AUX_E) |		\
> +	BIT_ULL(POWER_DOMAIN_VGA) |			\
> +	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> +	BIT_ULL(POWER_DOMAIN_INIT))
> +
> +#define DG1_PW_2_POWER_DOMAINS (			\
> +	DG1_PW_3_POWER_DOMAINS |			\
> +	BIT_ULL(POWER_DOMAIN_TRANSCODER_VDSC_PW2) |	\
> +	BIT_ULL(POWER_DOMAIN_INIT))
> +
> +#define DG1_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> +	DG1_PW_3_POWER_DOMAINS |			\
> +	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> +	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> +	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> +	BIT_ULL(POWER_DOMAIN_INIT))
> +
>  static const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
>  	.sync_hw = i9xx_power_well_sync_hw_noop,
>  	.enable = i9xx_always_on_power_well_noop,
> @@ -4474,6 +4512,165 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
>  	},
>  };
>  
> +static const struct i915_power_well_desc dg1_power_wells[] = {
> +	{
> +		.name = "always-on",
> +		.always_on = true,
> +		.domains = POWER_DOMAIN_MASK,
> +		.ops = &i9xx_always_on_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +	},
> +	{
> +		.name = "power well 1",
> +		/* Handled by the DMC firmware */
> +		.always_on = true,
> +		.domains = 0,
> +		.ops = &hsw_power_well_ops,
> +		.id = SKL_DISP_PW_1,
> +		{
> +			.hsw.regs = &hsw_power_well_regs,
> +			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
> +			.hsw.has_fuses = true,
> +		},
> +	},
> +	{
> +		.name = "DC off",
> +		.domains = DG1_DISPLAY_DC_OFF_POWER_DOMAINS,
> +		.ops = &gen9_dc_off_power_well_ops,
> +		.id = SKL_DISP_DC_OFF,
> +	},
> +	{
> +		.name = "power well 2",
> +		.domains = DG1_PW_2_POWER_DOMAINS,
> +		.ops = &hsw_power_well_ops,
> +		.id = SKL_DISP_PW_2,
> +		{
> +			.hsw.regs = &hsw_power_well_regs,
> +			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
> +			.hsw.has_fuses = true,
> +		},
> +	},
> +	{
> +		.name = "power well 3",
> +		.domains = DG1_PW_3_POWER_DOMAINS,
> +		.ops = &hsw_power_well_ops,
> +		.id = ICL_DISP_PW_3,
> +		{
> +			.hsw.regs = &hsw_power_well_regs,
> +			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
> +			.hsw.irq_pipe_mask = BIT(PIPE_B),
> +			.hsw.has_vga = true,
> +			.hsw.has_fuses = true,
> +		},
> +	},
> +	{
> +		.name = "DDI A IO",
> +		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
> +		.ops = &hsw_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &icl_ddi_power_well_regs,
> +			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
> +		}
> +	},
> +	{
> +		.name = "DDI B IO",
> +		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
> +		.ops = &hsw_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &icl_ddi_power_well_regs,
> +			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
> +		}
> +	},
> +	{
> +		.name = "DDI D TC1 IO",
> +		.domains = TGL_DDI_IO_D_TC1_POWER_DOMAINS,
> +		.ops = &hsw_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &icl_ddi_power_well_regs,
> +			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
> +		},
> +	},
> +	{
> +		.name = "DDI E TC2 IO",
> +		.domains = TGL_DDI_IO_E_TC2_POWER_DOMAINS,
> +		.ops = &hsw_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &icl_ddi_power_well_regs,
> +			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
> +		},
> +	},
> +	{
> +		.name = "AUX A",
> +		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
> +		.ops = &icl_aux_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &icl_aux_power_well_regs,
> +			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
> +		},
> +	},
> +	{
> +		.name = "AUX B",
> +		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
> +		.ops = &icl_aux_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &icl_aux_power_well_regs,
> +			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
> +		},
> +	},
> +	{
> +		.name = "AUX D TC1",
> +		.domains = TGL_AUX_D_TC1_IO_POWER_DOMAINS,
> +		.ops = &icl_aux_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &icl_aux_power_well_regs,
> +			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
> +			.hsw.is_tc_tbt = false,
> +		},
> +	},
> +	{
> +		.name = "AUX E TC2",
> +		.domains = TGL_AUX_E_TC2_IO_POWER_DOMAINS,
> +		.ops = &icl_aux_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &icl_aux_power_well_regs,
> +			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
> +			.hsw.is_tc_tbt = false,
> +		},
> +	},
> +	{
> +		.name = "power well 4",
> +		.domains = DG1_PW_4_POWER_DOMAINS,
> +		.ops = &hsw_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &hsw_power_well_regs,
> +			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
> +			.hsw.has_fuses = true,
> +			.hsw.irq_pipe_mask = BIT(PIPE_C),
> +		}
> +	},
> +	{
> +		.name = "power well 5",
> +		.domains = DG1_PW_5_POWER_DOMAINS,
> +		.ops = &hsw_power_well_ops,
> +		.id = DISP_PW_ID_NONE,
> +		{
> +			.hsw.regs = &hsw_power_well_regs,
> +			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
> +			.hsw.has_fuses = true,
> +			.hsw.irq_pipe_mask = BIT(PIPE_D),
> +		},
> +	},
> +};
> +
>  static int
>  sanitize_disable_power_well_option(const struct drm_i915_private *dev_priv,
>  				   int disable_power_well)
> @@ -4622,7 +4819,9 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
>  	 * The enabling order will be from lower to higher indexed wells,
>  	 * the disabling order is reversed.
>  	 */
> -	if (IS_ROCKETLAKE(dev_priv)) {
> +	if (IS_DG1(dev_priv)) {
> +		err = set_power_wells(power_domains, dg1_power_wells);
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		err = set_power_wells(power_domains, rkl_power_wells);
>  	} else if (IS_GEN(dev_priv, 12)) {
>  		err = set_power_wells(power_domains, tgl_power_wells);
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
