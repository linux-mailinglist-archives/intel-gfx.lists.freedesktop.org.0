Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF4CA6D7E7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 10:59:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D7410E2BB;
	Mon, 24 Mar 2025 09:59:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N2fVmTHi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A49810E297;
 Mon, 24 Mar 2025 09:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742810371; x=1774346371;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3IjytcyFzBNFi1FsJ783+bapo11rMOFTm6uk67yLxEg=;
 b=N2fVmTHi1k4iYxNEE/YbYESKEsJfD1/ykyaxSSEmOpOvhWSDsfO81EcM
 1qkASx1DMz48CiSHbVguuGHIbaHkL954bSIuUHrrXAhhiQmWT/tuZ0min
 VxKWV4mMc7LByhF/tV2ON32aIum2RDHT3l+cV+2fbg6IEVHKl70uylogC
 CExdAWSWPztoVtvXLLOoHz28lIhqGIWDAsQNpS6oWLTMtCveAYgMYofFG
 KC86t7+sKHb4glzOoV47N8gOl/at4ybwmp+JfW2G9csS5A8m1vBj2isrF
 vMEAHb2ooLoIyh2AfjpY2h3QQ3t4t6xrvjFYqjnQYexphRyNXr2W+M4C+ A==;
X-CSE-ConnectionGUID: g85A8v1KRvuYZymjwrma2A==
X-CSE-MsgGUID: DAB3SS6vTYa5Ws9gj0BUIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="43884809"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="43884809"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 02:59:12 -0700
X-CSE-ConnectionGUID: bMImGCfXTYe7WrbHe3TzLw==
X-CSE-MsgGUID: JQYJ01/CSGyYyEOM4JSk2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124166022"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 02:59:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/pps: Use intel_pps_is_pipe_instance()
 instead of open-coding it
In-Reply-To: <Z92zWaQdI4UlHr2v@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250321145626.94101-1-imre.deak@intel.com>
 <20250321145626.94101-4-imre.deak@intel.com> <Z92p1bF4uHTwJ1-d@intel.com>
 <Z92zWaQdI4UlHr2v@ideak-desk.fi.intel.com>
Date: Mon, 24 Mar 2025 11:59:08 +0200
Message-ID: <87a59abvgz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 21 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Fri, Mar 21, 2025 at 08:03:01PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Fri, Mar 21, 2025 at 04:56:26PM +0200, Imre Deak wrote:
>> > Use intel_pps_is_pipe_instance() instead of open-coding the same for a=
ll
>> > conditional PPS programming required for a pipe instance PPS.
>> >=20
>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/g4x_dp.c    |  6 +++---
>> >  drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
>> >  drivers/gpu/drm/i915/display/intel_pps.c | 18 +++++++++---------
>> >  drivers/gpu/drm/i915/display/intel_pps.h |  2 ++
>> >  4 files changed, 15 insertions(+), 13 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i=
915/display/g4x_dp.c
>> > index 55b9e9bfcc4d0..f527b455ce904 100644
>> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>> > @@ -474,7 +474,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>> >=20=20
>> >  	msleep(intel_dp->pps.panel_power_down_delay);
>> >=20=20
>> > -	if (display->platform.valleyview || display->platform.cherryview)
>> > +	if (intel_pps_is_pipe_instance(display))
>> >  		vlv_pps_port_disable(encoder, old_crtc_state);
>>=20
>> Most of these are of this form
>>=20
>> if (intel_pps_is_pipe_instance())
>> 	vlv_something();
>>=20
>> so using an abstract name for intel_pps_is_pipe_instance()
>> feels a bit confusing. Maybe it should just be
>> intel_pps_is_vlv() or somehing?
>
> Ok. Imo it makes sense to also indicate that the PPS is not port
> specific (which would be the logical way), so how about
> intel_pps_is_vlv_pipe_instance() ?

That makes it feel like you could *not* have a pipe based PPS on
vlv/chv, and you'd have to check.

I wanted to hide all those details from the callers by moving it inside
intel_pps.c i.e. this is just a thing you do on vlv/chv.

I'd probably be more receptive to a patch that just moved all the checks
inside intel_pps.c without an additional function.

BR,
Jani.

>
>> >  }
>> >=20=20
>> > @@ -685,7 +685,7 @@ static void intel_enable_dp(struct intel_atomic_st=
ate *state,
>> >  		return;
>> >=20=20
>> >  	with_intel_pps_lock(intel_dp, wakeref) {
>> > -		if (display->platform.valleyview || display->platform.cherryview)
>> > +		if (intel_pps_is_pipe_instance(display))
>> >  			vlv_pps_port_enable_unlocked(encoder, pipe_config);
>> >=20=20
>> >  		intel_dp_enable_port(intel_dp, pipe_config);
>> > @@ -1265,7 +1265,7 @@ static void intel_dp_encoder_reset(struct drm_en=
coder *encoder)
>> >  	intel_dp->reset_link_params =3D true;
>> >  	intel_dp_invalidate_source_oui(intel_dp);
>> >=20=20
>> > -	if (display->platform.valleyview || display->platform.cherryview)
>> > +	if (intel_pps_is_pipe_instance(display))
>> >  		vlv_pps_pipe_reset(intel_dp);
>> >=20=20
>> >  	intel_pps_encoder_reset(intel_dp);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm=
/i915/display/intel_dp.c
>> > index e3821ccfabe30..b4a0e3775b7b4 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -6518,7 +6518,7 @@ intel_dp_init_connector(struct intel_digital_por=
t *dig_port,
>> >  	intel_dp_set_default_sink_rates(intel_dp);
>> >  	intel_dp_set_default_max_sink_lane_count(intel_dp);
>> >=20=20
>> > -	if (display->platform.valleyview || display->platform.cherryview)
>> > +	if (intel_pps_is_pipe_instance(display))
>> >  		vlv_pps_pipe_init(intel_dp);
>> >=20=20
>> >  	intel_dp_aux_init(intel_dp);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/dr=
m/i915/display/intel_pps.c
>> > index 7d7157983f25e..7b47346d4d559 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> > @@ -26,7 +26,7 @@ static void vlv_steal_power_sequencer(struct intel_d=
isplay *display,
>> >  static void pps_init_delays(struct intel_dp *intel_dp);
>> >  static void pps_init_registers(struct intel_dp *intel_dp, bool force_=
disable_vdd);
>> >=20=20
>> > -static bool intel_pps_is_pipe_instance(struct intel_display *display)
>> > +bool intel_pps_is_pipe_instance(struct intel_display *display)
>> >  {
>> >  	return display->platform.valleyview || display->platform.cherryview;
>> >  }
>> > @@ -36,7 +36,7 @@ static const char *pps_name(struct intel_dp *intel_d=
p)
>> >  	struct intel_display *display =3D to_intel_display(intel_dp);
>> >  	struct intel_pps *pps =3D &intel_dp->pps;
>> >=20=20
>> > -	if (display->platform.valleyview || display->platform.cherryview) {
>> > +	if (intel_pps_is_pipe_instance(display)) {
>> >  		switch (pps->vlv_pps_pipe) {
>> >  		case INVALID_PIPE:
>> >  			/*
>> > @@ -411,7 +411,7 @@ pps_initial_setup(struct intel_dp *intel_dp)
>> >=20=20
>> >  	lockdep_assert_held(&display->pps.mutex);
>> >=20=20
>> > -	if (display->platform.valleyview || display->platform.cherryview) {
>> > +	if (intel_pps_is_pipe_instance(display)) {
>> >  		vlv_initial_power_sequencer_setup(intel_dp);
>> >  		return true;
>> >  	}
>> > @@ -510,7 +510,7 @@ static void intel_pps_get_registers(struct intel_d=
p *intel_dp,
>> >=20=20
>> >  	memset(regs, 0, sizeof(*regs));
>> >=20=20
>> > -	if (display->platform.valleyview || display->platform.cherryview)
>> > +	if (intel_pps_is_pipe_instance(display))
>> >  		pps_idx =3D vlv_power_sequencer_pipe(intel_dp);
>> >  	else if (display->platform.geminilake || display->platform.broxton)
>> >  		pps_idx =3D bxt_power_sequencer_idx(intel_dp);
>> > @@ -556,7 +556,7 @@ static bool edp_have_panel_power(struct intel_dp *=
intel_dp)
>> >=20=20
>> >  	lockdep_assert_held(&display->pps.mutex);
>> >=20=20
>> > -	if ((display->platform.valleyview || display->platform.cherryview) &&
>> > +	if (intel_pps_is_pipe_instance(display) &&
>> >  	    intel_dp->pps.vlv_pps_pipe =3D=3D INVALID_PIPE)
>> >  		return false;
>> >=20=20
>> > @@ -569,7 +569,7 @@ static bool edp_have_panel_vdd(struct intel_dp *in=
tel_dp)
>> >=20=20
>> >  	lockdep_assert_held(&display->pps.mutex);
>> >=20=20
>> > -	if ((display->platform.valleyview || display->platform.cherryview) &&
>> > +	if (intel_pps_is_pipe_instance(display) &&
>> >  	    intel_dp->pps.vlv_pps_pipe =3D=3D INVALID_PIPE)
>> >  		return false;
>> >=20=20
>> > @@ -1758,7 +1758,7 @@ void intel_pps_encoder_reset(struct intel_dp *in=
tel_dp)
>> >  		 * Reinit the power sequencer also on the resume path, in case
>> >  		 * BIOS did something nasty with it.
>> >  		 */
>> > -		if (display->platform.valleyview || display->platform.cherryview)
>> > +		if (intel_pps_is_pipe_instance(display))
>> >  			vlv_initial_power_sequencer_setup(intel_dp);
>> >=20=20
>> >  		pps_init_delays(intel_dp);
>> > @@ -1797,7 +1797,7 @@ static void pps_init_late(struct intel_dp *intel=
_dp)
>> >  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> >  	struct intel_connector *connector =3D intel_dp->attached_connector;
>> >=20=20
>> > -	if (display->platform.valleyview || display->platform.cherryview)
>> > +	if (intel_pps_is_pipe_instance(display))
>> >  		return;
>> >=20=20
>> >  	if (intel_num_pps(display) < 2)
>> > @@ -1931,7 +1931,7 @@ void assert_pps_unlocked(struct intel_display *d=
isplay, enum pipe pipe)
>> >  			MISSING_CASE(port_sel);
>> >  			break;
>> >  		}
>> > -	} else if (display->platform.valleyview || display->platform.cherryv=
iew) {
>> > +	} else if (intel_pps_is_pipe_instance(display)) {
>> >  		/* presumably write lock depends on pipe, not port select */
>> >  		pp_reg =3D PP_CONTROL(display, pipe);
>> >  		panel_pipe =3D pipe;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/dr=
m/i915/display/intel_pps.h
>> > index 4390d05892325..1f4eed5fc55b8 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_pps.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_pps.h
>> > @@ -17,6 +17,8 @@ struct intel_display;
>> >  struct intel_dp;
>> >  struct intel_encoder;
>> >=20=20
>> > +bool intel_pps_is_pipe_instance(struct intel_display *display);
>> > +
>> >  intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp);
>> >  intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wak=
eref_t wakeref);
>> >=20=20
>> > --=20
>> > 2.44.2
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel

--=20
Jani Nikula, Intel
