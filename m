Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3758A4E92F8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD1410E13F;
	Mon, 28 Mar 2022 11:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A7D10E13F
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465376; x=1680001376;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Z+aqMVw/gyDIZsPGj/TZ3iFmYmYwq/c1SfaxAsTVboE=;
 b=FJ7kQ9RBg7i+aMbrLbGuBI6oKmRLjLYZfXXiDsT6E84z5Lid609hNLlI
 gEyUZ08evl0irImYNJh5+v7JkdTTNbw2OjhYNRh7niR5ESPygWUbkX3Nj
 2rv319sE5phqDGE9VHOYC7p5FqNsGlqKfcFoLzyyc3XtV4pL/puXVtref
 c/JlefkqwcuTb18UeIv9OGEQpT/aqcVPoEW6WqGl+Pe/kBti3BeYH11zC
 BJanq0x4B/JmSdr4ROqUDeWwR5CbVfjsKC/fr5jbfwngLCvX+IG95h5+H
 FI4iyOWXxyNWkT7qWSJ4/MPLC+xn1BdoBs3AEGQA3ZV+vLt++IOvZlgUt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="257799860"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="257799860"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:02:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="545914881"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:02:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-6-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:02:46 +0300
Message-ID: <87pmm6fig9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: Move stuff into
 intel_dpll_crtc_compute_clock()
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

On Fri, 25 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move some checks into intel_dpll_crtc_compute_clock() from the
> caller. Avoids the caller from having to worry about all this
> crap.
>
> We'll also reorder the hw.enable vs. shared_dpll checks since
> it makes sense to sanity check that we've cleared out the
> old shared_dpll even if the pipe is getting disabled.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  3 +--
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 10 ++++++++++
>  2 files changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index bb1ababe4577..7c68bc07c925 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4999,8 +4999,7 @@ static int intel_crtc_atomic_check(struct intel_ato=
mic_state *state,
>  	    mode_changed && !crtc_state->hw.active)
>  		crtc_state->update_wm_post =3D true;
>=20=20
> -	if (mode_changed && crtc_state->hw.enable &&
> -	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
> +	if (mode_changed) {
>  		ret =3D intel_dpll_crtc_compute_clock(state, crtc);
>  		if (ret)
>  			return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 1c05ec167046..88d78a585304 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1419,6 +1419,16 @@ int intel_dpll_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  				  struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
> +
> +	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
> +		return 0;
> +
> +	if (!crtc_state->hw.enable)
> +		return 0;
>=20=20
>  	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
