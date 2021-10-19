Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 559A0433F1D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 21:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9137B6E1E9;
	Tue, 19 Oct 2021 19:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD336E1E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 19:17:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="292076071"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="292076071"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 12:17:33 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="494254390"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 12:17:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, stable@vger.kernel.org
In-Reply-To: <20211019183723.GA1621650@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211018094154.1407705-1-imre.deak@intel.com>
 <20211018094154.1407705-3-imre.deak@intel.com> <87pms1scdl.fsf@intel.com>
 <20211019073335.GB1537791@ideak-desk.fi.intel.com> <87mtn5sbwi.fsf@intel.com>
 <20211019073902.GC1537791@ideak-desk.fi.intel.com>
 <20211019183723.GA1621650@ideak-desk.fi.intel.com>
Date: Tue, 19 Oct 2021 22:17:28 +0300
Message-ID: <87ilxsq0xj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/dp: Ensure sink rate values
 are always valid
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

On Tue, 19 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Oct 19, 2021 at 10:39:08AM +0300, Imre Deak wrote:
>> On Tue, Oct 19, 2021 at 10:37:33AM +0300, Jani Nikula wrote:
>> > On Tue, 19 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
>> > > On Tue, Oct 19, 2021 at 10:27:18AM +0300, Jani Nikula wrote:
>> > >> On Mon, 18 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
>> > >> > Atm, there are no sink rate values set for DP (vs. eDP) sinks unt=
il the
>> > >> > DPCD capabilities are successfully read from the sink. During thi=
s time
>> > >> > intel_dp->num_common_rates is 0 which can lead to a
>> > >> >
>> > >> > intel_dp->common_rates[-1]    (*)
>> > >> >
>> > >> > access, which is an undefined behaviour, in the following cases:
>> > >> >
>> > >> > - In intel_dp_sync_state(), if the encoder is enabled without a s=
ink
>> > >> >   connected to the encoder's connector (BIOS enabled a monitor, b=
ut the
>> > >> >   user unplugged the monitor until the driver loaded).
>> > >> > - In intel_dp_sync_state() if the encoder is enabled with a sink
>> > >> >   connected, but for some reason the DPCD read has failed.
>> > >> > - In intel_dp_compute_link_config() if modesetting a connector wi=
thout
>> > >> >   a sink connected on it.
>> > >> > - In intel_dp_compute_link_config() if modesetting a connector wi=
th a
>> > >> >   a sink connected on it, but before probing the connector first.
>> > >> >
>> > >> > To avoid the (*) access in all the above cases, make sure that th=
e sink
>> > >> > rate table - and hence the common rate table - is always valid, by
>> > >> > setting a default minimum sink rate when registering the connector
>> > >> > before anything could use it.
>> > >> >
>> > >> > I also considered setting all the DP link rates by default, so th=
at
>> > >> > modesetting with higher resolution modes also succeeds in the las=
t two
>> > >> > cases above. However in case a sink is not connected that would s=
top
>> > >> > working after the first modeset, due to the LT fallback logic. So=
 this
>> > >> > would need more work, beyond the scope of this fix.
>> > >> >
>> > >> > As I mentioned in the previous patch, I don't think the issue thi=
s patch
>> > >> > fixes is user visible, however it is an undefined behaviour by
>> > >> > definition and triggers a BUG() in CONFIG_UBSAN builds, hence CC:=
stable.
>> > >>=20
>> > >> I think the question here, and in the following patches, is whether=
 this
>> > >> papers over potential bugs elsewhere.
>> > >>=20
>> > >> Would the original bug fixed by patch 1 have been detected if all t=
he
>> > >> safeguards here had been in place? Point being, we shouldn't be doi=
ng
>> > >> any of these things before we've read the dpcd.
>> > >
>> > > Modesets are possible even without a connected sink or a read-out DP=
CD,
>> > > so the link parameters need to be valid even without those.
>> >=20
>> > Modeset on a disconnected DP? How?
>>=20
>> Yes, just do a modeset on it. It doesn't have to be disconnected either,
>> you can modeset a DP connector before probing it.
>
> Jani,
>
> any objections to merge patches 2-6 as well? In a summary the reasons:
>
> - Fix userspace triggerable WARNs().
> - Fix undefined behavior triggerring BUG() in UBSAN builds
>   (in addition to the case the first patch fixes).
> - Validate the DP_MAX_LINK_RATE value we read from DPCD.
> - It unifies some open-coded functionality (patch 3 and 6).

I have some reservations about adding more stuff that we cache, as well
as more functions to call to reset the state... but I don't really have
concrete proposals either right now, and this makes forward progress.

Ack.


BR,
Jani.


>
>> > BR,
>> > Jani.
>> >=20
>> >=20
>> > >
>> > >> BR,
>> > >> Jani.
>> > >>=20
>> > >>=20
>> > >> >
>> > >> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4297
>> > >> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/4298
>> > >> > Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com>
>> > >> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > >> > Cc: <stable@vger.kernel.org>
>> > >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > >> > ---
>> > >> >  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
>> > >> >  1 file changed, 8 insertions(+)
>> > >> >
>> > >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gp=
u/drm/i915/display/intel_dp.c
>> > >> > index 23de500d56b52..153ae944a354b 100644
>> > >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > >> > @@ -120,6 +120,12 @@ bool intel_dp_is_uhbr(const struct intel_crt=
c_state *crtc_state)
>> > >> >  	return crtc_state->port_clock >=3D 1000000;
>> > >> >  }
>> > >> >=20=20
>> > >> > +static void intel_dp_set_default_sink_rates(struct intel_dp *int=
el_dp)
>> > >> > +{
>> > >> > +	intel_dp->sink_rates[0] =3D 162000;
>> > >> > +	intel_dp->num_sink_rates =3D 1;
>> > >> > +}
>> > >> > +
>> > >> >  /* update sink rates from dpcd */
>> > >> >  static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
>> > >> >  {
>> > >> > @@ -5003,6 +5009,8 @@ intel_dp_init_connector(struct intel_digita=
l_port *dig_port,
>> > >> >  	}
>> > >> >=20=20
>> > >> >  	intel_dp_set_source_rates(intel_dp);
>> > >> > +	intel_dp_set_default_sink_rates(intel_dp);
>> > >> > +	intel_dp_set_common_rates(intel_dp);
>> > >> >=20=20
>> > >> >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>> > >> >  		intel_dp->pps.active_pipe =3D vlv_active_pipe(intel_dp);
>> > >>=20
>> > >> --=20
>> > >> Jani Nikula, Intel Open Source Graphics Center
>> >=20
>> > --=20
>> > Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
