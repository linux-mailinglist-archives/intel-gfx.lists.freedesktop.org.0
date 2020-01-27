Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DB614A723
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 16:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 624686E02F;
	Mon, 27 Jan 2020 15:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A786E02F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 15:25:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 07:25:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="217304195"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 07:25:24 -0800
Date: Mon, 27 Jan 2020 17:25:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200127152516.GD2730@ideak-desk.fi.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-17-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-17-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 15/17] drm/i915: Introduce
 intel_calc_active_pipes()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 20, 2020 at 07:47:26PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Extract a small helper to compute the active pipes bitmask
> based on the old bitmask + the crtcs in the atomic state.
> I want to decouple the cdclk state entirely from the current
> global state so I want to track the active pipes also inside
> the (to be introduced) full cdclk state.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 34 ++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_display.h |  3 ++
>  2 files changed, 23 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f5396c5c00c6..dc767efffd9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14359,26 +14359,32 @@ static int hsw_mode_set_planes_workaround(struc=
t intel_atomic_state *state)
>  	return 0;
>  }
>  =

> +u8 intel_calc_active_pipes(struct intel_atomic_state *state,
> +			   u8 active_pipes)
> +{
> +	const struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		if (crtc_state->hw.active)
> +			active_pipes |=3D BIT(crtc->pipe);
> +		else
> +			active_pipes &=3D ~BIT(crtc->pipe);
> +	}
> +
> +	return active_pipes;
> +}
> +
>  static int intel_modeset_checks(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> -	struct intel_crtc *crtc;
> -	int ret, i;
> +	int ret;
>  =

>  	state->modeset =3D true;
> -	state->active_pipes =3D dev_priv->active_pipes;
> +	state->active_pipes =3D intel_calc_active_pipes(state, dev_priv->active=
_pipes);
>  =

> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> -		if (new_crtc_state->hw.active)
> -			state->active_pipes |=3D BIT(crtc->pipe);
> -		else
> -			state->active_pipes &=3D ~BIT(crtc->pipe);
> -
> -		if (old_crtc_state->hw.active !=3D new_crtc_state->hw.active)
> -			state->active_pipe_changes |=3D BIT(crtc->pipe);
> -	}
> +	state->active_pipe_changes =3D state->active_pipes ^ dev_priv->active_p=
ipes;
>  =

>  	if (state->active_pipe_changes) {
>  		ret =3D _intel_atomic_lock_global_state(state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 028aab728514..e2de0d9d22bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -44,6 +44,7 @@ struct drm_modeset_acquire_ctx;
>  struct drm_plane;
>  struct drm_plane_state;
>  struct i915_ggtt_view;
> +struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_digital_port;
> @@ -469,6 +470,8 @@ enum phy_fia {
>  			     ((connector) =3D to_intel_connector((__state)->base.connectors[_=
_i].ptr), \
>  			     (new_connector_state) =3D to_intel_digital_connector_state((__st=
ate)->base.connectors[__i].new_state), 1))
>  =

> +u8 intel_calc_active_pipes(struct intel_atomic_state *state,
> +			   u8 active_pipes);
>  void intel_link_compute_m_n(u16 bpp, int nlanes,
>  			    int pixel_clock, int link_clock,
>  			    struct intel_link_m_n *m_n,
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
