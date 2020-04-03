Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BC819DCB1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0266EC36;
	Fri,  3 Apr 2020 17:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C775C6EC36
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 17:25:47 +0000 (UTC)
IronPort-SDR: IPdqUxBOEOMUYYiS9kauL0Rndw1Wu9mb5J9h14BuI6Tt84xNF2LRhpPtC/y6AUzfEaPID7HBp/
 DSwNLuC/O9og==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 10:25:47 -0700
IronPort-SDR: 5Y+KcHNRpMqoYYmazTdmvgqI220avKtdJiUhOqJmA4W0w85j82k+4SO4olUzMeKx72dXroxZQ2
 x5q9Fh13jaJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,340,1580803200"; d="scan'208";a="243510783"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 03 Apr 2020 10:25:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Apr 2020 20:25:44 +0300
Date: Fri, 3 Apr 2020 20:25:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200403172544.GA6112@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-11-ville.syrjala@linux.intel.com>
 <506b065f05fc3ecebd95544e6bcb043d525003b1.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <506b065f05fc3ecebd95544e6bcb043d525003b1.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915: Fix port sync code to work
 with >2 pipes
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

On Fri, Apr 03, 2020 at 12:32:20AM +0000, Souza, Jose wrote:
> On Fri, 2020-03-13 at 18:48 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Don't assume there is just one port sync slave. We might have
> > several.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 98 ++++++++++------
> > ----
> >  1 file changed, 49 insertions(+), 49 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index b56a5a49418f..33f38c8a5da4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -15009,18 +15009,6 @@ static void intel_update_crtc(struct
> > intel_atomic_state *state,
> >  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
> >  }
> >  =

> > -static struct intel_crtc *intel_get_slave_crtc(const struct
> > intel_crtc_state *new_crtc_state)
> > -{
> > -	struct drm_i915_private *dev_priv =3D to_i915(new_crtc_state-
> > >uapi.crtc->dev);
> > -	enum transcoder slave_transcoder;
> > -
> > -	drm_WARN_ON(&dev_priv->drm,
> > -		    !is_power_of_2(new_crtc_state-
> > >sync_mode_slaves_mask));
> > -
> > -	slave_transcoder =3D ffs(new_crtc_state->sync_mode_slaves_mask) -
> > 1;
> > -	return intel_get_crtc_for_pipe(dev_priv,
> > -				       (enum pipe)slave_transcoder);
> > -}
> >  =

> >  static void intel_old_crtc_state_disables(struct intel_atomic_state
> > *state,
> >  					  struct intel_crtc_state
> > *old_crtc_state,
> > @@ -15109,8 +15097,8 @@ static void
> > intel_commit_modeset_enables(struct intel_atomic_state *state)
> >  	}
> >  }
> >  =

> > -static void intel_set_dp_tp_ctl_normal(struct intel_crtc *crtc,
> > -				       struct intel_atomic_state
> > *state)
> > +static void intel_set_dp_tp_ctl_normal(struct intel_atomic_state
> > *state,
> > +				       struct intel_crtc *crtc)
> >  {
> >  	struct drm_connector *uninitialized_var(conn);
> >  	struct drm_connector_state *conn_state;
> > @@ -15125,45 +15113,55 @@ static void
> > intel_set_dp_tp_ctl_normal(struct intel_crtc *crtc,
> >  	intel_dp_stop_link_train(intel_dp);
> >  }
> >  =

> > -static void intel_update_trans_port_sync_crtcs(struct intel_crtc
> > *crtc,
> > -					       struct
> > intel_atomic_state *state,
> > -					       struct intel_crtc_state
> > *old_crtc_state,
> > -					       struct intel_crtc_state
> > *new_crtc_state)
> > +static void intel_update_trans_port_sync_crtcs(struct
> > intel_atomic_state *state,
> > +					       struct intel_crtc *crtc)
> >  {
> > -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > -	struct intel_crtc *slave_crtc =3D
> > intel_get_slave_crtc(new_crtc_state);
> > -	struct intel_crtc_state *new_slave_crtc_state =3D
> > -		intel_atomic_get_new_crtc_state(state, slave_crtc);
> > -	struct intel_crtc_state *old_slave_crtc_state =3D
> > -		intel_atomic_get_old_crtc_state(state, slave_crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> > +	const struct intel_crtc_state *new_slave_crtc_state;
> > +	const struct intel_crtc_state *new_crtc_state;
> > +	struct intel_crtc *slave_crtc;
> > +	int i;
> >  =

> > -	drm_WARN_ON(&i915->drm, !slave_crtc || !new_slave_crtc_state ||
> > -		    !old_slave_crtc_state);
> > +	for_each_new_intel_crtc_in_state(state, slave_crtc,
> > +					 new_slave_crtc_state, i) {
> > +		if (new_slave_crtc_state->master_transcoder !=3D
> > +		    new_crtc_state->cpu_transcoder)
> =

> Missing new_crtc_state initialization.

Whoops. Fixed.

> =

> With that:
> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>
<snip>
> > -			/* TODO: update entries[] of slave */
> > -			modeset_pipes &=3D ~BIT(slave_crtc->pipe);
> > +			for_each_new_intel_crtc_in_state(state,
> > slave_crtc,
> > +							 new_slave_crtc
> > _state, i) {
> >  =

> > +				/* TODO: update entries[] of slave */
> > +				modeset_pipes &=3D ~BIT(slave_crtc-
> > >pipe);

Noticed another problem here. Instead of clearing modeset_pipes for
the slaves of the current crtc we clear it for all crtcs. Fixed to do
the same master_transcoder check as above.

> > +			}
> >  		} else {
> >  			intel_enable_crtc(state, crtc);
> >  			intel_update_crtc(state, crtc);

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
