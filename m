Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EDC1B1D34
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 06:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E886E872;
	Tue, 21 Apr 2020 04:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759D86E872
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 04:05:02 +0000 (UTC)
IronPort-SDR: lIyLlL2I1lIrPjMR0mCBIBcnFUd894GTG4XXD7CIeOwdIcf1rwtUFTPaLvs8bCUZAPBtabnlC6
 q9DufrJagJqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 21:05:01 -0700
IronPort-SDR: EqFoot/UhuXAfWqs3OWNQ8lD0/ibtEv03cO/5FDJXJpHPaViGFEhsWAsci6QywenX4w4moHWJx
 XSIVeU7s2zdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,408,1580803200"; d="scan'208";a="429379697"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2020 21:05:01 -0700
Date: Mon, 20 Apr 2020 21:05:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200421040501.GK3094447@mdroper-desk1.amr.corp.intel.com>
References: <20200415233435.3064257-1-matthew.d.roper@intel.com>
 <20200415233435.3064257-2-matthew.d.roper@intel.com>
 <93c7133eca4540bad8c49087678fe28529219804.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93c7133eca4540bad8c49087678fe28529219804.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Use single set of AUX
 powerwell ops for gen11+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 20, 2020 at 01:09:05PM -0700, Souza, Jose wrote:
> On Wed, 2020-04-15 at 16:34 -0700, Matt Roper wrote:
> > AUX power wells sometimes need additional handling besides just
> > programming the specific power well registers:
> >  * Type-C PHY's also require additional Type-C register programming
> >  * ICL combo PHY's require additional workarounds
> >  * TGL & EHL combo PHY's can be treated like any other power well
> > =

> > Today we have dedicated aux ops for the ICL combo PHY and Type-C
> > cases.
> > This works fine, but means that when a new platform shows up with
> > identical general power well handling, but different types of PHYs on
> > its outputs, we have to define an entire new power well table for
> > that
> > platform and can't just re-use the table from the earlier platform --
> > as
> > an example, see ehl_power_wells[], which is a subset of
> > icl_power_wells[], *except* that we need to specify different AUX ops
> > for the third display.
> > =

> > If we instead create a single set of top-level aux ops that will
> > check
> > the PHY type and then dispatch to the appropriate handlers, we can
> > get
> > more reuse out of our power well definitions.  This allows us to
> > immediately eliminate ehl_power_wells[] and simply reuse the ICL
> > table;
> > if future platforms follow the same general power well assignments as
> > either ICL or TGL, we'll be able to re-use those tables in the same
> > way.
> > =

> > Note that I've only changed ICL+ platforms over to using the new
> > icl_aux
> > ops; at this point it's unlikely that we'll have any new platforms
> > that
> > re-use gen9 or earlier power well configurations.
> > =

> > v2:
> >  - ICL_AUX_PW_TO_PHY() won't return the proper PHY for TBT AUX power
> >    wells.  But we know those wells will only used on Type-C outputs
> >    anyway, so we can just check is is_tc_tbt flag in the condition.
> >    (Jose).
> > =

> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Applied to dinq.  Thanks for the review.


Matt

> =

> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    | 244 +++++-----------
> > --
> >  1 file changed, 62 insertions(+), 182 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 03bdde19c8c9..f72935146778 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -593,6 +593,40 @@ icl_tc_phy_aux_power_well_disable(struct
> > drm_i915_private *dev_priv,
> >  	hsw_power_well_disable(dev_priv, power_well);
> >  }
> >  =

> > +static void
> > +icl_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > +			  struct i915_power_well *power_well)
> > +{
> > +	int pw_idx =3D power_well->desc->hsw.idx;
> > +	enum phy phy =3D ICL_AUX_PW_TO_PHY(pw_idx);  /* non-TBT only */
> > +	bool is_tbt =3D power_well->desc->hsw.is_tc_tbt;
> > +
> > +	if (is_tbt || intel_phy_is_tc(dev_priv, phy))
> > +		return icl_tc_phy_aux_power_well_enable(dev_priv,
> > power_well);
> > +	else if (IS_ICELAKE(dev_priv))
> > +		return icl_combo_phy_aux_power_well_enable(dev_priv,
> > +							   power_well);
> > +	else
> > +		return hsw_power_well_enable(dev_priv, power_well);
> > +}
> > +
> > +static void
> > +icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
> > +			   struct i915_power_well *power_well)
> > +{
> > +	int pw_idx =3D power_well->desc->hsw.idx;
> > +	enum phy phy =3D ICL_AUX_PW_TO_PHY(pw_idx);  /* non-TBT only */
> > +	bool is_tbt =3D power_well->desc->hsw.is_tc_tbt;
> > +
> > +	if (is_tbt || intel_phy_is_tc(dev_priv, phy))
> > +		return icl_tc_phy_aux_power_well_disable(dev_priv,
> > power_well);
> > +	else if (IS_ICELAKE(dev_priv))
> > +		return icl_combo_phy_aux_power_well_disable(dev_priv,
> > +							    power_well)
> > ;
> > +	else
> > +		return hsw_power_well_disable(dev_priv, power_well);
> > +}
> > +
> >  /*
> >   * We should only use the power well if we explicitly asked the
> > hardware to
> >   * enable it, so check if it's enabled and also check if we've
> > requested it to
> > @@ -3503,17 +3537,10 @@ static const struct i915_power_well_desc
> > cnl_power_wells[] =3D {
> >  	},
> >  };
> >  =

> > -static const struct i915_power_well_ops
> > icl_combo_phy_aux_power_well_ops =3D {
> > -	.sync_hw =3D hsw_power_well_sync_hw,
> > -	.enable =3D icl_combo_phy_aux_power_well_enable,
> > -	.disable =3D icl_combo_phy_aux_power_well_disable,
> > -	.is_enabled =3D hsw_power_well_enabled,
> > -};
> > -
> > -static const struct i915_power_well_ops
> > icl_tc_phy_aux_power_well_ops =3D {
> > +static const struct i915_power_well_ops icl_aux_power_well_ops =3D {
> >  	.sync_hw =3D hsw_power_well_sync_hw,
> > -	.enable =3D icl_tc_phy_aux_power_well_enable,
> > -	.disable =3D icl_tc_phy_aux_power_well_disable,
> > +	.enable =3D icl_aux_power_well_enable,
> > +	.disable =3D icl_aux_power_well_disable,
> >  	.is_enabled =3D hsw_power_well_enabled,
> >  };
> >  =

> > @@ -3643,7 +3670,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX A",
> >  		.domains =3D ICL_AUX_A_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_combo_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3653,7 +3680,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX B",
> >  		.domains =3D ICL_AUX_B_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_combo_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3663,7 +3690,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX C TC1",
> >  		.domains =3D ICL_AUX_C_TC1_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3674,7 +3701,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX D TC2",
> >  		.domains =3D ICL_AUX_D_TC2_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3685,7 +3712,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX E TC3",
> >  		.domains =3D ICL_AUX_E_TC3_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3696,7 +3723,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX F TC4",
> >  		.domains =3D ICL_AUX_F_TC4_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3707,7 +3734,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX C TBT1",
> >  		.domains =3D ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3718,7 +3745,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX D TBT2",
> >  		.domains =3D ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3729,7 +3756,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX E TBT3",
> >  		.domains =3D ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3740,7 +3767,7 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX F TBT4",
> >  		.domains =3D ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -3762,151 +3789,6 @@ static const struct i915_power_well_desc
> > icl_power_wells[] =3D {
> >  	},
> >  };
> >  =

> > -static const struct i915_power_well_desc ehl_power_wells[] =3D {
> > -	{
> > -		.name =3D "always-on",
> > -		.always_on =3D true,
> > -		.domains =3D POWER_DOMAIN_MASK,
> > -		.ops =3D &i9xx_always_on_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -	},
> > -	{
> > -		.name =3D "power well 1",
> > -		/* Handled by the DMC firmware */
> > -		.always_on =3D true,
> > -		.domains =3D 0,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D SKL_DISP_PW_1,
> > -		{
> > -			.hsw.regs =3D &hsw_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_PW_1,
> > -			.hsw.has_fuses =3D true,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "DC off",
> > -		.domains =3D ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
> > -		.ops =3D &gen9_dc_off_power_well_ops,
> > -		.id =3D SKL_DISP_DC_OFF,
> > -	},
> > -	{
> > -		.name =3D "power well 2",
> > -		.domains =3D ICL_PW_2_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D SKL_DISP_PW_2,
> > -		{
> > -			.hsw.regs =3D &hsw_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_PW_2,
> > -			.hsw.has_fuses =3D true,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "power well 3",
> > -		.domains =3D ICL_PW_3_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &hsw_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_PW_3,
> > -			.hsw.irq_pipe_mask =3D BIT(PIPE_B),
> > -			.hsw.has_vga =3D true,
> > -			.hsw.has_fuses =3D true,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "DDI A IO",
> > -		.domains =3D ICL_DDI_IO_A_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &icl_ddi_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_A,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "DDI B IO",
> > -		.domains =3D ICL_DDI_IO_B_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &icl_ddi_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_B,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "DDI C IO",
> > -		.domains =3D ICL_DDI_IO_C_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &icl_ddi_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_C,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "DDI D IO",
> > -		.domains =3D ICL_DDI_IO_D_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &icl_ddi_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_D,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "AUX A",
> > -		.domains =3D ICL_AUX_A_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &icl_aux_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_A,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "AUX B",
> > -		.domains =3D ICL_AUX_B_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &icl_aux_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_B,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "AUX C",
> > -		.domains =3D ICL_AUX_C_TC1_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &icl_aux_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_C,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "AUX D",
> > -		.domains =3D ICL_AUX_D_TC2_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &icl_aux_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_D,
> > -		},
> > -	},
> > -	{
> > -		.name =3D "power well 4",
> > -		.domains =3D ICL_PW_4_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > -		{
> > -			.hsw.regs =3D &hsw_power_well_regs,
> > -			.hsw.idx =3D ICL_PW_CTL_IDX_PW_4,
> > -			.hsw.has_fuses =3D true,
> > -			.hsw.irq_pipe_mask =3D BIT(PIPE_C),
> > -		},
> > -	},
> > -};
> > -
> >  static const struct i915_power_well_desc tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "always-on",
> > @@ -4051,7 +3933,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX A",
> >  		.domains =3D TGL_AUX_A_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4061,7 +3943,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX B",
> >  		.domains =3D TGL_AUX_B_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4071,7 +3953,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX C",
> >  		.domains =3D TGL_AUX_C_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4081,7 +3963,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX D TC1",
> >  		.domains =3D TGL_AUX_D_TC1_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4092,7 +3974,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX E TC2",
> >  		.domains =3D TGL_AUX_E_TC2_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4103,7 +3985,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX F TC3",
> >  		.domains =3D TGL_AUX_F_TC3_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4114,7 +3996,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX G TC4",
> >  		.domains =3D TGL_AUX_G_TC4_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4125,7 +4007,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX H TC5",
> >  		.domains =3D TGL_AUX_H_TC5_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4136,7 +4018,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX I TC6",
> >  		.domains =3D TGL_AUX_I_TC6_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4147,7 +4029,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX D TBT1",
> >  		.domains =3D TGL_AUX_D_TBT1_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4158,7 +4040,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX E TBT2",
> >  		.domains =3D TGL_AUX_E_TBT2_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4169,7 +4051,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX F TBT3",
> >  		.domains =3D TGL_AUX_F_TBT3_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4180,7 +4062,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX G TBT4",
> >  		.domains =3D TGL_AUX_G_TBT4_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4191,7 +4073,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX H TBT5",
> >  		.domains =3D TGL_AUX_H_TBT5_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4202,7 +4084,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX I TBT6",
> >  		.domains =3D TGL_AUX_I_TBT6_IO_POWER_DOMAINS,
> > -		.ops =3D &icl_tc_phy_aux_power_well_ops,
> > +		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4383,8 +4265,6 @@ int intel_power_domains_init(struct
> > drm_i915_private *dev_priv)
> >  	 */
> >  	if (IS_GEN(dev_priv, 12)) {
> >  		err =3D set_power_wells(power_domains, tgl_power_wells);
> > -	} else if (IS_ELKHARTLAKE(dev_priv)) {
> > -		err =3D set_power_wells(power_domains, ehl_power_wells);
> >  	} else if (IS_GEN(dev_priv, 11)) {
> >  		err =3D set_power_wells(power_domains, icl_power_wells);
> >  	} else if (IS_CANNONLAKE(dev_priv)) {

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
