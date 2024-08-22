Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A23B995C06C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 23:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F4C10E10B;
	Thu, 22 Aug 2024 21:47:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R/WlUHvl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6385110E10A;
 Thu, 22 Aug 2024 21:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724363239; x=1755899239;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2NOXybM+KxJZy+E/7oAalvQ4LKX3cAsSHzQgCH5T2CY=;
 b=R/WlUHvlmKdbeF2HcS57Jvajt8MrncWBGudB6aSo/4n9V8NcGLq0aKHt
 ScTaxrCjUiNqxC0yYYlEOCPkeHJKzyzx9PI+Bmd6GWZH4SCtkdEDXs9Hn
 U9817eaGGKQ4kGKiJutbuuuW50cj9ERs6vm16fwSwGrJkT36FuHwWoHOv
 j9ThmMViHBhHuuoYFoWZ9sLRqyGEUmclsyCHwiTBUfzVJeDCkRQmqIEeD
 x1GRKB1xUaqa1B0YiAV2czUn05VRDTzb7HdTM2vZ153iGaAYAo2nJHdXu
 rs/XzqX0pbo4LrF1T4vt2wnCwc7Wc4MzVIEqiHldmsp3s+5nwnFGru9NL Q==;
X-CSE-ConnectionGUID: Ky4YOtkLRRaISNHWh8dqAA==
X-CSE-MsgGUID: mScgd9/NQdOwNrO064jOyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="26604745"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="26604745"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 14:47:19 -0700
X-CSE-ConnectionGUID: RRY8lHl6Tc6wHQ3dlq8b+Q==
X-CSE-MsgGUID: 8JmPs6TSSRaS784vW6+Uhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="84772938"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 14:47:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:47:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:47:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 14:47:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 14:47:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ebBckj6vCjjnnlzWIk/yywfrSpE+oUK5Jx2YkKaa2+E+yl7d/Y6U6jH3VaMkm+tYEdRpYZnZLvctoR0f8q9bppLDn8xwuraENoSvIWhPZUIseDc/1FvHDCl5+jNFY+7ds2RtKFgSQNsLXbefmXhhG7HDRGcBC/iOc7wuIdzLvGyNVdhDuOEaN+SIC5iDhh+gL6+lK44YfY3N9xZlTQ1GwzqcfeYeJDlyTp0x2nlDnnWgCU2GjMMp4TUeE7qFKgahk/ofMaRdcGpusMUN4pPVRAgUyFRT6ACxlLJF32ONWUGl7RpG10a8M9r3NxUWkagXoBVReRa8FJ2/1EqJiBQmnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3w3JnzdGko3Ih+sULRvdKJtAKz3i0noOgyl4RqxV+Gc=;
 b=d4RGL8WpxqWp3EASrc2lzWqJp/ES1sl/UvwGehQjgvCfialKjxqnqEdNoO0G2/8rjYDst+COOt+xdnsRgOqetVHu8mN64KlCfvjC6UhFIR7fPFMDtAOTMY0SiPCXjSBOB7wQ7w+isy6GE7KvfXoS18Hb70obbSuc6r6Juz+5RnhYNG/nRHmcOF2TERe4rnAaCTAPB8u7Bz3HUIDWVMyOUjtuZqUSnXoCukvDJCDLTJH2jBkSwUeBfDm1Je8ziYGHOT1Xm9dBHTweiLm8B6iAiL06ym6s6JLeWl/jO+q/le/z4xsNrFniam9Jkc7FcpkeqLZ5ywH62pXyhgCflQtUcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB7094.namprd11.prod.outlook.com (2603:10b6:510:216::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 21:47:14 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 21:47:14 +0000
Date: Thu, 22 Aug 2024 17:47:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/7] drm/i915/sprite: convert to struct intel_display
Message-ID: <Zsex3h2XMygnHeht@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
 <094db6a9f40404fcc14843d32b45465d31730d96.1724342644.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <094db6a9f40404fcc14843d32b45465d31730d96.1724342644.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0289.namprd04.prod.outlook.com
 (2603:10b6:303:89::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB7094:EE_
X-MS-Office365-Filtering-Correlation-Id: d7ce8db8-208e-4486-eaab-08dcc2f3fbf7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qtdjtLDPyeKBDfT2ZCDg1IXfXzu13Y0oNiw37pzbY7ztCEc10pMPpuCrNGxr?=
 =?us-ascii?Q?Eeo38aOuCr1NeIZTA9F2Gn250HVX7FieOPUWs41EZpBIp2lPTBQPYgZ55Eus?=
 =?us-ascii?Q?38mUU8V2J6EjKqjsTA3foqKgdZsguOuOVVX/LoSu46LeUgc0PreQDKbpdK1N?=
 =?us-ascii?Q?c8SQSV5b+5gETWVLq13GwZCpB9xX2FHKqSzLopumRysXEoKcWUI1eyUtsnc7?=
 =?us-ascii?Q?J0PrrwjNlrqpcL8XtX7erJG/nKc9aenDO2WIk6ZoRlK2j/qGBNBYoAn8ndgn?=
 =?us-ascii?Q?uQwjctTA/thAXUX1da8/pTHH3JqsuqCbJyg7gd56M4qG6nlFwBy2ACBkM5j3?=
 =?us-ascii?Q?0ExM62pqOxqEETcHD/fqNIlgOe5L+M/PYq3bwTMOC/UZMt/E3AXAtyZu7OLF?=
 =?us-ascii?Q?9kSow+IYtMGxhB588k6otX3EKr7wLut4v3F2zbsjY8XiWKiJJe7/SHphkWC2?=
 =?us-ascii?Q?Z56nFI2KI70zr5ou8GPxxBNjzrnmJCgPXxrUmO/RKrsyhkyipGvecvW4k0Sz?=
 =?us-ascii?Q?OvR/MZzB3FOaqkPAASs1re3SllOdDOTaRU42Kdr3lqGODceNe62aLVJf8bmi?=
 =?us-ascii?Q?ITQvc22B5aZOo73UUXJ/cPPx4C5gPaaDceHHT57Vg6wm8lKuGJg6YhvB0C9u?=
 =?us-ascii?Q?cJ2JlkSKRwgZqZPBRLdBj8WiYUeyDOO/M/QEjuQ9Yh4JqC68c5bAtIJGePfH?=
 =?us-ascii?Q?szk8jqxM93agpjGxaWrRvTVDXr3jj2uBIShjQEGLwWBB1756HhfZP3qVC+JD?=
 =?us-ascii?Q?OqxVsPa/eXCRQsObpr0iIPwHZBscIBVE2CFlF297Z56GB8jdRBX046FxVWZn?=
 =?us-ascii?Q?212JqNPqCUsgvwhMMn3+LIm64SLFugWMeeKX6sm763SJGS+Yzbpgz5347GJP?=
 =?us-ascii?Q?mFbNIS/J4j8V6U0ZjMm29AqUXcCX3xYq6ueq9X591CF18ayYlj2+HWHiDa7T?=
 =?us-ascii?Q?/ZAP9Nvf9uZJX7DtgeMk5c4KP1s8kwCsqMDaq9KuM7t53FEnhBo9cD2WFkN9?=
 =?us-ascii?Q?vXr+aTNVT+X47V2CTaOB7o0/Q6HdaIHIw7NihdhEimuTZk+zwCWEzAGiCoAU?=
 =?us-ascii?Q?Vrb8xVlG+hNqvCSbI/K31I3tDoC0spPKx7MPTajySlDK8l2K/6SzQz0ADu/S?=
 =?us-ascii?Q?N+ip2NhkRjnc5N3/Q87kCLW5xKFUwdXx6iAs7VdbTnAeZ2Tackg8JvgdNaes?=
 =?us-ascii?Q?2JDTuJ1rGMaaQkDH3SUBtAMRdkeUQSrJ3fS30zHqVvjzrCDM0flOmeR0CoCx?=
 =?us-ascii?Q?KrRMq0CpNaEO65SOTl5T+ccxFxarm1Cj42xP8yRAYXnLkHn5iyYSEKFdwovo?=
 =?us-ascii?Q?hRFsHYyHu65GVcGnrgnGfmUvmpMBJccAUXdqJFtCUR+Z9g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OWt/wR+oINu3J5dYi/WWsopfJGvrrRd7hK9Hkk6vEIfrTYXIZn+r0UXqEnRL?=
 =?us-ascii?Q?7n2GU5w/eWes0zGCmjQFkotRCjt7ecxcelmWaKxZfIggkN/aI+jSd6+IyEe0?=
 =?us-ascii?Q?QiBhvK8vzkg/xJy2Ab1U99fw+2ncld5xX5nZXCyh0G9oyDawg5bH7N5U4qQH?=
 =?us-ascii?Q?W5Cd/1KBwG0lzwkWGpXQCHvjHbx6FgKWj2VmN/GqtVZc0F5eqE1sf8pxdDt9?=
 =?us-ascii?Q?N/guPBOf0Xe3QBVcGxfk5gzqoldO8rL5bx1z8pLAIcf1E0ougq+bzjrvTwCW?=
 =?us-ascii?Q?BqWQ5WfHrahaJ3jyP/nqQt25ezOxNnN2QqZt3LFS0WKMK/u7Z9yYtF3yDdBf?=
 =?us-ascii?Q?4kWI/7hHTko1zhwd7hMpAN2ytKipP9epKGBsBGVbwUT3FdOdR+gJudo5EWPT?=
 =?us-ascii?Q?anJO9d/0A2WDxleqM6+2tgHHXe02HSnSyvp/UNSx9cTt5QMi/UOklLcFB+Bv?=
 =?us-ascii?Q?p5N1cyq3UoJ3VaDGt+DQDfuYrSyis2pEHpHr+vyjk3UEJABaFZ7LGlimclWU?=
 =?us-ascii?Q?EUcQSd8+LpxqIrqnmqJLycGLcEBKzebxKCPRrXA6ZOS2RaZAYsU2szfeuN3l?=
 =?us-ascii?Q?tbFi7qzF6XkM9hBvRzrwLw6EbnhN8unj7mBdmuSN33y2O4l2jnblveE0bJL9?=
 =?us-ascii?Q?oubUsUO4KF22Rmq7n7/mn0qx2fuhTwKZJcEsc19RktbHlUlX5l3wrJ3dJMGo?=
 =?us-ascii?Q?chAfMeDsHYPW0Ew9w34/tGKO6t4LbY42USnu2V1JJB3zkooTq5uAzXwBX/Pp?=
 =?us-ascii?Q?9d3aLkSnB9ZRK2VtS4pU5dM6fHpqJ3w/Voc+0bc8Mn6rWNXTqhb3+9uqSkZx?=
 =?us-ascii?Q?E8KEX/031WKKTjNssB9a7XfMKNuNML/8AtpiXd7ZNeKBe3pRdSOrcpR0Avq2?=
 =?us-ascii?Q?jk9LXfajQoxcc49inRZWGlwGaUQqy+AlavMPwWo8JL+qg3FUnKwM+9tpCWgn?=
 =?us-ascii?Q?dLLJJxULg+NrcmlQ+Wdyn0jaXAtzXBARFHH97NveJ/w7pQdLPWa5n0ZUhGy2?=
 =?us-ascii?Q?JBgDzlWSqJoy7eqCdsYukbep4peAgStv+sf7bYmQ3rgKcdf7f9K0sar2x6W1?=
 =?us-ascii?Q?GTPMeyrZTcuKRPiCNwxScT5LuopERQNscHk/TwPrXCVG/B/kZPfRmNwoLTmj?=
 =?us-ascii?Q?NVVyXj/jJ8xZRZD3pG8z+89nj/R3cMrmC/K9TJE6tEdYRavfwKnwsXk4xnnT?=
 =?us-ascii?Q?CadrAz8lcDAYU+3Z7tJu/HKF1hEclxyoNgDeQ7TT4gYoDD44MzAsNDaq9qwi?=
 =?us-ascii?Q?daIKob5M6fUpJKjtiSLc2lBPvE4d/cPs8WvoZI3Wxm9pYh9hH1SjR1mmIE1H?=
 =?us-ascii?Q?Ch4Lb7VyzkomweQvhWRSG7yY1TPPZOtavRDBDIB1SELOzAAhQiV/Oz3bGIQk?=
 =?us-ascii?Q?q1Ak6HUb37uRwCmrYXJJyfG+aDxR02OWhrAKkZ5ABdAyK8YGAZYQ1BJZLVAv?=
 =?us-ascii?Q?GkMkgeRh9hhrKk+xMjkdyVljur2xkOOxCzKxhvK1rhWGTZoPwtIqAGX8fCT5?=
 =?us-ascii?Q?wwkngfIngypPfKj34ixyQb/FmbH+pka6+ptOz+hxUiLdXq46i4uIX7GpwQZv?=
 =?us-ascii?Q?Ue1HFdNwWpBYID/SPM+Lxbo9+ioGCj7az472cTW9vq/ahkmGYL2W8OtJky48?=
 =?us-ascii?Q?ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7ce8db8-208e-4486-eaab-08dcc2f3fbf7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 21:47:14.2759 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pskGxWqyNtmquZPGDuTLkD2OOhiUHlL0S/X0WDdm1voXICS4XLOFgda7jj+yvQTsOaGGk/TROQl+ZbUCwYkScg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
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

On Thu, Aug 22, 2024 at 07:04:54PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_sprite.[ch] to struct intel_display.
> 
> Some stragglers	are left behind	where needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 209 +++++++++++---------
>  1 file changed, 112 insertions(+), 97 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index f8cceb3e5d8e..e657b09ede99 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -48,9 +48,9 @@
>  #include "intel_sprite.h"
>  #include "intel_sprite_regs.h"
>  
> -static char sprite_name(struct drm_i915_private *i915, enum pipe pipe, int sprite)
> +static char sprite_name(struct intel_display *display, enum pipe pipe, int sprite)
>  {
> -	return pipe * DISPLAY_RUNTIME_INFO(i915)->num_sprites[pipe] + sprite + 'A';
> +	return pipe * DISPLAY_RUNTIME_INFO(display)->num_sprites[pipe] + sprite + 'A';
>  }
>  
>  static void i9xx_plane_linear_gamma(u16 gamma[8])
> @@ -67,7 +67,7 @@ static void
>  chv_sprite_update_csc(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  	enum plane_id plane_id = plane->id;
>  	/*
> @@ -100,35 +100,35 @@ chv_sprite_update_csc(const struct intel_plane_state *plane_state)
>  	if (!fb->format->is_yuv)
>  		return;
>  
> -	intel_de_write_fw(dev_priv, SPCSCYGOFF(plane_id),
> +	intel_de_write_fw(display, SPCSCYGOFF(plane_id),
>  			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
> -	intel_de_write_fw(dev_priv, SPCSCCBOFF(plane_id),
> +	intel_de_write_fw(display, SPCSCCBOFF(plane_id),
>  			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
> -	intel_de_write_fw(dev_priv, SPCSCCROFF(plane_id),
> +	intel_de_write_fw(display, SPCSCCROFF(plane_id),
>  			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
>  
> -	intel_de_write_fw(dev_priv, SPCSCC01(plane_id),
> +	intel_de_write_fw(display, SPCSCC01(plane_id),
>  			  SPCSC_C1(csc[1]) | SPCSC_C0(csc[0]));
> -	intel_de_write_fw(dev_priv, SPCSCC23(plane_id),
> +	intel_de_write_fw(display, SPCSCC23(plane_id),
>  			  SPCSC_C1(csc[3]) | SPCSC_C0(csc[2]));
> -	intel_de_write_fw(dev_priv, SPCSCC45(plane_id),
> +	intel_de_write_fw(display, SPCSCC45(plane_id),
>  			  SPCSC_C1(csc[5]) | SPCSC_C0(csc[4]));
> -	intel_de_write_fw(dev_priv, SPCSCC67(plane_id),
> +	intel_de_write_fw(display, SPCSCC67(plane_id),
>  			  SPCSC_C1(csc[7]) | SPCSC_C0(csc[6]));
> -	intel_de_write_fw(dev_priv, SPCSCC8(plane_id), SPCSC_C0(csc[8]));
> +	intel_de_write_fw(display, SPCSCC8(plane_id), SPCSC_C0(csc[8]));
>  
> -	intel_de_write_fw(dev_priv, SPCSCYGICLAMP(plane_id),
> +	intel_de_write_fw(display, SPCSCYGICLAMP(plane_id),
>  			  SPCSC_IMAX(1023) | SPCSC_IMIN(0));
> -	intel_de_write_fw(dev_priv, SPCSCCBICLAMP(plane_id),
> +	intel_de_write_fw(display, SPCSCCBICLAMP(plane_id),
>  			  SPCSC_IMAX(512) | SPCSC_IMIN(-512));
> -	intel_de_write_fw(dev_priv, SPCSCCRICLAMP(plane_id),
> +	intel_de_write_fw(display, SPCSCCRICLAMP(plane_id),
>  			  SPCSC_IMAX(512) | SPCSC_IMIN(-512));
>  
> -	intel_de_write_fw(dev_priv, SPCSCYGOCLAMP(plane_id),
> +	intel_de_write_fw(display, SPCSCYGOCLAMP(plane_id),
>  			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
> -	intel_de_write_fw(dev_priv, SPCSCCBOCLAMP(plane_id),
> +	intel_de_write_fw(display, SPCSCCBOCLAMP(plane_id),
>  			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
> -	intel_de_write_fw(dev_priv, SPCSCCROCLAMP(plane_id),
> +	intel_de_write_fw(display, SPCSCCROCLAMP(plane_id),
>  			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
>  }
>  
> @@ -139,7 +139,7 @@ static void
>  vlv_sprite_update_clrc(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  	enum pipe pipe = plane->pipe;
>  	enum plane_id plane_id = plane->id;
> @@ -168,9 +168,9 @@ vlv_sprite_update_clrc(const struct intel_plane_state *plane_state)
>  	}
>  
>  	/* FIXME these register are single buffered :( */
> -	intel_de_write_fw(dev_priv, SPCLRC0(pipe, plane_id),
> +	intel_de_write_fw(display, SPCLRC0(pipe, plane_id),
>  			  SP_CONTRAST(contrast) | SP_BRIGHTNESS(brightness));
> -	intel_de_write_fw(dev_priv, SPCLRC1(pipe, plane_id),
> +	intel_de_write_fw(display, SPCLRC1(pipe, plane_id),
>  			  SP_SH_SIN(sh_sin) | SP_SH_COS(sh_cos));
>  }
>  
> @@ -357,7 +357,7 @@ static u32 vlv_sprite_ctl(const struct intel_crtc_state *crtc_state,
>  static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  	enum pipe pipe = plane->pipe;
>  	enum plane_id plane_id = plane->id;
> @@ -373,7 +373,7 @@ static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  	/* FIXME these register are single buffered :( */
>  	/* The two end points are implicit (0.0 and 1.0) */
>  	for (i = 1; i < 8 - 1; i++)
> -		intel_de_write_fw(dev_priv, SPGAMC(pipe, plane_id, i - 1),
> +		intel_de_write_fw(display, SPGAMC(pipe, plane_id, i - 1),
>  				  gamma[i] << 16 | gamma[i] << 8 | gamma[i]);
>  }
>  
> @@ -382,7 +382,7 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
>  			const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	enum plane_id plane_id = plane->id;
>  	int crtc_x = plane_state->uapi.dst.x1;
> @@ -390,11 +390,11 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
>  	u32 crtc_w = drm_rect_width(&plane_state->uapi.dst);
>  	u32 crtc_h = drm_rect_height(&plane_state->uapi.dst);
>  
> -	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
> +	intel_de_write_fw(display, SPSTRIDE(pipe, plane_id),
>  			  plane_state->view.color_plane[0].mapping_stride);
> -	intel_de_write_fw(dev_priv, SPPOS(pipe, plane_id),
> +	intel_de_write_fw(display, SPPOS(pipe, plane_id),
>  			  SP_POS_Y(crtc_y) | SP_POS_X(crtc_x));
> -	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
> +	intel_de_write_fw(display, SPSIZE(pipe, plane_id),
>  			  SP_HEIGHT(crtc_h - 1) | SP_WIDTH(crtc_w - 1));
>  }
>  
> @@ -403,6 +403,7 @@ vlv_sprite_update_arm(struct intel_plane *plane,
>  		      const struct intel_crtc_state *crtc_state,
>  		      const struct intel_plane_state *plane_state)
>  {
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	enum plane_id plane_id = plane->id;
> @@ -420,18 +421,18 @@ vlv_sprite_update_arm(struct intel_plane *plane,
>  		chv_sprite_update_csc(plane_state);
>  
>  	if (key->flags) {
> -		intel_de_write_fw(dev_priv, SPKEYMINVAL(pipe, plane_id),
> +		intel_de_write_fw(display, SPKEYMINVAL(pipe, plane_id),
>  				  key->min_value);
> -		intel_de_write_fw(dev_priv, SPKEYMSK(pipe, plane_id),
> +		intel_de_write_fw(display, SPKEYMSK(pipe, plane_id),
>  				  key->channel_mask);
> -		intel_de_write_fw(dev_priv, SPKEYMAXVAL(pipe, plane_id),
> +		intel_de_write_fw(display, SPKEYMAXVAL(pipe, plane_id),
>  				  key->max_value);
>  	}
>  
> -	intel_de_write_fw(dev_priv, SPCONSTALPHA(pipe, plane_id), 0);
> +	intel_de_write_fw(display, SPCONSTALPHA(pipe, plane_id), 0);
>  
> -	intel_de_write_fw(dev_priv, SPLINOFF(pipe, plane_id), linear_offset);
> -	intel_de_write_fw(dev_priv, SPTILEOFF(pipe, plane_id),
> +	intel_de_write_fw(display, SPLINOFF(pipe, plane_id), linear_offset);
> +	intel_de_write_fw(display, SPTILEOFF(pipe, plane_id),
>  			  SP_OFFSET_Y(y) | SP_OFFSET_X(x));
>  
>  	/*
> @@ -439,8 +440,8 @@ vlv_sprite_update_arm(struct intel_plane *plane,
>  	 * disabled. Try to make the plane enable atomic by writing
>  	 * the control register just before the surface register.
>  	 */
> -	intel_de_write_fw(dev_priv, SPCNTR(pipe, plane_id), sprctl);
> -	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id),
> +	intel_de_write_fw(display, SPCNTR(pipe, plane_id), sprctl);
> +	intel_de_write_fw(display, SPSURF(pipe, plane_id),
>  			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
>  
>  	vlv_sprite_update_clrc(plane_state);
> @@ -451,18 +452,19 @@ static void
>  vlv_sprite_disable_arm(struct intel_plane *plane,
>  		       const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	enum plane_id plane_id = plane->id;
>  
> -	intel_de_write_fw(dev_priv, SPCNTR(pipe, plane_id), 0);
> -	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id), 0);
> +	intel_de_write_fw(display, SPCNTR(pipe, plane_id), 0);
> +	intel_de_write_fw(display, SPSURF(pipe, plane_id), 0);
>  }
>  
>  static bool
>  vlv_sprite_get_hw_state(struct intel_plane *plane,
>  			enum pipe *pipe)
>  {
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum intel_display_power_domain power_domain;
>  	enum plane_id plane_id = plane->id;
> @@ -474,7 +476,7 @@ vlv_sprite_get_hw_state(struct intel_plane *plane,
>  	if (!wakeref)
>  		return false;
>  
> -	ret = intel_de_read(dev_priv, SPCNTR(plane->pipe, plane_id)) & SP_ENABLE;
> +	ret = intel_de_read(display, SPCNTR(plane->pipe, plane_id)) & SP_ENABLE;
>  
>  	*pipe = plane->pipe;
>  
> @@ -766,7 +768,7 @@ static void ivb_sprite_linear_gamma(const struct intel_plane_state *plane_state,
>  static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	u16 gamma[18];
>  	int i;
> @@ -778,17 +780,17 @@ static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  
>  	/* FIXME these register are single buffered :( */
>  	for (i = 0; i < 16; i++)
> -		intel_de_write_fw(dev_priv, SPRGAMC(pipe, i),
> +		intel_de_write_fw(display, SPRGAMC(pipe, i),
>  				  gamma[i] << 20 | gamma[i] << 10 | gamma[i]);
>  
> -	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 0), gamma[i]);
> -	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 1), gamma[i]);
> -	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 2), gamma[i]);
> +	intel_de_write_fw(display, SPRGAMC16(pipe, 0), gamma[i]);
> +	intel_de_write_fw(display, SPRGAMC16(pipe, 1), gamma[i]);
> +	intel_de_write_fw(display, SPRGAMC16(pipe, 2), gamma[i]);
>  	i++;
>  
> -	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 0), gamma[i]);
> -	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 1), gamma[i]);
> -	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 2), gamma[i]);
> +	intel_de_write_fw(display, SPRGAMC17(pipe, 0), gamma[i]);
> +	intel_de_write_fw(display, SPRGAMC17(pipe, 1), gamma[i]);
> +	intel_de_write_fw(display, SPRGAMC17(pipe, 2), gamma[i]);
>  	i++;
>  }
>  
> @@ -797,6 +799,7 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
>  			const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state)
>  {
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	int crtc_x = plane_state->uapi.dst.x1;
> @@ -812,14 +815,14 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
>  			SPRITE_SRC_WIDTH(src_w - 1) |
>  			SPRITE_SRC_HEIGHT(src_h - 1);
>  
> -	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
> +	intel_de_write_fw(display, SPRSTRIDE(pipe),
>  			  plane_state->view.color_plane[0].mapping_stride);
> -	intel_de_write_fw(dev_priv, SPRPOS(pipe),
> +	intel_de_write_fw(display, SPRPOS(pipe),
>  			  SPRITE_POS_Y(crtc_y) | SPRITE_POS_X(crtc_x));
> -	intel_de_write_fw(dev_priv, SPRSIZE(pipe),
> +	intel_de_write_fw(display, SPRSIZE(pipe),
>  			  SPRITE_HEIGHT(crtc_h - 1) | SPRITE_WIDTH(crtc_w - 1));
>  	if (IS_IVYBRIDGE(dev_priv))
> -		intel_de_write_fw(dev_priv, SPRSCALE(pipe), sprscale);
> +		intel_de_write_fw(display, SPRSCALE(pipe), sprscale);
>  }
>  
>  static void
> @@ -827,6 +830,7 @@ ivb_sprite_update_arm(struct intel_plane *plane,
>  		      const struct intel_crtc_state *crtc_state,
>  		      const struct intel_plane_state *plane_state)
>  {
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
> @@ -840,20 +844,20 @@ ivb_sprite_update_arm(struct intel_plane *plane,
>  	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
>  
>  	if (key->flags) {
> -		intel_de_write_fw(dev_priv, SPRKEYVAL(pipe), key->min_value);
> -		intel_de_write_fw(dev_priv, SPRKEYMSK(pipe),
> +		intel_de_write_fw(display, SPRKEYVAL(pipe), key->min_value);
> +		intel_de_write_fw(display, SPRKEYMSK(pipe),
>  				  key->channel_mask);
> -		intel_de_write_fw(dev_priv, SPRKEYMAX(pipe), key->max_value);
> +		intel_de_write_fw(display, SPRKEYMAX(pipe), key->max_value);
>  	}
>  
>  	/* HSW consolidates SPRTILEOFF and SPRLINOFF into a single SPROFFSET
>  	 * register */
>  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> -		intel_de_write_fw(dev_priv, SPROFFSET(pipe),
> +		intel_de_write_fw(display, SPROFFSET(pipe),
>  				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
>  	} else {
> -		intel_de_write_fw(dev_priv, SPRLINOFF(pipe), linear_offset);
> -		intel_de_write_fw(dev_priv, SPRTILEOFF(pipe),
> +		intel_de_write_fw(display, SPRLINOFF(pipe), linear_offset);
> +		intel_de_write_fw(display, SPRTILEOFF(pipe),
>  				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
>  	}
>  
> @@ -862,8 +866,8 @@ ivb_sprite_update_arm(struct intel_plane *plane,
>  	 * disabled. Try to make the plane enable atomic by writing
>  	 * the control register just before the surface register.
>  	 */
> -	intel_de_write_fw(dev_priv, SPRCTL(pipe), sprctl);
> -	intel_de_write_fw(dev_priv, SPRSURF(pipe),
> +	intel_de_write_fw(display, SPRCTL(pipe), sprctl);
> +	intel_de_write_fw(display, SPRSURF(pipe),
>  			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
>  
>  	ivb_sprite_update_gamma(plane_state);
> @@ -873,20 +877,22 @@ static void
>  ivb_sprite_disable_arm(struct intel_plane *plane,
>  		       const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  
> -	intel_de_write_fw(dev_priv, SPRCTL(pipe), 0);
> +	intel_de_write_fw(display, SPRCTL(pipe), 0);
>  	/* Disable the scaler */
>  	if (IS_IVYBRIDGE(dev_priv))
> -		intel_de_write_fw(dev_priv, SPRSCALE(pipe), 0);
> -	intel_de_write_fw(dev_priv, SPRSURF(pipe), 0);
> +		intel_de_write_fw(display, SPRSCALE(pipe), 0);
> +	intel_de_write_fw(display, SPRSURF(pipe), 0);
>  }
>  
>  static bool
>  ivb_sprite_get_hw_state(struct intel_plane *plane,
>  			enum pipe *pipe)
>  {
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> @@ -897,7 +903,7 @@ ivb_sprite_get_hw_state(struct intel_plane *plane,
>  	if (!wakeref)
>  		return false;
>  
> -	ret =  intel_de_read(dev_priv, SPRCTL(plane->pipe)) & SPRITE_ENABLE;
> +	ret =  intel_de_read(display, SPRCTL(plane->pipe)) & SPRITE_ENABLE;
>  
>  	*pipe = plane->pipe;
>  
> @@ -1073,7 +1079,7 @@ static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
>  static void g4x_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  	enum pipe pipe = plane->pipe;
>  	u16 gamma[8];
> @@ -1088,7 +1094,7 @@ static void g4x_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  	/* FIXME these register are single buffered :( */
>  	/* The two end points are implicit (0.0 and 1.0) */
>  	for (i = 1; i < 8 - 1; i++)
> -		intel_de_write_fw(dev_priv, DVSGAMC_G4X(pipe, i - 1),
> +		intel_de_write_fw(display, DVSGAMC_G4X(pipe, i - 1),
>  				  gamma[i] << 16 | gamma[i] << 8 | gamma[i]);
>  }
>  
> @@ -1103,7 +1109,7 @@ static void ilk_sprite_linear_gamma(u16 gamma[17])
>  static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  	enum pipe pipe = plane->pipe;
>  	u16 gamma[17];
> @@ -1117,12 +1123,12 @@ static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  
>  	/* FIXME these register are single buffered :( */
>  	for (i = 0; i < 16; i++)
> -		intel_de_write_fw(dev_priv, DVSGAMC_ILK(pipe, i),
> +		intel_de_write_fw(display, DVSGAMC_ILK(pipe, i),
>  				  gamma[i] << 20 | gamma[i] << 10 | gamma[i]);
>  
> -	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 0), gamma[i]);
> -	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 1), gamma[i]);
> -	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 2), gamma[i]);
> +	intel_de_write_fw(display, DVSGAMCMAX_ILK(pipe, 0), gamma[i]);
> +	intel_de_write_fw(display, DVSGAMCMAX_ILK(pipe, 1), gamma[i]);
> +	intel_de_write_fw(display, DVSGAMCMAX_ILK(pipe, 2), gamma[i]);
>  	i++;
>  }
>  
> @@ -1131,7 +1137,7 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
>  			const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	int crtc_x = plane_state->uapi.dst.x1;
>  	int crtc_y = plane_state->uapi.dst.y1;
> @@ -1146,13 +1152,13 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
>  			DVS_SRC_WIDTH(src_w - 1) |
>  			DVS_SRC_HEIGHT(src_h - 1);
>  
> -	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
> +	intel_de_write_fw(display, DVSSTRIDE(pipe),
>  			  plane_state->view.color_plane[0].mapping_stride);
> -	intel_de_write_fw(dev_priv, DVSPOS(pipe),
> +	intel_de_write_fw(display, DVSPOS(pipe),
>  			  DVS_POS_Y(crtc_y) | DVS_POS_X(crtc_x));
> -	intel_de_write_fw(dev_priv, DVSSIZE(pipe),
> +	intel_de_write_fw(display, DVSSIZE(pipe),
>  			  DVS_HEIGHT(crtc_h - 1) | DVS_WIDTH(crtc_w - 1));
> -	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
> +	intel_de_write_fw(display, DVSSCALE(pipe), dvsscale);
>  }
>  
>  static void
> @@ -1160,6 +1166,7 @@ g4x_sprite_update_arm(struct intel_plane *plane,
>  		      const struct intel_crtc_state *crtc_state,
>  		      const struct intel_plane_state *plane_state)
>  {
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
> @@ -1173,14 +1180,14 @@ g4x_sprite_update_arm(struct intel_plane *plane,
>  	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
>  
>  	if (key->flags) {
> -		intel_de_write_fw(dev_priv, DVSKEYVAL(pipe), key->min_value);
> -		intel_de_write_fw(dev_priv, DVSKEYMSK(pipe),
> +		intel_de_write_fw(display, DVSKEYVAL(pipe), key->min_value);
> +		intel_de_write_fw(display, DVSKEYMSK(pipe),
>  				  key->channel_mask);
> -		intel_de_write_fw(dev_priv, DVSKEYMAX(pipe), key->max_value);
> +		intel_de_write_fw(display, DVSKEYMAX(pipe), key->max_value);
>  	}
>  
> -	intel_de_write_fw(dev_priv, DVSLINOFF(pipe), linear_offset);
> -	intel_de_write_fw(dev_priv, DVSTILEOFF(pipe),
> +	intel_de_write_fw(display, DVSLINOFF(pipe), linear_offset);
> +	intel_de_write_fw(display, DVSTILEOFF(pipe),
>  			  DVS_OFFSET_Y(y) | DVS_OFFSET_X(x));
>  
>  	/*
> @@ -1188,8 +1195,8 @@ g4x_sprite_update_arm(struct intel_plane *plane,
>  	 * disabled. Try to make the plane enable atomic by writing
>  	 * the control register just before the surface register.
>  	 */
> -	intel_de_write_fw(dev_priv, DVSCNTR(pipe), dvscntr);
> -	intel_de_write_fw(dev_priv, DVSSURF(pipe),
> +	intel_de_write_fw(display, DVSCNTR(pipe), dvscntr);
> +	intel_de_write_fw(display, DVSSURF(pipe),
>  			  intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
>  
>  	if (IS_G4X(dev_priv))
> @@ -1202,19 +1209,20 @@ static void
>  g4x_sprite_disable_arm(struct intel_plane *plane,
>  		       const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  
> -	intel_de_write_fw(dev_priv, DVSCNTR(pipe), 0);
> +	intel_de_write_fw(display, DVSCNTR(pipe), 0);
>  	/* Disable the scaler */
> -	intel_de_write_fw(dev_priv, DVSSCALE(pipe), 0);
> -	intel_de_write_fw(dev_priv, DVSSURF(pipe), 0);
> +	intel_de_write_fw(display, DVSSCALE(pipe), 0);
> +	intel_de_write_fw(display, DVSSURF(pipe), 0);
>  }
>  
>  static bool
>  g4x_sprite_get_hw_state(struct intel_plane *plane,
>  			enum pipe *pipe)
>  {
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> @@ -1225,7 +1233,7 @@ g4x_sprite_get_hw_state(struct intel_plane *plane,
>  	if (!wakeref)
>  		return false;
>  
> -	ret = intel_de_read(dev_priv, DVSCNTR(plane->pipe)) & DVS_ENABLE;
> +	ret = intel_de_read(display, DVSCNTR(plane->pipe)) & DVS_ENABLE;
>  
>  	*pipe = plane->pipe;
>  
> @@ -1255,7 +1263,7 @@ static int
>  g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
>  			 struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  	const struct drm_rect *src = &plane_state->uapi.src;
>  	const struct drm_rect *dst = &plane_state->uapi.dst;
> @@ -1281,7 +1289,8 @@ g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
>  
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
>  		if (src_h & 1) {
> -			drm_dbg_kms(&i915->drm, "Source height must be even with interlaced modes\n");
> +			drm_dbg_kms(display->drm,
> +				    "Source height must be even with interlaced modes\n");
>  			return -EINVAL;
>  		}
>  		min_height = 6;
> @@ -1293,19 +1302,22 @@ g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
>  
>  	if (src_w < min_width || src_h < min_height ||
>  	    src_w > 2048 || src_h > 2048) {
> -		drm_dbg_kms(&i915->drm, "Source dimensions (%dx%d) exceed hardware limits (%dx%d - %dx%d)\n",
> +		drm_dbg_kms(display->drm,
> +			    "Source dimensions (%dx%d) exceed hardware limits (%dx%d - %dx%d)\n",
>  			    src_w, src_h, min_width, min_height, 2048, 2048);
>  		return -EINVAL;
>  	}
>  
>  	if (width_bytes > 4096) {
> -		drm_dbg_kms(&i915->drm, "Fetch width (%d) exceeds hardware max with scaling (%u)\n",
> +		drm_dbg_kms(display->drm,
> +			    "Fetch width (%d) exceeds hardware max with scaling (%u)\n",
>  			    width_bytes, 4096);
>  		return -EINVAL;
>  	}
>  
>  	if (stride > 4096) {
> -		drm_dbg_kms(&i915->drm, "Stride (%u) exceeds hardware max with scaling (%u)\n",
> +		drm_dbg_kms(display->drm,
> +			    "Stride (%u) exceeds hardware max with scaling (%u)\n",
>  			    stride, 4096);
>  		return -EINVAL;
>  	}
> @@ -1317,6 +1329,7 @@ static int
>  g4x_sprite_check(struct intel_crtc_state *crtc_state,
>  		 struct intel_plane_state *plane_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	int min_scale = DRM_PLANE_NO_SCALING;
> @@ -1324,7 +1337,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
>  	int ret;
>  
>  	if (g4x_fb_scalable(plane_state->hw.fb)) {
> -		if (DISPLAY_VER(dev_priv) < 7) {
> +		if (DISPLAY_VER(display) < 7) {
>  			min_scale = 1;
>  			max_scale = 16 << 16;
>  		} else if (IS_IVYBRIDGE(dev_priv)) {
> @@ -1353,7 +1366,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
>  	if (ret)
>  		return ret;
>  
> -	if (DISPLAY_VER(dev_priv) >= 7)
> +	if (DISPLAY_VER(display) >= 7)
>  		plane_state->ctl = ivb_sprite_ctl(crtc_state, plane_state);
>  	else
>  		plane_state->ctl = g4x_sprite_ctl(crtc_state, plane_state);
> @@ -1364,6 +1377,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
>  int chv_plane_check_rotation(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> +	struct intel_display *display = to_intel_display(plane->base.dev);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	unsigned int rotation = plane_state->hw.rotation;
>  
> @@ -1371,7 +1385,7 @@ int chv_plane_check_rotation(const struct intel_plane_state *plane_state)
>  	if (IS_CHERRYVIEW(dev_priv) &&
>  	    rotation & DRM_MODE_ROTATE_180 &&
>  	    rotation & DRM_MODE_REFLECT_X) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Cannot rotate and reflect at the same time\n");
>  		return -EINVAL;
>  	}
> @@ -1573,6 +1587,7 @@ struct intel_plane *
>  intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe, int sprite)
>  {
> +	struct intel_display *display = &dev_priv->display;
>  	struct intel_plane *plane;
>  	const struct drm_plane_funcs *plane_funcs;
>  	unsigned int supported_rotations;
> @@ -1604,7 +1619,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  		}
>  
>  		plane_funcs = &vlv_sprite_funcs;
> -	} else if (DISPLAY_VER(dev_priv) >= 7) {
> +	} else if (DISPLAY_VER(display) >= 7) {
>  		plane->update_noarm = ivb_sprite_update_noarm;
>  		plane->update_arm = ivb_sprite_update_arm;
>  		plane->disable_arm = ivb_sprite_disable_arm;
> @@ -1663,11 +1678,11 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  
>  	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_TILING_X);
>  
> -	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
> +	ret = drm_universal_plane_init(display->drm, &plane->base,
>  				       0, plane_funcs,
>  				       formats, num_formats, modifiers,
>  				       DRM_PLANE_TYPE_OVERLAY,
> -				       "sprite %c", sprite_name(dev_priv, pipe, sprite));
> +				       "sprite %c", sprite_name(display, pipe, sprite));
>  	kfree(modifiers);
>  
>  	if (ret)
> -- 
> 2.39.2
> 
