Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5CD7C70CD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 16:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6434F10E4F4;
	Thu, 12 Oct 2023 14:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE2510E4F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 14:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697122650; x=1728658650;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8yasnGkGlpMQ4hniKDXvKB6mCOyKPKXmEfUK1KwjkTc=;
 b=OJW8EFo8+UekoElGWzR3pQGu/IYtj4dfr78v9r6H0L4wZu0VDpxCn4tn
 byIZEDyvrvZ2wqv/1yYKCof9/w9p5Y4TBw0WlV5+SIrFhG9tmqJoJ3/Y7
 +y3NIvr88yNcgWprncN7i8obYNoVahE4LYiyWDeAX7tZDvyzbUrQFdF/B
 pUCmSyBg3NpbA3yctkjlienIOpGFbsDMoTwYuerrbjV+jXrC9DjdV6o7A
 Pi9Fjz7zqPjHYTG19f/yAPuLJLam5Yod772Zz5sAMXAUsYonF952Q4yso
 xEClJD/eyAnJ9KYuLF713Wi7GKvLcKlVQdzF2WYGvsTdBpn1QmMTeqnjR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="383795101"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="383795101"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="758063541"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="758063541"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:57:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231012123522.26045-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
 <20231012123522.26045-5-ville.syrjala@linux.intel.com>
Date: Thu, 12 Oct 2023 17:57:27 +0300
Message-ID: <87a5sn28iw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Extract _intel_{enable,
 disable}_shared_dpll()
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
> We have a bit of duplicated code around the DPLL disabling. Extact

*extract

> that to new function, and for symmetry also do the same for the
> enable direction.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 37 ++++++++++++-------
>  1 file changed, 23 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 556b10eefe66..7958d0bd851e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -219,6 +219,26 @@ intel_tc_pll_enable_reg(struct drm_i915_private *i91=
5,
>  	return MG_PLL_ENABLE(tc_port);
>  }
>=20=20
> +static void _intel_enable_shared_dpll(struct drm_i915_private *i915,
> +				      struct intel_shared_dpll *pll)
> +{
> +	if (pll->info->power_domain)
> +		pll->wakeref =3D intel_display_power_get(i915, pll->info->power_domain=
);
> +
> +	pll->info->funcs->enable(i915, pll);
> +	pll->on =3D true;
> +}
> +
> +static void _intel_disable_shared_dpll(struct drm_i915_private *i915,
> +				       struct intel_shared_dpll *pll)
> +{
> +	pll->info->funcs->disable(i915, pll);
> +	pll->on =3D false;
> +
> +	if (pll->info->power_domain)
> +		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
> +}
> +
>  /**
>   * intel_enable_shared_dpll - enable a CRTC's shared DPLL
>   * @crtc_state: CRTC, and its state, which has a shared DPLL
> @@ -259,11 +279,7 @@ void intel_enable_shared_dpll(const struct intel_crt=
c_state *crtc_state)
>=20=20
>  	drm_dbg_kms(&i915->drm, "enabling %s\n", pll->info->name);
>=20=20
> -	if (pll->info->power_domain)
> -		pll->wakeref =3D intel_display_power_get(i915, pll->info->power_domain=
);
> -
> -	pll->info->funcs->enable(i915, pll);
> -	pll->on =3D true;
> +	_intel_enable_shared_dpll(i915, pll);
>=20=20
>  out:
>  	mutex_unlock(&i915->display.dpll.lock);
> @@ -308,11 +324,8 @@ void intel_disable_shared_dpll(const struct intel_cr=
tc_state *crtc_state)
>  		goto out;
>=20=20
>  	drm_dbg_kms(&i915->drm, "disabling %s\n", pll->info->name);
> -	pll->info->funcs->disable(i915, pll);
> -	pll->on =3D false;
>=20=20
> -	if (pll->info->power_domain)
> -		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
> +	_intel_disable_shared_dpll(i915, pll);
>=20=20
>  out:
>  	mutex_unlock(&i915->display.dpll.lock);
> @@ -4408,11 +4421,7 @@ static void sanitize_dpll_state(struct drm_i915_pr=
ivate *i915,
>  		    "%s enabled but not in use, disabling\n",
>  		    pll->info->name);
>=20=20
> -	pll->info->funcs->disable(i915, pll);
> -	pll->on =3D false;
> -
> -	if (pll->info->power_domain)
> -		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
> +	_intel_disable_shared_dpll(i915, pll);
>  }
>=20=20
>  void intel_dpll_sanitize_state(struct drm_i915_private *i915)

--=20
Jani Nikula, Intel
