Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4118726BE75
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 09:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F046E9D4;
	Wed, 16 Sep 2020 07:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B1036E9D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 07:46:40 +0000 (UTC)
IronPort-SDR: 6xqd2pRUAqFZhCgyLr9p9YzXsGIvq6CfAeM+JBaoYd2v8txTpwxhJitXrWvjRZuL+cDe3VXlxu
 CCUqu2C00wGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="244255213"
X-IronPort-AV: E=Sophos;i="5.76,432,1592895600"; d="scan'208";a="244255213"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 00:46:40 -0700
IronPort-SDR: /4W9ERHQxuBPMIoRr1+ZQTHl5WqZU29QxRBEymlYZmAqM2A2x1UPrdvhP2sKjtxcSLKAQar/6j
 ATmdj7i9EmXA==
X-IronPort-AV: E=Sophos;i="5.76,432,1592895600"; d="scan'208";a="288275014"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 00:46:39 -0700
Date: Wed, 16 Sep 2020 10:46:46 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200916074646.GB1219@intel.com>
References: <20200714152626.380-1-ville.syrjala@linux.intel.com>
 <20200714152626.380-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714152626.380-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Nuke force_min_cdclk_changed
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

On Tue, Jul 14, 2020 at 06:26:26PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Since we now have proper old and new cdclk state we no longer
> need to keep this flag to indicate that the force min cdclk has
> changed. Instead just check if the old vs. new value are different.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c   | 5 -----
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.h   | 1 -
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
>  4 files changed, 6 insertions(+), 9 deletions(-)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index ad4aa66fd676..f7de55707746 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -958,13 +958,8 @@ static int glk_force_audio_cdclk_commit(struct intel=
_atomic_state *state,
>  	if (IS_ERR(cdclk_state))
>  		return PTR_ERR(cdclk_state);
>  =

> -	cdclk_state->force_min_cdclk_changed =3D true;
>  	cdclk_state->force_min_cdclk =3D enable ? 2 * 96000 : 0;
>  =

> -	ret =3D intel_atomic_lock_global_state(&cdclk_state->base);
> -	if (ret)
> -		return ret;
> -
>  	return drm_atomic_commit(&state->base);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 9d6cacbdb691..268a7211dd6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2426,7 +2426,6 @@ static struct intel_global_state *intel_cdclk_dupli=
cate_state(struct intel_globa
>  	if (!cdclk_state)
>  		return NULL;
>  =

> -	cdclk_state->force_min_cdclk_changed =3D false;
>  	cdclk_state->pipe =3D INVALID_PIPE;
>  =

>  	return &cdclk_state->base;
> @@ -2501,6 +2500,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_st=
ate *state)
>  		if (ret)
>  			return ret;
>  	} else if (old_cdclk_state->active_pipes !=3D new_cdclk_state->active_p=
ipes ||
> +		   old_cdclk_state->force_min_cdclk !=3D new_cdclk_state->force_min_cd=
clk ||
>  		   intel_cdclk_changed(&old_cdclk_state->logical,
>  				       &new_cdclk_state->logical)) {
>  		ret =3D intel_atomic_lock_global_state(&new_cdclk_state->base);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm=
/i915/display/intel_cdclk.h
> index 6b31fde4be16..b34eb00fb327 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -49,7 +49,6 @@ struct intel_cdclk_state {
>  =

>  	/* forced minimum cdclk for glk+ audio w/a */
>  	int force_min_cdclk;
> -	bool force_min_cdclk_changed;
>  =

>  	/* bitmask of active pipes */
>  	u8 active_pipes;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 729ec6e0d43a..f571ded3cba8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14736,7 +14736,8 @@ static int intel_atomic_check_cdclk(struct intel_=
atomic_state *state,
>  				    bool *need_cdclk_calc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_cdclk_state *new_cdclk_state;
> +	const struct intel_cdclk_state *old_cdclk_state;
> +	const struct intel_cdclk_state *new_cdclk_state;
>  	struct intel_plane_state *plane_state;
>  	struct intel_bw_state *new_bw_state;
>  	struct intel_plane *plane;
> @@ -14755,9 +14756,11 @@ static int intel_atomic_check_cdclk(struct intel=
_atomic_state *state,
>  			return ret;
>  	}
>  =

> +	old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>  	new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
>  =

> -	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
> +	if (new_cdclk_state &&
> +	    old_cdclk_state->force_min_cdclk !=3D new_cdclk_state->force_min_cd=
clk)
>  		*need_cdclk_calc =3D true;
>  =

>  	ret =3D dev_priv->display.bw_calc_min_cdclk(state);
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
