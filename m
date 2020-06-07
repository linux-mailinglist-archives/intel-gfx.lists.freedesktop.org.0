Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA261F105C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 01:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD9C6E151;
	Sun,  7 Jun 2020 23:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7F66E151
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 23:15:15 +0000 (UTC)
IronPort-SDR: qPevNJCuTYWLOhW2a10SGmWcyXxRn1DGt1v+LQpvQQlhVmzD1YnRNWlEZ96+/+eN7VS5pVWnWo
 5MekoJM9geWA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2020 16:15:13 -0700
IronPort-SDR: Wh0xc1bNbNyirbPcB1sALlzDBxTPHx8dtStLDSqwYxdfZyHBZq590J/QqRzGHhxujI5/R2MeyG
 x/Oz3IeWG85w==
X-IronPort-AV: E=Sophos;i="5.73,485,1583222400"; d="scan'208";a="446539223"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2020 16:15:12 -0700
Date: Mon, 8 Jun 2020 02:15:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200607231505.GA18231@ideak-desk.fi.intel.com>
References: <20200604184500.23730-1-imre.deak@intel.com>
 <20200605094801.17709-1-imre.deak@intel.com>
 <854f3594de3a7531eb4e4fa1cf4449bcd7b02dea.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <854f3594de3a7531eb4e4fa1cf4449bcd7b02dea.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH RESEND v3 1/3] drm/i915/dp_mst: Fix
 disabling MST on a port
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 08, 2020 at 01:11:44AM +0300, Souza, Jose wrote:
> On Fri, 2020-06-05 at 12:48 +0300, Imre Deak wrote:
> > Currently MST on a port can get enabled/disabled from the hotplug work
> > and get disabled from the short pulse work in a racy way. Fix this by
> > relying on the MST state checking in the hotplug work and just schedule
> > a hotplug work from the short pulse handler if some problem happened
> > during the MST interrupt handling.
> > =

> > This removes the explicit MST disabling in case of an AUX failure, but
> > if AUX fails, then probably the detection will also fail during the
> > scheduled hotplug work and it's not guaranteed that we'll see
> > intermittent errors anyway.
> > =

> > While at it also simplify the error checking of the MST interrupt
> > handler.
> > =

> > v2:
> > - Convert intel_dp_check_mst_status() to return bool. (Ville)
> > - Change the intel_dp->is_mst check to an assert, since after this patch
> >   the condition can't change after we checked it previously.
> > - Document the return value from intel_dp_check_mst_status().
> > v3:
> > - Remove the intel_dp->is_mst check from intel_dp_check_mst_status().
> >   There is no point in checking the same condition twice, even though
> >   there is a chance that the hotplug work running concurrently changes
> >   it.
> > =

> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com> (v1)
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 66 ++++++++++---------------
> >  1 file changed, 26 insertions(+), 40 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 55fda074c0ad..42589cae766d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5556,35 +5556,46 @@ static void intel_dp_handle_test_request(struct=
 intel_dp *intel_dp)
> >  			    "Could not write test response to sink\n");
> >  }
> >  =

> > -static int
> > +/**
> > + * intel_dp_check_mst_status - service any pending MST interrupts, che=
ck link status
> > + * @intel_dp: Intel DP struct
> > + *
> > + * Read any pending MST interrupts, call MST core to handle these and =
ack the
> > + * interrupts. Check if the main and AUX link state is ok.
> > + *
> > + * Returns:
> > + * - %true if pending interrupts were serviced (or no interrupts were
> > + *   pending) w/o detecting an error condition.
> > + * - %false if an error condition - like AUX failure or a loss of link=
 - is
> > + *   detected, which needs servicing from the hotplug work.
> > + */
> > +static bool
> >  intel_dp_check_mst_status(struct intel_dp *intel_dp)
> >  {
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > -	bool need_retrain =3D false;
> > -
> > -	if (!intel_dp->is_mst)
> > -		return -EINVAL;
> > +	bool link_ok =3D true;
> >  =

> >  	drm_WARN_ON_ONCE(&i915->drm, intel_dp->active_mst_links < 0);
> >  =

> >  	for (;;) {
> >  		u8 esi[DP_DPRX_ESI_LEN] =3D {};
> > -		bool bret, handled;
> > +		bool handled;
> >  		int retry;
> >  =

> > -		bret =3D intel_dp_get_sink_irq_esi(intel_dp, esi);
> > -		if (!bret) {
> > +		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
> >  			drm_dbg_kms(&i915->drm,
> >  				    "failed to get ESI - device may have failed\n");
> > -			return -EINVAL;
> > +			link_ok =3D false;
> > +
> > +			break;
> >  		}
> >  =

> >  		/* check link status - esi[10] =3D 0x200c */
> > -		if (intel_dp->active_mst_links > 0 && !need_retrain &&
> > +		if (intel_dp->active_mst_links > 0 && link_ok &&
> >  		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
> >  			drm_dbg_kms(&i915->drm,
> >  				    "channel EQ not ok, retraining\n");
> > -			need_retrain =3D true;
> > +			link_ok =3D false;
> >  		}
> >  =

> >  		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
> > @@ -5604,7 +5615,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_=
dp)
> >  		}
> >  	}
> >  =

> > -	return need_retrain;
> > +	return link_ok;
> >  }
> >  =

> >  static bool
> > @@ -7255,35 +7266,10 @@ intel_dp_hpd_pulse(struct intel_digital_port *i=
ntel_dig_port, bool long_hpd)
> >  	}
> >  =

> >  	if (intel_dp->is_mst) {
> > -		switch (intel_dp_check_mst_status(intel_dp)) {
> > -		case -EINVAL:
> > -			/*
> > -			 * If we were in MST mode, and device is not
> > -			 * there, get out of MST mode
> > -			 */
> > -			drm_dbg_kms(&i915->drm,
> > -				    "MST device may have disappeared %d vs %d\n",
> > -				    intel_dp->is_mst,
> > -				    intel_dp->mst_mgr.mst_state);
> > -			intel_dp->is_mst =3D false;
> > -			drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> > -							intel_dp->is_mst);
> > -
> > -			return IRQ_NONE;
> > -		case 1:
> > -			return IRQ_NONE;
> > -		default:
> > -			break;
> > -		}
> > -	}
> > -
> > -	if (!intel_dp->is_mst) {
> > -		bool handled;
> > -
> > -		handled =3D intel_dp_short_pulse(intel_dp);
> > -
> > -		if (!handled)
> > +		if (!intel_dp_check_mst_status(intel_dp))
> >  			return IRQ_NONE;
> > +	} else if (!intel_dp_short_pulse(intel_dp)) {
> > +		return IRQ_NONE;
> >  	}
> >  =

> =

> Now it don't need the braces but this is minor.

Without the braces it wouldn't be correct.

> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> >  	return IRQ_HANDLED;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
