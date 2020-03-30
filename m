Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C53C6198012
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 17:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E26CB6E430;
	Mon, 30 Mar 2020 15:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A796E430
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 15:44:42 +0000 (UTC)
IronPort-SDR: a/VkZWp2wwT2Vh+G7ExyVwA8/EnWBUTVUbGGvUjDm0HiXgB9KmP1yWFrMFQ9VjxPzSwHsaGBkB
 JhyFbSTQgItQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 08:44:41 -0700
IronPort-SDR: X6N+q4A55ZXOfIfQKPo1nK8+4nPeVme/7O6YvStf1WGJ1d0LePpBDqbt73DosOt0CCvsTq53J0
 qnZAQgu1Ly7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="241655575"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 30 Mar 2020 08:44:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Mar 2020 18:44:38 +0300
Date: Mon, 30 Mar 2020 18:44:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200330154438.GL13686@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
 <20200330122354.24752-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330122354.24752-2-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915: Decouple cdclk calculation
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

On Mon, Mar 30, 2020 at 03:23:50PM +0300, Stanislav Lisovskiy wrote:
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

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7c45d676c9b7..17d83f37f49f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14545,10 +14545,6 @@ static int intel_modeset_checks(struct intel_ato=
mic_state *state)
>  			return ret;
>  	}
>  =

> -	ret =3D intel_modeset_calc_cdclk(state);
> -	if (ret)
> -		return ret;
> -
>  	intel_modeset_clear_plls(state);
>  =

>  	if (IS_HASWELL(dev_priv))
> @@ -14882,10 +14878,6 @@ static int intel_atomic_check(struct drm_device =
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
> @@ -14895,6 +14887,16 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (ret)
>  		goto fail;
>  =

> +	if (any_ms) {
> +		ret =3D intel_modeset_calc_cdclk(state);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret =3D intel_atomic_check_crtcs(state);
> +	if (ret)
> +		goto fail;

I was thinking we'd do this as two patches. One with just the
extraction, and another one with the bigger reordering. But I think I
convinced myself that it should be safe, so maybe a single patch is
fine.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

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
