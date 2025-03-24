Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D384AA6D863
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 11:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF75410E2C6;
	Mon, 24 Mar 2025 10:36:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NanXHyIP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1532E10E297;
 Mon, 24 Mar 2025 10:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742812600; x=1774348600;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Q5+ax9qwm6M5CKQYPrCIRrhk/iY5pKWIy3gGxsqxcUk=;
 b=NanXHyIPHAqR/33Oxp9ymiiu5q8dkCJjwA0kB8XKgSJ3Rkx9MOER/kWj
 r4D86tlJEkM4tRTNOzn7ZTKVUQZzYSQT/yJyfit/nnbqFOXj+kk474W29
 /6ZFPIs5Y0vih1JvHogpIi1qXCfSwE1eCVR/7z9BZasCfHUMkr6rMk87I
 3vbuYysrs+FRMkO/gXbfdCXhblcq54rRqMoybnH9UglIFKO0KzopXefMY
 Ljcvj94oP33ILaeRa66O+T0eF/BmAQ7Ar7d0Mpqft+YhPKJRLyoCB7zw/
 WxbKvc9wLfItUOnlinIHPSTq8kZP/nNoxcqNslQC8/bHWvGlvZR1WzDz8 g==;
X-CSE-ConnectionGUID: 4YMcZf40S3aS2z+XOK/4Cw==
X-CSE-MsgGUID: 5EXEYUkYR8m+6GRApQO/EA==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="46755747"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="46755747"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 03:36:40 -0700
X-CSE-ConnectionGUID: ZIlu9JntQ0GUS0KAyGKoEQ==
X-CSE-MsgGUID: 9RLFULHySlq4/rkr1bVVJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124537412"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 03:36:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/dp_mst: Fix side-band message timeouts due
 to long PPS delays
In-Reply-To: <Z9251V5a9C6HsGNZ@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250321145626.94101-1-imre.deak@intel.com>
 <20250321145626.94101-3-imre.deak@intel.com> <Z92pPajId5OECQR7@intel.com>
 <Z92yNcPjrwmhC0ub@ideak-desk.fi.intel.com> <Z92zhpTXr_pg0FOW@intel.com>
 <Z9251V5a9C6HsGNZ@ideak-desk.fi.intel.com>
Date: Mon, 24 Mar 2025 12:36:34 +0200
Message-ID: <8734f2btql.fsf@intel.com>
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
> On Fri, Mar 21, 2025 at 08:44:22PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Fri, Mar 21, 2025 at 08:38:45PM +0200, Imre Deak wrote:
>> > On Fri, Mar 21, 2025 at 08:00:29PM +0200, Ville Syrj=C3=A4l=C3=A4 wrot=
e:
>> > > On Fri, Mar 21, 2025 at 04:56:25PM +0200, Imre Deak wrote:
>> > > > The Panel Power Sequencer lock held on an eDP port (a) blocks a DP=
 AUX
>> > > > transfer on another port (b), since the PPS lock is device global,=
 thus
>> > > > shared by all ports. The PPS lock can be held on port (a) for a lo=
nger
>> > > > period due to the various PPS delays (panel/backlight on/off,
>> > > > power-cycle delays). This in turn can cause an MST down-message re=
quest
>> > > > on port (b) time out, if the above PPS delay defers the handling o=
f the
>> > > > reply to the request by more than 100ms: the MST branch device sen=
ding
>> > > > the reply (signaling this via the DP_DOWN_REP_MSG_RDY flag in the
>> > > > DP_DEVICE_SERVICE_IRQ_VECTOR DPCD register) may cancel the reply
>> > > > (clearing DP_DOWN_REP_MSG_RDY and the reply message buffer) after =
110
>> > > > ms, if the reply is not processed by that time.
>> > > >=20
>> > > > Avoid MST down-message timeouts described above, by locking the PPS
>> > > > state for AUX transfers only if this is actually required: on eDP =
ports,
>> > > > where the VDD power depends on the PPS state and on all DP and eDP=
 ports
>> > > > on VLV/CHV, where the PPS is a pipe instance and hence a modeset o=
n any
>> > > > port possibly affecting the PPS state.
>> > > >=20
>> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > > > ---
>> > > >  drivers/gpu/drm/i915/display/intel_pps.c | 34 +++++++++++++++++++=
+++++
>> > > >  1 file changed, 34 insertions(+)
>> > > >=20
>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gp=
u/drm/i915/display/intel_pps.c
>> > > > index 3c078fd53fbfa..7d7157983f25e 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> > > > @@ -26,6 +26,11 @@ static void vlv_steal_power_sequencer(struct in=
tel_display *display,
>> > > >  static void pps_init_delays(struct intel_dp *intel_dp);
>> > > >  static void pps_init_registers(struct intel_dp *intel_dp, bool fo=
rce_disable_vdd);
>> > > >=20=20
>> > > > +static bool intel_pps_is_pipe_instance(struct intel_display *disp=
lay)
>> > > > +{
>> > > > +	return display->platform.valleyview || display->platform.cherryv=
iew;
>> > > > +}
>> > > > +
>> > > >  static const char *pps_name(struct intel_dp *intel_dp)
>> > > >  {
>> > > >  	struct intel_display *display =3D to_intel_display(intel_dp);
>> > > > @@ -955,10 +960,32 @@ void intel_pps_vdd_off(struct intel_dp *inte=
l_dp)
>> > > >  		intel_pps_vdd_off_unlocked(intel_dp, false);
>> > > >  }
>> > > >=20=20
>> > > > +static bool aux_needs_pps_lock(struct intel_dp *intel_dp)
>> > > > +{
>> > > > +	struct intel_display *display =3D to_intel_display(intel_dp);
>> > > > +
>> > > > +	/*
>> > > > +	 * The PPS state needs to be locked for:
>> > > > +	 * - eDP on all platforms, since AUX transfers on eDP need VDD p=
ower
>> > > > +	 *   (either forced or via panel power) which depends on the PPS
>> > > > +	 *   state.
>> > > > +	 * - non-eDP on platforms where the PPS is a pipe instance (VLV/=
CHV),
>> > > > +	 *   since changing the PPS state (via a parallel modeset for
>> > > > +	 *   instance) may interfere with the AUX transfers on a non-eDP
>> > > > +	 *   output as well.
>> > > > +	 */
>> > > > +	return intel_dp_is_edp(intel_dp) || intel_pps_is_pipe_instance(d=
isplay);
>> > > > +}
>> > > > +
>> > > >  intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp,=
 bool *vdd_ref)
>> > > >  {
>> > > >  	intel_wakeref_t wakeref;
>> > > >=20=20
>> > > > +	if (!aux_needs_pps_lock(intel_dp)) {
>> > > > +		*vdd_ref =3D false;
>> > > > +		return NULL;
>> > >=20
>> > > I was pondering if we need a define for this since intel_wakeref_t
>> > > doesn't look like a pointer, but apparently we use NULLs elsewhere
>> > > as well for this stuff.
>> >=20
>> > Ok, makes sense. It is a bigger a change though, so is it ok to do that
>> > as a follow up?
>>=20
>> I'm not sure what we even should do about it. Should all the
>> naked NULLs be hidden, or should we make the thing look like the
>> pointer it actually is?
>
> The latter, i.e.
>
> #define INTEL_WAKEREF_NONE ((intel_wakeref_t)0)

I've been leaning towards making it the pointer it actually is,
i.e. struct ref_tracker *. See the new intel_display_rpm.[ch].

But I have much stronger objections to patches 1 and 2 than this [1].


BR,
Jani.


[1] https://lore.kernel.org/r/874izibtvx.fsf@intel.com




>
> ?
>
>> > > > +	}
>> > > > +
>> > > >  	wakeref =3D intel_pps_lock(intel_dp);
>> > > >=20=20
>> > > >  	/*
>> > > > @@ -976,6 +1003,13 @@ intel_wakeref_t intel_pps_lock_for_aux(struc=
t intel_dp *intel_dp, bool *vdd_ref)
>> > > >=20=20
>> > > >  void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wa=
keref_t wakeref, bool vdd_ref)
>> > > >  {
>> > > > +	struct intel_display *display =3D to_intel_display(intel_dp);
>> > > > +
>> > > > +	if (!wakeref) {
>> > > > +		drm_WARN_ON(display->drm, vdd_ref || aux_needs_pps_lock(intel_d=
p));
>> > > > +		return;
>> > > > +	}
>> > > > +
>> > > >  	if (vdd_ref)
>> > > >  		intel_pps_vdd_off_unlocked(intel_dp, false);
>> > > >=20=20
>> > > > --=20
>> > > > 2.44.2
>> > >=20
>> > > --=20
>> > > Ville Syrj=C3=A4l=C3=A4
>> > > Intel
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel

--=20
Jani Nikula, Intel
