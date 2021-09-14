Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 797DD40ACFB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 14:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C658D898C0;
	Tue, 14 Sep 2021 12:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03448898C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 12:04:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="209202546"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="209202546"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:04:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="544041199"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.216.6])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:04:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lisovskiy\, Stanislav" <stanislav.lisovskiy@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Navare\,
 Manasi D" <manasi.d.navare@intel.com>
In-Reply-To: <20210914085958.GA27514@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
 <YUBPJrm1IZWwukS5@intel.com> <9dd78b35e9bf41f8816a0e7dedf75c64@intel.com>
 <YUBT3ljaDzwtXkwq@intel.com> <20210914085958.GA27514@intel.com>
Date: Tue, 14 Sep 2021 15:04:11 +0300
Message-ID: <87k0jj2wjo.fsf@intel.com>
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
> On Tue, Sep 14, 2021 at 10:48:46AM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Tue, Sep 14, 2021 at 07:31:46AM +0000, Kulkarni, Vandita wrote:
>> > > -----Original Message-----
>> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > > Sent: Tuesday, September 14, 2021 12:59 PM
>> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
>> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel=
.com>;
>> > > Navare, Manasi D <manasi.d.navare@intel.com>
>> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC
>> > > engine for higher moderates
>> > >=20
>> > > On Mon, Sep 13, 2021 at 08:09:23PM +0530, Vandita Kulkarni wrote:
>> > > > Each VDSC operates with 1ppc throughput, hence enable the second V=
DSC
>> > > > engine when moderate is higher that the current cdclk.
>> > > >
>> > > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> > > > ---
>> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++--
>> > > >  1 file changed, 10 insertions(+), 2 deletions(-)
>> > > >
>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > > > index 161c33b2c869..55878f65f724 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > > > @@ -70,6 +70,7 @@
>> > > >  #include "intel_tc.h"
>> > > >  #include "intel_vdsc.h"
>> > > >  #include "intel_vrr.h"
>> > > > +#include "intel_cdclk.h"
>> > > >
>> > > >  #define DP_DPRX_ESI_LEN 14
>> > > >
>> > > > @@ -1291,10 +1292,13 @@ static int intel_dp_dsc_compute_config(str=
uct
>> > > intel_dp *intel_dp,
>> > > >  				       struct drm_connector_state *conn_state,
>> > > >  				       struct link_config_limits *limits)  {
>> > > > +	struct intel_cdclk_state *cdclk_state;
>> > > >  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>> > > >  	struct drm_i915_private *dev_priv =3D to_i915(dig_port-
>> > > >base.base.dev);
>> > > >  	const struct drm_display_mode *adjusted_mode =3D
>> > > >  		&pipe_config->hw.adjusted_mode;
>> > > > +	struct intel_atomic_state *state =3D
>> > > > +				to_intel_atomic_state(pipe_config-
>> > > >uapi.state);
>> > > >  	int pipe_bpp;
>> > > >  	int ret;
>> > > >
>> > > > @@ -1373,12 +1377,16 @@ static int intel_dp_dsc_compute_config(str=
uct
>> > > intel_dp *intel_dp,
>> > > >  		}
>> > > >  	}
>> > > >
>> > > > +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
>> > > > +	if (IS_ERR(cdclk_state))
>> > > > +		return PTR_ERR(cdclk_state);
>> > > > +
>> > > >  	/*
>> > > >  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel r=
ate
>> > > > -	 * is greater than the maximum Cdclock and if slice count is even
>> > > > +	 * is greater than the current Cdclock and if slice count is even
>> > > >  	 * then we need to use 2 VDSC instances.
>> > > >  	 */
>> > > > -	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
>> > > > +	if (adjusted_mode->crtc_clock > cdclk_state->actual.cdclk ||
>> > >=20
>> > > This is wrong. We compute the cdclk based on the requirements of the
>> > > mode/etc., not the other way around.
>
> According to BSpec guideline, we decide whether we enable or disable seco=
nd VDSC engine, based
> on that condition. As I understand that one is about DSC config calculati=
on, based on CDCLK
> which was calculated.=20

Point is, at the time compute_config gets called, what guarantees are
there that cdclk_state->actual.cdclk contains anything useful? This is
the design we have.

> If we bump up CDCLK, to avoid this, will we even then use a second VDSC e=
ver?

I think we'll eventually need better logic than unconditionally bumping
to max, and it needs to take *both* the cdclk and the number of dsc
engines into account. The referenced bspec only has the vdsc clock
perspective, not overall perspective.

BR,
Jani.

> Another thing is that probably enabling second VDSC is cheaper in terms o=
f power consumption,
> than bumping up the CDCLK.
>
> Stan
>
>> >=20
>> > Okay , So you suggest that we set the cd clock to max when we have suc=
h requirement, than enabling the second engine?
>>=20
>> That seems like the easiest solution. Another option might be to come up
>> with some lower dotclock limit for the use of the second vdsc. But not
>> sure we know where the tipping point is wrt. powr consumption.
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel

--=20
Jani Nikula, Intel Open Source Graphics Center
