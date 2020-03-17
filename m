Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C33C18854E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 14:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9683B89DE5;
	Tue, 17 Mar 2020 13:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A1F89DE5
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 13:21:25 +0000 (UTC)
IronPort-SDR: FucJRv3g/qWTjikzuo7LDy5xOVRJB7DR/HEC8jYov4i7eFL4aUClbBjoP0EtfeIZRzbSUuS1SD
 pDYyBUw7yIZg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 06:21:25 -0700
IronPort-SDR: uTWSM8RjNP0ysSb+JaAfCeYAKlRmA+qSCd2crLKKXj/Pe0qLW7W+qHZmifQWRk/pfQXMN8ZlE7
 oF/IUzreJ6iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="263030640"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 17 Mar 2020 06:21:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Mar 2020 15:21:21 +0200
Date: Tue, 17 Mar 2020 15:21:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200317132121.GU13686@intel.com>
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
 <20200316113744.31203-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316113744.31203-2-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v1 1/3] drm/i915: Decouple cdclk calculation
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

On Mon, Mar 16, 2020 at 01:37:42PM +0200, Stanislav Lisovskiy wrote:
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

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8f23c4d51c33..cdff3054b344 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14542,6 +14542,14 @@ static int intel_modeset_checks(struct intel_ato=
mic_state *state)
>  			return ret;
>  	}
>  =

> +	return 0;
> +}
> +
> +static int intel_modeset_cdclk(struct intel_atomic_state *state)
> +{

Misleading name here since you didn't extract just the cdclk part.
IMO just move intel_modeset_calc_cdclk() alone out from
intel_modeset_checks(), and keep the reordering minimal in that
patch. Ie. just call intel_modeset_calc_cdclk() right after
intel_modeset_checks().

Then in the next patch you can do the
intel_modeset_calc_cdclk()+intel_atomic_check_crtcs() vs. wm reorder.

The two things that currently need cdclk in intel_crtc_atomic_check()
would appear to be ips and linetime watermarks. The rest looks like
safe to reorder.

Though at least one thing that I think is totally misplaced is the
.crtc_compute_clock() call. That really should be done much earlier,
even earlier than where it is now. However since it doesn't
adjust .crtc_clock with the results of the computation doesn't really
matter for now. So looks like we can ignore this particular mess
for now.

>
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	int ret;
> +
>  	ret =3D intel_modeset_calc_cdclk(state);
>  	if (ret)
>  		return ret;
> @@ -14879,10 +14887,6 @@ static int intel_atomic_check(struct drm_device =
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
> @@ -14892,6 +14896,16 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (ret)
>  		goto fail;
>  =

> +	if (any_ms) {
> +		ret =3D intel_modeset_cdclk(state);
> +		if (ret)
> +			goto fail;
> +	}
> +
> +	ret =3D intel_atomic_check_crtcs(state);
> +	if (ret)
> +		goto fail;
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
