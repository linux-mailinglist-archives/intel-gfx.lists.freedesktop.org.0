Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA24179841
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 19:45:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D5516EB5D;
	Wed,  4 Mar 2020 18:45:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB6E06EB5D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 18:45:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 10:45:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="234205758"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 04 Mar 2020 10:45:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Mar 2020 20:45:20 +0200
Date: Wed, 4 Mar 2020 20:45:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200304184520.GH13686@intel.com>
References: <20200304125118.12335-1-anshuman.gupta@intel.com>
 <877e00p7n4.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877e00p7n4.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: Ignore short pulse when panel
 powered off
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 04, 2020 at 03:33:03PM +0200, Jani Nikula wrote:
> On Wed, 04 Mar 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > Few edp panels like Sharp is triggering short and long
> > hpd pulse after panel is getting powered off.
> > Currently driver is already ignoring long pulse for eDP
> > panel but in order to process the short pulse, it turns on
> > the VDD which requires panel power_cycle_delay + panel_power_on_delay
> > these delay on Sharp panel introduced the responsiveness overhead
> > of 800ms in the modeset sequence and as well is in suspend
> > sequence.
> > Ignoring any short pulse once panel is powered off.
> >
> > FIXME: It requires to wait for panel_power_off_delay in order
> > to check the panel status, as panel triggers short pulse immediately
> > after writing PP_OFF to PP_CTRL register.
> >
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 0a417cd2af2b..93de015f5322 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6763,10 +6763,24 @@ static const struct drm_encoder_funcs intel_dp_=
enc_funcs =3D {
> >  	.destroy =3D intel_dp_encoder_destroy,
> >  };
> >  =

> > +static bool is_edp_powered_off(struct intel_dp *intel_dp)
> =

> We have a number of existing edp_ prefixed functions, with intel_
> prefixed wrappers. Please make this intel_edp_have_panel_power(). Early
> return false for non-eDP.
> =

> Also handle intel_dp_is_edp() in the caller so it's clear what's being
> done.
> =

> > +{
> > +	intel_wakeref_t wakeref;
> > +	bool powerd_off =3D false;
> > +
> > +	if (intel_dp_is_edp(intel_dp)) {
> > +		with_pps_lock(intel_dp, wakeref)
> > +			powerd_off =3D !edp_have_panel_power(intel_dp);
> > +	}
> > +
> > +	return powerd_off;
> > +}
> > +
> >  enum irqreturn
> >  intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool lon=
g_hpd)
> >  {
> >  	struct intel_dp *intel_dp =3D &intel_dig_port->dp;
> > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >  =

> >  	if (long_hpd && intel_dig_port->base.type =3D=3D INTEL_OUTPUT_EDP) {
> >  		/*
> > @@ -6810,6 +6824,11 @@ intel_dp_hpd_pulse(struct intel_digital_port *in=
tel_dig_port, bool long_hpd)
> >  	if (!intel_dp->is_mst) {
> >  		bool handled;
> >  =

> > +		if (is_edp_powered_off(intel_dp)) {
> =

> I would move this to the beginning of the function in the same if
> statement as the long_hpd handling:
> =

> 	if (intel_dp_is_edp(intel_dp) &&
> 	    (long_hpd || !intel_edp_have_panel_power(intel_dp)))
> =

> But makes me wonder if that should be changed to ignore all hpd from eDP
> if there's no panel power nor vdd. Ville?

From what I've seen for eDP no vdd implies HPD being deasserted, hence
there is no way to signal short HPDs after vdd has been removed (apart
from some glitchy HPD lines I guess). This case sounds like there could
be a glitch of some sort on the HPD line while it is being deasserted
and that triggers a short HPD. Either that or the panel is just stupid.

Anyways, vdd and panel power are the same thing from the panel POV, so
checking both would make sense. I can't actually imagine this even
working correctly otherwise, unless there is an actual bug in our code
and the spurious HPD only happens when we disable vdd via the state
machine rather than the override bit. So which is it?

> =

> > +			drm_info(&i915->drm, "edp panel is off, ignoring the short pulse\n"=
);
> =

> drm_dbg_kms() will be enough.
> =

> > +			return IRQ_HANDLED;
> > +		}
> > +
> >  		handled =3D intel_dp_short_pulse(intel_dp);
> >  =

> >  		if (!handled)
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
