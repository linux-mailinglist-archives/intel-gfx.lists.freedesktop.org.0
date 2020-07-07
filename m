Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7EB2162FC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 02:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56BE6E1E5;
	Tue,  7 Jul 2020 00:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FD16E1E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 00:27:24 +0000 (UTC)
IronPort-SDR: 0y5LXY+4YFokq78D0I+Fjwbrnx5LZVct9zX2oDWYVunFW2lpPl+ctVVRStC7XOvM0OGfLMqpjG
 xHc7vzTxpEjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="134985237"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="134985237"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 17:27:23 -0700
IronPort-SDR: 9lfnttU0TyJXasrTlWvy2BpUegF1rfFPXvel0pOTh1wGX5pDdK5SEvSDl4LadKoy0uiQ0Ge1fa
 Jrioqw/xk+ow==
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="456918340"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 17:27:23 -0700
Date: Mon, 6 Jul 2020 17:27:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200707002722.GH2081034@mdroper-desk1.amr.corp.intel.com>
References: <20200624193249.20725-1-jose.souza@intel.com>
 <20200706230842.GD2081034@mdroper-desk1.amr.corp.intel.com>
 <3cb061992e1c0dfef99c7b1420077e41d5f7909b.camel@intel.com>
 <20200706232859.GG2081034@mdroper-desk1.amr.corp.intel.com>
 <b51c68dc7a3ee9d0b472d619472804ff5a901fec.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b51c68dc7a3ee9d0b472d619472804ff5a901fec.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Implement new combo
 phy initialization step
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 06, 2020 at 05:14:04PM -0700, Souza, Jose wrote:
> On Mon, 2020-07-06 at 16:28 -0700, Matt Roper wrote:
> > On Mon, Jul 06, 2020 at 04:10:15PM -0700, Souza, Jose wrote:
> > > On Mon, 2020-07-06 at 16:08 -0700, Matt Roper wrote:
> > > > On Wed, Jun 24, 2020 at 12:32:49PM -0700, Jos=E9 Roberto de Souza w=
rote:
> > > > > This is new step that was recently added to the combo phy
> > > > > initialization.
> > > > > =

> > > > > v2:
> > > > > - using intel_de_rmw()
> > > > =

> > > > Actually, I'm not sure whether this is valid; I believe we always h=
ave
> > > > to read from a lane register and can only write to the group regist=
ers:
> > > > =

> > > >         "Reads using a port group address usually cannot return cor=
rect
> > > >         data. For read/modify/write to a group, the read should be =
to
> > > >         one of the lane addresses, then the write to the group addr=
ess."
> > > =

> > > Yep, v3 is doing the right thing: https://patchwork.freedesktop.org/s=
eries/78796/
> > =

> > Ah, I overlooked that, thanks.  I think my other comments below may
> > still apply to v3 though.
> =

> Ops missed those, answers bellow.
> =

> > =

> > =

> > Matt
> > =

> > > > > BSpec: 49291
> > > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > ---
> > > > >  .../gpu/drm/i915/display/intel_combo_phy.c    | 23 +++++++++++++=
++++++
> > > > >  drivers/gpu/drm/i915/i915_reg.h               |  7 ++++++
> > > > >  2 files changed, 30 insertions(+)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/dri=
vers/gpu/drm/i915/display/intel_combo_phy.c
> > > > > index 77b04bb3ec62..115069833348 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> > > > > @@ -264,6 +264,18 @@ static bool icl_combo_phy_verify_state(struc=
t drm_i915_private *dev_priv,
> > > > >  	if (!icl_combo_phy_enabled(dev_priv, phy))
> > > > >  		return false;
> > > > >  =

> > > > > +	if (INTEL_GEN(dev_priv) >=3D 12) {
> > > > > +		ret &=3D check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_GRP(phy),
> > > > > +				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
> > > > > +				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK,
> > > > > +				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
> > > > > +				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
> > > > =

> > > > If I'm reading the bspec correctly, it looks like both 00 and 01
> > > > represent div2 for this register.  So maybe rather than looking for=
 01
> > > > exactly here we should just check that bit 30 is off?
> =

> That is a micro optimization that would cause loss in code readability, s=
omeone casually reading might get confused of why only bit 30 is checked,
> also we would need to add a different macro? Don't look worthy.
> The default value of bit 31 is off so it will trigger the phy reprogram a=
nyways.

My main thinking was that the BIOS might have already programmed this
register according to the new bspec directions, but chosen 00 instead of
01 as its value.  So testing a "CLK_DIV_SEL_HIGHDIV" rather than
CLK_SEL_MASK would allow us to avoid an unnecessary reprogram.  But as
you said, it probably doesn't hurt anything to reprogram more often than
we need to, so we can probably leave it as-is.

Might be worth adding some extra explanation about that to the commit
message.  But otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>



> =

> > > > =

> > > > =

> > > > > +
> > > > > +		ret &=3D check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_GRP(phy=
),
> > > > > +				     DCC_MODE_SELECT_MASK,
> > > > > +				     DCC_MODE_SELECT_CONTINUOSLY);
> > > > > +	}
> > > > > +
> > > > >  	ret =3D cnl_verify_procmon_ref_values(dev_priv, phy);
> > > > >  =

> > > > >  	if (phy_is_master(dev_priv, phy)) {
> > > > > @@ -375,6 +387,17 @@ static void icl_combo_phys_init(struct drm_i=
915_private *dev_priv)
> > > > >  		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
> > > > >  =

> > > > >  skip_phy_misc:
> > > > > +		if (INTEL_GEN(dev_priv) >=3D 12) {
> > > > =

> > > > We may want to keep an eye on this part of the bspec; there seems t=
o be
> > > > something a bit off with the bspec tagging of this block and I'm not
> > > > 100% sure it was actually intended to apply to RKL too or not.
> =

> Ok, I'm receiving notifications of this page, will update if needed but i=
t would be odd only RKL not needing this sequence while TGL and DG1 need it.
> =

> > > > =

> > > > It seems like the bspec has these steps as the very first thing, ev=
en
> > > > before the "check whether the PHY is already initialized" step.
> > > > But since we're checking that the bits are set the way we want in t=
he
> > > > verify function too, I don't think the ordering should matter.
> =

> Yep, re program it each time is a waste of time.
> =

> > > > =

> > > > > +			intel_de_rmw(dev_priv, ICL_PORT_TX_DW8_GRP(phy),
> > > > > +				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK,
> > > > > +				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
> > > > > +				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
> > > > =

> > > > As noted above, maybe we should just clear bit 30 and leave bit 29 =
set
> > > > however it already was?
> > > > =

> > > > =

> > > > Matt
> > > > =

> > > > > +
> > > > > +			intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_GRP(phy),
> > > > > +				     DCC_MODE_SELECT_MASK,
> > > > > +				     DCC_MODE_SELECT_CONTINUOSLY);
> > > > > +		}
> > > > > +
> > > > >  		cnl_set_procmon_ref_values(dev_priv, phy);
> > > > >  =

> > > > >  		if (phy_is_master(dev_priv, phy)) {
> > > > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i9=
15/i915_reg.h
> > > > > index f09120cac89a..5469c9029f6d 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > > > @@ -1974,6 +1974,8 @@ static inline bool i915_mmio_reg_valid(i915=
_reg_t reg)
> > > > >  #define ICL_PORT_PCS_DW1_AUX(phy)	_MMIO(_ICL_PORT_PCS_DW_AUX(1, =
phy))
> > > > >  #define ICL_PORT_PCS_DW1_GRP(phy)	_MMIO(_ICL_PORT_PCS_DW_GRP(1, =
phy))
> > > > >  #define ICL_PORT_PCS_DW1_LN0(phy)	_MMIO(_ICL_PORT_PCS_DW_LN(1, 0=
, phy))
> > > > > +#define   DCC_MODE_SELECT_MASK		(0x3 << 20)
> > > > > +#define   DCC_MODE_SELECT_CONTINUOSLY	(0x3 << 20)
> > > > >  #define   COMMON_KEEPER_EN		(1 << 26)
> > > > >  #define   LATENCY_OPTIM_MASK		(0x3 << 2)
> > > > >  #define   LATENCY_OPTIM_VAL(x)		((x) << 2)
> > > > > @@ -2072,6 +2074,11 @@ static inline bool i915_mmio_reg_valid(i91=
5_reg_t reg)
> > > > >  #define   N_SCALAR(x)			((x) << 24)
> > > > >  #define   N_SCALAR_MASK			(0x7F << 24)
> > > > >  =

> > > > > +#define ICL_PORT_TX_DW8_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(8, p=
hy))
> > > > > +#define ICL_PORT_TX_DW8_ODCC_CLK_SEL		REG_BIT(31)
> > > > > +#define ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK	REG_GENMASK(30, 29)
> > > > > +#define ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL=
_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)
> > > > > +
> > > > >  #define _ICL_DPHY_CHKN_REG			0x194
> > > > >  #define ICL_DPHY_CHKN(port)			_MMIO(_ICL_COMBOPHY(port) + _ICL_D=
PHY_CHKN_REG)
> > > > >  #define   ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP	REG_BIT(7)
> > > > > -- =

> > > > > 2.27.0
> > > > > =

> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
