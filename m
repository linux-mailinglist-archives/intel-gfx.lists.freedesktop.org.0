Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23377339A2A
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Mar 2021 00:52:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29896E071;
	Fri, 12 Mar 2021 23:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD116E06E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 23:52:50 +0000 (UTC)
IronPort-SDR: Bn4hcyD9Dzvbmhu94dm3r3fT3+qtNuoPL73NWyL4dDbIzbtD6Dwfe7xaNkK+6VH/B+ozhAhOp0
 orI5zsLd1bWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="185548362"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="185548362"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 15:52:47 -0800
IronPort-SDR: +Yzrl9X3mdYTCjrIiTV8LaLlHh4OamhUEhEHK73r2qArgo57ufzxH4zaQZv0B3zZmIMr2b51tW
 K0VE2RgxPY+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="439184025"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Mar 2021 15:52:47 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 15:52:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 15:52:46 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Fri, 12 Mar 2021 15:52:46 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 26/56] drm/i915/adl_p: Add PCH support
Thread-Index: AQHXFscsRbxJpbg7F0+3Xe0DZrmNb6qBB+tQ
Date: Fri, 12 Mar 2021 23:52:45 +0000
Message-ID: <84d1bb29e22e467caf670c2551561788@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-27-matthew.d.roper@intel.com>
In-Reply-To: <20210311223632.3191939-27-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 26/56] drm/i915/adl_p: Add PCH support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> Roper
> Sent: Thursday, March 11, 2021 2:36 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 26/56] drm/i915/adl_p: Add PCH support
> 
> From: Clinton Taylor <Clinton.A.Taylor@intel.com>
> 
> Add ADP-P PCH device ID and assign as ADL PCH if found. Previously we
> would assign the DDC pin map based on the PCH, but it can also change
> based on the CPU. From Bspec 20124: "The physical port to pin pair mapping
> are defined in the Bspec per PCH. Mapping can further change based on CPU
> Si used as CPU and PCH can be mixed and matched".
> 
> Bspec: 20124
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
> drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
>  drivers/gpu/drm/i915/intel_pch.c          | 6 ++++--
>  drivers/gpu/drm/i915/intel_pch.h          | 1 +
>  4 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index e4cef54726b4..5f8d14be1265 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1649,7 +1649,7 @@ static u8 map_ddc_pin(struct drm_i915_private
> *dev_priv, u8 vbt_pin)
>  	const u8 *ddc_pin_map;
>  	int n_entries;
> 
> -	if (HAS_PCH_ADP(dev_priv)) {
> +	if (IS_ALDERLAKE_S(dev_priv)) {
>  		ddc_pin_map = adls_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
>  	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) { diff --git
> a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 4f285c7d54c4..2a2b01026564 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3213,7 +3213,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder
> *encoder)
>  		return ddc_pin;
>  	}
> 
> -	if (HAS_PCH_ADP(dev_priv))
> +	if (IS_ALDERLAKE_S(dev_priv))
>  		ddc_pin = adls_port_to_ddc_pin(dev_priv, port);
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port); diff --git
> a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> index 7476f0e063c6..98a17dd1bda4 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -130,8 +130,10 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
>  		return PCH_JSP;
>  	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
> +	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
> -		drm_WARN_ON(&dev_priv->drm,
> !IS_ALDERLAKE_S(dev_priv));
> +		drm_WARN_ON(&dev_priv->drm,
> !IS_ALDERLAKE_S(dev_priv) &&
> +			    !IS_ALDERLAKE_P(dev_priv));
>  		return PCH_ADP;
>  	default:
>  		return PCH_NONE;
> @@ -161,7 +163,7 @@ intel_virt_detect_pch(const struct drm_i915_private
> *dev_priv,
>  	 * make an educated guess as to which PCH is really there.
>  	 */
> 
> -	if (IS_ALDERLAKE_S(dev_priv))
> +	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>  		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
>  	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
> diff --git a/drivers/gpu/drm/i915/intel_pch.h
> b/drivers/gpu/drm/i915/intel_pch.h
> index 7318377503b0..e2f3f30c6445 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -55,6 +55,7 @@ enum intel_pch {
>  #define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
>  #define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
>  #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
> +#define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
>  #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35
> has 2918 */
> --
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
