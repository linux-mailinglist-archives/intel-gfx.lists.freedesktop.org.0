Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5185A2C916A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 23:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CCCD8925F;
	Mon, 30 Nov 2020 22:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA718925F
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 22:47:28 +0000 (UTC)
IronPort-SDR: 4DWkl6ZvhLhDT2iCJk4xfusTAybSzqBtoHcS7oYX8r8RGUssF6boSJyH98Jy9kR5VuRx9DsIN+
 LiHWrpK9hBXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="171939630"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="171939630"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:47:27 -0800
IronPort-SDR: nTHS9o1JuxCNN1I+/Q71zM3iMvMQUReEQ1GpYvqxSjxrXogMYXoMnyidxcP2eY/whQD7TG0PNh
 sGJ2s6X+EAxg==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372678777"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:47:27 -0800
Date: Mon, 30 Nov 2020 14:50:22 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201130225022.GB17815@labuser-Z97X-UD5H>
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
 <20201124201156.17095-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201124201156.17095-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Call kill_bigjoiner_slave()
 earlier
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

On Tue, Nov 24, 2020 at 10:11:56PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Let's do the kill_bigjoiner_slave() thing from
> intel_bigjoiner_add_affected_crtcs() since it's related to
> what we do there. This cleans up the logic in the
> compute_config() loop a bit.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 25 ++++++++------------
>  1 file changed, 10 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 04dad3baf8a0..a1eed30b2e0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15373,21 +15373,16 @@ static int intel_atomic_check_bigjoiner(struct =
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
> @@ -15557,6 +15552,13 @@ static int intel_bigjoiner_add_affected_crtcs(st=
ruct intel_atomic_state *state)
>  			return ret;
>  	}
>  =

> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		/* Kill old bigjoiner link, we may re-establish afterwards */
> +		if (needs_modeset(crtc_state) &&
> +		    crtc_state->bigjoiner && !crtc_state->bigjoiner_slave)
> +			kill_bigjoiner_slave(state, crtc_state);
> +	}
> +
>  	return 0;
>  }
>  =

> @@ -15598,13 +15600,6 @@ static int intel_atomic_check(struct drm_device =
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
