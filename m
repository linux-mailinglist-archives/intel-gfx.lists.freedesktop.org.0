Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C33A95CFE3
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 16:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA23210E71B;
	Fri, 23 Aug 2024 14:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h1IvM9dh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D046710E71B
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 14:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724423520; x=1755959520;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rYcbZWE13MRjc9ovv9XZ/i5XcceGUsHXjrpUkYvcC1o=;
 b=h1IvM9dhNFCFF5BNR/uIJOmnp23SIm0V2A7IIxWNcml/x7JBpWOkZ2XO
 KT0aGaUJkkngag5DPRscyTpNvgN7PCTO0aD7PZaXq4YA+OOkUmyQuUva4
 2vgT9uxPlzd5JzqrnYihtB94AZ66IoXpdlk24y6SpxjvHxIu3LyzJDmPb
 MzoBK0Fr7Hl3zWaE8gg59o8tjEbMIA13x5TuqvNril4G4tPdHzeZudDcD
 dna08kyn1r/kl2zN3IrzrHOjBAyW6H7+gTFLYqasuKIlWKnRypWCnvsGq
 D4DBJEa3RzX8UuWU3+Q+ybIuPG7HWD0iH1Htkn8gSGa3ZPEK2kf/IuBPr Q==;
X-CSE-ConnectionGUID: AwChikMDSSK34Q5YtJb5fQ==
X-CSE-MsgGUID: oD3Ys1EWTv6MZHGOBqlIIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="40409940"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="40409940"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 07:32:00 -0700
X-CSE-ConnectionGUID: oNUxAaGmRxmo31WEfhTA1A==
X-CSE-MsgGUID: +P/HDrGRSAK6QZFChaYWdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="84986634"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Aug 2024 07:32:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 23 Aug 2024 07:31:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 23 Aug 2024 07:31:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 23 Aug 2024 07:31:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gi9TNxOOSznin22PmvMHszcrH82xVI+9+nUSjpc/QG6wvzascwoWhyZNXqAKNC/8nGEa9c0O6podf0amPNu4rHvpSR8/NEp8xIb715q3at/Qh9HoexIAvPqiYMYFCn4mY3C6XCTM8S9Zyo9J3/iwiSV3lb+TyYQ7UKxHmdPVUOA61ibye87inT5aiJTbKfOUxUrB2uvEe3enXNbfllVqhG59S6aInKFm+zlNl5uu4WYHOmb7zfUj5hojqJwN5TH2HaMZDWzQDa9mcDT2bZFGTP9G50uQD5lHy9FCGbRzYnTEHagy6CYr+S1Uzmj2tR4UOIrUjzrFfCZ32sn7QmMbvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TebwOoQr38u7Me9g6lisodOeoTHOfsA5hfUEwwowfgA=;
 b=QxlSfNJLkiH25vhfcgkKAUps+5gaB7jLm1nNByjW/p1j5Y9kS6AQkG7bweAtmKcWs0ZcQn7QDrMyCW7wJ6RqnYz1GZ4ZIAWXEYKok1/xWl7JjhdBvfQ7XRVNVAL7/G32bubhYPduag4FpmRwxD7P1U1CCeFgXrkp9TRaacCIBDxk/LQt3/DzDYqWmxONpVFL/X11rmUNhp2XQ3BUX3ahL0I/phzO3EDERoqJYRRjXSxZARttrQpXY/dDaktUN+mz0GqY7vnJ/yeUUiBbZdCVna3QXaDDtuPp2bcnJjADo7GuaeNBgRyDFEIK+3PA9RckgCxbBhU3ZQX6hG5zUg6o1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8708.namprd11.prod.outlook.com (2603:10b6:610:1be::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Fri, 23 Aug
 2024 14:31:52 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Fri, 23 Aug 2024
 14:31:52 +0000
Date: Fri, 23 Aug 2024 10:31:49 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: remove unnecessary display includes
Message-ID: <ZsidVbQKnjuuSgb3@intel.com>
References: <20240823123318.3189503-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240823123318.3189503-1-jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0304.namprd04.prod.outlook.com
 (2603:10b6:303:82::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8708:EE_
X-MS-Office365-Filtering-Correlation-Id: 2902f349-6a16-4194-7480-08dcc3805496
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7J1uwZyv676j6YmCI1WJwWlgzNUHRh7L1b+WLF88RiVeaZ2SyMLQiivnT1bJ?=
 =?us-ascii?Q?lv/CP6Tg78txGwbnCZ9Zjr7elNCl5AfFciC+Ptr5nPLYCEq5f1x6fFGG+mXU?=
 =?us-ascii?Q?mlHrC4iSwPUWdP92jICsjDEKCSIZT/NDtQvg4rrdb8njege1m1GkWbGYJ6b8?=
 =?us-ascii?Q?Rgv74P/iQe8h+1JdwGkmjsCt65EP56lP1myW+S7ucVMhT/YO0TjYhp10uLzB?=
 =?us-ascii?Q?pvUdmKfwdEYOO2yqff4UgO3cXthNnIxqTrRV+kN2BzEbsstpS4X9PUyplOLa?=
 =?us-ascii?Q?3sTAS+LVMIuv4INXqmyP6ATXyV2QkY99+bSF0GHySUVCQ+cQR3tVOu9g2KoP?=
 =?us-ascii?Q?xWtK1ej7Dbir18UBe5a3fbRdFD/pmEwnGx4jSjA+7CbIjeMyym+VU0h5dZRW?=
 =?us-ascii?Q?ro7Pn012SDagh7XQaNwoaOwq6esFGr9xjzjn10HT5LuY7Oes//M/BW7VYpNU?=
 =?us-ascii?Q?LC0oUVQNEk2XY+JQ8r1OqUCAtosVNbQdxcwg0/I4+qvndDMOwpCk2YEtLgcA?=
 =?us-ascii?Q?ZJXLLnICNUhS3bzTfTc/GM0mUFbT9LenPkQ6VoWprDsZ9b8A31GPoesvYd0g?=
 =?us-ascii?Q?m/cCqpS8dh+zJBi+RFgmYK+mOle9nCEqqySOFil7wYS6HhD5u48DF/2qn/5/?=
 =?us-ascii?Q?iZy5Cr+RL2K7+rZGMGIyGVM8OUS7Qfcxep2edh8bgBOraMhMjWgEGuGe5Q5N?=
 =?us-ascii?Q?w8QUPFVfkvQBvtn9oOR5+PNT+EOs2JWGU6ybkYeNVYmL+R3rF5kiSYzz9uX7?=
 =?us-ascii?Q?r/CPW+lLJozN7hLjYBmhXVnk6jwslBLE6Roks0qDgelVKEz43d7hFWIVJ8k1?=
 =?us-ascii?Q?CMi5Lnow+Yjvi5X4A4spxQ8uGzg1bVwkeo9cDxUrfMt6kEZ4Emz9nTjHqEZ7?=
 =?us-ascii?Q?Q16RV8WbIY8a1uUiHYfdJvJWhkshzzoNwbnM+Zu9U02A0ahJg7Ox6DUqxyv+?=
 =?us-ascii?Q?svTOQkQFp5MLUpoGQ1/s0P5XuSsmTQ1a36rFu/oaIQn377EkGFzVwZ2sRO/2?=
 =?us-ascii?Q?O23QUy/bZrqAwMHyfYghAOTJL/hmlLadyRf27d1XwhE+1VZBGG9dJ5DC3sak?=
 =?us-ascii?Q?BnYfoknHMq889X/6TcoaUY5s5nd7Nz303iLm28Y4j5pnEsPljAlzy/YS5z0O?=
 =?us-ascii?Q?TWEbcItzy74ffWZ6q6rlrBS/5C+k/h2IP7ZDgJE/gGAmB1tJmhSs0HPdcFIv?=
 =?us-ascii?Q?uMw3fMZ4uAlG+vKbvJz+2OCeBye9dHICBAKqqNcjzT9k3y07K98Txtz7DgpE?=
 =?us-ascii?Q?ws4SiG7lPyeT8zUj5k3qzY8wNZq1bHIw6mSSoIc4ojjLx6bz+PGeu4SxmB65?=
 =?us-ascii?Q?KvSngR/WAATAPbr1DTYlatmnYfcPGgdso/WyYpsgZZFChQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UigBYZCJOKN3lMNyWU48LrvkYzDBOiPkwTp9gGyAXAQtHy/k0Exkm6oLzv7S?=
 =?us-ascii?Q?Baq3+/olhwVtddi6mTgvoOMYgx6GRtcAwcbwvVSfVvWq2ntEeY5K2DIoGpPA?=
 =?us-ascii?Q?TfwdNq/r51heBFYpbOUgHk5Chuy+876wcIN76gixek5/yi55IzrjLfMuum02?=
 =?us-ascii?Q?euu8m3sDHbVB81EcacR8IUZ0e0ozC/mDdhEIVyzY1rUD/XgpaZhgXKY2y+Gy?=
 =?us-ascii?Q?5nJEzXlJHs44wXBPrP0juD11GsBQ0YeNv2/42V29xx8b1I4fRbmnRe1O1y93?=
 =?us-ascii?Q?vczajCgxuczpIWyuh6DyWZwsS4M8tdwjSlb8wr81wszD5WJefGR1zd75Xr5k?=
 =?us-ascii?Q?Iq0l7HYlleO57ubVFr7aLPP515l4vvQDCpKu9jNN0f5xlfisbC8bWIQDCVk1?=
 =?us-ascii?Q?Gj0YZzXQgmhKtJWlBIOT+lBtoPrqGNmQGW60f2Z4RfSj2hX0xPiHC9LE8ObH?=
 =?us-ascii?Q?tcdb/W7d5To2HsGOSDk4ihuo2vhzImoemk4xEbrTECcaRYZghQ21zSUNElbH?=
 =?us-ascii?Q?WBMRQ8iQOAKHsCQdHVrfuEObcI9u/kpeUQ0qU2GVd0ivyf3v28j1Mxx7kqSu?=
 =?us-ascii?Q?lgD3brKuxow/h9WSc64kONUeSV7gsP0mpW66XMYT3FLepLhBszNPmv1biypr?=
 =?us-ascii?Q?miS/JHjoxhZAGGGHVKqrWnlyQ4PNT++Ioknt0kYquixJKBSqXglWF3UiH+O+?=
 =?us-ascii?Q?tGzj0Ya9kiiM7aXsajEbfaFL4fDmMIZlBXT1YYoLf+XomC1FvaQ7ncXbuU9Z?=
 =?us-ascii?Q?0TURpmFMDQG2WD/gZh6oxvrNFhM+TdgBpPBbAaWyqQQMvTPAoy/xw3mJvGbD?=
 =?us-ascii?Q?32nsUZYRcvXh6zZliw7/Jb8/A0lRKRqCV82Rapr8dfSJDrEROiTvz1giyRb1?=
 =?us-ascii?Q?RuIuerUCXVEybg1z+zBP4UH+M9dvdBAkRp+v6gEbSq8VwXu9Kj1UnwYO9RGV?=
 =?us-ascii?Q?NTJBLkau+UiUn4mmHtyKjOYtY303M3Pv850liIezpnkXJMLmBgM7yo0UX3wf?=
 =?us-ascii?Q?mdBMh9iNeD0Bhb14/8QWL/dRqeDmW3NR83DmagKOz2NURm/aanH/B1zKtq1h?=
 =?us-ascii?Q?d4DxI3+Wb2B6UyBKXZhFZEaQSl0jnb9plfqu3YzJebCQkqltQv8ZvEpdOWQH?=
 =?us-ascii?Q?kk8HcjU8S4NhmSIYDYIbxZfMUZ4pUwqMkTYg/0nGH05PSW+ZC40l0WHmNNd2?=
 =?us-ascii?Q?dzLjln5yBzLto2IlZqgDQQtxYFzPTrRPr95nIIGrvnc1ntnFAjaBqjveGFay?=
 =?us-ascii?Q?600i5UrTwyJce658hFPu+mzRm4RkW/Ia/MgjuJ/PTV2NSPYj5lBTH0P/5y7T?=
 =?us-ascii?Q?VunFSdLYwnP/zBv8BGxo2NaZ88X8GuduM0rJJpu/wjJgnPc/355I+GX+SL+Q?=
 =?us-ascii?Q?RN2h1FTuJFwqWrGUaKwbW2qX6ZTRz1gd6UldBoav/A7W4nl8fcoNaMrQUyuu?=
 =?us-ascii?Q?rRygLghGfJh0ij4Txfh8E5dMLu/K5bcsyKPHTvDTt/QX1XUyocNliDMEy1Ef?=
 =?us-ascii?Q?G5YYzCAN70O38ftmKcSgXNLfmUP9ptFoq/Kgdt5zyFfmj3773a40XxsI8bT+?=
 =?us-ascii?Q?PvZM0xYTXp+32EYQ1qcgE1qTgGBmsNnxpdEhOiD/i1x6bH4smuU3ErRQpjlH?=
 =?us-ascii?Q?gA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2902f349-6a16-4194-7480-08dcc3805496
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 14:31:52.6773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: reztngKfHV4oVG/VJiLQBHsQ5QSU9/ztfJ5fLT4BFQdq/83vLNHPJl1UFAvCtrT0CE/Gs10A8p8hAMHzSxCFQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8708
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

On Fri, Aug 23, 2024 at 03:33:18PM +0300, Jani Nikula wrote:
> There are a number of leftover #include "display/..." directives that
> are completely unnecessary. Remove them to make it easier to spot the
> relevant ones. In one case, switch to a more specific include.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

trusting more the compiler then manual inspection:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 --
>  drivers/gpu/drm/i915/gt/intel_ggtt.c           | 1 -
>  drivers/gpu/drm/i915/i915_driver.c             | 4 +---
>  drivers/gpu/drm/i915/i915_gem.c                | 2 --
>  drivers/gpu/drm/i915/i915_gem_gtt.c            | 1 -
>  drivers/gpu/drm/i915/i915_irq.c                | 1 -
>  drivers/gpu/drm/i915/i915_pci.c                | 1 -
>  7 files changed, 1 insertion(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index c58290274f97..01b7587dd1f8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -12,8 +12,6 @@
>  #include <drm/drm_auth.h>
>  #include <drm/drm_syncobj.h>
>  
> -#include "display/intel_frontbuffer.h"
> -
>  #include "gem/i915_gem_ioctls.h"
>  #include "gt/intel_context.h"
>  #include "gt/intel_gpu_commands.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 206a5e0fedf1..d60a6ca0cae5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -12,7 +12,6 @@
>  #include <drm/intel/i915_drm.h>
>  #include <drm/intel/intel-gtt.h>
>  
> -#include "display/intel_display.h"
>  #include "gem/i915_gem_lmem.h"
>  
>  #include "intel_context.h"
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index e32766286369..ccdd2983cfb5 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -49,7 +49,7 @@
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
>  #include "display/intel_display_driver.h"
> -#include "display/intel_display_types.h"
> +#include "display/intel_display.h"
>  #include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
> @@ -58,10 +58,8 @@
>  #include "display/intel_hotplug.h"
>  #include "display/intel_overlay.h"
>  #include "display/intel_pch_refclk.h"
> -#include "display/intel_pipe_crc.h"
>  #include "display/intel_pps.h"
>  #include "display/intel_sprite.h"
> -#include "display/intel_vga.h"
>  #include "display/skl_watermark.h"
>  
>  #include "gem/i915_gem_context.h"
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 1391c01d7663..070ab6546987 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -39,8 +39,6 @@
>  #include <drm/drm_cache.h>
>  #include <drm/drm_vma_manager.h>
>  
> -#include "display/intel_display.h"
> -
>  #include "gem/i915_gem_clflush.h"
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_ioctls.h"
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
> index 7bd1861ddbdf..a9662cc6ed1e 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
> @@ -15,7 +15,6 @@
>  #include <asm/set_memory.h>
>  #include <asm/smp.h>
>  
> -#include "display/intel_frontbuffer.h"
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_requests.h"
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 8059ac7e15fe..2321de48d169 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -34,7 +34,6 @@
>  #include <drm/drm_drv.h>
>  
>  #include "display/intel_display_irq.h"
> -#include "display/intel_display_types.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_hotplug_irq.h"
>  #include "display/intel_lpe_audio.h"
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 94c89ca2ef30..d37bb3a704d0 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -26,7 +26,6 @@
>  #include <drm/drm_drv.h>
>  #include <drm/intel/i915_pciids.h>
>  
> -#include "display/intel_display.h"
>  #include "display/intel_display_driver.h"
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_sa_media.h"
> -- 
> 2.39.2
> 
