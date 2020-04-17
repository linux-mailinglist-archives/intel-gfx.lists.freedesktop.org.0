Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 554B91AE646
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996C46E13C;
	Fri, 17 Apr 2020 19:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30DE6E13C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:52:02 +0000 (UTC)
IronPort-SDR: YaRf54znrGK4yEBob1+/pvlexss9jEfIuBvLeQ2yYiCpAzBURwnfJRHxTGCvHrTUwfaEorOk9C
 SunCxN0AXW/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 12:52:02 -0700
IronPort-SDR: ziUMXjG4moNKFj1YXWZ867MWvZ3MD6wCIRgA9uSjn8EJoHor65x42KhpjL26xUluE4KoPu0RSr
 FY0++D0LXMng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="299700359"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 Apr 2020 12:51:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Apr 2020 22:51:59 +0300
Date: Fri, 17 Apr 2020 22:51:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20200417195158.GU6112@intel.com>
References: <20200417152734.464-1-ville.syrjala@linux.intel.com>
 <20200417152734.464-2-ville.syrjala@linux.intel.com>
 <e4b4d38ede3548f1c4c0b78fa67bcf0cf562cba7.camel@redhat.com>
 <20200417192025.GT6112@intel.com>
 <45bf50d929f1af65e22094fc03ef826d5e3e0e2a.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45bf50d929f1af65e22094fc03ef826d5e3e0e2a.camel@redhat.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Push MST link retraining to
 the hotplug work
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

On Fri, Apr 17, 2020 at 03:23:20PM -0400, Lyude Paul wrote:
> On Fri, 2020-04-17 at 22:20 +0300, Ville Syrj=E4l=E4 wrote:
> > On Fri, Apr 17, 2020 at 02:50:39PM -0400, Lyude Paul wrote:
> > > On Fri, 2020-04-17 at 18:27 +0300, Ville Syrjala wrote:
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > =

> > > > We shouldn't try to do link retraining from the short hpd handler.
> > > > We can't take any modeset locks there so this is racy as hell.
> > > > Push the whole thing into the hotplug work like we do with SST.
> > > > =

> > > > We'll just have to adjust the SST retraining code to deal with
> > > > the MST encoders and multiple pipes.
> > > > =

> > > > TODO: I have a feeling we should just rip this all out and
> > > > do a full modeset instead. Stuff like port sync and the tgl+
> > > > MST master transcoder stuff maybe doesn't work well if we
> > > > try to retrain without following the proper modeset sequence.
> > > > So far haven't done any actual tests to confirm that though.
> > > =

> > > To answer your feeling here: yes-we should, I have some branches for =
doing
> > > this sort of thing with i915 but they are ancient at this point. Once=
 I
> > > get to
> > > fallback link retraining we should be able to use this in i915 to han=
dle
> > > figuring out what all needs to be reset for an MST training.
> > =

> > Not sure what else we'd have to do but set connectors_changed=3Dtrue on
> > all the relevant connectors and commit.
> =

> Well that's all that needs to be done in this patch, since it only handle=
s the
> case where we need to retrain the link at the same link rate as before. On
> hardware that ends up having a lower link rate then it reported though (I=
've
> unfortunately seen this happen with some DP concentrators + MST hubs), we=
'd
> also need to go through and recalculate the bandwidth requirements for ea=
ch
> connector on the topology to figure out if they need to have their display
> configuration changed (and as such-we would set link_status=3Dbad) or not=
 in
> order to fit in the new bw constraints

Yeah, the whole MST bandwidth calculation is currently non-existent,
which is why I had to revert the deep color stuff for MST. So far my =

simplistic plan for that (should I ever get to it), would be to just
cap the bpp across all streams, then keep looping the state computation
while reducing the bpp cap until everything fits. Not entirely optimal
in all cases but should work and should be pretty easy to implement.

And as far as training at a lower clock/lanes, we should have the driver
provide that information to the topology mgr. Currently it just assumes
it can use as much as the DPCD caps indicate. With that the reduction
stuff i915 already does for SST should just work (tm).

> > =

> > > fwiw - If you have some need for fallback link retraining soon I can =
move
> > > it
> > > up on my todo list for MST. I've got the hard design parts already fi=
gured
> > > out
> > > from the last time I tried implementing it, so writing new patches
> > > shouldn't
> > > be too difficult.
> > > =

> > > (note - this patch is still worth merging I'd imagine, since this loo=
ks
> > > like
> > > it should at least handle retraining an MST topology at the same link=
 rate
> > > just fine)
> > > =

> > > > Cc: Lyude Paul <lyude@redhat.com>
> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 165 ++++++++++++++++++--=
----
> > > >  1 file changed, 122 insertions(+), 43 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 4d4898db38e9..556371338aa9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -5628,6 +5628,7 @@ static int
> > > >  intel_dp_check_mst_status(struct intel_dp *intel_dp)
> > > >  {
> > > >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > +	bool need_retrain =3D false;
> > > >  =

> > > >  	if (!intel_dp->is_mst)
> > > >  		return -EINVAL;
> > > > @@ -5647,16 +5648,11 @@ intel_dp_check_mst_status(struct intel_dp
> > > > *intel_dp)
> > > >  		}
> > > >  =

> > > >  		/* check link status - esi[10] =3D 0x200c */
> > > > -		/*
> > > > -		 * FIXME kill this and use the SST retraining approach
> > > > -		 * for MST as well.
> > > > -		 */
> > > > -		if (intel_dp->active_mst_links > 0 &&
> > > > +		if (intel_dp->active_mst_links > 0 && !need_retrain &&
> > > >  		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
> > > >  			drm_dbg_kms(&i915->drm,
> > > >  				    "channel EQ not ok, retraining\n");
> > > > -			intel_dp_start_link_train(intel_dp);
> > > > -			intel_dp_stop_link_train(intel_dp);
> > > > +			need_retrain =3D true;
> > > >  		}
> > > >  =

> > > >  		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
> > > > @@ -5676,7 +5672,7 @@ intel_dp_check_mst_status(struct intel_dp
> > > > *intel_dp)
> > > >  		}
> > > >  	}
> > > >  =

> > > > -	return 0;
> > > > +	return need_retrain;
> > > >  }
> > > >  =

> > > >  static bool
> > > > @@ -5713,20 +5709,102 @@ intel_dp_needs_link_retrain(struct intel_dp
> > > > *intel_dp)
> > > >  	return !drm_dp_channel_eq_ok(link_status, intel_dp->lane_count);
> > > >  }
> > > >  =

> > > > +static bool intel_dp_has_connector(struct intel_dp *intel_dp,
> > > > +				   const struct drm_connector_state
> > > > *conn_state)
> > > > +{
> > > > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > +	struct intel_encoder *encoder;
> > > > +	enum pipe pipe;
> > > > +
> > > > +	if (!conn_state->best_encoder)
> > > > +		return false;
> > > > +
> > > > +	/* SST */
> > > > +	encoder =3D &dp_to_dig_port(intel_dp)->base;
> > > > +	if (conn_state->best_encoder =3D=3D &encoder->base)
> > > > +		return true;
> > > > +
> > > > +	/* MST */
> > > > +	for_each_pipe(i915, pipe) {
> > > > +		encoder =3D &intel_dp->mst_encoders[pipe]->base;
> > > > +		if (conn_state->best_encoder =3D=3D &encoder->base)
> > > > +			return true;
> > > > +	}
> > > > +
> > > > +	return false;
> > > > +}
> > > > +
> > > > +static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
> > > > +				      struct drm_modeset_acquire_ctx *ctx,
> > > > +				      u32 *crtc_mask)
> > > > +{
> > > > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > +	struct drm_connector_list_iter conn_iter;
> > > > +	struct intel_connector *connector;
> > > > +	int ret =3D 0;
> > > > +
> > > > +	*crtc_mask =3D 0;
> > > > +
> > > > +	if (!intel_dp_needs_link_retrain(intel_dp))
> > > > +		return 0;
> > > > +
> > > > +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> > > > +	for_each_intel_connector_iter(connector, &conn_iter) {
> > > > +		struct drm_connector_state *conn_state =3D
> > > > +			connector->base.state;
> > > > +		struct intel_crtc_state *crtc_state;
> > > > +		struct intel_crtc *crtc;
> > > > +
> > > > +		if (!intel_dp_has_connector(intel_dp, conn_state))
> > > > +			continue;
> > > > +
> > > > +		crtc =3D to_intel_crtc(conn_state->crtc);
> > > > +		if (!crtc)
> > > > +			continue;
> > > > +
> > > > +		ret =3D drm_modeset_lock(&crtc->base.mutex, ctx);
> > > > +		if (ret)
> > > > +			break;
> > > > +
> > > > +		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > > +
> > > > +		drm_WARN_ON(&i915->drm,
> > > > !intel_crtc_has_dp_encoder(crtc_state));
> > > > +
> > > > +		if (!crtc_state->hw.active)
> > > > +			continue;
> > > > +
> > > > +		if (conn_state->commit &&
> > > > +		    !try_wait_for_completion(&conn_state->commit->hw_done))
> > > > +			continue;
> > > > +
> > > > +		*crtc_mask |=3D drm_crtc_mask(&crtc->base);
> > > > +	}
> > > > +	drm_connector_list_iter_end(&conn_iter);
> > > > +
> > > > +	if (!intel_dp_needs_link_retrain(intel_dp))
> > > > +		*crtc_mask =3D 0;
> > > =

> > > Also fwiw ^ this is the kind of logic I was thinking for the MST help=
ers
> > > (e.g.
> > > having helpers (+ setting link_status for each affected connector, et=
c.
> > > et.).
> > > again though-it's fine if this stays in i915 for now, but we should m=
ove
> > > it in
> > > the future.
> > > =

> > > > +
> > > > +	return ret;
> > > > +}
> > > > +
> > > > +static bool intel_dp_is_connected(struct intel_dp *intel_dp)
> > > > +{
> > > > +	struct intel_connector *connector =3D intel_dp->attached_connecto=
r;
> > > > +
> > > > +	return connector->base.status =3D=3D connector_status_connected ||
> > > > +		intel_dp->is_mst;
> > > > +}
> > > > +
> > > >  int intel_dp_retrain_link(struct intel_encoder *encoder,
> > > >  			  struct drm_modeset_acquire_ctx *ctx)
> > > >  {
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > > > -	struct intel_connector *connector =3D intel_dp->attached_connecto=
r;
> > > > -	struct drm_connector_state *conn_state;
> > > > -	struct intel_crtc_state *crtc_state;
> > > >  	struct intel_crtc *crtc;
> > > > +	u32 crtc_mask;
> > > >  	int ret;
> > > >  =

> > > > -	/* FIXME handle the MST connectors as well */
> > > > -
> > > > -	if (!connector || connector->base.status !=3D
> > > > connector_status_connected)
> > > > +	if (!intel_dp_is_connected(intel_dp))
> > > >  		return 0;
> > > >  =

> > > >  	ret =3D drm_modeset_lock(&dev_priv->drm.mode_config.connection_mu=
tex,
> > > > @@ -5734,46 +5812,42 @@ int intel_dp_retrain_link(struct intel_enco=
der
> > > > *encoder,
> > > >  	if (ret)
> > > >  		return ret;
> > > >  =

> > > > -	conn_state =3D connector->base.state;
> > > > -
> > > > -	crtc =3D to_intel_crtc(conn_state->crtc);
> > > > -	if (!crtc)
> > > > -		return 0;
> > > > -
> > > > -	ret =3D drm_modeset_lock(&crtc->base.mutex, ctx);
> > > > +	ret =3D intel_dp_prep_link_retrain(intel_dp, ctx, &crtc_mask);
> > > >  	if (ret)
> > > >  		return ret;
> > > >  =

> > > > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > > -
> > > > -	drm_WARN_ON(&dev_priv->drm, !intel_crtc_has_dp_encoder(crtc_state=
));
> > > > -
> > > > -	if (!crtc_state->hw.active)
> > > > +	if (crtc_mask =3D=3D 0)
> > > >  		return 0;
> > > >  =

> > > > -	if (conn_state->commit &&
> > > > -	    !try_wait_for_completion(&conn_state->commit->hw_done))
> > > > -		return 0;
> > > > +	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link\n",
> > > > +		    encoder->base.base.id, encoder->base.name);
> > > >  =

> > > > -	if (!intel_dp_needs_link_retrain(intel_dp))
> > > > -		return 0;
> > > > +	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> > > > +		const struct intel_crtc_state *crtc_state =3D
> > > > +			to_intel_crtc_state(crtc->base.state);
> > > >  =

> > > > -	/* Suppress underruns caused by re-training */
> > > > -	intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false=
);
> > > > -	if (crtc_state->has_pch_encoder)
> > > > -		intel_set_pch_fifo_underrun_reporting(dev_priv,
> > > > -						      intel_crtc_pch_transcode
> > > > r(crtc), false);
> > > > +		/* Suppress underruns caused by re-training */
> > > > +		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe,
> > > > false);
> > > > +		if (crtc_state->has_pch_encoder)
> > > > +			intel_set_pch_fifo_underrun_reporting(dev_priv,
> > > > +							      intel_crtc_pch_t
> > > > ranscoder(crtc), false);
> > > > +	}
> > > >  =

> > > >  	intel_dp_start_link_train(intel_dp);
> > > >  	intel_dp_stop_link_train(intel_dp);
> > > >  =

> > > > -	/* Keep underrun reporting disabled until things are stable */
> > > > -	intel_wait_for_vblank(dev_priv, crtc->pipe);
> > > > +	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
> > > > +		const struct intel_crtc_state *crtc_state =3D
> > > > +			to_intel_crtc_state(crtc->base.state);
> > > >  =

> > > > -	intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
> > > > -	if (crtc_state->has_pch_encoder)
> > > > -		intel_set_pch_fifo_underrun_reporting(dev_priv,
> > > > -						      intel_crtc_pch_transcode
> > > > r(crtc), true);
> > > > +		/* Keep underrun reporting disabled until things are stable */
> > > > +		intel_wait_for_vblank(dev_priv, crtc->pipe);
> > > > +
> > > > +		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe,
> > > > true);
> > > > +		if (crtc_state->has_pch_encoder)
> > > > +			intel_set_pch_fifo_underrun_reporting(dev_priv,
> > > > +							      intel_crtc_pch_t
> > > > ranscoder(crtc), true);
> > > > +	}
> > > >  =

> > > >  	return 0;
> > > >  }
> > > > @@ -7415,7 +7489,8 @@ intel_dp_hpd_pulse(struct intel_digital_port
> > > > *intel_dig_port, bool long_hpd)
> > > >  	}
> > > >  =

> > > >  	if (intel_dp->is_mst) {
> > > > -		if (intel_dp_check_mst_status(intel_dp) =3D=3D -EINVAL) {
> > > > +		switch (intel_dp_check_mst_status(intel_dp)) {
> > > > +		case -EINVAL:
> > > >  			/*
> > > >  			 * If we were in MST mode, and device is not
> > > >  			 * there, get out of MST mode
> > > > @@ -7429,6 +7504,10 @@ intel_dp_hpd_pulse(struct intel_digital_port
> > > > *intel_dig_port, bool long_hpd)
> > > >  							intel_dp->is_mst);
> > > >  =

> > > >  			return IRQ_NONE;
> > > > +		case 1:
> > > > +			return IRQ_NONE;
> > > > +		default:
> > > > +			break;
> > > >  		}
> > > >  	}
> > > >  =

> > > -- =

> > > Cheers,
> > > 	Lyude Paul (she/her)
> > > 	Associate Software Engineer at Red Hat
> -- =

> Cheers,
> 	Lyude Paul (she/her)
> 	Associate Software Engineer at Red Hat

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
