Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7088D30291D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 18:39:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC0A89E86;
	Mon, 25 Jan 2021 17:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B34C89E86
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 17:39:11 +0000 (UTC)
IronPort-SDR: 1xrLQ93OUyVsBqAIU282xq1Mj8Pg/DjU4OB4HGnYHwCF+IrV14Sfl65cQzNtH49Axu5DZwD8S3
 bubw20hKRn/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="264591129"
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="264591129"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 09:39:09 -0800
IronPort-SDR: KnizZ/ATTeoJELxUt4yBF+i1XCCjSc2sWXHkvFEa/huRz8UsjdoZdjgk+SMoXKknm0ZiJ24Mc8
 IDsm9SXTgv2g==
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="368763034"
Received: from vlesnikx-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.223])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 09:39:07 -0800
Date: Mon, 25 Jan 2021 09:39:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210125173904.tqbsahm3vhypz66m@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210125140753.347998-1-aditya.swarup@intel.com>
 <20210125140753.347998-3-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125140753.347998-3-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/adl_s: Add PCH support
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 06:07:45AM -0800, Aditya Swarup wrote:
>From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>
>Add support for Alderpoint(ADP) PCH used with Alderlake-S.
>
>v2:
>- Use drm_dbg_kms and drm_WARN_ON based on Jani's feedback.(aswarup)
>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Caz Yokoyama <caz.yokoyama@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/intel_pch.c | 8 +++++++-
> drivers/gpu/drm/i915/intel_pch.h | 3 +++
> 2 files changed, 10 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel=
_pch.c
>index ecaf314d60b6..4813207fc053 100644
>--- a/drivers/gpu/drm/i915/intel_pch.c
>+++ b/drivers/gpu/drm/i915/intel_pch.c
>@@ -128,6 +128,10 @@ intel_pch_type(const struct drm_i915_private *dev_pri=
v, unsigned short id)
> 		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
> 		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
> 		return PCH_JSP;
>+	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
>+		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
>+		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv));
>+		return PCH_ADP;
> 	default:
> 		return PCH_NONE;
> 	}
>@@ -156,7 +160,9 @@ intel_virt_detect_pch(const struct drm_i915_private *d=
ev_priv,
> 	 * make an educated guess as to which PCH is really there.
> 	 */
>
>-	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>+	if (IS_ALDERLAKE_S(dev_priv))
>+		id =3D INTEL_PCH_ADP_DEVICE_ID_TYPE;
>+	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
> 		id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> 	else if (IS_JSL_EHL(dev_priv))
> 		id =3D INTEL_PCH_MCC_DEVICE_ID_TYPE;
>diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel=
_pch.h
>index 06d2cd50af0b..7318377503b0 100644
>--- a/drivers/gpu/drm/i915/intel_pch.h
>+++ b/drivers/gpu/drm/i915/intel_pch.h
>@@ -26,6 +26,7 @@ enum intel_pch {
> 	PCH_JSP,	/* Jasper Lake PCH */
> 	PCH_MCC,        /* Mule Creek Canyon PCH */
> 	PCH_TGP,	/* Tiger Lake PCH */
>+	PCH_ADP,	/* Alder Lake PCH */
>
> 	/* Fake PCHs, functionality handled on the same PCI dev */
> 	PCH_DG1 =3D 1024,
>@@ -53,12 +54,14 @@ enum intel_pch {
> #define INTEL_PCH_TGP2_DEVICE_ID_TYPE		0x4380
> #define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
> #define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
>+#define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
> #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
> #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
> #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
>
> #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
> #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>+#define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ADP)
> #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG1)
> #define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_JSP)
> #define HAS_PCH_MCC(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_MCC)
>-- =

>2.27.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
