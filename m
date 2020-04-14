Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4081A8E93
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 00:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2F36E5B9;
	Tue, 14 Apr 2020 22:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFA576E5B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 22:28:02 +0000 (UTC)
IronPort-SDR: LNd69LMBpRUiJCYzI1t40s5SLuv7V/keKQ2NjRkZMnT2pvVijx3lr9P898XsW4Ta00v6pJzFR5
 x6OvYS7c0fFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 15:28:02 -0700
IronPort-SDR: QjtrTQEvzV22p+txggZ9sQ2UkYgWUtV1nTIOuT5yfNd98aG7pj/aMjMEkDqmkvyBwdpUOshtBf
 dUUKWCjmcJLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="271434614"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 14 Apr 2020 15:28:01 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 15:28:01 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.71]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 15:28:00 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Use single set of AUX powerwell
 ops for gen11+
Thread-Index: AQHWEp90DepNyunF5Uq2TN7pAvpuR6h5qH+A
Date: Tue, 14 Apr 2020 22:28:00 +0000
Message-ID: <7025ac2e3502ce9193d2aa9ee144b7891f732d0c.camel@intel.com>
References: <20200414205755.2777261-1-matthew.d.roper@intel.com>
In-Reply-To: <20200414205755.2777261-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.209.55.81]
Content-ID: <A7730774446E2D409467754FD7E230CE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use single set of AUX powerwell
 ops for gen11+
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-04-14 at 13:57 -0700, Matt Roper wrote:
> AUX power wells sometimes need additional handling besides just
> programming the specific power well registers:
>  * Type-C PHY's also require additional Type-C register programming
>  * ICL combo PHY's require additional workarounds
>  * TGL & EHL combo PHY's can be treated like any other power well
> 
> Today we have dedicated aux ops for the ICL combo PHY and Type-C
> cases.
> This works fine, but means that when a new platform shows up with
> identical general power well handling, but different types of PHYs on
> its outputs, we have to define an entire new power well table for
> that
> platform and can't just re-use the table from the earlier platform --
> as
> an example, see ehl_power_wells[], which is a subset of
> icl_power_wells[], *except* that we need to specify different AUX ops
> for the third display.
> 
> If we instead create a single set of top-level aux ops that will
> check
> the PHY type and then dispatch to the appropriate handlers, we can
> get
> more reuse out of our power well definitions.  This allows us to
> immediately eliminate ehl_power_wells[] and simply reuse the ICL
> table;
> if future platforms follow the same general power well assignments as
> either ICL or TGL, we'll be able to re-use those tables in the same
> way.
> 
> Note that I've only changed ICL+ platforms over to using the new
> icl_aux
> ops; at this point it's unlikely that we'll have any new platforms
> that
> re-use gen9 or earlier power well configurations.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 242 +++++-----------
> --
>  1 file changed, 60 insertions(+), 182 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 433e5a81dd4d..ddeaa475b8a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -593,6 +593,38 @@ icl_tc_phy_aux_power_well_disable(struct
> drm_i915_private *dev_priv,
>  	hsw_power_well_disable(dev_priv, power_well);
>  }
>  
> +static void
> +icl_aux_power_well_enable(struct drm_i915_private *dev_priv,
> +			  struct i915_power_well *power_well)
> +{
> +	int pw_idx = power_well->desc->hsw.idx;
> +	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> +

The above will not work for TBT aux powerwells.

Other than that looks a good idea.

> +	if (intel_phy_is_tc(dev_priv, phy))
> +		return icl_tc_phy_aux_power_well_enable(dev_priv, 
> power_well);
> +	else if (IS_ICELAKE(dev_priv))
> +		return icl_combo_phy_aux_power_well_enable(dev_priv,
> +							   power_well);
> +	else
> +		return hsw_power_well_enable(dev_priv, power_well);
> +}
> +
> +static void
> +icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
> +			   struct i915_power_well *power_well)
> +{
> +	int pw_idx = power_well->desc->hsw.idx;
> +	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
> +
> +	if (intel_phy_is_tc(dev_priv, phy))
> +		return icl_tc_phy_aux_power_well_disable(dev_priv,
> power_well);
> +	else if (IS_ICELAKE(dev_priv))
> +		return icl_combo_phy_aux_power_well_disable(dev_priv,
> +							    power_well)
> ;
> +	else
> +		return hsw_power_well_disable(dev_priv, power_well);
> +}
> +
>  /*
>   * We should only use the power well if we explicitly asked the
> hardware to
>   * enable it, so check if it's enabled and also check if we've
> requested it to
> @@ -3503,17 +3535,10 @@ static const struct i915_power_well_desc
> cnl_power_wells[] = {
>  	},
>  };
>  
> -static const struct i915_power_well_ops
> icl_combo_phy_aux_power_well_ops = {
> +static const struct i915_power_well_ops icl_aux_power_well_ops = {
>  	.sync_hw = hsw_power_well_sync_hw,
> -	.enable = icl_combo_phy_aux_power_well_enable,
> -	.disable = icl_combo_phy_aux_power_well_disable,
> -	.is_enabled = hsw_power_well_enabled,
> -};
> -
> -static const struct i915_power_well_ops
> icl_tc_phy_aux_power_well_ops = {
> -	.sync_hw = hsw_power_well_sync_hw,
> -	.enable = icl_tc_phy_aux_power_well_enable,
> -	.disable = icl_tc_phy_aux_power_well_disable,
> +	.enable = icl_aux_power_well_enable,
> +	.disable = icl_aux_power_well_disable,
>  	.is_enabled = hsw_power_well_enabled,
>  };
>  
> @@ -3643,7 +3668,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX A",
>  		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
> -		.ops = &icl_combo_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3653,7 +3678,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX B",
>  		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
> -		.ops = &icl_combo_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3663,7 +3688,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX C TC1",
>  		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3674,7 +3699,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX D TC2",
>  		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3685,7 +3710,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX E TC3",
>  		.domains = ICL_AUX_E_TC3_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3696,7 +3721,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX F TC4",
>  		.domains = ICL_AUX_F_TC4_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3707,7 +3732,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX C TBT1",
>  		.domains = ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3718,7 +3743,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX D TBT2",
>  		.domains = ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3729,7 +3754,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX E TBT3",
>  		.domains = ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3740,7 +3765,7 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	{
>  		.name = "AUX F TBT4",
>  		.domains = ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -3762,151 +3787,6 @@ static const struct i915_power_well_desc
> icl_power_wells[] = {
>  	},
>  };
>  
> -static const struct i915_power_well_desc ehl_power_wells[] = {
> -	{
> -		.name = "always-on",
> -		.always_on = true,
> -		.domains = POWER_DOMAIN_MASK,
> -		.ops = &i9xx_always_on_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -	},
> -	{
> -		.name = "power well 1",
> -		/* Handled by the DMC firmware */
> -		.always_on = true,
> -		.domains = 0,
> -		.ops = &hsw_power_well_ops,
> -		.id = SKL_DISP_PW_1,
> -		{
> -			.hsw.regs = &hsw_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
> -			.hsw.has_fuses = true,
> -		},
> -	},
> -	{
> -		.name = "DC off",
> -		.domains = ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
> -		.ops = &gen9_dc_off_power_well_ops,
> -		.id = SKL_DISP_DC_OFF,
> -	},
> -	{
> -		.name = "power well 2",
> -		.domains = ICL_PW_2_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = SKL_DISP_PW_2,
> -		{
> -			.hsw.regs = &hsw_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
> -			.hsw.has_fuses = true,
> -		},
> -	},
> -	{
> -		.name = "power well 3",
> -		.domains = ICL_PW_3_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &hsw_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
> -			.hsw.irq_pipe_mask = BIT(PIPE_B),
> -			.hsw.has_vga = true,
> -			.hsw.has_fuses = true,
> -		},
> -	},
> -	{
> -		.name = "DDI A IO",
> -		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &icl_ddi_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
> -		},
> -	},
> -	{
> -		.name = "DDI B IO",
> -		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &icl_ddi_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
> -		},
> -	},
> -	{
> -		.name = "DDI C IO",
> -		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &icl_ddi_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
> -		},
> -	},
> -	{
> -		.name = "DDI D IO",
> -		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &icl_ddi_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
> -		},
> -	},
> -	{
> -		.name = "AUX A",
> -		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &icl_aux_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
> -		},
> -	},
> -	{
> -		.name = "AUX B",
> -		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &icl_aux_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
> -		},
> -	},
> -	{
> -		.name = "AUX C",
> -		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &icl_aux_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
> -		},
> -	},
> -	{
> -		.name = "AUX D",
> -		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &icl_aux_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
> -		},
> -	},
> -	{
> -		.name = "power well 4",
> -		.domains = ICL_PW_4_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> -		.id = DISP_PW_ID_NONE,
> -		{
> -			.hsw.regs = &hsw_power_well_regs,
> -			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
> -			.hsw.has_fuses = true,
> -			.hsw.irq_pipe_mask = BIT(PIPE_C),
> -		},
> -	},
> -};
> -
>  static const struct i915_power_well_desc tgl_power_wells[] = {
>  	{
>  		.name = "always-on",
> @@ -4051,7 +3931,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX A",
>  		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4061,7 +3941,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX B",
>  		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4071,7 +3951,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX C",
>  		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4081,7 +3961,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX D TC1",
>  		.domains = TGL_AUX_D_TC1_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4092,7 +3972,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX E TC2",
>  		.domains = TGL_AUX_E_TC2_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4103,7 +3983,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX F TC3",
>  		.domains = TGL_AUX_F_TC3_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4114,7 +3994,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX G TC4",
>  		.domains = TGL_AUX_G_TC4_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4125,7 +4005,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX H TC5",
>  		.domains = TGL_AUX_H_TC5_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4136,7 +4016,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX I TC6",
>  		.domains = TGL_AUX_I_TC6_IO_POWER_DOMAINS,
> -		.ops = &icl_tc_phy_aux_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4147,7 +4027,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX D TBT1",
>  		.domains = TGL_AUX_D_TBT1_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4158,7 +4038,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX E TBT2",
>  		.domains = TGL_AUX_E_TBT2_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4169,7 +4049,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX F TBT3",
>  		.domains = TGL_AUX_F_TBT3_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4180,7 +4060,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX G TBT4",
>  		.domains = TGL_AUX_G_TBT4_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4191,7 +4071,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX H TBT5",
>  		.domains = TGL_AUX_H_TBT5_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4202,7 +4082,7 @@ static const struct i915_power_well_desc
> tgl_power_wells[] = {
>  	{
>  		.name = "AUX I TBT6",
>  		.domains = TGL_AUX_I_TBT6_IO_POWER_DOMAINS,
> -		.ops = &hsw_power_well_ops,
> +		.ops = &icl_aux_power_well_ops,
>  		.id = DISP_PW_ID_NONE,
>  		{
>  			.hsw.regs = &icl_aux_power_well_regs,
> @@ -4383,8 +4263,6 @@ int intel_power_domains_init(struct
> drm_i915_private *dev_priv)
>  	 */
>  	if (IS_GEN(dev_priv, 12)) {
>  		err = set_power_wells(power_domains, tgl_power_wells);
> -	} else if (IS_ELKHARTLAKE(dev_priv)) {
> -		err = set_power_wells(power_domains, ehl_power_wells);
>  	} else if (IS_GEN(dev_priv, 11)) {
>  		err = set_power_wells(power_domains, icl_power_wells);
>  	} else if (IS_CANNONLAKE(dev_priv)) {
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
