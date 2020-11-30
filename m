Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0085A2C9162
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 23:47:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6278789C89;
	Mon, 30 Nov 2020 22:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0069A89C89
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 22:47:00 +0000 (UTC)
IronPort-SDR: HDL33F/nMEg9oKAbnsT5T80RF0oqd97BImZdFJM6ztct/zBVTv37Rm4TPC1CPkK64pihxOhc1C
 cPiG8rZvnyLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="152555614"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="152555614"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:47:00 -0800
IronPort-SDR: dVUX5Jtr+3Z9kFd1QxiOln8rg3dxcFnKBb481YjEUQnzk3laJNeEXFsEvKy70FSb5YIjdNpOvU
 dsz2YrCYM6pQ==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="329738432"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:47:00 -0800
Date: Mon, 30 Nov 2020 14:49:54 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201130224954.GA17815@labuser-Z97X-UD5H>
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
 <20201124201156.17095-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201124201156.17095-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Properly flag modesets for
 all bigjoiner pipes
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

On Tue, Nov 24, 2020 at 10:11:55PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> If either of the bigjoiner pipes needs a modeset then we need
> a modeset on both pipes. Make it so.
> =

> v2: Split out the kill_bigjoiner_slave() change (Manasi)
>     Add affected connectors/planes
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 32 ++++++++++++++++++--
>  1 file changed, 29 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index fa6ca6191480..04dad3baf8a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15525,20 +15525,36 @@ static int intel_atomic_check_async(struct inte=
l_atomic_state *state)
>  =

>  static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state =
*state)
>  {
> -	const struct intel_crtc_state *crtc_state;
> +	struct intel_crtc_state *crtc_state;
>  	struct intel_crtc *crtc;
>  	int i;
>  =

>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>  		struct intel_crtc_state *linked_crtc_state;
> +		struct intel_crtc *linked_crtc;
> +		int ret;
>  =

>  		if (!crtc_state->bigjoiner)
>  			continue;
>  =

> -		linked_crtc_state =3D intel_atomic_get_crtc_state(&state->base,
> -								crtc_state->bigjoiner_linked_crtc);
> +		linked_crtc =3D crtc_state->bigjoiner_linked_crtc;
> +		linked_crtc_state =3D intel_atomic_get_crtc_state(&state->base, linked=
_crtc);
>  		if (IS_ERR(linked_crtc_state))
>  			return PTR_ERR(linked_crtc_state);
> +
> +		if (!needs_modeset(crtc_state))
> +			continue;
> +
> +		linked_crtc_state->uapi.mode_changed =3D true;
> +
> +		ret =3D drm_atomic_add_affected_connectors(&state->base,
> +							 &linked_crtc->base);
> +		if (ret)
> +			return ret;
> +
> +		ret =3D intel_atomic_add_affected_planes(state, linked_crtc);
> +		if (ret)
> +			return ret;
>  	}
>  =

>  	return 0;
> @@ -15658,6 +15674,16 @@ static int intel_atomic_check(struct drm_device =
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
