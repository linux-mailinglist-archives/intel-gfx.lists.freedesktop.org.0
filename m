Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20A92BB971
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 23:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E106E93A;
	Fri, 20 Nov 2020 22:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624886E93A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 22:52:47 +0000 (UTC)
IronPort-SDR: UNRFnLaEF5dixoC1eGzlO4fAmm+wfDx7cBfMU/38uPhJf7mT9B9yNnzu2ATMgSl75/NlgTd2sY
 n1yy0uM1UYag==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="151399357"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="151399357"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 14:52:46 -0800
IronPort-SDR: YCxmo+0t8mL08RorC8lO+OVkMXqZtIt4utsxKQyH6cziGSvT+DJF0ZeDvz//QSHBTreUEPSKju
 tyG/AsXuBh7w==
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369328766"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 14:52:46 -0800
Date: Fri, 20 Nov 2020 14:55:23 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201120225517.GA20005@labuser-Z97X-UD5H>
References: <20201120160135.29702-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201120160135.29702-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Properly flag modesets for all
 bigjoiner pipes
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

On Fri, Nov 20, 2020 at 06:01:35PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> If either of the bigjoiner pipes needs a modeset then we need
> a modeset on both pipes. Make it so.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++++--------
>  1 file changed, 24 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 595183f7b60f..321321230a55 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15355,21 +15355,16 @@ static int intel_atomic_check_bigjoiner(struct =
intel_atomic_state *state,
>  	return -EINVAL;
>  }
>  =

> -static int kill_bigjoiner_slave(struct intel_atomic_state *state,
> -				struct intel_crtc_state *master_crtc_state)
> +static void kill_bigjoiner_slave(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *master_crtc_state)
>  {
>  	struct intel_crtc_state *slave_crtc_state =3D
> -		intel_atomic_get_crtc_state(&state->base,
> -					    master_crtc_state->bigjoiner_linked_crtc);
> -
> -	if (IS_ERR(slave_crtc_state))
> -		return PTR_ERR(slave_crtc_state);
> +		intel_atomic_get_new_crtc_state(state, master_crtc_state->bigjoiner_li=
nked_crtc);

Isnt this just a cleanup, doesnt relate to adding linked bigjoiner
pipe to the modeset.
Split this in a separate patch? Or atleast mention this in the commit messa=
ge

Other than that looks good to me

Manasi


>  =

>  	slave_crtc_state->bigjoiner =3D master_crtc_state->bigjoiner =3D false;
>  	slave_crtc_state->bigjoiner_slave =3D master_crtc_state->bigjoiner_slav=
e =3D false;
>  	slave_crtc_state->bigjoiner_linked_crtc =3D master_crtc_state->bigjoine=
r_linked_crtc =3D NULL;
>  	intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
> -	return 0;
>  }
>  =

>  /**
> @@ -15507,7 +15502,7 @@ static int intel_atomic_check_async(struct intel_=
atomic_state *state)
>  =

>  static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state =
*state)
>  {
> -	const struct intel_crtc_state *crtc_state;
> +	struct intel_crtc_state *crtc_state;
>  	struct intel_crtc *crtc;
>  	int i;
>  =

> @@ -15521,6 +15516,16 @@ static int intel_bigjoiner_add_affected_crtcs(st=
ruct intel_atomic_state *state)
>  								crtc_state->bigjoiner_linked_crtc);
>  		if (IS_ERR(linked_crtc_state))
>  			return PTR_ERR(linked_crtc_state);
> +
> +		if (needs_modeset(crtc_state))
> +			linked_crtc_state->uapi.mode_changed =3D true;
> +	}
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		/* Kill old bigjoiner link, we may re-establish afterwards */
> +		if (needs_modeset(crtc_state) &&
> +		    crtc_state->bigjoiner && !crtc_state->bigjoiner_slave)
> +			kill_bigjoiner_slave(state, crtc_state);
>  	}
>  =

>  	return 0;
> @@ -15564,13 +15569,6 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  			continue;
>  		}
>  =

> -		/* Kill old bigjoiner link, we may re-establish afterwards */
> -		if (old_crtc_state->bigjoiner && !old_crtc_state->bigjoiner_slave) {
> -			ret =3D kill_bigjoiner_slave(state, new_crtc_state);
> -			if (ret)
> -				goto fail;
> -		}
> -
>  		if (!new_crtc_state->uapi.enable) {
>  			if (!new_crtc_state->bigjoiner_slave) {
>  				intel_crtc_copy_uapi_to_hw_state(state, new_crtc_state);
> @@ -15640,6 +15638,16 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  				new_crtc_state->update_pipe =3D false;
>  			}
>  		}
> +
> +		if (new_crtc_state->bigjoiner) {
> +			struct intel_crtc_state *linked_crtc_state =3D
> +				intel_atomic_get_new_crtc_state(state, new_crtc_state->bigjoiner_lin=
ked_crtc);
> +
> +			if (needs_modeset(linked_crtc_state)) {
> +				new_crtc_state->uapi.mode_changed =3D true;
> +				new_crtc_state->update_pipe =3D false;
> +			}
> +		}
>  	}
>  =

>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
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
