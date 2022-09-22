Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D29EF5E675B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 17:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 616D710EC2D;
	Thu, 22 Sep 2022 15:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28C1210EC2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 15:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663861369; x=1695397369;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xsiFijeetmtocRAF5VUGop0q2lsF52PyFt+Pi615tLs=;
 b=VITcbinRhGtrSFMZbNbEs4RurbqqWPSIsMl+iZ2johjleP9jq56K8Ium
 UItvVdPx5gKBgAwZrT6wNPhd3emgdrkqu/8HmbzyxowRnzlaIcn22R7AE
 7/rI1k2PungXeuD5qKviSSMYhbQeCQGV0ECUBw2tLwvqBIK6mdTeFv1Fu
 3OLjGAlX8/F1sb8GR1XLXiRCdzf7eDMzxP5GNsVZ51TJN58uod8Noc+vr
 T1nAPyV+EcnmUx0qcV5Rjob7XNOIE3q9oGE0yc8ZUwEt04nGxL8p1xv21
 aDWg2wOpGBTyJnFkD/lum+Yee/i5KgATB5WPeaR82iUIV4lhgpJnISqlr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="301184259"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="301184259"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:42:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="571012931"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:42:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921122343.13061-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
 <20220921122343.13061-3-ville.syrjala@linux.intel.com>
Date: Thu, 22 Sep 2022 18:42:15 +0300
Message-ID: <87bkr75sbs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Nuke
 intel_get_shared_dpll_id()
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

On Wed, 21 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Each PLL knows its own ID so intel_get_shared_dpll_id() is
> pointless. Get rid of it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 22 -------------------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 ---
>  3 files changed, 2 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 643832d55c28..5057ee3c93fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3536,7 +3536,7 @@ static void icl_ddi_tc_get_clock(struct intel_encod=
er *encoder,
>  	if (drm_WARN_ON(&i915->drm, !pll))
>  		return;
>=20=20
> -	if (intel_get_shared_dpll_id(i915, pll) =3D=3D DPLL_ID_ICL_TBTPLL)
> +	if (pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
>  		port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
>  	else
>  		port_dpll_id =3D ICL_PORT_DPLL_MG_PHY;
> @@ -3549,7 +3549,7 @@ static void icl_ddi_tc_get_clock(struct intel_encod=
er *encoder,
>=20=20
>  	icl_set_active_port_dpll(crtc_state, port_dpll_id);
>=20=20
> -	if (intel_get_shared_dpll_id(i915, crtc_state->shared_dpll) =3D=3D DPLL=
_ID_ICL_TBTPLL)
> +	if (crtc_state->shared_dpll->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
>  		crtc_state->port_clock =3D icl_calc_tbt_pll_link(i915, encoder->port);
>  	else
>  		crtc_state->port_clock =3D intel_dpll_get_freq(i915, crtc_state->share=
d_dpll,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 9c60cf69cde1..f900c4c73cc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -152,28 +152,6 @@ intel_get_shared_dpll_by_id(struct drm_i915_private =
*dev_priv,
>  	return &dev_priv->display.dpll.shared_dplls[id];
>  }
>=20=20
> -/**
> - * intel_get_shared_dpll_id - get the id of a DPLL
> - * @dev_priv: i915 device instance
> - * @pll: the DPLL
> - *
> - * Returns:
> - * The id of @pll
> - */
> -enum intel_dpll_id
> -intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
> -			 struct intel_shared_dpll *pll)
> -{
> -	long pll_idx =3D pll - dev_priv->display.dpll.shared_dplls;
> -
> -	if (drm_WARN_ON(&dev_priv->drm,
> -			pll_idx < 0 ||
> -			pll_idx >=3D dev_priv->display.dpll.num_shared_dpll))
> -		return -1;
> -
> -	return pll_idx;
> -}
> -
>  /* For ILK+ */
>  void assert_shared_dpll(struct drm_i915_private *dev_priv,
>  			struct intel_shared_dpll *pll,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index 3247dc300ae4..3854f1b4299a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -328,9 +328,6 @@ struct intel_shared_dpll {
>  struct intel_shared_dpll *
>  intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
>  			    enum intel_dpll_id id);
> -enum intel_dpll_id
> -intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
> -			 struct intel_shared_dpll *pll);
>  void assert_shared_dpll(struct drm_i915_private *dev_priv,
>  			struct intel_shared_dpll *pll,
>  			bool state);

--=20
Jani Nikula, Intel Open Source Graphics Center
