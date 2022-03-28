Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B504E92FD
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:07:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E35610E176;
	Mon, 28 Mar 2022 11:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05AAE10E176
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465653; x=1680001653;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Lk/hNkyEeaS7sd2K7W0OMKIzXxdL5fgxFh2kNIjMdP4=;
 b=nxpdCFC0CPNBSK2FDNHAicIu2Rkc5337vZmVINLXGVLWHEz2RTPGlkog
 C3kFFQ6GN82YEBHG4y6cgQiCH2SwoQ/spykmzRmXRJUk4ndT2ny+djeYD
 jtGazAWeRfp+x8iep7eKoI7Qi9EVQ/jDLDLyoxVb9gitF/8mHsBUeAHDp
 /R5xHPspCDq3bfVpxVsFOFUeN7kXtK/XadRtfiHHBxe/yki/Nqi9g11M6
 8QM9I1WafP/P5X9IdeO4fQeYFUK/ycmEBiaEMigqIEkpHV1z+TTO0LFIw
 VGFXPdz4g6HJPo1xfmpVXBUV2JVpHouP2z9P91bnW3833NbhWoXkF34/W Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="239568034"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="239568034"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:07:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563554125"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:07:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-9-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:07:21 +0300
Message-ID: <87h77ifi8m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915: Split out
 dg2_crtc_compute_clock()
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
> DG2 doesn't currently used the shared_dpll stuff so let's just
> split it out from hsw_crtc_compute_clock() entirely.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 22 ++++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 7960f1d52eaa..bc59efe18e89 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -938,9 +938,6 @@ static int hsw_crtc_compute_clock(struct intel_atomic=
_state *state,
>  		intel_get_crtc_new_encoder(state, crtc_state);
>  	int ret;
>=20=20
> -	if (IS_DG2(dev_priv))
> -		return intel_mpllb_calc_state(crtc_state, encoder);
> -
>  	if (DISPLAY_VER(dev_priv) < 11 &&
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
> @@ -956,6 +953,17 @@ static int hsw_crtc_compute_clock(struct intel_atomi=
c_state *state,
>  	return 0;
>  }
>=20=20
> +static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_encoder *encoder =3D
> +		intel_get_crtc_new_encoder(state, crtc_state);
> +
> +	return intel_mpllb_calc_state(crtc_state, encoder);
> +}
> +
>  static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
>  {
>  	return dpll->m < factor * dpll->n;
> @@ -1362,6 +1370,10 @@ static int i8xx_crtc_compute_clock(struct intel_at=
omic_state *state,
>  	return 0;
>  }
>=20=20
> +static const struct intel_dpll_funcs dg2_dpll_funcs =3D {
> +	.crtc_compute_clock =3D dg2_crtc_compute_clock,
> +};
> +
>  static const struct intel_dpll_funcs hsw_dpll_funcs =3D {
>  	.crtc_compute_clock =3D hsw_crtc_compute_clock,
>  };
> @@ -1418,7 +1430,9 @@ int intel_dpll_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  void
>  intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
>  {
> -	if (DISPLAY_VER(dev_priv) >=3D 9 || HAS_DDI(dev_priv))
> +	if (IS_DG2(dev_priv))
> +		dev_priv->dpll_funcs =3D &dg2_dpll_funcs;
> +	else if (DISPLAY_VER(dev_priv) >=3D 9 || HAS_DDI(dev_priv))
>  		dev_priv->dpll_funcs =3D &hsw_dpll_funcs;
>  	else if (HAS_PCH_SPLIT(dev_priv))
>  		dev_priv->dpll_funcs =3D &ilk_dpll_funcs;

--=20
Jani Nikula, Intel Open Source Graphics Center
