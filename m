Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C621E5630C4
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 11:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A39113E54;
	Fri,  1 Jul 2022 09:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B057113E45
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 09:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656669348; x=1688205348;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2Iv0AJHY6RKqMVay28sESq8C09JC8X6Z0UnUYg9SX6w=;
 b=Is/12N3g2N9Fbcf8i6Zztr5FkI5cZHOuoOML8ZhONjoID0HoEBniJ/XQ
 wDYLTwiygQpgJ7OyGW31d3WyelCv95TY/CKTpCIF53hFrvQL7xFPD3hMl
 AHe0J8At8Gx2EcJN+/vLVsWicb7lel9GEGDFac33teFbavpv99YmIVMUx
 Zai/GFPorcoQc0jQ/ZnJPZ8Qs5B6oSEtBN+ANv+jT29ZEW35i20+o//o7
 9CjUza6z8VaAiiDRdeBKnaeCyXBok0g5BO/BZcY+jQ2OBuQVa0/hrsm9s
 ZPUxsBLldCQ96qRLQEvLA3pxV8Ba1vmL1bBCuO4l9sSIX2hrnImfd/i3+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="283347433"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="283347433"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 02:55:47 -0700
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="648288144"
Received: from ksecero-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.48.116])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 02:55:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220630150600.24611-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-3-ville.syrjala@linux.intel.com>
Date: Fri, 01 Jul 2022 12:55:43 +0300
Message-ID: <87fsjlnom8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Nuke PCH_MCC
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
> MCC is derived from TGP, and we have no real need to
> differentiate between the two. Thus remove PCH_MCC and
> just declare it to be PCH_TGP compatible.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
>  drivers/gpu/drm/i915/intel_pch.c          | 3 ++-
>  drivers/gpu/drm/i915/intel_pch.h          | 4 +---
>  4 files changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 272e1bf6006b..2330604b0bcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4179,7 +4179,7 @@ static enum hpd_pin ehl_hpd_pin(struct drm_i915_pri=
vate *dev_priv,
>  	if (port =3D=3D PORT_D)
>  		return HPD_PORT_A;
>=20=20
> -	if (HAS_PCH_MCC(dev_priv))
> +	if (HAS_PCH_TGP(dev_priv))
>  		return icl_hpd_pin(dev_priv, port);
>=20=20
>  	return HPD_PORT_A + port - PORT_A;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 1ae09431f53a..ebd91aa69dd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2852,7 +2852,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *=
encoder)
>  		ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
>  	else if (DISPLAY_VER(dev_priv) =3D=3D 9 && HAS_PCH_TGP(dev_priv))
>  		ddc_pin =3D gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
> -	else if (HAS_PCH_MCC(dev_priv))
> +	else if (IS_JSL_EHL(dev_priv) && HAS_PCH_TGP(dev_priv))
>  		ddc_pin =3D mcc_port_to_ddc_pin(dev_priv, port);

Nitpick, mcc_ prefix is now an outlier here, and could be named after
the CPU/PCH combo like above for gen 9 and TGP. But no big deal.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>  	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>  		ddc_pin =3D icl_port_to_ddc_pin(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/inte=
l_pch.c
> index 94446cac6605..b45c504c6f03 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -116,7 +116,8 @@ intel_pch_type(const struct drm_i915_private *dev_pri=
v, unsigned short id)
>  	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon PCH\n");
>  		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
> -		return PCH_MCC;
> +		/* MCC is TGP compatible */
> +		return PCH_TGP;
>  	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
>  	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
> diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/inte=
l_pch.h
> index b7a8cf409d48..07f6f5517968 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -24,8 +24,7 @@ enum intel_pch {
>  	PCH_CNP,        /* Cannon/Comet Lake PCH */
>  	PCH_ICP,	/* Ice Lake PCH */
>  	PCH_JSP,	/* Jasper Lake PCH */
> -	PCH_MCC,        /* Mule Creek Canyon PCH */
> -	PCH_TGP,	/* Tiger Lake PCH */
> +	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>  	PCH_ADP,	/* Alder Lake PCH */
>=20=20
>  	/* Fake PCHs, functionality handled on the same PCI dev */
> @@ -69,7 +68,6 @@ enum intel_pch {
>  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ADP)
>  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG1)
>  #define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_JSP)
> -#define HAS_PCH_MCC(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_MCC)
>  #define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_TGP)
>  #define HAS_PCH_ICP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ICP)
>  #define HAS_PCH_CNP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP)

--=20
Jani Nikula, Intel Open Source Graphics Center
