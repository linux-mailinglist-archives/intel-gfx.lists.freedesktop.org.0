Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B4D1A110A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7CA6E120;
	Tue,  7 Apr 2020 16:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B1D6E120
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:15:33 +0000 (UTC)
IronPort-SDR: odbuK4SSgoHL1WuULh/du/12gx1FJEz0I/XNXTglV/pFqjtifm6pKwh87b/QFMe/YvdWl7kEYd
 J5n1H7zesrSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:15:33 -0700
IronPort-SDR: j8NoW1vW6gSIuLqOCDABZh7sVc18USJYjZmJAEkyLaN/NFCisn8qjuLfcKM0vm7akrh9oY6b2c
 /nImmuyrysRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="296985365"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 07 Apr 2020 09:15:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Apr 2020 19:15:29 +0300
Date: Tue, 7 Apr 2020 19:15:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200407161529.GF6112@intel.com>
References: <20200330122354.24752-2-stanislav.lisovskiy@intel.com>
 <20200407073356.3783-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407073356.3783-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 1/5] drm/i915: Decouple cdclk calculation
 from modeset checks
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

On Tue, Apr 07, 2020 at 10:33:56AM +0300, Stanislav Lisovskiy wrote:
> We need to calculate cdclk after watermarks/ddb has been calculated
> as with recent hw CDCLK needs to be adjusted accordingly to DBuf
> requirements, which is not possible with current code organization.
> =

> Setting CDCLK according to DBuf BW requirements and not just rejecting
> if it doesn't satisfy BW requirements, will allow us to save power when
> it is possible and gain additional bandwidth when it's needed - i.e
> boosting both our power management and perfomance capabilities.
> =

> This patch is preparation for that, first we now extract modeset
> calculation from modeset checks, in order to call it after wm/ddb
> has been calculated.
> =

> v2: - Extract only intel_modeset_calc_cdclk from intel_modeset_checks
>       (Ville Syrj=E4l=E4)
> =

> v3: - Clear plls after intel_modeset_calc_cdclk

Why did we change this now?

> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++---------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 70ec301fe6e3..c77088e1d033 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14464,12 +14464,6 @@ static int intel_modeset_checks(struct intel_ato=
mic_state *state)
>  			return ret;
>  	}
>  =

> -	ret =3D intel_modeset_calc_cdclk(state);
> -	if (ret)
> -		return ret;
> -
> -	intel_modeset_clear_plls(state);
> -
>  	if (IS_HASWELL(dev_priv))
>  		return hsw_mode_set_planes_workaround(state);
>  =

> @@ -14801,10 +14795,6 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  			goto fail;
>  	}
>  =

> -	ret =3D intel_atomic_check_crtcs(state);
> -	if (ret)
> -		goto fail;
> -
>  	intel_fbc_choose_crtc(dev_priv, state);
>  	ret =3D calc_watermark_data(state);
>  	if (ret)
> @@ -14814,6 +14804,18 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (ret)
>  		goto fail;
>  =

> +	if (any_ms) {
> +		ret =3D intel_modeset_calc_cdclk(state);
> +		if (ret)
> +			return ret;
> +
> +		intel_modeset_clear_plls(state);
> +	}
> +
> +	ret =3D intel_atomic_check_crtcs(state);
> +	if (ret)
> +		goto fail;
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state) &&
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
