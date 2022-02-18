Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC304BC2CE
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 00:15:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C0710EA7E;
	Fri, 18 Feb 2022 23:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5968110EA7E
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 23:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645226129; x=1676762129;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HSRVmYO7Uy5B5iy05ihJWkiuY6hSEXn9bAnzfsT5Ib4=;
 b=RernAgLuGSMhBf4qZNsjkrmFOSWHb+ub9JGkNaKTx0bbXKl2nlUny5kn
 Wx9ZSajtZcAkeGpeZkV3JBtLsbhaAFCF1mnV4BGnbLsLvqnr0AvnGqQBm
 bvywpZ9IAgVuVwnvAmSFQE54D+ME5bZ89/6wFPGULt0FCaYVL7XILbgsf
 XkAn1jGuWijDLWqvBOuHhQ8+oynIIwV33gv7c/PwS+wiZ2WWxli2wIpiG
 KLOqV+9cAJgtXRGLAADU7bZqYt7oOWH5Leda/7AOyuHa2i49Zb77QdaTn
 BCU4ovkyVHbJz3GPiVfvHOO43p6DDtxJpTJPtOyZ06PUClhWPJXTPMNo2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="238652799"
X-IronPort-AV: E=Sophos;i="5.88,380,1635231600"; d="scan'208";a="238652799"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 15:15:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,380,1635231600"; d="scan'208";a="546533351"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 18 Feb 2022 15:15:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 15:15:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 15:15:27 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Fri, 18 Feb 2022 15:15:27 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl-n: Add PCH Support for Alder
 Lake N
Thread-Index: AQHYE2o9l/+0+Ay1T0iS16SEnhApaayaE96A
Date: Fri, 18 Feb 2022 23:15:27 +0000
Message-ID: <bfd3dbb187c346ba92f68b6f0f3481f7@intel.com>
References: <20220127103520.348015-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220127103520.348015-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl-n: Add PCH Support for Alder
 Lake N
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Te=
jas
> Upadhyay
> Sent: Thursday, January 27, 2022 2:35 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/adl-n: Add PCH Support for Alder La=
ke
> N
>=20
> Add the PCH ID for ADL-N.
>=20
> Signed-off-by: Tejas Upadhyay
> <tejaskumarx.surendrakumar.upadhyay@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pch.c | 1 +
>  drivers/gpu/drm/i915/intel_pch.h | 1 +
>  2 files changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_pch.c
> b/drivers/gpu/drm/i915/intel_pch.c
> index da8f82c2342f..4f7a61d5502e 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -130,6 +130,7 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
>  	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
>  	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
>  	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
> +	case INTEL_PCH_ADP4_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
> !IS_ALDERLAKE_S(dev_priv) &&
>  			    !IS_ALDERLAKE_P(dev_priv));
> diff --git a/drivers/gpu/drm/i915/intel_pch.h
> b/drivers/gpu/drm/i915/intel_pch.h
> index 6bff77521094..6fd20408f7bf 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -58,6 +58,7 @@ enum intel_pch {
>  #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
>  #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
>  #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
> +#define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
>  #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35
> has 2918 */
> --
> 2.34.1

