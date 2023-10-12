Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 764827C70C9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 16:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6711110E4F4;
	Thu, 12 Oct 2023 14:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC7B10E4F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 14:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697122598; x=1728658598;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8ProNSQoNz7Hx6ld4BJtVP/pOLRZi6NtrgGIKPzGiiI=;
 b=mrEbUX/vsb9ouRpCyT5TXoYkFbdRITVyx5+y/Wj+CkTzaPft0MX6QLov
 2EcJ2gCjrc+GEskP8/QPglr+EiOvy/Avz1rBlqwUSGEN8ihkGoS/pdJ2L
 +2yzu+dcPNE9/msvMPiL9reNnj3KgAlAu3KAhUFIckUPt3TFYfYI/1ECg
 JRm/XQkdNX9gW0QFA36fotgm9Ei0DgcrgEFJxGoOcdF6+YDCcAEEv+Yva
 yRY4tYjoGjCY3CZQ12Tt2yffULi72FTMINzHeL81aN1Zecig/GEa92kUg
 AvGG0oTYpAg+2JIC/LxJgZB8DtbF5VJIrG8tzU6uLK8kmTXUJVxnEfoth w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="449130529"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="449130529"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:56:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="747906065"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="747906065"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:56:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231012123522.26045-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
 <20231012123522.26045-3-ville.syrjala@linux.intel.com>
Date: Thu, 12 Oct 2023 17:56:34 +0300
Message-ID: <87fs2f28kd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Abstract the extra JSL/EHL
 DPLL4 power domain better
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

On Thu, 12 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Just include the JSL/EHL DPLL4 extra power domain in the dpll_info
> struct. This way the same approach could be used by other platforms
> as well (should the need arise), and we don't have to sprinkle
> platform checks all over the place.
>
> Note that I'm perhaps slightly abusing things here as
> power_domain=3D=3D0 (which is actually POWER_DOMAIN_DISPLAY_CORE) now
> indicates that no extra power domain is needed. I suppose using
> POWER_DOMAIN_INVALID would be more correct, but then we'd have to
> sprinkle that to all the other DPLLs.

Cc: Imre, how bad do you think that is?

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 +++++--------------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  6 ++++
>  2 files changed, 14 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index b7997b096796..4e524cb8ed83 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -3838,17 +3838,8 @@ static void combo_pll_enable(struct drm_i915_priva=
te *i915,
>  {
>  	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(i915, pll);
>=20=20
> -	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> -	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> -
> -		/*
> -		 * We need to disable DC states when this DPLL is enabled.
> -		 * This can be done by taking a reference on DPLL4 power
> -		 * domain.
> -		 */
> -		pll->wakeref =3D intel_display_power_get(i915,
> -						       POWER_DOMAIN_DC_OFF);
> -	}
> +	if (pll->info->power_domain)
> +		pll->wakeref =3D intel_display_power_get(i915, pll->info->power_domain=
);
>=20=20
>  	icl_pll_power_enable(i915, pll, enable_reg);
>=20=20
> @@ -3946,10 +3937,8 @@ static void combo_pll_disable(struct drm_i915_priv=
ate *i915,
>=20=20
>  	icl_pll_disable(i915, pll, enable_reg);
>=20=20
> -	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> -	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4)
> -		intel_display_power_put(i915, POWER_DOMAIN_DC_OFF,
> -					pll->wakeref);
> +	if (pll->info->power_domain)
> +		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
>  }
>=20=20
>  static void tbt_pll_disable(struct drm_i915_private *i915,
> @@ -4041,7 +4030,8 @@ static const struct intel_dpll_mgr icl_pll_mgr =3D {
>  static const struct dpll_info ehl_plls[] =3D {
>  	{ .name =3D "DPLL 0", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL0, },
>  	{ .name =3D "DPLL 1", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_ICL_=
DPLL1, },
> -	{ .name =3D "DPLL 4", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_EHL_=
DPLL4, },
> +	{ .name =3D "DPLL 4", .funcs =3D &combo_pll_funcs, .id =3D DPLL_ID_EHL_=
DPLL4,
> +	  .power_domain =3D POWER_DOMAIN_DC_OFF, },
>  	{}
>  };
>=20=20
> @@ -4369,12 +4359,8 @@ static void readout_dpll_hw_state(struct drm_i915_=
private *i915,
>=20=20
>  	pll->on =3D intel_dpll_get_hw_state(i915, pll, &pll->state.hw_state);
>=20=20
> -	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> -	    pll->on &&
> -	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> -		pll->wakeref =3D intel_display_power_get(i915,
> -						       POWER_DOMAIN_DC_OFF);
> -	}
> +	if (pll->on && pll->info->power_domain)
> +		pll->wakeref =3D intel_display_power_get(i915, pll->info->power_domain=
);
>=20=20
>  	pll->state.pipe_mask =3D 0;
>  	for_each_intel_crtc(&i915->drm, crtc) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index dd4796a61751..2e7ea0d8d3ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -27,6 +27,7 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> +#include "intel_display_power.h"
>  #include "intel_wakeref.h"
>=20=20
>  #define for_each_shared_dpll(__i915, __pll, __i) \
> @@ -270,6 +271,11 @@ struct dpll_info {
>  	 */
>  	enum intel_dpll_id id;
>=20=20
> +	/**
> +	 * @power_domain: extra power domain required by the DPLL
> +	 */
> +	enum intel_display_power_domain power_domain;
> +
>  #define INTEL_DPLL_ALWAYS_ON	(1 << 0)
>  	/**
>  	 * @flags:

--=20
Jani Nikula, Intel
