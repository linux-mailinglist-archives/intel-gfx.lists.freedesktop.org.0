Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 245E3124E1D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:43:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866BF6E907;
	Wed, 18 Dec 2019 16:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FC86E907
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:43:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:43:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="217907533"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 18 Dec 2019 08:43:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 18:43:44 +0200
Date: Wed, 18 Dec 2019 18:43:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191218164344.GN1208@intel.com>
References: <20191216220742.34332-1-jose.souza@intel.com>
 <20191216220742.34332-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216220742.34332-8-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 08/11] drm/i915/display: Always enables
 MST master pipe first
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

On Mon, Dec 16, 2019 at 02:07:39PM -0800, Jos=E9 Roberto de Souza wrote:
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

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 88 +++++++++++++++-----
>  1 file changed, 65 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e976f82a0db7..176e31de68e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14553,15 +14553,20 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
>  	u8 hw_enabled_slices =3D dev_priv->wm.skl_hw.ddb.enabled_slices;
>  	u8 required_slices =3D state->wm_results.ddb.enabled_slices;
>  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> -	u8 dirty_pipes =3D 0;
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
> @@ -14571,16 +14576,18 @@ static void skl_commit_modeset_enables(struct i=
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
> @@ -14589,20 +14596,10 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
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
> @@ -14612,11 +14609,56 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
>  			 */
>  			if (!skl_ddb_entry_equal(&new_crtc_state->wm.skl.ddb,
>  						 &old_crtc_state->wm.skl.ddb) &&
> -			    !modeset && dirty_pipes)
> +			    update_pipes)

Needs to be update_pipes|modeset_pipes.

>  				intel_wait_for_vblank(dev_priv, pipe);
> +

Extra newline.

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
> +		modeset_pipes &=3D ~BIT(pipe);
> +
> +		if (is_trans_port_sync_mode(new_crtc_state))
> +			intel_update_trans_port_sync_crtcs(crtc, state,
> +							   old_crtc_state,
> +							   new_crtc_state);
> +		else
> +			intel_update_crtc(crtc, state, old_crtc_state,
> +					  new_crtc_state);
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
> +		if (is_trans_port_sync_slave(new_crtc_state))
> +			continue;

If we clear the modeset_pipes bit for these in the previous loop we
could avoid this check here entirely.

Still missing the DDB overlap WARNs that I think would be good to
have in these two enable loops.

Looks nice otherwise.

> +
> +		intel_update_crtc(crtc, state, old_crtc_state, new_crtc_state);
> +	}
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
