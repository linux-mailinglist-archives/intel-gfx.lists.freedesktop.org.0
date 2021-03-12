Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195A83399C1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 23:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0B46E05F;
	Fri, 12 Mar 2021 22:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 474E06E05F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 22:42:05 +0000 (UTC)
IronPort-SDR: k+ANhBvXjnnjxymei0otdUJnsbJLBj2Ps/THPxA2ay4rA3Y+BDVF8TRepJKZ8aFE7rLEYs3Zli
 TYtp2dcy1C1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="188263762"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="188263762"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 14:41:59 -0800
IronPort-SDR: hs0IvyJEeO1+ZL3K3yG+HQolL/G9iuD458FkKxNSQk2CRBxRZgveZPWB1zWQWbFfpiYCPjy6LF
 DDg1BB2UWDFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="604092595"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 12 Mar 2021 14:41:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 14:41:59 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 14:41:59 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Fri, 12 Mar 2021 14:41:59 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 08/56] drm/i915/xelpd: Handle proper AUX interrupt bits
Thread-Index: AQHXFscEL5YpxFjJrEGSWfg9jIpbLKqA87Ew
Date: Fri, 12 Mar 2021 22:41:56 +0000
Message-ID: <90f851a1c8904d4fb64e4c5ae54109e5@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-9-matthew.d.roper@intel.com>
In-Reply-To: <20210311223632.3191939-9-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/56] drm/i915/xelpd: Handle proper AUX
 interrupt bits
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, March 11, 2021 2:36 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [PATCH 08/56] drm/i915/xelpd: Handle proper AUX interrupt bits
> 
> XE_LPD has new AUX interrupt bits for DDI-D and DDI-E that take the spots
> that were used by TC5/TC6 on Display12 platforms.
> 
> While we're at it, let's convert the bit definitions for all TGL+ aux bits over to
> the modern REG_BIT() notation.
> 
> v2:
>  - Maintain bit order rather than logical order.  (Lucas)
>  - Convert surrounding code to REG_BIT() notation.  (Lucas)
> 
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> Bspec: 50064
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 12 +++++++++++-
> drivers/gpu/drm/i915/i915_reg.h | 20 +++++++++++---------
>  2 files changed, 22 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c
> b/drivers/gpu/drm/i915/i915_irq.c index 23be88d59055..c9e03973502c
> 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2269,7 +2269,17 @@ static u32 gen8_de_port_aux_mask(struct
> drm_i915_private *dev_priv)  {
>  	u32 mask;
> 
> -	if (DISPLAY_VER(dev_priv) >= 12)
> +	if (DISPLAY_VER(dev_priv) >= 13)
> +		return TGL_DE_PORT_AUX_DDIA |
> +			TGL_DE_PORT_AUX_DDIB |
> +			TGL_DE_PORT_AUX_DDIC |
> +			XELPD_DE_PORT_AUX_DDID |
> +			XELPD_DE_PORT_AUX_DDIE |
> +			TGL_DE_PORT_AUX_USBC1 |
> +			TGL_DE_PORT_AUX_USBC2 |
> +			TGL_DE_PORT_AUX_USBC3 |
> +			TGL_DE_PORT_AUX_USBC4;
> +	else if (DISPLAY_VER(dev_priv) >= 12)
>  		return TGL_DE_PORT_AUX_DDIA |
>  			TGL_DE_PORT_AUX_DDIB |
>  			TGL_DE_PORT_AUX_DDIC |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index e5dd0203991b..475d14db2844
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7855,15 +7855,17 @@ enum {
>  #define  BDW_DE_PORT_HOTPLUG_MASK
> 	GEN8_DE_PORT_HOTPLUG(HPD_PORT_A)
>  #define  BXT_DE_PORT_GMBUS		(1 << 1)
>  #define  GEN8_AUX_CHANNEL_A		(1 << 0)
> -#define  TGL_DE_PORT_AUX_USBC6		(1 << 13)
> -#define  TGL_DE_PORT_AUX_USBC5		(1 << 12)
> -#define  TGL_DE_PORT_AUX_USBC4		(1 << 11)
> -#define  TGL_DE_PORT_AUX_USBC3		(1 << 10)
> -#define  TGL_DE_PORT_AUX_USBC2		(1 << 9)
> -#define  TGL_DE_PORT_AUX_USBC1		(1 << 8)
> -#define  TGL_DE_PORT_AUX_DDIC		(1 << 2)
> -#define  TGL_DE_PORT_AUX_DDIB		(1 << 1)
> -#define  TGL_DE_PORT_AUX_DDIA		(1 << 0)
> +#define  TGL_DE_PORT_AUX_USBC6		REG_BIT(13)
> +#define  XELPD_DE_PORT_AUX_DDIE		REG_BIT(13)
> +#define  TGL_DE_PORT_AUX_USBC5		REG_BIT(12)
> +#define  XELPD_DE_PORT_AUX_DDID		REG_BIT(12)
> +#define  TGL_DE_PORT_AUX_USBC4		REG_BIT(11)
> +#define  TGL_DE_PORT_AUX_USBC3		REG_BIT(10)
> +#define  TGL_DE_PORT_AUX_USBC2		REG_BIT(9)
> +#define  TGL_DE_PORT_AUX_USBC1		REG_BIT(8)
> +#define  TGL_DE_PORT_AUX_DDIC		REG_BIT(2)
> +#define  TGL_DE_PORT_AUX_DDIB		REG_BIT(1)
> +#define  TGL_DE_PORT_AUX_DDIA		REG_BIT(0)
> 
>  #define GEN8_DE_MISC_ISR _MMIO(0x44460)  #define GEN8_DE_MISC_IMR
> _MMIO(0x44464)
> --
> 2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
