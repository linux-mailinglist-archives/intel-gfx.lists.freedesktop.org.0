Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 456899DEC1C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 19:26:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AA110E569;
	Fri, 29 Nov 2024 18:26:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D4Qz51Q5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6495A10E569;
 Fri, 29 Nov 2024 18:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732904807; x=1764440807;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2VrZlRt6qL0Pfq5X/GsjerHwqtIwWsvy99kDWGBYT7k=;
 b=D4Qz51Q5/Wkie6tR/sfz/22erq/lZAnZ+1j22AwjKfoTQKBw/RgSZ4sa
 RRvakjwNNNd2FfpvO877WTMpizan1LfgsbVXl+uvdovl3PyARwzRfceSz
 ok9+ADQSjDJYQUfa/JKEp2MnlSggoau8VsvLSz5MAtTAp4iWJ0m9nX4yi
 tSpHkW8aLf4HTcgzmztxFosTFkUAVbqjgbo50BNiR4wNCEhgwqgu5Tn6Q
 UCwcmgrodGYwAmJVmuGyMpLOboTlZmStNqcQDgJcHJ5R0aMpk6Vth+LS9
 AAxBgC2YcelIGX0KZq6juNBnT6vkqHvO5VvFcrEkAQv0YeczYPROdgYr/ Q==;
X-CSE-ConnectionGUID: HrP5hiBbTWmSu5Sum8VrOQ==
X-CSE-MsgGUID: YkLXHpDuSw+wyX3YcRzmVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="33272580"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="33272580"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 10:26:47 -0800
X-CSE-ConnectionGUID: UBFBKGFURn+X+qoKPoC9wg==
X-CSE-MsgGUID: /4gIzTTVTaSNFeAQsg31Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="93016908"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 10:26:47 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 10:26:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 10:26:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 10:26:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iQMmTBc1LZ+sWSM5WIsQvmkTiLaJRMwE7+tjbS8atIBzc6wf++2Hz1PsFl2zuN8a6EgYK22tJ2CXOs5zJvOsOAhZx4rvlQWiz1Ua3COWjoo9JxnnALSKxBum/2BVqRFuW4g6JHA1s8LxYZacWNaePOBe2vyvzVdqNHNmqwtlw6f25EKYl/OBraTFdP+nPKEHNY3PVzgPc7CgaI6a0sEM6nj6gRYgkaBown6Z6xWExYX67Q9iXric2jX9E/IrxE6I11dPKOwcrA+N55QmQQcfCe6bDeU1w28O3XHinnlw3j0FPrPHqiy6mCWlN8v1/eoxI4OO9hxN0cQz74uvcSoGFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+dWx0C+VkHPckaiOAxRYyKIXY3mo8LoI6J3cwvdVy/I=;
 b=pecA2TnVKcXGXS2D+wwWkWX5ZptE4YHMWxjHM/lPrGgrqvgbIi8V62j7a268pXpEMV6tmliGhkhea2epX1oMtxicCfCtBrn3hPKiqQ58oYQtmyRp+nMmT2/Y2U+gxRvbHdoBnd7m6pUEMJgTXOBZH8wasR4sSYyAp17csId0/5aeu5BczGaXx4kC/9mMxCVpmfi3HsNSPwhG6jJTeSQcJRGkgbGAM+TE3WovO6MlBVXgdOsMbSaU2fDLEsJ38zv8TsjSwy7dUjMZpbc+sLdjvf/7BHAdgY/xxmJlxsgk202ElBF+R1HVEt/h4s7g5KriemwgTcayeBrIMQdxbUfkOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 SJ0PR11MB6813.namprd11.prod.outlook.com (2603:10b6:a03:47f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.14; Fri, 29 Nov 2024 18:26:43 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 18:26:43 +0000
Date: Fri, 29 Nov 2024 13:26:37 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v2 3/3] drm/xe/display: Flush DMC wakelock release work
 on runtime suspend
Message-ID: <Z0oHXUzvOSh2eaiI@intel.com>
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
 <20241129164010.29887-4-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241129164010.29887-4-gustavo.sousa@intel.com>
X-ClientProxiedBy: MW4P222CA0022.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::27) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|SJ0PR11MB6813:EE_
X-MS-Office365-Filtering-Correlation-Id: 77f58ef5-d1bb-414a-653b-08dd10a35feb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hGOAsoIfPBOtcymEAIyEqe83C08EAdsavfGQOih4vVg4PasP7pUHRxuZ7mK7?=
 =?us-ascii?Q?6paEr41ODgHM+4sOa6AmdMuxupTLtVYzaLubVVPgnzGvSyeCaludFjr/fT/4?=
 =?us-ascii?Q?FuFU39rMrcF93nAGrUiK+HQ0gMVkHyxKsM19XaD/SPRfY6+j8D+gvV2szHWj?=
 =?us-ascii?Q?CEkjf3m8WMVSUcZvK3YAhX8W1/VbC4hQzWSITOVCkrIFFTNTlFmbSLRlkzxc?=
 =?us-ascii?Q?GvDoNQwtWHvVffoN1jERyeFn7EGANxTaJPQjasf7KPzFiztCmKp1bvAGeEC1?=
 =?us-ascii?Q?3exz1pmsGStoUwd5f72S5EOeJbNl5EKSwhO9I7BrO6zMardUP2XO2ii6F6sg?=
 =?us-ascii?Q?nWkXfhhilOo3GzR5y4cRIgGB84pHM1890NyFm3UrBoxSRZA3bBoRtoJz56Jl?=
 =?us-ascii?Q?bO+fBKbUYWop8rGf0KJ5Q0BWrfFSDEqhUOI4ivOLBn6NSPLr0u4W76OZglDP?=
 =?us-ascii?Q?hyun9C5U+ANEyXOZGkbJE93zut5mkvjHKmtrdiRexnvQD97WXYo714C05rW3?=
 =?us-ascii?Q?vnMecJibbcQqqrFTOFiYG+4VuLGYO6KqjwmSguelCUbLUr6DHLF8acXJYb2K?=
 =?us-ascii?Q?fwNzZWZhrrPbek48vjKXsPTtkYQXidaWC6cEcb4WhxLmrHcNUF0lmWanGJlP?=
 =?us-ascii?Q?fNdFs0b5UXZbBodUoRt3pLpB3Gy1CO+z4r6ybJi1VKou6UG2BugwJ6oa6kc5?=
 =?us-ascii?Q?pt2AlZabklYAfiB0r6Dw41kH+G64w1TyvBFaP6wqGvMAQ0qE068ZL6UZdr2L?=
 =?us-ascii?Q?5wu2Tl3KQBvyfBbB/ee7ZXhev1OUE8yIQ4L64XZDFGuQfd1ZFVeNBypdbTUK?=
 =?us-ascii?Q?SDVpZZc8if5885iI3OYODGCe8xf9GcOYCh8UI9ohfgudqPF2H9Irx2gXsH7G?=
 =?us-ascii?Q?7qUBo2HH7vsraVNsbqDfhV5VvbPOA6Qs7mnQgtnby7A8vM/R+RWGhHtu1ZnY?=
 =?us-ascii?Q?TTInfMuNV8u0NecXp9c6zsdERZ3lxnx4Pr6s1XHqCeNXmdzu7XCT3t0IqTmv?=
 =?us-ascii?Q?cmC0jkZ2rgxJPYqT77OoW+rZ183H3ct2OwL0E/NcSae2iZo9D4zrJ8uwJuc0?=
 =?us-ascii?Q?drT8O4OeA0UwLZK3DxmPq3sGf6rOWwRBggh9a+LQr9WTaAnZEmoz4av/OATv?=
 =?us-ascii?Q?HJOVfuTRMDKGYn4ilJRl6tYTP82fU1ETc+W981ITFtxcap6A3NDN8g0m545W?=
 =?us-ascii?Q?/BHyweIpTZ9VdCz7weed59dZ/x5ELuazixsnMZc7nsQQQvGA/oXqbkcJZb/B?=
 =?us-ascii?Q?eo0SYHT/HRBjCY5d32hBaN2gBAKC0eVN8/ujq+cQYcjwI0mQWtDYHp90BYBF?=
 =?us-ascii?Q?BtR3hjD7QUMsj/YplJAhcXT6QPzAlEn72N98cdibFc79sw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HRmnqwTz1IkcEaTMsKx00GO59jUmxTWcFCyg/dgFSvOb/9vKEwDUMEhy6c3J?=
 =?us-ascii?Q?agsD0+wuL5vauv4ijcINMFpXtWrmYoeyVMu1+1y8tkFN2416y6UClWpXxvZ5?=
 =?us-ascii?Q?ga/LMeRX7SqVmDs7kAM1iYrdCYp1fdxYE0FPvgRtlDBc4rKglyrd0eUhS/UN?=
 =?us-ascii?Q?Hj3zNJmNSnO4vlY2Xbk8LUd/CEVI3roG/baoZqfRPqjbCfeiZa6WyaBAH2na?=
 =?us-ascii?Q?PFwxxq+w/7lO/rRrDrkhG5S/ty2CTEeF23yBcA1kZZg63rmt/vGNAVx8Feqq?=
 =?us-ascii?Q?1tyYToxGD0chfUCqxzq561ZH+pemsDdmKJ6+r7nctMQG6ZTHZykB8/axrdiR?=
 =?us-ascii?Q?86uZIdfTjgs8X/AMc10aTv8Dy7xaqFqyv+DSHLiZMu8ecbMhWTjwTwoPiqaA?=
 =?us-ascii?Q?SPukCVZ8YDW2iPf5BGDRlzw+v1WdtACewu+FGhRZbIqfjOP/HrrJQxyypeqa?=
 =?us-ascii?Q?rheF80/sYV4exLlhoUIMuWdStWNAFOP+mqlIM3qUejZrzqjlZ7QIFDlowTLd?=
 =?us-ascii?Q?DNKcxqsRucjfenZfWFEYUH5RdcCWwQH6/LHP2mikx2tzvlrl+d5zEYQYynQ5?=
 =?us-ascii?Q?sNduo9LrF3xzb5yo2P8nueANrDqcQOw0j2/XuLqJH+0bDG5N+DTLdndnWM3d?=
 =?us-ascii?Q?yomFq+pSCM83SyAreUGz9yaG/l2iCtDnCtmvSntH7vojbaUrudAcGhUsmjZ0?=
 =?us-ascii?Q?DjIqFh5S5EI3zreJ1VGgOk7cdHqfE5D3/ZqXkHp2/KaYsqkb+mK3s5OZn3tE?=
 =?us-ascii?Q?UTjbmoMgep+coq4YoeuuvwlOoY2BSRoUDlnZmuWlQop2EA0Pfgnl9LN8uqQH?=
 =?us-ascii?Q?vpEgnC2HHPeaQW+5FhIaNYHBKYpU8kZ4MaaBt0a4nrNUZyMF3b/nQJ36/ifI?=
 =?us-ascii?Q?4d6/94xLU1anQSWZ4QCbnu3/nM9bLP4XKrhP577qR9yucENBCnIPGmAKY3OP?=
 =?us-ascii?Q?v019gicsOgXzx9gCGqNuOiusCNrXQQhB/UYCqCRSI21/YMoa2fyOSe5VHMp6?=
 =?us-ascii?Q?EKYf/c0ewCVqmuKEFCQL2tEQzqJtmz7O7+XMMnP+llOoczOuyXHCmJ7zO9TB?=
 =?us-ascii?Q?IbOm8hW3TgbBgVttF+W9mdvO1Tfl2fL6Kn4a6snS4RMQqXkWZfsJPedKnT3d?=
 =?us-ascii?Q?bdAY/lfks0lTwgABt4SIpV3mFGwh3IA6sGR6bzvcu/+2/ApLESQa/mzFmHAJ?=
 =?us-ascii?Q?tFDNvavW6QGwegNEaUOVn800XLAesFQYbTpMDiC82XgsgxiMuG8+Nd/52dvQ?=
 =?us-ascii?Q?Bhlv7XNsYb2iS7BrNvJQnWRjyBr19RCHm7Aa8zD4ZjI+ImT1Dt4G7YnwVJ6J?=
 =?us-ascii?Q?Dsqbp06zKvft1r4tWu+o3GvfAHoXkSgBbXEVRn8vwsUx1nY7o0cXxQzdwCge?=
 =?us-ascii?Q?9dobtfpBoXpycnOX48wjrFyPrXCvmqyETvxqknvJjTgWP50SQLYVKwgTlD+G?=
 =?us-ascii?Q?UwhXYgxwJNhxGt5A752xG5ZUy9o3bXTfAUk4UJ2rFLDRJn1jNz/UVaYbNL21?=
 =?us-ascii?Q?rSVd992GFiEuvkM357897UlkUSlOpytzFfyA8Yi9lgViwXh09rJuQYsyz/Kx?=
 =?us-ascii?Q?xrv1rlZb9d0laVnt+KMBIp6YYwoMuj3RMhx2JCfgw3U3uc7gWYR7q9otELE3?=
 =?us-ascii?Q?+Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77f58ef5-d1bb-414a-653b-08dd10a35feb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 18:26:43.5034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PZmF3db66yDojvGj5TnDZbIUZgNaFa8bVjOgTGslufSGvz1o38mRrYXsCSM8KJCRcMcI13dMdUIzIOczQAEESw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6813
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

On Fri, Nov 29, 2024 at 01:37:56PM -0300, Gustavo Sousa wrote:
> We currently are not calling display runtime suspend functions when
> D3cold is not allowed. Because of that, we end up not disabling dynamic
> DC states (and do not go to DC9). With dynamic DC states enabled, we
> will also have DMC wakelock enabled. Since we use a delayed work to
> release the DMC wakelock, the work might get executed a little too late
> (after the PCI device has been put to D3hot) and we get a timeout
> warning ("DMC wakelock release timed out") because the MMIO for
> releasing the wakelock will be invalid after that point.
> 
> To fix that, make sure we flush the release work at the end of
> xe_display_pm_runtime_suspend_late(). We can do that unconditionally
> because, if there is no pending work, that turns into a no-op.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

(answering patch by patch to make your life easier now when applying
with dim b4-shazam ;) )

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 739db5b7b01f..eec91ab1b311 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -22,6 +22,7 @@
>  #include "intel_display_irq.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
> +#include "intel_dmc_wl.h"
>  #include "intel_dp.h"
>  #include "intel_encoder.h"
>  #include "intel_fbdev.h"
> @@ -409,11 +410,20 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
>  
>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
>  {
> +	struct intel_display *display = &xe->display;
> +
>  	if (!xe->info.probe_display)
>  		return;
>  
>  	if (xe->d3cold.allowed)
>  		xe_display_pm_suspend_late(xe);
> +
> +	/*
> +	 * If xe_display_pm_suspend_late() is not called, it is likely
> +	 * that we will be on dynamic DC states with DMC wakelock enabled. We
> +	 * need to flush the release work in that case.
> +	 */
> +	intel_dmc_wl_flush_release_work(display);
>  }
>  
>  void xe_display_pm_shutdown_late(struct xe_device *xe)
> -- 
> 2.47.0
> 
