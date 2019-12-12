Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB37A11D879
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 22:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7B96E1F3;
	Thu, 12 Dec 2019 21:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AB0C6E1F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 21:22:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 13:22:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="208234244"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 Dec 2019 13:21:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Dec 2019 23:21:57 +0200
Date: Thu, 12 Dec 2019 23:21:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191212212157.GV1208@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
 <20191211184526.142413-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211184526.142413-8-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 rebased 08/11] drm/i915/display: Always
 enables MST master pipe first
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

On Wed, Dec 11, 2019 at 10:45:23AM -0800, Jos=E9 Roberto de Souza wrote:
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

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 77 ++++++++++++++------
>  1 file changed, 56 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1cecce2f54f8..fa58b396e084 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14566,18 +14566,24 @@ static void skl_commit_modeset_enables(struct i=
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
>  	do {
>  		progress =3D false;
>  =

> -		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_c=
rtc_state, i) {
> -			enum pipe pipe =3D crtc->pipe;
> -			bool vbl_wait =3D false;
> -			bool modeset =3D needs_modeset(new_crtc_state);
> +		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +						    new_crtc_state, i) {
> +			bool vbl_wait;
> +
> +			if (updated & BIT(crtc->pipe) ||
> +			    !new_crtc_state->hw.active)
> +				continue;
>  =

> -			if (updated & BIT(crtc->pipe) || !new_crtc_state->hw.active)
> +			if (needs_modeset(new_crtc_state))
>  				continue;
>  =

>  			if (skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> @@ -14585,7 +14591,7 @@ static void skl_commit_modeset_enables(struct int=
el_atomic_state *state)
>  							INTEL_NUM_PIPES(dev_priv), i))
>  				continue;
>  =

> -			updated |=3D BIT(pipe);
> +			updated |=3D BIT(crtc->pipe);
>  			entries[i] =3D new_crtc_state->wm.skl.ddb;
>  =

>  			/*
> @@ -14596,30 +14602,59 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
>  			 */
>  			if (!skl_ddb_entry_equal(&new_crtc_state->wm.skl.ddb,
>  						 &old_crtc_state->wm.skl.ddb) &&
> -			    !modeset &&
>  			    state->wm_results.dirty_pipes !=3D updated)

I have a feeling this part is already broken. However I just pushed the
patch to change this to a local dirty_pipes mask. I think what we could
now do on top is split that into eg. update_pipes+modeset_pipes
bitmasks.

Then the first loop just does its thing until update_pipes is
empty. And this check here we can replace with just something like:

if (!ddb_equal() &&
    (update_pipes | modeset_pipes) !=3D 0)

And throw out all modeset checks here because we've already
encoded that in update_pipes vs. modeset_pipes.

>  				vbl_wait =3D true;
>  =

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
> +			intel_update_crtc(crtc, state, old_crtc_state,
> +					  new_crtc_state);
>  =

>  			if (vbl_wait)
> -				intel_wait_for_vblank(dev_priv, pipe);
> +				intel_wait_for_vblank(dev_priv, crtc->pipe);
>  =

>  			progress =3D true;
>  		}
>  	} while (progress);
>  =

> +	/*
> +	 * Enabling all pipes that needs a modeset and do not depends on other
> +	 * pipes
> +	 */
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (updated & BIT(crtc->pipe) || !new_crtc_state->hw.active)
> +			continue;
> +
> +		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
> +		    is_trans_port_sync_slave(new_crtc_state))
> +			continue;
> +
> +		updated |=3D BIT(crtc->pipe);

I think we should update entries[] still in these lopps + WARN_ON(ddb_overl=
aps).

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
> +		if (updated & BIT(crtc->pipe) || !new_crtc_state->hw.active)
> +			continue;
> +
> +		if (is_trans_port_sync_slave(new_crtc_state))
> +			continue;
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
