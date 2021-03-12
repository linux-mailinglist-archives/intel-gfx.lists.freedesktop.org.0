Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5C6339A34
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Mar 2021 00:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED326E06E;
	Fri, 12 Mar 2021 23:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2D76E06E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 23:59:42 +0000 (UTC)
IronPort-SDR: IDhle2BQIO+qzKpX9hg0fWkyfUnv2K2PcKZcG+jsq2a3c4gslhdNeUEqCNH4FNJFieIzYdd7re
 FnQRr0V0AVKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="185548745"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="185548745"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 15:59:41 -0800
IronPort-SDR: yYbC69HrgU9e9vFInEw7eQGfC2dd2JkQPEfg6L3nUr00hloYwPGznlmw2N8VDt85mdpm5Fbv4s
 IVrKdeKZeCWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="604113156"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 12 Mar 2021 15:59:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 15:59:39 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 15:59:38 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Fri, 12 Mar 2021 15:59:38 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 28/56] drm/i915/adl_p: Extend PLANE_WM bits
 for blocks & lines
Thread-Index: AQHXFscdvzqUzEuIVEyHipjC85/gZqqBCcKw
Date: Fri, 12 Mar 2021 23:59:37 +0000
Message-ID: <5d5820df2c4a4952893c366341ad0cb3@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-29-matthew.d.roper@intel.com>
In-Reply-To: <20210311223632.3191939-29-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 28/56] drm/i915/adl_p: Extend PLANE_WM bits
 for blocks & lines
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
> Subject: [Intel-gfx] [PATCH 28/56] drm/i915/adl_p: Extend PLANE_WM bits
> for blocks & lines
> 
> ADL-P further extends the bits in PLANE_WM that represent blocks and lines;
> we need to extend our masks accordingly.  Since these bits are reserved and
> MBZ on earlier platforms, it's safe to use the larger bitmask on all platforms.
> 
> Bspec: 50419
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index cdb2f7b136a9..1d0cb423720e
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6439,8 +6439,8 @@ enum {
>  #define _PLANE_WM_TRANS_2_B	0x71368
>  #define   PLANE_WM_EN		(1 << 31)
>  #define   PLANE_WM_IGNORE_LINES	(1 << 30)
> -#define   PLANE_WM_LINES_MASK	REG_GENMASK(21, 14)
> -#define   PLANE_WM_BLOCKS_MASK	0x7ff /* skl+: 10 bits, icl+ 11 bits */
> +#define   PLANE_WM_LINES_MASK	REG_GENMASK(26, 14)
> +#define   PLANE_WM_BLOCKS_MASK	REG_GENMASK(11, 0)
> 
>  #define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
> #define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))
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
