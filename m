Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3069C911F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 18:51:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF62210E367;
	Thu, 14 Nov 2024 17:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PzLtGi60";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2AE10E0B1;
 Thu, 14 Nov 2024 17:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731606689; x=1763142689;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hxXl+YixkrqNYiygSIKQYzgqRHvrzblT5SsQgc4Nv/c=;
 b=PzLtGi60HqEgGa/aBiSfu3LZxp1rvyKUgmSg8X65nDir2tqFtWkltGEH
 2blyy/B2y8xe7Qy+D67ZhdH/ueyP3JwOcLN6eezQ5rPx1EHUTGowLgbQW
 1HaJBD1HHk0c/5jTOQWdtC3qlcuP4C+mm4AMh8i4087g6hni7MEWzN+w+
 MC9TtPiJkpFQzJRDk8blPUxzVGQPGJbDK98xDi6Ql8W1Cr6KsW2yUvtX2
 NmNphW7qMn7J/0wc/pE/H6bH+qlVCzmZpNov5gPTV8JVL4L6BZDszCvK9
 VQaDagb2M3XNDmto8xDtsLvo7IMexYyX39IML+X+Rw9DabAz4SGQlWfMI w==;
X-CSE-ConnectionGUID: H1PNX9YjSeKjNPpaEDnMvA==
X-CSE-MsgGUID: wiu6/XJ3RamSLzdu33QGmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31737896"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31737896"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 09:51:28 -0800
X-CSE-ConnectionGUID: BILte4LoQCu36fyJHKHfyQ==
X-CSE-MsgGUID: 3Q7pan/WRgWwGM8jN9GE0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="93229773"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 09:51:28 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 09:51:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 09:51:27 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 09:51:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UfQKm8ksfapqgKXB/a/DnmqjNg9VJcZpuYE8nxbuuSQW6QttwAe9O6bJnWJaFLcXg+GdVtQvvEQya1wFZVsSlrPOWmLdXomHW0YqXCqVpYeso9CT7AV2K1nI1nfxcU+zQHprCZS3U0oQyNlXBpfHHT2zK5irz8UuK2EpFkehkDIXJpcjhvXLo5hIXx0hxoxNJ4mPuX1dlDUwzJCtv+D7zjsSNzev7iXlcY2AuJfGHU9yIB9bSx53BrUvtOuhlzlhnkIok+la/GZvbGbsU4dti2IcTiW9E2CvT92s/e/q9vuqUipWoHEeXBSG1bX/2o4epDSbtn4zzCC7ql0OSFYlVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3eFz55P4jrxwx6JcudOWQNUVQDNCeTP/K7pqhL2BGpg=;
 b=lVlZhJHVcqfjMomE1EBk0AQcasZlmHuaa9w1Fmy6ucfhsx+coIF246m9BicJ3TYck6oKCxzJxwFmxvIq8VqVaKxhFlOr5zsuh8+rNXtju4ZlO3dAlA+pALVHFddnLe8P8xx6G7txBKvrBbtrQAlDGMeW4x3bQgRMsH3z84xdfWAFwnbZf1LlAteq1XDbRD+nMghshiHN3koJO+30JmbE7oUyxUGbBfyKmH6YSGsO7BtkAX8zIZf5Nul6N/TJWrXT9O+lOkUSftMuVSQ4RITFXvSMpMRykpixtE1PEne80Gfu+GmYjg+qsZ+6JRJavzh7Vxl6T7Ueqldkj2Gx2Z+Jvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7135.namprd11.prod.outlook.com (2603:10b6:930:61::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Thu, 14 Nov
 2024 17:51:24 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 17:51:23 +0000
Date: Thu, 14 Nov 2024 12:51:20 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/5] drm/i915/overlay: add intel_overlay_available() and
 use it
Message-ID: <ZzY4mNXGWwVA3nCt@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
 <5c45e2b4f2daec2e826feddf247aeb3252e3a0db.1731347547.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5c45e2b4f2daec2e826feddf247aeb3252e3a0db.1731347547.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR2101CA0006.namprd21.prod.outlook.com
 (2603:10b6:302:1::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7135:EE_
X-MS-Office365-Filtering-Correlation-Id: 0aa68d2d-6a69-400f-8a17-08dd04d4f42c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EpodIxH/Zq2IJLFYf4Y3eb5V7v7m19KpYJO2PYOzlQtCFHl3dG2s7alX/frM?=
 =?us-ascii?Q?AvHSGFPAzK1x3HOV+Txw7nyzsLpfniInEeZClDrgnVKv7RxvM1ronJlUwUO0?=
 =?us-ascii?Q?nPnjeO2aG/bORoo58r5eJLuyvxJ9F1SnM3Gy1gUl6Q7QQb1kIgvH4CjApOqS?=
 =?us-ascii?Q?K8TTjo+v6ORLs0Kg/C08Ja4HOvnyq298cbY0riXoWVxcwPpmgYe0GzLv7vaw?=
 =?us-ascii?Q?AI2OD+uRZRb3XTXCxB0+iHWtwqz0KcjROtYRA39Q+tP2ATV5fCb6630kCOs2?=
 =?us-ascii?Q?2894bJqK/GuCIE7jPNtevwpGJukXCTG/Su3don4YhMiLpSFW0z6tBg4hO8dX?=
 =?us-ascii?Q?DesD7D71sXfKx81C8SUsbNZvf1nHBAhdtoCwkZ3bfmwLXExef26AzfNdYP9+?=
 =?us-ascii?Q?V/fWQasYbdJgN6oot5JvKTSK39rxykXZNCIp4ivjTNGdyNO3clTNtkSa2PuP?=
 =?us-ascii?Q?NzYfnDp9xs/qUAA0e6PCMNkfZoq5S12sgVtXux9fBVr8nyEqOwkdV7z8hlxW?=
 =?us-ascii?Q?bMr7+F4QicX1m23cZOCvzrb0kZwTAcCDoHgkJAWbeZ46GX8zAQHHUzveQhRl?=
 =?us-ascii?Q?DMFWeZbxzxhEBAvtDNXw28fnvVCkaJq30x5IHq/VqGw07ejxcRyeWtrpoA4F?=
 =?us-ascii?Q?uJSSWaXGN0TLxAO0stkLebLeRoT2H4lyNt1T3q2Ig27B0iqMnhBJ8EEK1hfU?=
 =?us-ascii?Q?kop6Bfb63tF47rXuiGPI7g+XPza1gs/0xB51naz10w6fJeCFPuRP4DpCDs9Y?=
 =?us-ascii?Q?iXaIhiDNyjGrphx/ZQZgrSmx0fR29R9yQPSOWB7XF0sRoiEgqNLy1vdErmVv?=
 =?us-ascii?Q?tEN25a2dzANmyJBg13bqJFlbhMSeQti9L3ilxhM+QVkiVv2aIAuCSGaS/Fiz?=
 =?us-ascii?Q?cPoQEWykX+xTBsmNNo1pj0cYNbLnQZGb+/sbz4DF/sbTpMX1iclBK3C/Tgqp?=
 =?us-ascii?Q?ROIu8NMw6X2tsKxS7RcY9QYTyW2SW3xuuobB3A9vWLNYhtY8i0wNlYfDgBcL?=
 =?us-ascii?Q?Q+eDkeRZPVSYPBpY+l6XNEiJl0+OlH/tcVmpevLx/itQt6IDwF3RzbGP0iYT?=
 =?us-ascii?Q?0DHyUH5l3CJn0jJwJ9KWoP3oHdoZ8kWVizC/5lyj9Ee5vv8736ClzeKwN6Ax?=
 =?us-ascii?Q?peltTmFRo7oBsECCMgrYDJnWnnygnscAXhhoGwU+lt7GaXwVKs0zY7FifAXD?=
 =?us-ascii?Q?+8R5MBnQZEVlneqDFWhmc7JEbk8hlzJy1RiS2CTB0h38gKngaVOKHCs0fbGs?=
 =?us-ascii?Q?tC7OR6EVU7m8rnPpzslIU15XAJ+MB9LyVSx9obW+O118YMhxM5nSNb4CL3Oa?=
 =?us-ascii?Q?9Fa/oTLHbxGSTC8rvBAdGTCP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0ctMP112eIJVXdSf/GPyHEA0eDFgn87cTYl0ijJFPkNvQ0Opvkd2+RsPBdVR?=
 =?us-ascii?Q?y/ofGwbQRaRccvdSKhD2jrefbPqsjkqMPZ+3M7NXlUKReOL2GZcHDQaXjhKv?=
 =?us-ascii?Q?do31PDUPv2OT4OIQ4kpXRbxUE7SSgunp6Qm2DmZ5WZQS4lpp3ioMdKNIrhE8?=
 =?us-ascii?Q?00LRxexyMCuz//3Cn8OOhV7JE6+oqRfakGfEzj141WbkRyW+P8onh87KAS/T?=
 =?us-ascii?Q?Ne7KL2jQFqyxPoo9q+mJrNYXAmUo8QVCXAqR12mIp3/unrujtnvXffA7pvYt?=
 =?us-ascii?Q?ZDgqAdp08ee8K1o3EyQenHXY22izQqFQPwiP7MHLggm+QZTQ/fmCEpUGW940?=
 =?us-ascii?Q?aQ1hG1BD+JpSuHj9rZ+p7mRK1eWX+qysf4uRR66scoLMe/Z4C7eoFB4NVv61?=
 =?us-ascii?Q?mMkvcenijRh9cBZlS4LpGHCqheqmssT10qzXj4deEPuuUmk/xETKsxPMae4U?=
 =?us-ascii?Q?pKnJHZ3yhyxB+A3EaMXMW4EfhTT/oZiQCamOr6aY7pzo1twGkXafRQtmQzxV?=
 =?us-ascii?Q?Jn99NZrYV0R/++2VcVH+fStU5CSXQGpvWZSWY/YZLrmY0A+VSUcVeWffE7s/?=
 =?us-ascii?Q?EGn1738FfuVYfITpCkujfoZWSpds8WwuD488mF3pTio2XzNYUL44FVJl+SF7?=
 =?us-ascii?Q?aP85ckuH6dQvLHgaN8nTbKcICt7wuIX39d+HJDHjfVAF22ifxEIfB2uwRySO?=
 =?us-ascii?Q?Km6QSNosmruA7Nzjbi4M4tp6APBmQHLhIsDgyUyro1irkygB46cjixTI/7NX?=
 =?us-ascii?Q?3IspNnjTEHwzPVNqz2TI1Q2AjqX6beBf48QVakdkBPQ3nys6/VYY72vKkyQH?=
 =?us-ascii?Q?Sqd6AfVofuI6i731q2YgauluxSWF7tpqlX77J3UCi5TDdG0LkSgw89jWZY0X?=
 =?us-ascii?Q?S/r5g7DxLg+dYhV4tgy6EuyyGiau4TpyqkXy1xKJn5Ab2NAjnFvvXW9IUuQJ?=
 =?us-ascii?Q?sE2QteS7qNLRro0WNoTiJPjw5YLa6klCQitSIvP5CKTkRPIHOXNMn7dKHIlA?=
 =?us-ascii?Q?aa4PXqyAXDF4L5xPATYM5UZdxx3jxpoMeL1pnAjAxOqlHMGxEnzJNzUl/5O7?=
 =?us-ascii?Q?noKQJHKYz4ltTmBoKf3spCjPFX8r0EBQ3kOQpJO8QhzLVbLA4MHPWqfBGh1o?=
 =?us-ascii?Q?Ks5SE7g6vOw3uGhL+OUgcJ9ftVY0km0fahqiFqm3vnoLV+axcoA7ZCcea0Ob?=
 =?us-ascii?Q?j5dAdlErFq72cfkubfOUOc1W90NP9adTUxWt9+PcewLdOjHOGbo+Pms1JfeT?=
 =?us-ascii?Q?gypepqukMfmARse81NOuhtFNPit5zdlpgxOKJ0zeYtQryE8Mc6R9ynXXnZ2Z?=
 =?us-ascii?Q?SsZy9xBjquwQ0dfSSFMSgtFA9lm/Qi6eKGPRAUMmm0L/ubgv3x14HOcleSW7?=
 =?us-ascii?Q?PYDmiQSphaHz0v6GUrsQnRskUEBVyLCWGWSw+igeD3xc2ZVogpjYn+nQNSub?=
 =?us-ascii?Q?7ebC24clrOcAoDtv7MaHNLRQt1ZgXmCzJtDQ98E5Vz9qhq4Z7tY/W19/arRp?=
 =?us-ascii?Q?ztGImJd3gcoQ+gCgcMU2oVSP335XnJ9f9CWbtRTnX6GJktDdsM80pS3GI4X3?=
 =?us-ascii?Q?tvqwdwJeNTwQWwwTpSwVWeTEcy4LxjDqRS/2bYPAoInzaglJ6KHJIBVKcJ53?=
 =?us-ascii?Q?XA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa68d2d-6a69-400f-8a17-08dd04d4f42c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 17:51:23.9360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FKB7KDkC8F4puyo89IMCT06Iska+fHDQN+ooW39uH8HKNIg7cwja9QLn+BvOOW4k3YvHiloQVwwO2fnRvt7sLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7135
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

On Mon, Nov 11, 2024 at 07:53:31PM +0200, Jani Nikula wrote:
> Avoid accessing struct intel_display members directly from
> i915_getparam_ioctl(). Add intel_overlay_available() function to provide
> the information for I915_PARAM_HAS_OVERLAY.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_overlay.h | 5 +++++
>  drivers/gpu/drm/i915/i915_getparam.c         | 5 +++--
>  3 files changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 57eaf81651c4..ca30fff61876 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1438,6 +1438,11 @@ void intel_overlay_setup(struct intel_display *display)
>  	kfree(overlay);
>  }
>  
> +bool intel_overlay_available(struct intel_display *display)
> +{
> +	return display->overlay;
> +}
> +
>  void intel_overlay_cleanup(struct intel_display *display)
>  {
>  	struct intel_overlay *overlay;
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
> index dc885edf39e6..45a42fce754e 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.h
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.h
> @@ -18,6 +18,7 @@ struct intel_overlay_snapshot;
>  
>  #ifdef I915
>  void intel_overlay_setup(struct intel_display *display);
> +bool intel_overlay_available(struct intel_display *display);
>  void intel_overlay_cleanup(struct intel_display *display);
>  int intel_overlay_switch_off(struct intel_overlay *overlay);
>  int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
> @@ -29,6 +30,10 @@ void intel_overlay_reset(struct intel_display *display);
>  static inline void intel_overlay_setup(struct intel_display *display)
>  {
>  }
> +static inline bool intel_overlay_available(struct intel_display *display)
> +{
> +	return false;
> +}
>  static inline void intel_overlay_cleanup(struct intel_display *display)
>  {
>  }
> diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
> index a62405787e77..be8149e46281 100644
> --- a/drivers/gpu/drm/i915/i915_getparam.c
> +++ b/drivers/gpu/drm/i915/i915_getparam.c
> @@ -2,9 +2,9 @@
>   * SPDX-License-Identifier: MIT
>   */
>  
> +#include "display/intel_overlay.h"
>  #include "gem/i915_gem_mman.h"
>  #include "gt/intel_engine_user.h"
> -
>  #include "pxp/intel_pxp.h"
>  
>  #include "i915_cmd_parser.h"
> @@ -16,6 +16,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
>  			struct drm_file *file_priv)
>  {
>  	struct drm_i915_private *i915 = to_i915(dev);
> +	struct intel_display *display = &i915->display;
>  	struct pci_dev *pdev = to_pci_dev(dev->dev);
>  	const struct sseu_dev_info *sseu = &to_gt(i915)->info.sseu;
>  	drm_i915_getparam_t *param = data;
> @@ -38,7 +39,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
>  		value = to_gt(i915)->ggtt->num_fences;
>  		break;
>  	case I915_PARAM_HAS_OVERLAY:
> -		value = !!i915->display.overlay;
> +		value = intel_overlay_available(display);
>  		break;
>  	case I915_PARAM_HAS_BSD:
>  		value = !!intel_engine_lookup_user(i915,
> -- 
> 2.39.5
> 
