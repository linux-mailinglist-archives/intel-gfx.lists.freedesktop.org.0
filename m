Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B1A1251D5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 20:27:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB14A6EA5C;
	Wed, 18 Dec 2019 19:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023536EA5C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 19:27:45 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 11:27:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="210191457"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 18 Dec 2019 11:27:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 21:27:42 +0200
Date: Wed, 18 Dec 2019 21:27:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191218192742.GX1208@intel.com>
References: <20191218185910.303540-1-jose.souza@intel.com>
 <20191218185910.303540-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218185910.303540-3-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 3/6] drm/i915/display: Always enables MST
 master pipe first
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

On Wed, Dec 18, 2019 at 10:59:07AM -0800, Jos=E9 Roberto de Souza wrote:
> Due to DDB overlaps the pipe enabling sequence is not always crescent.
> As the previous patch selects the smallest pipe/transcoder in the MST
> stream to be master and it needs to be enabled first this changes
> were needed to guarantee that.
> =

> So first lets enable all pipes that did not needed a fullmodeset so
> it don't have any external dependency, this ones can overlap with
> each other ddb allocations.
> =

> Then on the second loop it will enable all the pipes that needs a
> modeset and don't depends on other pipes like MST master
> pipe/transcoder.
> =

> Then finally all the pipes that needs a modeset and have dependency
> on other pipes.
> =

> v3: rebased
> =

> v4:
> - added check for modeset_pipes too to decide if is necessary for a
> wait a vblank
> - added DDB allocation overlap check for pipes that needs a modeset
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 108 ++++++++++++++-----
>  1 file changed, 83 insertions(+), 25 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 59b3bfe8b721..a4f252d05b37 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14517,15 +14517,21 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
>  	u8 hw_enabled_slices =3D dev_priv->wm.skl_hw.ddb.enabled_slices;
>  	u8 required_slices =3D state->wm_results.ddb.enabled_slices;
>  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> -	u8 dirty_pipes =3D 0;
> +	const u8 num_pipes =3D INTEL_NUM_PIPES(dev_priv);
> +	u8 update_pipes =3D 0, modeset_pipes =3D 0;
>  	int i;
>  =

>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_cr=
tc_state, i) {
> +		if (!new_crtc_state->hw.active)
> +			continue;
> +
>  		/* ignore allocations for crtc's that have been turned off. */
> -		if (!needs_modeset(new_crtc_state) && new_crtc_state->hw.active)
> +		if (!needs_modeset(new_crtc_state)) {
>  			entries[i] =3D old_crtc_state->wm.skl.ddb;
> -		if (new_crtc_state->hw.active)
> -			dirty_pipes |=3D BIT(crtc->pipe);
> +			update_pipes |=3D BIT(crtc->pipe);
> +		} else {
> +			modeset_pipes |=3D BIT(modeset_pipes);
> +		}
>  	}
>  =

>  	/* If 2nd DBuf slice required, enable it here */
> @@ -14535,38 +14541,29 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
>  	/*
>  	 * Whenever the number of active pipes changes, we need to make sure we
>  	 * update the pipes in the right order so that their ddb allocations
> -	 * never overlap with eachother inbetween CRTC updates. Otherwise we'll
> +	 * never overlap with each other between CRTC updates. Otherwise we'll
>  	 * cause pipe underruns and other bad stuff.
> +	 *
> +	 * So first lets enable all pipes that did not needed a fullmodeset so
> +	 * it don't have any external dependency
>  	 */
> -	while (dirty_pipes) {
> +	while (update_pipes) {
>  		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  						    new_crtc_state, i) {
>  			enum pipe pipe =3D crtc->pipe;
> -			bool modeset =3D needs_modeset(new_crtc_state);
>  =

> -			if ((dirty_pipes & BIT(pipe)) =3D=3D 0)
> +			if ((update_pipes & BIT(pipe)) =3D=3D 0)
>  				continue;
>  =

>  			if (skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> -							entries,
> -							INTEL_NUM_PIPES(dev_priv), i))
> +							entries, num_pipes, i))
>  				continue;
>  =

>  			entries[i] =3D new_crtc_state->wm.skl.ddb;
> -			dirty_pipes &=3D ~BIT(pipe);
> -
> -			if (modeset && is_trans_port_sync_mode(new_crtc_state)) {
> -				if (is_trans_port_sync_master(new_crtc_state))
> -					intel_update_trans_port_sync_crtcs(crtc,
> -									   state,
> -									   old_crtc_state,
> -									   new_crtc_state);
> -				else
> -					continue;
> -			} else {
> -				intel_update_crtc(crtc, state, old_crtc_state,
> -						  new_crtc_state);
> -			}
> +			update_pipes &=3D ~BIT(pipe);
> +
> +			intel_update_crtc(crtc, state, old_crtc_state,
> +					  new_crtc_state);
>  =

>  			/*
>  			 * If this is an already active pipe, it's DDB changed,
> @@ -14576,11 +14573,72 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
>  			 */
>  			if (!skl_ddb_entry_equal(&new_crtc_state->wm.skl.ddb,
>  						 &old_crtc_state->wm.skl.ddb) &&
> -			    !modeset && dirty_pipes)
> +			    (update_pipes | modeset_pipes))
>  				intel_wait_for_vblank(dev_priv, pipe);
>  		}
>  	}
>  =

> +	/*
> +	 * Enabling all pipes that needs a modeset and do not depends on other
> +	 * pipes
> +	 */
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		enum pipe pipe =3D crtc->pipe;
> +
> +		if ((modeset_pipes & BIT(pipe)) =3D=3D 0)
> +			continue;
> +
> +		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
> +		    is_trans_port_sync_slave(new_crtc_state))
> +			continue;
> +
> +		WARN_ON(skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> +						    entries, num_pipes, i));
> +
> +		entries[i] =3D new_crtc_state->wm.skl.ddb;
> +		modeset_pipes &=3D ~BIT(pipe);
> +
> +		if (is_trans_port_sync_mode(new_crtc_state)) {
> +			struct intel_crtc *slave_crtc;
> +
> +			intel_update_trans_port_sync_crtcs(crtc, state,
> +							   old_crtc_state,
> +							   new_crtc_state);
> +
> +			slave_crtc =3D intel_get_slave_crtc(new_crtc_state);
> +			/* TODO: update entries[] of slave */
> +			modeset_pipes &=3D ~BIT(slave_crtc->pipe);

OK. So we clear the bit for both master+slave at the same time. Should
work and not trip un the WARN at the end (assuming both have their
modeset properly flagged).

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
> +		} else {
> +			intel_update_crtc(crtc, state, old_crtc_state,
> +					  new_crtc_state);
> +		}
> +	}
> +
> +	/*
> +	 * Finally enable all pipes that needs a modeset and depends on
> +	 * other pipes, right now it is only MST slaves as both port sync slave
> +	 * and master are enabled together
> +	 */
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		enum pipe pipe =3D crtc->pipe;
> +
> +		if ((modeset_pipes & BIT(pipe)) =3D=3D 0)
> +			continue;
> +
> +		WARN_ON(skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> +						    entries, num_pipes, i));
> +
> +		entries[i] =3D new_crtc_state->wm.skl.ddb;
> +		modeset_pipes &=3D ~BIT(pipe);
> +
> +		intel_update_crtc(crtc, state, old_crtc_state, new_crtc_state);
> +	}
> +
> +	WARN_ON(modeset_pipes);
> +
>  	/* If 2nd DBuf slice is no more required disable it */
>  	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices < hw_enabled_slices)
>  		icl_dbuf_slices_update(dev_priv, required_slices);
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
