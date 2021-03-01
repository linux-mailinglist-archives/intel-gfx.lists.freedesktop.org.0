Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DA0327953
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 09:36:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E266E506;
	Mon,  1 Mar 2021 08:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114FB6E506
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 08:36:05 +0000 (UTC)
IronPort-SDR: AUAeIPmY9BOFsvmPsUeS2HRwODUWg/CpYHNwCLdprYKkrEmyRJNsEX3kiQS3qILrbvwX0pDTh9
 qfPiNkmiawFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="247808121"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="247808121"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 00:36:04 -0800
IronPort-SDR: i/Q6qiL/NXBXzyZtfj2YymtBjHKE9IyAFjT0zYMiVXTPhsvHaoSRAjzlQcIIIkBayPQSPvbyxM
 JvHFBi1nx/eQ==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="406123342"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 00:36:03 -0800
Date: Mon, 1 Mar 2021 10:38:10 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210301083810.GA21872@intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
 <20210226153204.1270-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226153204.1270-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Fix TGL+ plane SAGV watermark
 programming
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

On Fri, Feb 26, 2021 at 05:31:58PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> When we switch between SAGV on vs. off we need to reprogram all
> plane wateramrks accordingly. Currently skl_wm_add_affected_planes()
> totally ignores the SAGV watermark and just assumes we will use
> the normal WM0.
> =

> Fix this by utilizing skl_plane_wm_level() which picks the
> correct watermark based on use_sagv_wm. Thus we will force
> an update on all the planes whose watermark registers need
> to be reprogrammed.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 60 ++++++++++++++++++++-------------
>  1 file changed, 37 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8cc67f9c4e58..2d0e3e7f11b8 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4748,11 +4748,10 @@ icl_get_total_relative_data_rate(struct intel_ato=
mic_state *state,
>  }
>  =

>  static const struct skl_wm_level *
> -skl_plane_wm_level(const struct intel_crtc_state *crtc_state,
> +skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
>  		   enum plane_id plane_id,
>  		   int level)
>  {
> -	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
>  	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
>  =

>  	if (level =3D=3D 0 && pipe_wm->use_sagv_wm)
> @@ -5572,21 +5571,17 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  	int level, max_level =3D ilk_wm_max_level(dev_priv);
>  	enum plane_id plane_id =3D plane->id;
>  	enum pipe pipe =3D plane->pipe;
> -	const struct skl_plane_wm *wm =3D
> -		&crtc_state->wm.skl.optimal.planes[plane_id];
> +	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> +	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
>  	const struct skl_ddb_entry *ddb_y =3D
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  	const struct skl_ddb_entry *ddb_uv =3D
>  		&crtc_state->wm.skl.plane_ddb_uv[plane_id];
>  =

> -	for (level =3D 0; level <=3D max_level; level++) {
> -		const struct skl_wm_level *wm_level;
> -
> -		wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level);
> -
> +	for (level =3D 0; level <=3D max_level; level++)
>  		skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> -				   wm_level);
> -	}
> +				   skl_plane_wm_level(pipe_wm, plane_id, level));
> +
>  	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
>  			   &wm->trans_wm);
>  =

> @@ -5612,19 +5607,15 @@ void skl_write_cursor_wm(struct intel_plane *plan=
e,
>  	int level, max_level =3D ilk_wm_max_level(dev_priv);
>  	enum plane_id plane_id =3D plane->id;
>  	enum pipe pipe =3D plane->pipe;
> -	const struct skl_plane_wm *wm =3D
> -		&crtc_state->wm.skl.optimal.planes[plane_id];
> +	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> +	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
>  	const struct skl_ddb_entry *ddb =3D
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  =

> -	for (level =3D 0; level <=3D max_level; level++) {
> -		const struct skl_wm_level *wm_level;
> -
> -		wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level);
> -
> +	for (level =3D 0; level <=3D max_level; level++)
>  		skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
> -				   wm_level);
> -	}
> +				   skl_plane_wm_level(pipe_wm, plane_id, level));
> +
>  	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe), &wm->trans_wm);
>  =

>  	skl_ddb_entry_write(dev_priv, CUR_BUF_CFG(pipe), ddb);
> @@ -5964,6 +5955,29 @@ skl_print_wm_changes(struct intel_atomic_state *st=
ate)
>  	}
>  }
>  =

> +static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
> +					 const struct skl_pipe_wm *old_pipe_wm,
> +					 const struct skl_pipe_wm *new_pipe_wm)
> +{
> +	const struct skl_plane_wm *old_wm =3D &old_pipe_wm->planes[plane->id];
> +	const struct skl_plane_wm *new_wm =3D &new_pipe_wm->planes[plane->id];
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	int level, max_level =3D ilk_wm_max_level(i915);
> +
> +	for (level =3D 0; level <=3D max_level; level++) {
> +		/*
> +		 * We don't check uv_wm as the hardware doesn't actually
> +		 * use it. It only gets used for calculating the required
> +		 * ddb allocation.
> +		 */
> +		if (!skl_wm_level_equals(skl_plane_wm_level(old_pipe_wm, level, plane-=
>id),
> +					 skl_plane_wm_level(new_pipe_wm, level, plane->id)))
> +			return false;
> +	}
> +
> +	return skl_wm_level_equals(&old_wm->trans_wm, &new_wm->trans_wm);
> +}
> +
>  /*
>   * To make sure the cursor watermark registers are always consistent
>   * with our computed state the following scenario needs special
> @@ -6009,9 +6023,9 @@ static int skl_wm_add_affected_planes(struct intel_=
atomic_state *state,
>  		 * with the software state.
>  		 */
>  		if (!drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi) &&
> -		    skl_plane_wm_equals(dev_priv,
> -					&old_crtc_state->wm.skl.optimal.planes[plane_id],
> -					&new_crtc_state->wm.skl.optimal.planes[plane_id]))
> +		    skl_plane_selected_wm_equals(plane,
> +						 &old_crtc_state->wm.skl.optimal,
> +						 &new_crtc_state->wm.skl.optimal))
>  			continue;
>  =

>  		plane_state =3D intel_atomic_get_plane_state(state, plane);
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
