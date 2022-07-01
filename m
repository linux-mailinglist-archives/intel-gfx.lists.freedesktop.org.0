Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FD45630C8
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 11:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979B5113F60;
	Fri,  1 Jul 2022 09:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C1A113F60
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 09:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656669443; x=1688205443;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2Fpf7/saLxUlH0+scPXgOa5QoRye0TK2BA/FNImExsY=;
 b=jsad48sb2e/BsotsS7rHTG7VlU51XPByn9TkvWeFG3vQ3xZ/KzyEOrJj
 sTv7sVilroe8MB/CUNQ3KXUMlJT1Uj7+tkv9xFdJ0cCwoc0eF8InMG4a7
 jIXYSpHwgImA+VZMHlqex+iIzBngve4ovUTTcDkqtlelbh6raZl1P+NXY
 iBY0uIty+cgL/IWXJkRjIOcaVPyEk7XHzH3Fgn25tObCvSJj/mai2QbpY
 oPNjGTtnNwy6Be6FJWrUIu2AmVhx7EglFG5DBFFfkXxKiaSAIDRHqOJfN
 vhnH01ZwIjEmU0OdZmWdrosBYt4iYl86Bt4CfTIkwqjJ75zkG+2xckKbb w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="271386031"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="271386031"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 02:57:22 -0700
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="596201938"
Received: from ksecero-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.48.116])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 02:57:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220630150600.24611-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-4-ville.syrjala@linux.intel.com>
Date: Fri, 01 Jul 2022 12:57:18 +0300
Message-ID: <87czepnojl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Nuke PCH_JSP
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

On Thu, 30 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> JSP is based on ICP and we don't really need to differentiate
> between the two. So let's just delcare JSP to be ICP.
>
> The only slight change here is for Wa_14011294188 which we
> used to apply for JSP but now we'll only apply to MCC. This
> should be fine since the issue being dealt with was introduced
> in TGP and inherited into MCC. JSP being derived from ICP
> should not need this workaround.

I'll take your word for it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  drivers/gpu/drm/i915/intel_pch.c                   | 3 ++-
>  drivers/gpu/drm/i915/intel_pch.h                   | 4 +---
>  3 files changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index a9cb27f1c964..589af257edeb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1608,7 +1608,7 @@ static void icl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>=20=20
>  	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_JSP &&
> +	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP &&
>  	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)
>  		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
>  			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/inte=
l_pch.c
> index b45c504c6f03..0fec25be146a 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -128,7 +128,8 @@ intel_pch_type(const struct drm_i915_private *dev_pri=
v, unsigned short id)
>  	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
>  		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
> -		return PCH_JSP;
> +		/* JSP is ICP compatible */
> +		return PCH_ICP;
>  	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
>  	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
>  	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
> diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/inte=
l_pch.h
> index 07f6f5517968..7c8ce9781d1a 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -22,8 +22,7 @@ enum intel_pch {
>  	PCH_LPT,	/* Lynxpoint/Wildcatpoint PCH */
>  	PCH_SPT,        /* Sunrisepoint/Kaby Lake PCH */
>  	PCH_CNP,        /* Cannon/Comet Lake PCH */
> -	PCH_ICP,	/* Ice Lake PCH */
> -	PCH_JSP,	/* Jasper Lake PCH */
> +	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
>  	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>  	PCH_ADP,	/* Alder Lake PCH */
>=20=20
> @@ -67,7 +66,6 @@ enum intel_pch {
>  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG2)
>  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ADP)
>  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG1)
> -#define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_JSP)
>  #define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_TGP)
>  #define HAS_PCH_ICP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ICP)
>  #define HAS_PCH_CNP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP)

--=20
Jani Nikula, Intel Open Source Graphics Center
