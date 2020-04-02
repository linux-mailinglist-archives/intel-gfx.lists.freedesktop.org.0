Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F8219C801
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 19:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501426EACE;
	Thu,  2 Apr 2020 17:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7756EACE
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 17:30:33 +0000 (UTC)
IronPort-SDR: HoTfEN1OJjK/yMmi3Wcc0AOsbE/DIojl86Gqbmw8B0pDejrF0UZL/ZhXAn6ZSMWNExwlfkdtqA
 J9uVBC3ElBuw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 10:30:33 -0700
IronPort-SDR: CY5NCIU73s419cIPXLt1QKsN4Wykg2QNLw4tCinurIyzepd/US6t/NNQSt66VY/v1C1+8jchya
 3hTttv/lmB8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="328893980"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2020 10:30:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 20:30:29 +0300
Date: Thu, 2 Apr 2020 20:30:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200402173029.GF13686@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
 <20200326181005.11775-9-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326181005.11775-9-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v20 08/10] drm/i915: Rename bw_state to
 new_bw_state
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 08:10:03PM +0200, Stanislav Lisovskiy wrote:
> That is a preparation patch before next one where we
> introduce old_bw_state and a bunch of other changes
> as well.
> In a review comment it was suggested to split out
> at least that renaming into a separate patch, what
> is done here.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index a8b2038db4d2..d16771dd2b10 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -418,7 +418,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *=
state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> -	struct intel_bw_state *bw_state =3D NULL;
> +	struct intel_bw_state *new_bw_state =3D NULL;
>  	unsigned int data_rate, max_data_rate;
>  	unsigned int num_active_planes;
>  	struct intel_crtc *crtc;
> @@ -447,29 +447,29 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  		    old_active_planes =3D=3D new_active_planes)
>  			continue;
>  =

> -		bw_state  =3D intel_atomic_get_bw_state(state);
> -		if (IS_ERR(bw_state))
> -			return PTR_ERR(bw_state);
> +		new_bw_state  =3D intel_atomic_get_bw_state(state);
                            ^

Pls remove the spurious space while at it.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +		if (IS_ERR(new_bw_state))
> +			return PTR_ERR(new_bw_state);
>  =

> -		bw_state->data_rate[crtc->pipe] =3D new_data_rate;
> -		bw_state->num_active_planes[crtc->pipe] =3D new_active_planes;
> +		new_bw_state->data_rate[crtc->pipe] =3D new_data_rate;
> +		new_bw_state->num_active_planes[crtc->pipe] =3D new_active_planes;
>  =

>  		drm_dbg_kms(&dev_priv->drm,
>  			    "pipe %c data rate %u num active planes %u\n",
>  			    pipe_name(crtc->pipe),
> -			    bw_state->data_rate[crtc->pipe],
> -			    bw_state->num_active_planes[crtc->pipe]);
> +			    new_bw_state->data_rate[crtc->pipe],
> +			    new_bw_state->num_active_planes[crtc->pipe]);
>  	}
>  =

> -	if (!bw_state)
> +	if (!new_bw_state)
>  		return 0;
>  =

> -	ret =3D intel_atomic_lock_global_state(&bw_state->base);
> +	ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
>  	if (ret)
>  		return ret;
>  =

> -	data_rate =3D intel_bw_data_rate(dev_priv, bw_state);
> -	num_active_planes =3D intel_bw_num_active_planes(dev_priv, bw_state);
> +	data_rate =3D intel_bw_data_rate(dev_priv, new_bw_state);
> +	num_active_planes =3D intel_bw_num_active_planes(dev_priv, new_bw_state=
);
>  =

>  	max_data_rate =3D intel_max_data_rate(dev_priv, num_active_planes);
>  =

> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
