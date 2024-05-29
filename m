Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E45208D4007
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 23:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D354311A5E9;
	Wed, 29 May 2024 21:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GMlJe2Xo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B99911A5E8;
 Wed, 29 May 2024 21:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717016899; x=1748552899;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0lYgXL4UpSR0S3m1VqKAdOHvjogWbF31ONYDbWXwIjk=;
 b=GMlJe2XoeEOXjeFyIY7A1PCsZjqYKE2UrzamS++khbVmNNu89zl0bBt0
 vY7HJ2u7I+JUXjP0mmhXR29u3NOfxb7NwmcepuHFzNtCWjfHd8Ydo4mOd
 Rd9sOmjrOhLZ36toZhZxvcZpzYl5MeULs1SavhOY5Jumg4aMGSQBJWa09
 +MAXcKnEXvxmPDLEPQe+XDebiMAAAhGjhcdS90rlPDT5m2xoRtm0r2kCj
 PlDun/7K9ypQfNY0k1oAQUdzxR7RVbrICWygNup/W03I6A/lHNdHsN4eA
 Z9yE6Gw+8Lu0s6rT+2CkL/0/aS2Xh+qPQ0qVfnwqUNRHHcY15CJ/HkBEZ w==;
X-CSE-ConnectionGUID: zyX8OyepRBq6xd62Zuzgyg==
X-CSE-MsgGUID: r/bNy4BITFOQvkDNluD81A==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13634951"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="13634951"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 14:08:18 -0700
X-CSE-ConnectionGUID: wI+HZTFPTbW7kjCrUqv3jA==
X-CSE-MsgGUID: DFtE7uDnRn+yT5f1PIwErg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35669591"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 14:08:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 14:08:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 14:08:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 14:08:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OwpBCx4/kRDnbjUXLXy+BvcY/iZ3b63ZO1cdKVT4HYRpS1y5EWVN2xWtSIDmfMSKYi/hULBwgk7ciLxUHH23G2IrONj+UsVTCxbqsrJ3T+8U+0k4PgCEiu1oBwqO3NMHvRLWav9YAb9WPe0eqFvNV3thmFg3SMkecdcafHZLCRHWwcIAOlUppMJ73dyeOdyJqgz+qlG34LXnrGr1Snlc0BEck1n0bsD4PGKMG+5MXWEvucfHlhTCTCiTNYvMmJQQNLQU7KuQP5V1YceIIWDWrbzMJEjgHnPzKhime88ka/u8f19kWljunSLEuoUeQepxhqeNUG6KZ1oNWbvpk267zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+MaY7e3zkA8LSP7d5lriYKXcLIRvfSiYWhhcgN6aYs=;
 b=Zpaobk89JKdLmZJNryMZew2SlM209WVOGVuLFjUzfs+faiA6LBRLZQiZufK1/0s+Ptv2x4HRJtcLeOJcO1q4wQX0U4IvtX05XkVsmo5PIEmgygcEzjdjl53hj8Iy4dv6NdI9gzFB6lPrDHhSsQFNht/fH4JO9T/U792GtZJSGzNBhrxkq0r7M5HjXe3VhTjRAejI7JWJq9eWoEvBBDUpk2MCGAtfSbXmSuDn2i1I+j3InYGp4oWd4oyVo+8/JzPgB9c7gYTZJJ6tgA4zVRJ88Jzvtn0T4mCZ/BDgh0QP2HIoFPCRV5ei8Dzlrr6DcbCcOHTufviFWCdkgXD/fEct3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA3PR11MB8047.namprd11.prod.outlook.com (2603:10b6:806:2fc::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.19; Wed, 29 May
 2024 21:08:04 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 21:08:04 +0000
Date: Wed, 29 May 2024 14:08:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 03/12] drm/i915/dram: separate fsb freq detection from
 mem freq
Message-ID: <20240529210802.GR4990@mdroper-desk1.amr.corp.intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <22291808996594f0f8604ad64c32845d372f4c5d.1716906179.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <22291808996594f0f8604ad64c32845d372f4c5d.1716906179.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA3PR11MB8047:EE_
X-MS-Office365-Filtering-Correlation-Id: bc1579f4-9c83-44a2-cf98-08dc80236e74
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4X7yhCRV+640p2/AlhHyHSOcgf014ZFJ6+t65ehVs5aMEGUZD+lKRFVNIxKZ?=
 =?us-ascii?Q?zgaLTaufVD0foHd+SncrUI35gYXlTpazUiNz0x0YNmavdeOFFRxes/Ef5onj?=
 =?us-ascii?Q?vDwNmC2duAeD4hmhZAL+PXCZkusgZ4RNrvXQrbhpSE9UXrVm7CHKB05iufcv?=
 =?us-ascii?Q?y2H74oVCYjPcUTo8VDi+fBVYCtKkEkVe9GlBb3Mr0osWx/fG8VJmzI1DO9PA?=
 =?us-ascii?Q?G3DgwwwgNfgUrUW08gTnTTZTfgwGPtrJ3TdVYQ4I+LpOmNlCG3/EG0LvNcI5?=
 =?us-ascii?Q?nIlhL+q3XbY9ZUDXDr72S0/9iEoc+xxwfzYCscxb3IThXzb19K2+DpXB43hW?=
 =?us-ascii?Q?rdUJp8nu2AJkGlQeAVj1+njtM8VHlRbhCHCQpGlIkD+eoGkI3y7fZLqL3cbH?=
 =?us-ascii?Q?CL0aSzWFleAiUIUawJ4IkkcBnMPpPAPhy4jGa+gLY3/yqDJtpKKRlLRVS55Z?=
 =?us-ascii?Q?afB/wng+E9y54GuutI7A93F/WrdPwZ7iBL1pjdkOQrk2jCWqTYnH7oyWfkDM?=
 =?us-ascii?Q?53DYqY/kMmcuUUWt/6l7ePJVrZsFAomSNAXSjXryCvzWpDLlupeL5MQH+/wj?=
 =?us-ascii?Q?kT5UHAqFj/3NTc7g4izR8UPCs2mGXlb91JLAq4CLHZhRHG/Z4CYJf4J+X1J+?=
 =?us-ascii?Q?8dA9kzuzyEXqinJyAzJvRNmM4Wt3MZPmv8GbWEmVxEyeohaZn6crBS70KsEf?=
 =?us-ascii?Q?tt2+mDGl16NRHfxorCECKvPVuWEZz71DbhzG5SQuNfKsP/DhrTLYD9TC6OYU?=
 =?us-ascii?Q?dQUeFNPAVlw5NydFhYRKS39LGkYdKQLFWiL8Farur+c/XI0rPHE2jfA4c/Uf?=
 =?us-ascii?Q?EYUStf/ZdQPBKBLPem9Ztx7DR9b0Z5ZOSjxYbE5TyYx9L3f+dn1K4v2MfEc7?=
 =?us-ascii?Q?fe99HNB0Ov90hdoWTCCpx7qnEcbLaCAavR8/VG08Zp941WQ5UvUJP+hPKp93?=
 =?us-ascii?Q?Gxa3DZp3YybbElue+CMF5K93of5FH6a3/5ZwcPYKmtlaaLMaP9z5FMeOu5Sn?=
 =?us-ascii?Q?Rwu+Xnp4Vgvzk6JLibIGQeMBp8Oaxz7L9JZkPJp/uAYklQ0KcGRIAxYVhP05?=
 =?us-ascii?Q?9PiZmToq0uSiRZQ6YMdH5lpT899OKxGWrAqLSw2uHk98bfmrBS6VWIOO231n?=
 =?us-ascii?Q?0wpEhvZZZSvqap91V/NZI04mLQbCmFCR7wpnua9uZR20H0ZoZJBBu8pwsw6u?=
 =?us-ascii?Q?BImLnDGpZb1hR0sBlvenJgc/wWUBxIH1hsVEj/1JsuG5BCDGNi6gZof0x4YV?=
 =?us-ascii?Q?lxWKEB6Gtk3FCe0bvi7pV1/LvlIRNOI6akZ4h4Xq3w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YwKB6/rTV6kkKauqs+hqaoCw2FwyCtIusnJ5mYOZmGGEY4ddM2dk+jPk0/Zo?=
 =?us-ascii?Q?ZCj83regd4I5IB2Y6lZpGDSEx7firYFZqDtUyvNDAE2MUMNRdugUC+4rsafB?=
 =?us-ascii?Q?oFd9hj5UDCYnN+xFP+aCbKOhJ2SyaqpKamBtZlBQe2Ww3b0Fwy6Fhri5+R2b?=
 =?us-ascii?Q?qM8c4cihlBdzkPLoOO1zqtM7inj1wYMCawlyjImMfZ2AdHYfGShMbUnvqlxJ?=
 =?us-ascii?Q?NjCejEWu7etiz5uC5Dt+pPjXJ9l66oDzH/4PZVPGvy6jH6m5oJ/skDGWrM2Q?=
 =?us-ascii?Q?knuXdmPW7Wtm762h62XEpRuoIiBFgFsjNOrXX+zMHe5Yue69oxfu8N1d8tbB?=
 =?us-ascii?Q?bwGPttmSQGN6544EUKhYQke9BP71vkaN2H7pZplCDLfDVIBJ+2WMOcwOYjeJ?=
 =?us-ascii?Q?x13TynB3dtT+R/eCvjFKqhIBkpwMiuirRb1FU24DMpAOQToEcOqG+ySlbhba?=
 =?us-ascii?Q?H8UByUgW/2Ny/4mRV2AA7H0mPS/zXWFmrRTqluR9NALDLwrFTY7yJZnZxXfo?=
 =?us-ascii?Q?0XdbtPzcGSlf42RJZdA5fETKrpSUri0S8Im0j0LyPHC4A5pHGpFq9Q/h5iM3?=
 =?us-ascii?Q?8jzmS+M55i8xVlNQPwqKStme3WSszUyIYWLOQgPlCIJ5OEc/HQMjI04WVGa4?=
 =?us-ascii?Q?/LudK1t6r4SCgREnJJ5CRkPtdyvqFt0Jr4O6tHUNmLNgRR0fugzkV1lJ9dZ1?=
 =?us-ascii?Q?/BcLK47A420+iGuheshRKEWsD4vmmsG3VgupTCNedu2tKoAzn+xyfkrRcAKQ?=
 =?us-ascii?Q?vAXrJo0I8pP9MIwcFE9VsFgsB/wSgghlsLjINwr3bAwYOMUHv0j2k1t1H5y1?=
 =?us-ascii?Q?s3XDrcekxmAf+fNpGpvXjqCbtej9C2mfmQKYOl7g1sTgglTF2yjk7pwCBiqq?=
 =?us-ascii?Q?u2zjye+Iddc9iHJL72c9Qhe6xkg5mVvgrenZ6sOvoe9i+GbQnaHIfM+ruAZx?=
 =?us-ascii?Q?mr0JPH3Yw+BMzm44BUeRHR1cwqfoaMd7m95n022YUDhapqEHetM6DP7sGMn2?=
 =?us-ascii?Q?qYHBMGMKcFlcnVclAsMrqsMLfF+yQvMl0ukz2VK/5cC9qTMT9LqoCCFMuRB5?=
 =?us-ascii?Q?70+bAgPv/wflkARgvC5Wmo1XiTdxPmr6ueGiyA9HgWPY+dbRUuwb4mMMBZbU?=
 =?us-ascii?Q?uqmt6+tepWSZuYURzwgERgOY5iMpG49rH5NB2h8G9TqjEz1xQTU2atWMMqFd?=
 =?us-ascii?Q?Pvvw9DxjgiH9WSJzhPXWKQXi/G7g9sddg2UZ4Zn0Ucdk/+sVt+PHaOXuuYtY?=
 =?us-ascii?Q?SJiqRcZ0MZQ7Xuw3+Gxi/QnEKDHT6nXyIZCmOFDug8R03TRnwNRE0dIynmZy?=
 =?us-ascii?Q?IUtPhtimlc4TLUib380WiUxrJNkFRid3TxCchUm0XSBuiFF2HKSvK9tRsLrj?=
 =?us-ascii?Q?5biuLIapeK7nQzWRvjPFW4W158qjFfzziyNGSUQFhZvds4hYo2rqFrX84ahT?=
 =?us-ascii?Q?dORKFvGt5Hbe/wIyJpCkdgY2wuALh8SrNX7xlKldQXe/B9IX5u0rLcy5N1Bp?=
 =?us-ascii?Q?Nv3Wh8Yl6SaHf51kU0MQ5Mgpj+zAtIVxLLxh0my3omnt28bWQQ+WlFKYlC+y?=
 =?us-ascii?Q?a+dEgiM2Bk/bbRTsF7pS8kXsjfbTcbNhVCu9i0E9WZ+oIm13Df29YUH9Fb5a?=
 =?us-ascii?Q?Nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1579f4-9c83-44a2-cf98-08dc80236e74
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 21:08:04.6654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kDI3+dJSEjrnl4RLFXm7n5ZllGy8X9CEgDYYLhoxCPSqkKZmBq0eD8Tu3q3l+dX/Vdk9TUR99h+7bwR/maSm/+L3Yv27NBpqA0MkMYjZoHY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8047
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

On Tue, May 28, 2024 at 05:24:52PM +0300, Jani Nikula wrote:
> To simplify further changes, add separate functions for reading the fsb
> frequency.
> 
> This ends up reading CLKCFG register twice, but it's not a big deal.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 106 +++++++++++++++-----------
>  1 file changed, 60 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 18a879e98f03..3dce9b9a2c5e 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -49,21 +49,6 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
>  
>  	tmp = intel_uncore_read(&dev_priv->uncore, CLKCFG);
>  
> -	switch (tmp & CLKCFG_FSB_MASK) {
> -	case CLKCFG_FSB_533:
> -		dev_priv->fsb_freq = 533; /* 133*4 */
> -		break;
> -	case CLKCFG_FSB_800:
> -		dev_priv->fsb_freq = 800; /* 200*4 */
> -		break;
> -	case CLKCFG_FSB_667:
> -		dev_priv->fsb_freq =  667; /* 167*4 */
> -		break;
> -	case CLKCFG_FSB_400:
> -		dev_priv->fsb_freq = 400; /* 100*4 */
> -		break;
> -	}
> -
>  	switch (tmp & CLKCFG_MEM_MASK) {
>  	case CLKCFG_MEM_533:
>  		dev_priv->mem_freq = 533;
> @@ -83,7 +68,7 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
>  
>  static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
>  {
> -	u16 ddrpll, csipll;
> +	u16 ddrpll;
>  
>  	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
>  	switch (ddrpll & 0xff) {
> @@ -105,36 +90,6 @@ static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
>  		dev_priv->mem_freq = 0;
>  		break;
>  	}
> -
> -	csipll = intel_uncore_read16(&dev_priv->uncore, CSIPLL0);
> -	switch (csipll & 0x3ff) {
> -	case 0x00c:
> -		dev_priv->fsb_freq = 3200;
> -		break;
> -	case 0x00e:
> -		dev_priv->fsb_freq = 3733;
> -		break;
> -	case 0x010:
> -		dev_priv->fsb_freq = 4266;
> -		break;
> -	case 0x012:
> -		dev_priv->fsb_freq = 4800;
> -		break;
> -	case 0x014:
> -		dev_priv->fsb_freq = 5333;
> -		break;
> -	case 0x016:
> -		dev_priv->fsb_freq = 5866;
> -		break;
> -	case 0x018:
> -		dev_priv->fsb_freq = 6400;
> -		break;
> -	default:
> -		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n",
> -			csipll & 0x3ff);
> -		dev_priv->fsb_freq = 0;
> -		break;
> -	}
>  }
>  
>  static void chv_detect_mem_freq(struct drm_i915_private *i915)
> @@ -192,6 +147,64 @@ static void detect_mem_freq(struct drm_i915_private *i915)
>  		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
>  }
>  
> +static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
> +{
> +	u32 fsb;
> +
> +	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
> +
> +	switch (fsb) {
> +	case CLKCFG_FSB_400:
> +		return 400;
> +	case CLKCFG_FSB_533:
> +		return 533;
> +	case CLKCFG_FSB_667:
> +		return 667;
> +	case CLKCFG_FSB_800:
> +		return 800;
> +	}
> +
> +	return 0;
> +}
> +
> +static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
> +{
> +	u16 fsb;
> +
> +	fsb = intel_uncore_read16(&dev_priv->uncore, CSIPLL0) & 0x3ff;
> +
> +	switch (fsb) {
> +	case 0x00c:
> +		return 3200;
> +	case 0x00e:
> +		return 3733;
> +	case 0x010:
> +		return 4266;
> +	case 0x012:
> +		return 4800;
> +	case 0x014:
> +		return 5333;
> +	case 0x016:
> +		return 5866;
> +	case 0x018:
> +		return 6400;
> +	default:
> +		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n", fsb);
> +		return 0;
> +	}
> +}
> +
> +static void detect_fsb_freq(struct drm_i915_private *i915)
> +{
> +	if (GRAPHICS_VER(i915) == 5)
> +		i915->fsb_freq = ilk_fsb_freq(i915);
> +	else if (IS_PINEVIEW(i915))
> +		i915->fsb_freq = pnv_fsb_freq(i915);
> +
> +	if (i915->fsb_freq)
> +		drm_dbg(&i915->drm, "FSB frequency: %d MHz\n", i915->fsb_freq);
> +}
> +
>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
>  {
>  	return dimm->ranks * 64 / (dimm->width ?: 1);
> @@ -661,6 +674,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  	struct dram_info *dram_info = &i915->dram_info;
>  	int ret;
>  
> +	detect_fsb_freq(i915);
>  	detect_mem_freq(i915);
>  
>  	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
