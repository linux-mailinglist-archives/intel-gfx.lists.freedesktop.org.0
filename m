Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 653197DF498
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 15:08:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F96110E12F;
	Thu,  2 Nov 2023 14:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0BD110E12F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 14:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698934085; x=1730470085;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uQh2pZSf9ghGBbf6Bp64xgXXfiyLRTc33Pu2fHMYx0Q=;
 b=bXIbcv6bjXscICJqo7KgmUQYb4FlvzCIIk72BFLBUlE9v06tRDTSkwTl
 C6OpjXbLTqKNwq0yiOiT2miuPvsQMcX1qG8gVjm6H852ICvafRZzAJSny
 0Fw27ngLRqVYdrdybm6IqVvrkXTRM3qxRe7QsSRI4GQ6ADibIz/aSiwQo
 Ow9wyKvr4DXKPAmaHOq0+2WDK05i4BJLkfVXbXs3qW4zq/PFrb3sqRkN5
 qMnrxl94QsLQrpXihfqV+MfafrjM9uqOnL36M/aSsGaDyK3yqgfycYxC4
 YNARbgxaGbWOn/aPVr9FZ0AeY1n9gXUwNgPZCkU3KuOIno6wsxNd5BZU9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="474960347"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="474960347"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 07:08:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="761305840"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="761305840"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 07:08:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231031160800.18371-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231031160800.18371-1-ville.syrjala@linux.intel.com>
Date: Thu, 02 Nov 2023 16:07:58 +0200
Message-ID: <8734xo2qpt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Bump GLK CDCLK frequency when
 driving multiple pipes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 31 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On GLK CDCLK frequency needs to be at least 2*96 MHz when accessing
> the audio hardware. Currently we bump the CDCLK frequency up
> temporarily (if not high enough already) whenever audio hardware
> is being accessed, and drop it back down afterwards.
>
> With a single active pipe this works just fine as we can switch
> between all the valid CDCLK frequencies by changing the cd2x
> divider, which doesn't require a full modeset. However with
> multiple active pipes the cd2x divider trick no longer works,
> and thus we end up blinking all displays off and back on.
>
> To avoid this let's just bump the CDCLK frequency to >=3D2*96MHz
> whenever multiple pipes are active. The downside is slightly
> higher power consumption, but that seems like an acceptable
> tradeoff. With a single active pipe we can stick to the current
> more optiomal (from power comsumption POV) behaviour.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9599
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 6d7ba4d0f130..3ddf4201e224 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2750,6 +2750,18 @@ static int intel_compute_min_cdclk(struct intel_cd=
clk_state *cdclk_state)
>  	for_each_pipe(dev_priv, pipe)
>  		min_cdclk =3D max(cdclk_state->min_cdclk[pipe], min_cdclk);
>=20=20
> +	/*
> +	 * Avoid glk_force_audio_cdclk() causing excessive screen
> +	 * blinking when multiple pipes are active by making sure
> +	 * cdclk frequency is always high enough for audio. With a
> +	 * single active pipe we can always change CDCLK frequency
> +	 * by changing the cd2x divider (see glk_cdclk_table[]) and
> +	 * thus a full modeset won't be needed then.
> +	 */
> +	if (DISPLAY_VER(dev_priv) =3D=3D 10 && cdclk_state->active_pipes &&
> +	    !is_power_of_2(cdclk_state->active_pipes))
> +		min_cdclk =3D max(2 * 96000, min_cdclk);

For consistency with glk_force_audio_cdclk(), maybe
s/DISPLAY_VER(dev_priv) =3D=3D 10/IS_GEMINILAKE()/?

There's a bit of duplication with the frequencies, but I guess the
comment is enough to alleviate the concern.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
>  	if (min_cdclk > dev_priv->display.cdclk.max_cdclk_freq) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",

--=20
Jani Nikula, Intel
