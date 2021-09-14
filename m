Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 047EC40B033
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 16:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E6666E49F;
	Tue, 14 Sep 2021 14:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6D36E49F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 14:03:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="244334571"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="244334571"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 07:02:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="544086881"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.216.6])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 07:02:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lisovskiy\, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare\, Manasi D" <manasi.d.navare@intel.com>
In-Reply-To: <20210914133223.GA28709@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
 <YUBPJrm1IZWwukS5@intel.com> <9dd78b35e9bf41f8816a0e7dedf75c64@intel.com>
 <YUBT3ljaDzwtXkwq@intel.com> <20210914085958.GA27514@intel.com>
 <87k0jj2wjo.fsf@intel.com> <20210914130425.GA27850@intel.com>
 <20210914133223.GA28709@intel.com>
Date: Tue, 14 Sep 2021 17:02:30 +0300
Message-ID: <87bl4v2r2h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
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

On Tue, 14 Sep 2021, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>=
 wrote:
> On Tue, Sep 14, 2021 at 04:04:25PM +0300, Lisovskiy, Stanislav wrote:
>> On Tue, Sep 14, 2021 at 03:04:11PM +0300, Jani Nikula wrote:
>> > On Tue, 14 Sep 2021, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel=
.com> wrote:
>> > > On Tue, Sep 14, 2021 at 10:48:46AM +0300, Ville Syrj=C3=A4l=C3=A4 wr=
ote:
>> > >> On Tue, Sep 14, 2021 at 07:31:46AM +0000, Kulkarni, Vandita wrote:
>> > >> > > -----Original Message-----
>> > >> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > >> > > Sent: Tuesday, September 14, 2021 12:59 PM
>> > >> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
>> > >> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@=
intel.com>;
>> > >> > > Navare, Manasi D <manasi.d.navare@intel.com>
>> > >> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable secon=
d VDSC
>> > >> > > engine for higher moderates
>> > >> > >=20
>> > >> > > On Mon, Sep 13, 2021 at 08:09:23PM +0530, Vandita Kulkarni wrot=
e:
>> > >> > > > Each VDSC operates with 1ppc throughput, hence enable the sec=
ond VDSC
>> > >> > > > engine when moderate is higher that the current cdclk.
>> > >> > > >
>> > >> > > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> > >> > > > ---
>> > >> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++--
>> > >> > > >  1 file changed, 10 insertions(+), 2 deletions(-)
>> > >> > > >
>> > >> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > >> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > >> > > > index 161c33b2c869..55878f65f724 100644
>> > >> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > >> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > >> > > > @@ -70,6 +70,7 @@
>> > >> > > >  #include "intel_tc.h"
>> > >> > > >  #include "intel_vdsc.h"
>> > >> > > >  #include "intel_vrr.h"
>> > >> > > > +#include "intel_cdclk.h"
>> > >> > > >
>> > >> > > >  #define DP_DPRX_ESI_LEN 14
>> > >> > > >
>> > >> > > > @@ -1291,10 +1292,13 @@ static int intel_dp_dsc_compute_confi=
g(struct
>> > >> > > intel_dp *intel_dp,
>> > >> > > >  				       struct drm_connector_state *conn_state,
>> > >> > > >  				       struct link_config_limits *limits)  {
>> > >> > > > +	struct intel_cdclk_state *cdclk_state;
>> > >> > > >  	struct intel_digital_port *dig_port =3D dp_to_dig_port(inte=
l_dp);
>> > >> > > >  	struct drm_i915_private *dev_priv =3D to_i915(dig_port-
>> > >> > > >base.base.dev);
>> > >> > > >  	const struct drm_display_mode *adjusted_mode =3D
>> > >> > > >  		&pipe_config->hw.adjusted_mode;
>> > >> > > > +	struct intel_atomic_state *state =3D
>> > >> > > > +				to_intel_atomic_state(pipe_config-
>> > >> > > >uapi.state);
>> > >> > > >  	int pipe_bpp;
>> > >> > > >  	int ret;
>> > >> > > >
>> > >> > > > @@ -1373,12 +1377,16 @@ static int intel_dp_dsc_compute_confi=
g(struct
>> > >> > > intel_dp *intel_dp,
>> > >> > > >  		}
>> > >> > > >  	}
>> > >> > > >
>> > >> > > > +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
>> > >> > > > +	if (IS_ERR(cdclk_state))
>> > >> > > > +		return PTR_ERR(cdclk_state);
>> > >> > > > +
>> > >> > > >  	/*
>> > >> > > >  	 * VDSC engine operates at 1 Pixel per clock, so if peak pi=
xel rate
>> > >> > > > -	 * is greater than the maximum Cdclock and if slice count i=
s even
>> > >> > > > +	 * is greater than the current Cdclock and if slice count i=
s even
>> > >> > > >  	 * then we need to use 2 VDSC instances.
>> > >> > > >  	 */
>> > >> > > > -	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
>> > >> > > > +	if (adjusted_mode->crtc_clock > cdclk_state->actual.cdclk ||
>> > >> > >=20
>> > >> > > This is wrong. We compute the cdclk based on the requirements o=
f the
>> > >> > > mode/etc., not the other way around.
>> > >
>> > > According to BSpec guideline, we decide whether we enable or disable=
 second VDSC engine, based
>> > > on that condition. As I understand that one is about DSC config calc=
ulation, based on CDCLK
>> > > which was calculated.=20
>> >=20
>> > Point is, at the time compute_config gets called, what guarantees are
>> > there that cdclk_state->actual.cdclk contains anything useful? This is
>> > the design we have.
>>=20
>> That is actually good question, was willing to check that as well.
>>=20
>> >=20
>> > > If we bump up CDCLK, to avoid this, will we even then use a second V=
DSC ever?
>> >=20
>> > I think we'll eventually need better logic than unconditionally bumping
>> > to max, and it needs to take *both* the cdclk and the number of dsc
>> > engines into account. The referenced bspec only has the vdsc clock
>> > perspective, not overall perspective.
>>=20
>> What we need to clarify here is that how this is supposed to work in the=
ory.
>> Basically same issue can be fixed by both increasing the CDCLK or enabli=
ng
>> 2nd VDSC engine.
>> There should be some guideline telling us, how to prioritize.=20
>> From overall perspective as I understand, by default, we are able to keep
>> CDCLK 2 times less than pixel rate(see intel_pixel_rate_to_cdclk), howev=
er
>> due to that VDSC limitation that it can use only 1 ppc this becomes, not
>> applicable anymore(at least as of BSpec 49259), so we have to increase a=
mount
>> of VDSC instances then.
>>=20
>> So the question is now - what is more optimal here?
>> Also if we bump up CDCLK(which we have done many times already in fact),=
 we
>> then need to add some logic to intel_compute_min_cdclk to check if we ar=
e using
>> DSC or not, because otherwise we don't really need to do that.

intel_compute_min_cdclk() already needs to be dsc aware when slice count
is 1 and we can't use two dsc engines anyway. See the recent commit
fe01883fdcef ("drm/i915: Get proper min cdclk if vDSC enabled").

Looking again, I'm not sure that does the right decision for when
dsc.slice_count > 1, but dsc.split =3D=3D false. It should probably use
dsc.split for the decision.

>>=20
>> Stan
>
> Checked and indeed, encoder->compute_config is called way before, basical=
ly
> CDCLK calculation is called almost in the end of atomic_check, so in=20
> compute_config, there would be an old CDCLK value copied from previous
> cdclk state, but not the last one.
>
> Vandita, this means we actually can't do it that way, if you want to do
> anything with VDSC based on CDCLK this has to be done _after_=20
> intel_compute_min_cdclk was called. Which is not very sweet, I guess.
>
> So as of current architecture, it seems that the easiest way is indeed
> to bump the CDCLK or we need to figure the way how to enable 2nd VDSC
> somewhere else, after CDCLK was calculated.

Alternatively, we could use two dsc engines more aggressively, but that
decision currently can't take overall chosen cdclk into account.

We'll end up sometimes unnecessarily using a too high cdclk or two dsc
engines, just have to pick the poison.

I think trying to do dsc decisions after intel_compute_min_cdclk() gets
way too complicated.

BR,
Jani




>
> Stan
>
>>=20
>> >=20
>> > BR,
>> > Jani.
>> >=20
>> > > Another thing is that probably enabling second VDSC is cheaper in te=
rms of power consumption,
>> > > than bumping up the CDCLK.
>> > >
>> > > Stan
>> > >
>> > >> >=20
>> > >> > Okay , So you suggest that we set the cd clock to max when we hav=
e such requirement, than enabling the second engine?
>> > >>=20
>> > >> That seems like the easiest solution. Another option might be to co=
me up
>> > >> with some lower dotclock limit for the use of the second vdsc. But =
not
>> > >> sure we know where the tipping point is wrt. powr consumption.
>> > >>=20
>> > >> --=20
>> > >> Ville Syrj=C3=A4l=C3=A4
>> > >> Intel
>> >=20
>> > --=20
>> > Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
