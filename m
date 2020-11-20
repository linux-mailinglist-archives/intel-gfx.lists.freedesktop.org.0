Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 906F72B9F02
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 01:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBBCA6E831;
	Fri, 20 Nov 2020 00:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D2C6E831
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 00:09:08 +0000 (UTC)
IronPort-SDR: JVouggPwlMfMDTnqO2SQw7KOTd0Md13JBJe+Sy9SLvvyj4mwS8pyK96bWpc3WjqCS8aPUmjeVQ
 rPDPMHjwcJZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="150654414"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="150654414"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 16:09:07 -0800
IronPort-SDR: wdguOb9it+m4NeuHaBf6kGd8mtovO9V8KTR+puuI/95BXkIfvddDRk5j62ayT353uUuO3MX/w4
 +fC7j3NVxURQ==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="311809631"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 16:09:07 -0800
Date: Thu, 19 Nov 2020 16:09:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201120000906.GZ2099117@mdroper-desk1.amr.corp.intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-6-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117185029.22078-6-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/21] drm/i915/adl_s: Add PCH support
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 10:50:13AM -0800, Aditya Swarup wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> =

> Add support for Alderpoint(ADP) PCH used with Alderlake-S.
> =

> v2:
> - Use drm_dbg_kms and drm_WARN_ON based on Jani's feedback.(aswarup)
> =


This patch looks okay, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

but I'll have some comments on later patches which are basing south
display conditions on a check for ADL-S rather than a check for ADP.
Even if we anticipate future platforms re-using ADP and needing
different logic in those areas (like we do with TGP when paired with
RKL), I think we might want to handle that differently if/when the time
comes.


Matt

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pch.c | 8 +++++++-
>  drivers/gpu/drm/i915/intel_pch.h | 3 +++
>  2 files changed, 10 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/inte=
l_pch.c
> index f31c0dabd0cc..2a6d70f247e8 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -128,6 +128,10 @@ intel_pch_type(const struct drm_i915_private *dev_pr=
iv, unsigned short id)
>  		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
>  		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
>  		return PCH_JSP;
> +	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
> +		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
> +		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv));
> +		return PCH_ADP;
>  	default:
>  		return PCH_NONE;
>  	}
> @@ -155,7 +159,9 @@ intel_virt_detect_pch(const struct drm_i915_private *=
dev_priv)
>  	 * make an educated guess as to which PCH is really there.
>  	 */
>  =

> -	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
> +	if (IS_ALDERLAKE_S(dev_priv))
> +		id =3D INTEL_PCH_ADP_DEVICE_ID_TYPE;
> +	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
>  	else if (IS_JSL_EHL(dev_priv))
>  		id =3D INTEL_PCH_MCC_DEVICE_ID_TYPE;
> diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/inte=
l_pch.h
> index 06d2cd50af0b..7318377503b0 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -26,6 +26,7 @@ enum intel_pch {
>  	PCH_JSP,	/* Jasper Lake PCH */
>  	PCH_MCC,        /* Mule Creek Canyon PCH */
>  	PCH_TGP,	/* Tiger Lake PCH */
> +	PCH_ADP,	/* Alder Lake PCH */
>  =

>  	/* Fake PCHs, functionality handled on the same PCI dev */
>  	PCH_DG1 =3D 1024,
> @@ -53,12 +54,14 @@ enum intel_pch {
>  #define INTEL_PCH_TGP2_DEVICE_ID_TYPE		0x4380
>  #define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
>  #define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
> +#define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
>  #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
>  =

>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> +#define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ADP)
>  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG1)
>  #define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_JSP)
>  #define HAS_PCH_MCC(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_MCC)
> -- =

> 2.27.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
