Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBFE375105
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 10:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ECA36E063;
	Thu,  6 May 2021 08:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B12576E063
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 08:44:00 +0000 (UTC)
IronPort-SDR: z7u2CfeVB5Tu2O/JTvhiyHIkAKVKNe9ZDJffrHoTKgFQWsHEk4Xj5ll9ZFx8yVlluWWU7Z3EBK
 BRZwxXZGL4Ug==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="178653405"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="178653405"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 01:44:00 -0700
IronPort-SDR: fgkLtIn7eKo1ud/YOSSKNgEF7ETTCPZr7+Exw7dDorILJd5lI1GRKCfB4HwV3fdMsJs3mAB6SG
 c53HF4OKxcnA==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="469366307"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 01:43:58 -0700
Date: Thu, 6 May 2021 11:47:08 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210506084708.GA1915@intel.com>
References: <20210506073836.14848-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506073836.14848-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reorder skl+ scaler vs. plane
 updates
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 06, 2021 at 10:38:36AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> When scanning out NV12 if we at any time have the plane enabled
> while the scaler is disabled we get a pretty catastrophics
> underrun.
> =

> Let's reorder the operations so that we try to avoid that happening
> even if our vblank evade fails and the scaler enable/disable and
> the plane enable/disable get latched during two diffent frames.
> =

> This takes care of the most common cases. I suppose there is still
> at least a theoretical possibility of hitting this if one plane
> takes the scaler away from another plane before the second plane
> had a chance to set up another scaler for its use. =


Just curious, how this is possible? Shouldn't the scaler be already =

marked "in_use" if another plane uses it, so we can't start using
it until it is detached?

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


> But that
> is starting to get a bit complicated, especially since the plane
> commit order already has to be carefully sequenced to avoid any
> dbuf overlaps. So plugging this 100% may prove somewhat hard...
> =

> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 30 ++++++++++++++-----
>  .../drm/i915/display/skl_universal_plane.c    | 11 +++++--
>  2 files changed, 30 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index fcd8123ede8e..0c8ca26156b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9698,8 +9698,6 @@ static void intel_pipe_fastset(const struct intel_c=
rtc_state *old_crtc_state,
>  =

>  	/* on skylake this is done by detaching scalers */
>  	if (DISPLAY_VER(dev_priv) >=3D 9) {
> -		skl_detach_scalers(new_crtc_state);
> -
>  		if (new_crtc_state->pch_pfit.enabled)
>  			skl_pfit_enable(new_crtc_state);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> @@ -9725,8 +9723,8 @@ static void intel_pipe_fastset(const struct intel_c=
rtc_state *old_crtc_state,
>  		icl_set_pipe_chicken(crtc);
>  }
>  =

> -static void commit_pipe_config(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc)
> +static void commit_pipe_pre_planes(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =3D
> @@ -9744,9 +9742,6 @@ static void commit_pipe_config(struct intel_atomic_=
state *state,
>  		    new_crtc_state->update_pipe)
>  			intel_color_commit(new_crtc_state);
>  =

> -		if (DISPLAY_VER(dev_priv) >=3D 9)
> -			skl_detach_scalers(new_crtc_state);
> -
>  		if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
>  			bdw_set_pipemisc(new_crtc_state);
>  =

> @@ -9760,6 +9755,23 @@ static void commit_pipe_config(struct intel_atomic=
_state *state,
>  		dev_priv->display.atomic_update_watermarks(state, crtc);
>  }
>  =

> +static void commit_pipe_post_planes(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	/*
> +	 * Disable the scaler(s) after the plane(s) so that we don't
> +	 * get a catastrophic underrun even if the two operations
> +	 * end up happening in two different frames.
> +	 */
> +	if (DISPLAY_VER(dev_priv) >=3D 9 &&
> +	    !intel_crtc_needs_modeset(new_crtc_state))
> +		skl_detach_scalers(new_crtc_state);
> +}
> +
>  static void intel_enable_crtc(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc)
>  {
> @@ -9811,13 +9823,15 @@ static void intel_update_crtc(struct intel_atomic=
_state *state,
>  	/* Perform vblank evasion around commit operation */
>  	intel_pipe_update_start(new_crtc_state);
>  =

> -	commit_pipe_config(state, crtc);
> +	commit_pipe_pre_planes(state, crtc);
>  =

>  	if (DISPLAY_VER(dev_priv) >=3D 9)
>  		skl_update_planes_on_crtc(state, crtc);
>  	else
>  		i9xx_update_planes_on_crtc(state, crtc);
>  =

> +	commit_pipe_post_planes(state, crtc);
> +
>  	intel_pipe_update_end(new_crtc_state);
>  =

>  	/*
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 0d34a5ad4e2b..6ad85d7cb219 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1032,6 +1032,14 @@ skl_program_plane(struct intel_plane *plane,
>  	if (!drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
>  		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, col=
or_plane);
>  =

> +	/*
> +	 * Enable the scaler before the plane so that we don't
> +	 * get a catastrophic underrun even if the two operations
> +	 * end up happening in two different frames.
> +	 */
> +	if (plane_state->scaler_id >=3D 0)
> +		skl_program_plane_scaler(plane, crtc_state, plane_state);
> +
>  	/*
>  	 * The control register self-arms if the plane was previously
>  	 * disabled. Try to make the plane enable atomic by writing
> @@ -1041,9 +1049,6 @@ skl_program_plane(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
>  			  intel_plane_ggtt_offset(plane_state) + surf_addr);
>  =

> -	if (plane_state->scaler_id >=3D 0)
> -		skl_program_plane_scaler(plane, crtc_state, plane_state);
> -
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  =

> -- =

> 2.26.3
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
