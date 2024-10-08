Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5999959DF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:16:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B1C10E267;
	Tue,  8 Oct 2024 22:16:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kN8J57W2";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F7ED10E267
 for <Intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 22:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728425795; x=1759961795;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3t4FkhRSyG8uFHVcrPcLeZ+MpKjcoz0t/YRTz1U+XJU=;
 b=kN8J57W2EEP16OWUNiRpoTeEqnwtRmiknmPC1IGAmQgOIyf9UDwENrEK
 XKe4Vp5Pq3NLRb8aPnrqXWY/8Hbd7OMi76vF3XTSCf4VXsnRv/POE7a9+
 xxq781f/8bQYYHEsXSqV7DZSrGxLRMnV+YQ+TWzvMNcRnSTCmgh5qo+0E
 RSl1T0ecSRPqvSEXWwixrx3QDZ4BKvUtwZM2/YdDhVVoZl/0zzF+nTP4l
 ApLQpEScr59lTz6K4mWd6ir4tQttvysWHhfEJvl/RxBY6rNCdRTIjAdhg
 DOeVfXOqIsahh9ixAX9VaPQv2VS3dRpP0CCUFwAm8R2iNDwNxPteDRy5E w==;
X-CSE-ConnectionGUID: RiYKcr0rQV+FA2BBaqIHfA==
X-CSE-MsgGUID: 92wyl95OQgaPYDEJbQRzfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27566373"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="27566373"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:16:35 -0700
X-CSE-ConnectionGUID: iFvD+4ysQg6TQ3CSpfEeWw==
X-CSE-MsgGUID: e5JtGbMZSYCkcq7GlnnPjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="106840803"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 15:16:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 15:16:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 15:16:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 15:16:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p/QIa+Xg2uVulYfS38LDyN7Jqr4cOdkeAW134joMxQHmpwk78FZKZ7sCYeuzw+i18dkCYe+hqM6GCs/nDqDwATsiouKCVLzLfRqD1ix0/lOLc4CpNME+ZPBQH61Ws0vU6/rExrT20A7friwmS08l3Iv8g4lWDprQ2RVvcv7yfep7GNI2RnqEtMAZXym9IpHRkXyMyoIcwmvPZD3Btk5Caz+rW7J2R/c/jT3F+EPNKADemDUqRHmVWUVLo9Yrq71G3rylILkbbOTRpziAifjHvisTStqDbHLSdP2nl+MgH5zaKkHHBGNelaxsfFqGpzyH2LjoNxkG7HT3+3UVgMvhfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M91GLW0In7l5OnJHIezLkGj4euFo5jWxMDcfXGXgGi0=;
 b=kTvKtwoD8vh8DNxY2zQZrC8Rgga2WCEkzf/VbGOVQqBIwctTQtoJcJqHlD9HkSUmPQDtD76yyn5pAg80sFCWHnXyOD9fdeuglCgnP+rURXY6CX4m//+muK4w9GreNcwcTeU3lgeOzc6zyeiu4Zjtmja6jFDKqDaWgOIN7oSFT1tg3bURjg1DC9V/8WnralwuCqCF1wynfMP7XJyKpLxee5KHmOmmsZxnsas/1mnjdANyjCu/Cw/3t/68vPvtQAnrT+V1VSkqpfGMjen6v7dhq9XYSj3SOZqIedG0b1OmPK9jq0Cubsu7SnLenvyvnRnRRZb0awUz4BxUek5f+vD1BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB6559.namprd11.prod.outlook.com (2603:10b6:806:26d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Tue, 8 Oct
 2024 22:16:32 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 22:16:26 +0000
Date: Tue, 8 Oct 2024 15:16:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
CC: <Intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Fuse bit for power management disable
 removed
Message-ID: <20241008221624.GL4891@mdroper-desk1.amr.corp.intel.com>
References: <20241004203540.3884792-1-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241004203540.3884792-1-clinton.a.taylor@intel.com>
X-ClientProxiedBy: BYAPR01CA0051.prod.exchangelabs.com (2603:10b6:a03:94::28)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB6559:EE_
X-MS-Office365-Filtering-Correlation-Id: 50aa1dc2-61e8-45b5-8c5e-08dce7e6d9d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?l7rVU3sJ59Cq2QwEHjoaKx4vvhIwo3lSpEqzjWfe6kNX0KmlgzvD+ZRsPqDS?=
 =?us-ascii?Q?2FOoFviyISmkswlK+Z1HNVoeoqYstqLZbxZaf2utqxek2mL1vKRel/e1Niv0?=
 =?us-ascii?Q?OmUgtaBQrl2yL3ChjPmcEwFHNR7wzYRHOmfQRqA/qUvs1qHtHi8CdriyxnQm?=
 =?us-ascii?Q?DPeaWq2p31JCvtgrFuyzHkVnyI45Rm+W2OesB2QuEEoILbD8KpPj25EMnyz4?=
 =?us-ascii?Q?TsaS2C9wyFnh5dQV9aCgDenCtLflULjL/L+lXiAjIAK8inrrAsKzUcrPUv2a?=
 =?us-ascii?Q?zLUPZEhIFA7vJbjW9vuUVMDCe2SPzSkMZkTBjlshQrD8gjeBuWApX1QUXjto?=
 =?us-ascii?Q?5Irr3oypBx4HpDY31spl8By63zutj4VQSJpgMKo5WA6qQDOVP8invVfUVXzQ?=
 =?us-ascii?Q?xwMFHBlHef6Sg8xQ8XoicPuBKMiH/6hMf/xO9tHUJdCFKwu5pnVnCEbIThPs?=
 =?us-ascii?Q?h2LVOWTZ9AOdPxjkW5rs0bpodPHnSBHNJFu6a2tr2cbnOY5l855vlqRK9MXZ?=
 =?us-ascii?Q?yqovhzV/bk+pxw3lrXVyhQfXJnkwefHTSR9lwX7Rxpd+4AAIEtkn8o3TjAvd?=
 =?us-ascii?Q?Ib95CQ32ag3czvHmNY0gf+opkvUSafNdwiKS6wvGK6FrkDEY5m1/Tcm6IIqP?=
 =?us-ascii?Q?QkV2DdmkGHB7zyH2CgSOTRuhKoPYeM8CHaAL71Fi47QvcqfzpJxxRXJmTNVI?=
 =?us-ascii?Q?VHk2mxUZ8uTTzBp+KOmNmVi5tkIwxwKI9yQ4cXZeRYN6uAZANzZ+kNa5mvaB?=
 =?us-ascii?Q?lMAYcpCKK+KtyFxCanLoXM+NJGhaaq/88TeTy/HrTQ/4nM7va/2qiMm0fJPW?=
 =?us-ascii?Q?3m74C+oMNsUKPGnlHH11i3OoCSJoaPEt/YAUTvAUyWvfk6DIZ86AEL4uVib5?=
 =?us-ascii?Q?zoJqVE7Su1pzZ3/dBKwUONxaFfQN6WcVzFGFSZtUNbn977dTGjVrfZv2Q9lb?=
 =?us-ascii?Q?eGR9pXhEHDBpeS4rH47tWSYa/7+EFoKAW8BGdkT4HEhrLz8Rb50NmhQvFRuz?=
 =?us-ascii?Q?XGaFWyBLn3sILUvIQF6JoPMr66LPWBYlpTiSYpEvaJO7Mg3mkQl9iavxcPFH?=
 =?us-ascii?Q?qTnoXNnu0zJJuVi5CIpV48HJG5O7anCjE20XAwVBJ3azOqPvOo2LJ7/KK36f?=
 =?us-ascii?Q?sJOe3hjPLlCFvV7v1U+5LOZoxFHG7Hj/iIDMCSW/moK9AbT4OS6XYXGIGu+C?=
 =?us-ascii?Q?UX5NGmN8nhH8wcTnJiYxGN33s5AeKR2qvXK1GjyHt8QPSa21SY39FVd4XsNN?=
 =?us-ascii?Q?T7SiJmH1BA2M2+NzCNnp+w8WBSWdTXJOj5wTcE1WIg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6/jRXafnk5P2PMZQ6WNonA0vBzQvR3v6r22JueRVnxyXGcPDECQDuOWy3cV5?=
 =?us-ascii?Q?PEhIiVNZ7GywvlV0WrY/hLpo59wBMWfJcMRqSowxWfnWZ2oQ22u2E3xwtL6o?=
 =?us-ascii?Q?bnLcH4f+Iyppmcq+VQy4hbQ4qDdPdFQn7HzAT/kzADqd5LL/DVybalAuUEIH?=
 =?us-ascii?Q?oOGENT7pbJn+yphz2AN2wDTq8BXl0d0cOIc3YGHkVgJCDq1SnZzq9UKZIHiD?=
 =?us-ascii?Q?xCZ25QFT4mD3zIRmHJ/1tlCzu9QLxC1dyhWEOa3RgX7yHR9wwopEOleIEnTH?=
 =?us-ascii?Q?SKL7f8MdxtwSYojyix5Peu2Hj8tN/PDpW3E8Ji+voysPECL3j5bOOjc0QPiQ?=
 =?us-ascii?Q?lpD9+sh3PFYAGxFAHfOHWQyj+OIvjsfDUeprEKO3vvVx/TheBwxzVYfDO55Z?=
 =?us-ascii?Q?6ASm86Vq566sgtjgD/Ek6bfddZZk1mw0Q4h6OOUGGNaeR6m/eIZCW2RHWAnj?=
 =?us-ascii?Q?TJcF4K38ICby2+v3z0L+zQWtdd7UGPLWLE/SDs3yzlF9gWQjDvOEJpCTQwKh?=
 =?us-ascii?Q?9iPXHq5eawj5EcVDw5xq7Eut9bZFQhcvdo+QnfswO1wB60d3wVtio5ppdSPR?=
 =?us-ascii?Q?exXp5hXmlFuudP6pwd2EX7Wn+OToJg09eRbqlNlp04fkpthppWVVxOIeITmD?=
 =?us-ascii?Q?xq5pdbrcPY4rOwuHf0FkEsNjubllPvC9ZO9ku/1R3BXInVpnY5CTSiDSNt1t?=
 =?us-ascii?Q?NhFwkUgSloaswh0dkdVvGnmlsyHmkX3+sN7TIR8brVhoaATlxYxOxx2HK7LU?=
 =?us-ascii?Q?c2Hq4kLbFGP/3hE2UeRvYs3PLweXNbP9ezIDFzGgnd3MkMbOQUKpDGSlQwxX?=
 =?us-ascii?Q?YwDGa+m3HPxg5/XboQVMuTktp3N6ZyNQWxbaOVOD5nMSk+I5jNmEx3Vkz0f+?=
 =?us-ascii?Q?RxJWK3/gFNv4hm6HgkQOzhN9KL3TP5ObVxsulF9aPXp+pyn4CqdRDtmCxibt?=
 =?us-ascii?Q?lJHLJ1qj3+byegHgnvk/3qPMVon0lavDXrIx7aW8e7Y/MUmk+sHXs2nErFqO?=
 =?us-ascii?Q?7XBmvLvpLOMzUKsWNV1h63wud/mlx+Oc7+DmXOTa9iP1RC+t8h4N4xHy4B1G?=
 =?us-ascii?Q?RIgbVAHbIlea9jVA+pIQODz/BzW99+OViqimx1yB+gpnp9XRBfQ0Qrz6Al/v?=
 =?us-ascii?Q?MsFzeQg3jhjLOMyq9pFQFHeQzb0CfGrYQCaWm2oZtg5A4uNbfZ3txTiOCkpG?=
 =?us-ascii?Q?bgP1GeTuAc/u+waRDtNVteHrl9GTKwW2KK9Nla/bs0Cxk6/Wc0yZEuWZX/JL?=
 =?us-ascii?Q?AvFHrgkxbT11dXHDjd+7bqODruBTCOq9l7ucbkVBFDsIdKaCIB1cBDn3eFVn?=
 =?us-ascii?Q?vyJc76JrJNv5hbURldjA7KOYvaXlbrihtWr20sUnfQaHXZGucto9Sul/NhNT?=
 =?us-ascii?Q?EoHlY7/rIxWuPD162foUPH4unPT3+Xmii+dKw9fn7X3gaf3sW41gDPkMDr65?=
 =?us-ascii?Q?aO0x2sWlb6/n26YQOGU+LBX06RQ2I8QKcLpErVc5XpmYdpttrZRdUa1mpkwD?=
 =?us-ascii?Q?o7JtWG3GidtLXYODaccsO0naqEN5ZFrGBsc4I7OTI2mWEXZ+i6WLN+Za8T6M?=
 =?us-ascii?Q?RX1DdHtJuacwpPoLCYpcqkJNOqtyfpi8CujDYOldSz6ug/PXh18g1DaDRGoY?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50aa1dc2-61e8-45b5-8c5e-08dce7e6d9d8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 22:16:26.4378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vdwcx8qCYWIQ58N7lh+TG7mFrt81PbWLiIoh0V0te10FeJlH1a+ONuMFJJpToex8mHN02SrOqp+q9pGf0ir7OGWa8rAzx22piEUGu7IEfxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6559
X-OriginatorOrg: intel.com
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

On Fri, Oct 04, 2024 at 01:35:40PM -0700, Clint Taylor wrote:
> Starting with Display 20 the fuse bit to disable Display PM has been
> removed.
> 
> BSPEC: 69464
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index f33062322c66..19aadf635077 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1653,8 +1653,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>  		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
>  			display_runtime->has_hdcp = 0;
>  
> -		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> -			display_runtime->fbc_mask = 0;
> +		if (DISPLAY_VER(i915) < 20) {

According to bspec 50075 this bit actually went away in ADL-P.  So we
shouldn't be checking it on ADL-P, MTL, or BMG either.


Matt

> +			if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> +				display_runtime->fbc_mask = 0;
> +		}
>  
>  		if (DISPLAY_VER(i915) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
>  			display_runtime->has_dmc = 0;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
