Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C1E7C70CA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 16:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C888410E4F5;
	Thu, 12 Oct 2023 14:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD34210E4F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 14:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697122621; x=1728658621;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tpsYDquD2Q0z0w7jV0+lm5rNY0kJDWRyC6LWqTotOKY=;
 b=Ioor1HJchIsIYYytLqnS+dc4mKXG7u4oSmysU89YpzN83vmLBbfLlAAO
 d/4dLrzbTHiEsOxusqnhF2RWgzMht59xYNNCbwe+eTx5ozsP4XFMY6lqz
 lNWEhtjOYZRvWBNwdTfKrrATzYhBy266IVPivOBKp6tBkzZphFZsl8lip
 H8ZPOy5vhqxP2C/DUVhZwGHrOGDeH23ZCNwQGE3Bl44BVB5+7nHqvyRv1
 tOC9Af09XgBZmX2YqzZRTXRLvowD0/6TbxzKmN2yznFwMJpRIUF+11SiC
 kq80N7qFyWYtuPMdyZgburZof+r8PHLbWtY8OhJLxDVN/FfrCJfdEBc7/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="449130641"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="449130641"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:57:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="747906130"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="747906130"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:57:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231012123522.26045-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
 <20231012123522.26045-4-ville.syrjala@linux.intel.com>
Date: Thu, 12 Oct 2023 17:56:58 +0300
Message-ID: <87cyxj28jp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Move the DPLL extra power
 domain handling up one level
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
> The extra DPLL power domain is currently handled in three places:
> - combo_pll_enable()
> - combo_pll_disable()
> - readout_dpll_hw_state()
>
> First two of those are low level PLL funcs, but the third is a higher
> level thing. So the current situation is rather inconsistent. Unify
> this by moving the PLL enable/disable up one level. This also means
> the extra power domain could be trivially be used by other platforms
> as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 4e524cb8ed83..556b10eefe66 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -258,6 +258,10 @@ void intel_enable_shared_dpll(const struct intel_crt=
c_state *crtc_state)
>  	drm_WARN_ON(&i915->drm, pll->on);
>=20=20
>  	drm_dbg_kms(&i915->drm, "enabling %s\n", pll->info->name);
> +
> +	if (pll->info->power_domain)
> +		pll->wakeref =3D intel_display_power_get(i915, pll->info->power_domain=
);
> +
>  	pll->info->funcs->enable(i915, pll);
>  	pll->on =3D true;
>=20=20
> @@ -307,6 +311,9 @@ void intel_disable_shared_dpll(const struct intel_crt=
c_state *crtc_state)
>  	pll->info->funcs->disable(i915, pll);
>  	pll->on =3D false;
>=20=20
> +	if (pll->info->power_domain)
> +		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
> +
>  out:
>  	mutex_unlock(&i915->display.dpll.lock);
>  }
> @@ -3838,9 +3845,6 @@ static void combo_pll_enable(struct drm_i915_privat=
e *i915,
>  {
>  	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(i915, pll);
>=20=20
> -	if (pll->info->power_domain)
> -		pll->wakeref =3D intel_display_power_get(i915, pll->info->power_domain=
);
> -
>  	icl_pll_power_enable(i915, pll, enable_reg);
>=20=20
>  	icl_dpll_write(i915, pll);
> @@ -3936,9 +3940,6 @@ static void combo_pll_disable(struct drm_i915_priva=
te *i915,
>  	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(i915, pll);
>=20=20
>  	icl_pll_disable(i915, pll, enable_reg);
> -
> -	if (pll->info->power_domain)
> -		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
>  }
>=20=20
>  static void tbt_pll_disable(struct drm_i915_private *i915,
> @@ -4409,6 +4410,9 @@ static void sanitize_dpll_state(struct drm_i915_pri=
vate *i915,
>=20=20
>  	pll->info->funcs->disable(i915, pll);
>  	pll->on =3D false;
> +
> +	if (pll->info->power_domain)
> +		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
>  }
>=20=20
>  void intel_dpll_sanitize_state(struct drm_i915_private *i915)

--=20
Jani Nikula, Intel
