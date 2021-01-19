Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D882FBC21
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 17:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1837989A16;
	Tue, 19 Jan 2021 16:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E150589A16
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 16:13:33 +0000 (UTC)
IronPort-SDR: sBbxnOeUaDP+HckMC+TwDE9lcd7uiIZDapVWpGe4vDhaEnSBXeI1bnF0O8CCVshJFl3lnH5jP/
 OITx4z5+byPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="263762486"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="263762486"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 08:13:17 -0800
IronPort-SDR: 9QbmxI2vwYfKR5yLKxWwi0zDwgxGD0oPmWSCtvId6x8rTm8pz0o/NAytFtYX2BItxqaJ/20Cmt
 kg1TBi6qbthQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="391141191"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 19 Jan 2021 08:13:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Jan 2021 18:13:14 +0200
Date: Tue, 19 Jan 2021 18:13:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YAcFGumUwuonhUcP@intel.com>
References: <20210108120922.88692-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20210112002155.GB3354@intel.com>
 <20210112013000.GD4758@mdroper-desk1.amr.corp.intel.com>
 <20210119155247.GA3970@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210119155247.GA3970@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen9_bc : Add TGP PCH support
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
Cc: intel-gfx@lists.freedesktop.org, hariom.pandey@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 19, 2021 at 10:52:47AM -0500, Rodrigo Vivi wrote:
> On Mon, Jan 11, 2021 at 05:30:00PM -0800, Matt Roper wrote:
> > On Mon, Jan 11, 2021 at 07:21:55PM -0500, Rodrigo Vivi wrote:
> > > On Fri, Jan 08, 2021 at 05:39:22PM +0530, Tejas Upadhyay wrote:
> > > > We have TGP PCH support for Tigerlake and Rocketlake. Similarly
> > > > now TGP PCH can be used with Cometlake CPU.
> > > > =

> > > > Changes since V3 :
> > > > 	- Rebased to top drm-tip commit
> > > > 	- dev_priv replaced with i915 for new API
> > > > 	- Enable default Port B,C,D detection for TGP && GEN9_BC
> > > > Changes since V2 :
> > > >         - IS_COMETLAKE replaced with IS_GEN9_BC
> > > >         - VBT ddc pin remapping added
> > > >         - Added dedicated HPD pin and DDC pin handling API
> > > > Changes since V1 :
> > > >         - Matched HPD Pin mapping for PORT C and PORT D of CML CPU.
> > > > =

> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > > Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@i=
ntel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_bios.c    |  9 +++++++++
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +++++--
> > > >  drivers/gpu/drm/i915/display/intel_display.c |  9 ++++++++-
> > > >  drivers/gpu/drm/i915/display/intel_hdmi.c    | 20 ++++++++++++++++=
++++
> > > >  drivers/gpu/drm/i915/intel_pch.c             |  3 ++-
> > > >  5 files changed, 44 insertions(+), 4 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gp=
u/drm/i915/display/intel_bios.c
> > > > index 987cf509337f..730b7f45e5d4 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > > > @@ -1630,6 +1630,12 @@ static const u8 rkl_pch_tgp_ddc_pin_map[] =
=3D {
> > > >  	[RKL_DDC_BUS_DDI_E] =3D GMBUS_PIN_10_TC2_ICP,
> > > >  };
> > > >  =

> > > > +static const u8 gen9bc_tgp_ddc_pin_map[] =3D {
> > > > +	[DDC_BUS_DDI_B] =3D GMBUS_PIN_2_BXT,
> > > > +	[DDC_BUS_DDI_C] =3D GMBUS_PIN_9_TC1_ICP,
> > > > +	[DDC_BUS_DDI_D] =3D GMBUS_PIN_10_TC2_ICP,
> > > > +};
> > > =

> > > Could you please point out the spec you are using here?
> > > =

> > > VBT's spec at BSpec - at Block 2
> > > I can see the TGP table is same as ICP.
> > > =

> > > So I'm kind of confused now.
> > =

> > It's a weird place to document it, but bspec 49181 has a compatibility
> > section that describes how to map the TGP pins when paired with a gen9bc
> > CPU.
> =

> Really weird place, but it makes some sense now.
> We should file a BSpec bug and request this information to be consolidated
> with VBT one.
> =

> > =

> > > =

> > > > +
> > > >  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pi=
n)
> > > >  {
> > > >  	const u8 *ddc_pin_map;
> > > > @@ -1640,6 +1646,9 @@ static u8 map_ddc_pin(struct drm_i915_private=
 *dev_priv, u8 vbt_pin)
> > > >  	} else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) =
=3D=3D PCH_TGP) {
> > > >  		ddc_pin_map =3D rkl_pch_tgp_ddc_pin_map;
> > > >  		n_entries =3D ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> > > > +	} else if (HAS_PCH_TGP(dev_priv) && IS_GEN9_BC(dev_priv)) {
> > > > +		ddc_pin_map =3D gen9bc_tgp_ddc_pin_map;
> > > > +		n_entries =3D ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
> > > >  	} else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP) {
> > > >  		ddc_pin_map =3D icp_ddc_pin_map;
> > > >  		n_entries =3D ARRAY_SIZE(icp_ddc_pin_map);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu=
/drm/i915/display/intel_ddi.c
> > > > index 3df6913369bc..13f1268e2cff 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -5337,7 +5337,9 @@ static enum hpd_pin dg1_hpd_pin(struct drm_i9=
15_private *dev_priv,
> > > >  static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
> > > >  				enum port port)
> > > >  {
> > > > -	if (port >=3D PORT_TC1)
> > > > +	if (IS_GEN9_BC(dev_priv) && port >=3D PORT_C)
> > > =

> > > gen9 in tgl function?!
> > > please, no!
> > =

> > We should probably rename this function to tgp since it ultimately gets
> > called on every possible TGP platform (TGL+TGP, RKL+TGP, gen9+TGP).  If
> > it weren't for RKL+CMP, I'd say that all these functions should just be
> > named after the PCH, but I guess the TC ports on RKL+CMP break the
> > pattern.
> =

> okay, so we need at least this.

static enum hpd_pin skl_hpd_pin(struct drm_i915_private *dev_priv,
				enum port port)
{
	if (HAS_PCH_TGP(dev_priv))
		return icl_hpd_pin(dev_priv, port);

	return HPD_PORT_A + port - PORT_A;
}

is what I have sitting in a local branch. Just never upstreamed it since
I wasn't sure the rkl+tgp was going to be a real thing.

Also this patch should be split into several independent parts.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
