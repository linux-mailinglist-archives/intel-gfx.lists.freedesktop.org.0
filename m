Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF34A4CF2D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 00:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F8A10E0A0;
	Mon,  3 Mar 2025 23:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OENUWS4P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADA40893ED;
 Mon,  3 Mar 2025 23:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741044133; x=1772580133;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pM1lgRsJhkttCOP/nbv3TxlpKm7QvpbEANRVrAo28EY=;
 b=OENUWS4P5sd0c8OByCxcaZ5JZr4oY8xb7OFYj4A1b1RnbjOpToLL62Ig
 bbBqbd9TlaLEst6ril5RO4Xz4EFQs3VtfTLQGEqoBPbKdQvkJ7EKrU/hD
 d9YwLp7OtT8dgKWEfBXHdbBgN3+qnljRaRYaGanmhRUNgEjHe1kWZrXy8
 UuOTxlcFsafkFu+wcljsugCMM+ddmrAvtz9eQwHraayZuLPlxf8sAy7Xm
 yktJIwxbYkTwO3td/jbCWwkdcYkRDL+E7imMgKF1x4xsujHmjY8fjZkgj
 O9gp1PzxY8Lhf7dqclljq5WCeXxVJpfGa/izDEYIBs34mwf9mWJQwPjFS A==;
X-CSE-ConnectionGUID: COUYMwaJQAGYAxFnUpwAGg==
X-CSE-MsgGUID: R1m7FP3MRmWqnUKozltKGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="42192330"
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="42192330"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 15:22:12 -0800
X-CSE-ConnectionGUID: K1Y6sdgWRwWTPmcEifh90g==
X-CSE-MsgGUID: MCl1xZimQc+VO0uxLcrXKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="141410871"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 15:22:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 3 Mar 2025 15:22:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 15:22:11 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 15:22:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w+aPv9hcfWKTewBq8YNum0/0sENoJCVjCtX0HTQXPiWwaG7Pb8eVcdJNWjANed4rM6ttkjYjL1rLyBZpe3aZBUp3P8iAu5ODxhjfOlcl1DiaDtINE5aozMsPRO1ni9xraQk07DrSz0yulg6pDUzrAZ0vjmT9iv+Gt1abPeUzMyTFfQ8LYaiIiMODv3ZhD9T2lxUSNHreCQ5mMZYjgpqAvEEadgJKqNnte8T2LOODpZiLD1NGnCvxMmUbc/NDfRTOCM2gconnBdJa7bAYILOe33ClNuiluSh8vxf2+ost8MQBZPk6CzOiRQjhUycvQ7zL1vAGQFikNv+yhOxoSw2VJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfF9T8SfexwiaymcyEkUzb3P2LrklDbZXa2X4d+ceQM=;
 b=t5Ki9/vFY6eS7oicuD7tjnYP66+n67C77jHZhtLNmfCFvxkrYqvAkdFLxhj0xFYdE7Dt9CuVsdp1kPe1PXB+T4ROIFjdGBAwgPi7ZX4uQ3F1raMIhn5VZa6sz9eiUXRDO5zUPA/MMT9sf80w2iFw5UxS6j6nxTRStTEaZUOO1yStC0Q73i/o2gaLmMz8RJxgd4L12pxp484gOHIspHm4OEi7F9MQk2LmUW6OyWZYa6BbYGyyAihBX8VAcCtx1yb7aMdqYP4Q6DMVliy7+8Mz09vqMo96GRbEwWlc9WaFwGu516L97APeM74hMd/z7+bYcfVMMdS691zuARW465wagA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB6709.namprd11.prod.outlook.com (2603:10b6:806:259::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 23:21:26 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 23:21:26 +0000
Date: Mon, 3 Mar 2025 15:21:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v3 7/8] drm/i915/reset: pass test only parameter to
 intel_display_reset_finish()
Message-ID: <20250303232123.GP5109@mdroper-desk1.amr.corp.intel.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
 <a36481db334fedcde50ae0e66c4d57825cae8cb7.1741001054.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a36481db334fedcde50ae0e66c4d57825cae8cb7.1741001054.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0157.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::12) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB6709:EE_
X-MS-Office365-Filtering-Correlation-Id: 9cdba7f0-7201-48ea-2625-08dd5aaa1e9d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0OSHSfI9nXP1JnW1ASlHQxMhoMIviSG3CZ0CDHOty4XxRYX9bih8fkM6bhaN?=
 =?us-ascii?Q?pBoXzV0vm5u6ISPqM680Uz8fg3D0MRz0RBW4bEQuqaoNL+dlSQrb0SQUX2w1?=
 =?us-ascii?Q?+kqlhyBptb3eGEIC3gqCCUFcq8RsqiObnIbAngf5c+vvYyqi45VLezG5+nG9?=
 =?us-ascii?Q?DrdJX1WrNYKqEpfsjEczytM5YjgfMQMZC7OpvbWkbaXzveOApsNKc7MS6hto?=
 =?us-ascii?Q?QfSG0Yk/JTUboXNGcqBdd0GQX+5cBGz87Dnk9tq22Y5qSycMu6+tHmwUmL1w?=
 =?us-ascii?Q?t3sz7bzOQpSxiUBYedhB98QWnI/8PSzx5raDNKqPkrN8LG/O1ltvhu7sA7F2?=
 =?us-ascii?Q?oB+CmDXaV2u1M2DOUKJ5doBOSdt+sDu7xxHZKwt3X0kQpNgkwoUINV7JNCS9?=
 =?us-ascii?Q?AUF6BoL5Omj5+7slljhD8xO8ADHuKeX6QjbASt9HlVOdGggLBqupnkTaFYJq?=
 =?us-ascii?Q?5TZWKcywV6ImgQ2IYH5v21x7HtXnCuEf1ad+S4L6OE1zEW46B+qOqLe8gbPr?=
 =?us-ascii?Q?G2XujPHvkTGzpyvZLvvVXgdG0WpfujLrWBgBZdH7gT6y1BJWJK/Netn39hNE?=
 =?us-ascii?Q?OiWQk4n+xp36oCKRjWLFg2VSJfv5ofuLm+6xQCMTemMDBWZe65E5aIHtls/s?=
 =?us-ascii?Q?6v8qEIcj/2IMKY9RfdiiN6UXq9bOThX10KZb3LCOkd4nn/vfm0q50j17SS8i?=
 =?us-ascii?Q?mGY04rTJ4ZLoLFUKkkeO3o6EBqHzHRljoWcN+YVBLgc6+1+4PWU1VlOxP8W2?=
 =?us-ascii?Q?VEk2Gu6EyP8Ykh6Vk7vRQ5AZ3Fhw2iKYMFhVoi0MnivhUU+Iw1P2xoconMMt?=
 =?us-ascii?Q?y2cmGF28Iyxd/u4GiWMmqq+8ksKhUVCT1tEmnNw48eI8aIJqPuyL7ja0OTFL?=
 =?us-ascii?Q?0jQxLK6s8bmoj56kMHO9ga15dz4ehzTOQmsy89P338rq0EZ5vXxLVyKuL/hB?=
 =?us-ascii?Q?PtEQ0/sLU+8HvM8SLbZyabPyTMoAIAKyQ9TLxzYdF5hkR2gMTMCStLRA4E9h?=
 =?us-ascii?Q?J1Y2Z+qQTvUX4Sd2PbqeJ2BDFMABjKLveFD2BOE9jBVQxK6VKGvlLOCrggWT?=
 =?us-ascii?Q?5JABc+3M7wBzqxMdPnicJyoL2nRXx8Oxu8mwULmE6su6/JQEtwxjTDFHsWwJ?=
 =?us-ascii?Q?gAVNpZTkHWRQ9frafJnXZBgtHnee7Nqii0F9+qTO/IbZ0E+lntRxYsUW1Bzc?=
 =?us-ascii?Q?UYdW/1aH8KB3z5IWTBQqXKVHMEq3O3XZuG7YMu7d/+3EQVCflvZDMVcGzTgl?=
 =?us-ascii?Q?pUJx4+UUrBaR6e6Ws2Md7EBbNuBw6pXy9IdapuhSNvAqtioP0W48XMCFY3RT?=
 =?us-ascii?Q?dGpc0T+R7K7RIKPeUGSiBXBgGnrdki+BPP2bIgF25vd/Sd4E5TxkyZkb5IJE?=
 =?us-ascii?Q?1k0/1HXrOGJD0eNA8A+X38HJeq52?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?83HV9GODORdNsrrsV4DlVqf/KnHM0w9DyisqQggrShL7wiAlsw9rWjI5F+f0?=
 =?us-ascii?Q?Ii+wJfsHQhSUZWjGuzh9HoUjkStbG2saXsjCUegluUv0Kk9TDRo2279lQrXT?=
 =?us-ascii?Q?wwFcoh2ZeR6HnYmuoKutM+hTbPd+85hGuv5a8/bfG3HuoKRy11Q1k5BDUpNi?=
 =?us-ascii?Q?nqxIiPbXxU5BsNX4xActA85XmxK0HBwFVwdtRdq+IpS6EI6kTvwBncPAnZEU?=
 =?us-ascii?Q?Ruthn/MPwgZQ3whAWGbSITaYtyZgncFx01L+EUQXQ0zhOUo0L3AUxxfCoU1C?=
 =?us-ascii?Q?055Dm0GkxkR8xJqtquUg3KtAvWmcfd2FnWUsUTQY6OgIQV7ZnNSUkyhd6zTa?=
 =?us-ascii?Q?xkg3CIvNJm7VhnCxGvjZvT1YcwH/L1xS8SXShOQtMJqZWsuokwTJYrpTgf32?=
 =?us-ascii?Q?0dbwvswsOuv44/8PRvt6ORtvjHXrJAIzDVzjLjz1HkH7UrFZAgKE3xS7hFyN?=
 =?us-ascii?Q?qdeNA0NQdVjlw+amcGW0iZECvgnuV5I/tNBEUNz55Da2FsrShqvT0chotT/9?=
 =?us-ascii?Q?cRuD9xe5QvrUR7PUf+5ScBOX/3CGLAQ/h8iomyT1uSon5QytIjcbN7nX68KA?=
 =?us-ascii?Q?AxPEj0q9jfwNBM/bxQArEqV9JitR7xiRTOUX9QrdzoHlnSQ7NtC4mOV76Jx4?=
 =?us-ascii?Q?0+z+mfREOO10Xhnn/HtRzL4A0l/1UmBNlPunmJkMzHXzY+igelQUDt99HRoH?=
 =?us-ascii?Q?oryHH2pwMif2FoTL+0ihnHNcKky6cdu1QPHnRUn6RwPa5LuyWwIjXAlEO7F8?=
 =?us-ascii?Q?sWZB4LnqpcfDmenQsFA4H9WYLP2Eh0jY7HGaBYfHVDhd6kd5GoJRRIChxvXN?=
 =?us-ascii?Q?md1fZShGD/DaHSteMJGf3MTNEnSgj3ucit8YLN4wysfJeBgiT73p+9ruLiaW?=
 =?us-ascii?Q?4v27cAH3R2mKluuP1AEkb8NljnU+WOlElf3DqJVimXH8kL2pRC4wFRI3OYKO?=
 =?us-ascii?Q?g4Yua87LuRts+4c3SDPE3nY4oOZW6yKa3oyy7F/9btTTMiyBhryP/+xktGf6?=
 =?us-ascii?Q?cmtbb7vT8e/CfORt5ik37yMFDzhqRLa5SKGVCeZ0SG8Ec+rz6q54SIs1EO38?=
 =?us-ascii?Q?OcKFbpEoMULbs4plHioe5Ntco/9L/govpvx0OicTEPiu45OYieeFFYw5bpkO?=
 =?us-ascii?Q?XftQx2gWgL0h65+kTAO+gdeOvdNAR+0tinFXgTow7pYFm/3C1/5jtP8vq2+i?=
 =?us-ascii?Q?mJIFVnp+36lA2jThzZj2rMmA1JY1S6rnxOVLWFwt6wDsvC03DaytX3IZ9xVW?=
 =?us-ascii?Q?A6ZJaAJXLaWWKzBSP9To4/FreUxIh4rmmjSuC4P0tmr1PvrpnJF2h8akdz3j?=
 =?us-ascii?Q?m9crFcNQLqznag3s+b0+jSVB2SIos94gFcUYpdgbpxnONlMWgeSUSDYBa1/z?=
 =?us-ascii?Q?26h2GtFE/8V0CuafKn9rVX5Y7aXg4B6GZUaFm0r2hJvkrOReyFGQDGrIApJH?=
 =?us-ascii?Q?O2PW3MzVRu4uQPSsSZPdhhUIZrqyCjyYqV2NM1m2T7LSOlyaOPJEuoTSHX3L?=
 =?us-ascii?Q?K3E/TRJGrq5ffgQMfL0s1g9C0Pmc2Mfk0y43+Sno9q1iDIlnhUoHqCLKQuMh?=
 =?us-ascii?Q?8nhjzdwoqgyYXAG8rqGkPTursnrXNynVDCsyqbZ62In1lzfVUVBCuwvGTIHm?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cdba7f0-7201-48ea-2625-08dd5aaa1e9d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 23:21:26.2844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q7F9GDUZ1Z0m4OlnWtcKs1b0u4LG4eALKt0bls14/UMOE4GE/4uH9VHtGLtHiEFkpJLBLYihUqqrZ+2RWwZo8uQi9JXqRWHP/B6EQLmLRmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
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

On Mon, Mar 03, 2025 at 01:27:09PM +0200, Jani Nikula wrote:
> Deduplicate the gpu_reset_clobbers_display() part by passing the
> information in from gt side.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_reset.c | 12 ++----------
>  drivers/gpu/drm/i915/display/intel_display_reset.h |  2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c              |  2 +-
>  3 files changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index c48d822db58e..d5ce0ac43377 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -14,14 +14,6 @@
>  #include "intel_hotplug.h"
>  #include "intel_pps.h"
>  
> -static bool gpu_reset_clobbers_display(struct intel_display *display)
> -{
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
> -	return (INTEL_INFO(i915)->gpu_reset_clobbers_display &&
> -		intel_has_gpu_reset(to_gt(i915)));
> -}
> -
>  bool intel_display_reset_test(struct intel_display *display)
>  {
>  	return display->params.force_reset_modeset_test;
> @@ -83,7 +75,7 @@ bool intel_display_reset_prepare(struct intel_display *display)
>  	return true;
>  }
>  
> -void intel_display_reset_finish(struct intel_display *display)
> +void intel_display_reset_finish(struct intel_display *display, bool test_only)

The name 'test_only' makes me think this is going to be about
DRM_MODE_ATOMIC_TEST_ONLY somehow, rather than "I set a module parameter
to force this, even when it isn't needed, for testing purposes."

Not sure if it's worth renaming or not.  Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
> @@ -98,7 +90,7 @@ void intel_display_reset_finish(struct intel_display *display)
>  		goto unlock;
>  
>  	/* reset doesn't touch the display */
> -	if (!gpu_reset_clobbers_display(display)) {
> +	if (test_only) {
>  		/* for testing only restore the display */
>  		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
>  		if (ret) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index 311b5af8ca0c..f518147199a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -12,6 +12,6 @@ struct intel_display;
>  
>  bool intel_display_reset_test(struct intel_display *display);
>  bool intel_display_reset_prepare(struct intel_display *display);
> -void intel_display_reset_finish(struct intel_display *display);
> +void intel_display_reset_finish(struct intel_display *display, bool test_only);
>  
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index d4f2829477b4..0f12752d0f24 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1434,7 +1434,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  		intel_gt_reset(gt, engine_mask, reason);
>  
>  		if (reset_display)
> -			intel_display_reset_finish(display);
> +			intel_display_reset_finish(display, !need_display_reset);
>  	}
>  
>  	if (!test_bit(I915_WEDGED, &gt->reset.flags))
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
