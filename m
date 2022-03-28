Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AAA4E92E5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 12:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A0110E5B7;
	Mon, 28 Mar 2022 10:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A2110E5B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 10:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465089; x=1680001089;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=5jzIjJMwvhDtjKd4QT+XC5KxZB6SW4cRyGJmbWNS8zw=;
 b=KfCrSCK2cX5efAGvFg52gRUsLVcyfEmEnIXOp10gXzLOPKWpxv5Yz5gB
 FO85FsA6JslOduFRMgVioA98pReehKPR/M5j1VsVjI2F/w6EPtooho9ek
 V+slpMZiIKZXwBD25zemuiSgDKjMOCsKFQPVuzF1vBlYDHISxvWVu7VF+
 NdbxawA6ElBErQ6JKerOJJFV186LKbO3pPJknym/RHxTU4ZcuS5kCS33G
 mchfo4Ticdxi/g1f6A0Fwol7f+42QpMDFd4Ha+0C2U5+U9XFPaJe6V/t/
 GbeTdIVIwH8Yxb52LEzqnt0+9Hd64+7QwspoXoJwddT2H8Q05FP9Bvt+P A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="257799001"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="257799001"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:58:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="545912882"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:58:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-3-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 13:57:59 +0300
Message-ID: <87y20ufio8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915: Pass dev_priv to
 intel_shared_dpll_init()
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
> Stop passing around the drm_device and just pass the
> dev_priv instead.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 9 ++++-----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 3 +--
>  3 files changed, 6 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 3d2ff258f0a9..986e2e67ef91 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9754,7 +9754,7 @@ int intel_modeset_init_nogem(struct drm_i915_privat=
e *i915)
>  	}
>=20=20
>  	intel_plane_possible_crtcs_init(i915);
> -	intel_shared_dpll_init(dev);
> +	intel_shared_dpll_init(i915);
>  	intel_fdi_pll_freq_update(i915);
>=20=20
>  	intel_update_czclk(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 1d52796333ab..dc3c889b0aa6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4078,13 +4078,12 @@ static const struct intel_dpll_mgr adlp_pll_mgr =
=3D {
>=20=20
>  /**
>   * intel_shared_dpll_init - Initialize shared DPLLs
> - * @dev: drm device
> + * @dev_priv: i915 device
>   *
> - * Initialize shared DPLLs for @dev.
> + * Initialize shared DPLLs for @dev_priv.
>   */
> -void intel_shared_dpll_init(struct drm_device *dev)
> +void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	const struct intel_dpll_mgr *dpll_mgr =3D NULL;
>  	const struct dpll_info *dpll_info;
>  	int i;
> @@ -4123,7 +4122,7 @@ void intel_shared_dpll_init(struct drm_device *dev)
>  	dpll_info =3D dpll_mgr->dpll_info;
>=20=20
>  	for (i =3D 0; dpll_info[i].name; i++) {
> -		drm_WARN_ON(dev, i !=3D dpll_info[i].id);
> +		drm_WARN_ON(&dev_priv->drm, i !=3D dpll_info[i].id);
>  		dev_priv->dpll.shared_dplls[i].info =3D &dpll_info[i];
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index 499a43e39123..f7c96a1f13c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -37,7 +37,6 @@
>  	__a > __b ? (__a - __b) : (__b - __a); })
>=20=20
>  enum tc_port;
> -struct drm_device;
>  struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc;
> @@ -356,7 +355,7 @@ bool intel_dpll_get_hw_state(struct drm_i915_private =
*i915,
>  void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
>  void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state=
);
>  void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
> -void intel_shared_dpll_init(struct drm_device *dev);
> +void intel_shared_dpll_init(struct drm_i915_private *dev_priv);
>  void intel_dpll_update_ref_clks(struct drm_i915_private *dev_priv);
>  void intel_dpll_readout_hw_state(struct drm_i915_private *dev_priv);
>  void intel_dpll_sanitize_state(struct drm_i915_private *dev_priv);

--=20
Jani Nikula, Intel Open Source Graphics Center
