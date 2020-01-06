Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F187E131B93
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 23:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B826E57E;
	Mon,  6 Jan 2020 22:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E3A6E4FE
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 22:38:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 14:38:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="232966752"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga002.jf.intel.com with ESMTP; 06 Jan 2020 14:38:36 -0800
Date: Mon, 6 Jan 2020 14:39:46 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200106223946.GE2608@intel.com>
References: <20200106142823.145260-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106142823.145260-1-jose.souza@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use external dependency
 loop for port sync
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

On Mon, Jan 06, 2020 at 06:28:23AM -0800, Jos=E9 Roberto de Souza wrote:
> This loop was added directly to intel_atomic_check() to be used by
> all other features that have external pipe dependencies, so using it
> and removing intel_atomic_check_synced_crtcs().
> =

> After this changes is_trans_port_sync_master() it not used anywhere,
> so removing it.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 69 +++++---------------
>  1 file changed, 17 insertions(+), 52 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index da5266e76738..f48439d7290b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -553,13 +553,6 @@ is_trans_port_sync_mode(const struct intel_crtc_stat=
e *crtc_state)
>  		crtc_state->sync_mode_slaves_mask);
>  }
>  =

> -static bool
> -is_trans_port_sync_master(const struct intel_crtc_state *crtc_state)
> -{
> -	return (crtc_state->master_transcoder =3D=3D INVALID_TRANSCODER &&
> -		crtc_state->sync_mode_slaves_mask);
> -}
> -
>  static bool
>  is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
>  {
> @@ -14370,31 +14363,6 @@ intel_modeset_synced_crtcs(struct intel_atomic_s=
tate *state,
>  	}
>  }
>  =

> -static void
> -intel_atomic_check_synced_crtcs(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_crtc_state *new_crtc_state;
> -	struct intel_crtc *crtc;
> -	int i;
> -
> -	if (INTEL_GEN(dev_priv) < 11)
> -		return;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc,
> -					 new_crtc_state, i) {
> -		if (is_trans_port_sync_master(new_crtc_state) &&
> -		    needs_modeset(new_crtc_state)) {
> -			intel_modeset_synced_crtcs(state,
> -						   new_crtc_state->sync_mode_slaves_mask);
> -		} else if (is_trans_port_sync_slave(new_crtc_state) &&
> -			   needs_modeset(new_crtc_state)) {
> -			intel_modeset_synced_crtcs(state,
> -						   BIT(new_crtc_state->master_transcoder));
> -		}
> -	}
> -}
> -
>  static int
>  intel_modeset_all_tiles(struct intel_atomic_state *state, int tile_grp_i=
d)
>  {
> @@ -14538,33 +14506,30 @@ static int intel_atomic_check(struct drm_device=
 *dev,
>  	 *
>  	 * Right now it only forces a fullmodeset when the MST master
>  	 * transcoder did not changed but the pipe of the master transcoder
> -	 * needs a fullmodeset so all slaves also needs to do a fullmodeset.
> +	 * needs a fullmodeset so all slaves also needs to do a fullmodeset or
> +	 * in case of port synced crtcs, if one of the synced crtcs
> +	 * needs a full modeset, all other synced crtcs should be
> +	 * forced a full modeset.
>  	 */
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		enum transcoder master =3D new_crtc_state->mst_master_transcoder;
> -
> -		if (!new_crtc_state->hw.enable ||
> -		    needs_modeset(new_crtc_state) ||
> -		    !intel_dp_mst_is_slave_trans(new_crtc_state))
> +		if (!new_crtc_state->hw.enable || needs_modeset(new_crtc_state))
>  			continue;
>  =

> -		if (intel_cpu_transcoder_needs_modeset(state, master)) {
> -			new_crtc_state->uapi.mode_changed =3D true;
> -			new_crtc_state->update_pipe =3D false;
> +		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
> +			enum transcoder master =3D new_crtc_state->mst_master_transcoder;
> +
> +			if (intel_cpu_transcoder_needs_modeset(state, master)) {
> +				new_crtc_state->uapi.mode_changed =3D true;
> +				new_crtc_state->update_pipe =3D false;
> +			}
> +		} else if (is_trans_port_sync_mode(new_crtc_state)) {
> +			u8 trans =3D new_crtc_state->sync_mode_slaves_mask |
> +				   BIT(new_crtc_state->master_transcoder);
> +
> +			intel_modeset_synced_crtcs(state, trans);
>  		}
>  	}
>  =

> -	/**
> -	 * In case of port synced crtcs, if one of the synced crtcs
> -	 * needs a full modeset, all other synced crtcs should be
> -	 * forced a full modeset. This checks if fastset is allowed
> -	 * by other dependencies like the synced crtcs.
> -	 * Here we set the mode_changed to true directly to force full
> -	 * modeset hence we do not explicitly call the function
> -	 * drm_atomic_helper_check_modeset().
> -	 */
> -	intel_atomic_check_synced_crtcs(state);
> -
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (needs_modeset(new_crtc_state)) {
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
