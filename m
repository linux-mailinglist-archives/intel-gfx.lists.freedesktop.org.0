Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BD38A58A6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 19:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6285210E67F;
	Mon, 15 Apr 2024 17:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eZvg6R+y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0382410E22E;
 Mon, 15 Apr 2024 17:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713200859; x=1744736859;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fypIjgoC+1Dqpgm9yTkdGBSnoNTJBqLaZIKRyxtaLDI=;
 b=eZvg6R+yduxQuH+V/4JedcvkFiAgE/o7b1bjBUexNthGkf2+F2Eb0naF
 JCHlBZHxNGEkT30sPFkZMv2IuvdE6fsrIz3DkLsF/VFLIjfnX0PaeUVhG
 +8DL3eGpuP/StwElJ7bvVWZb+RFzXaAlztpFN2vhSPmRu99xeLuo3tDdj
 jRtHNVtDCbuRue9W9kYuIwZTg3E4xoSqCz2CDtzsDF4syD6LBE3cxRGN8
 UPViRlgRNGuhDvk1yRdgnUH7yayArw+TeFTJDkm4sWwbugyC8sf1Nsd7I
 EVl3KPM3IbfM+pYm05DaYcw66P72DP2gOt+/XA6cvl8p+yM21GUH4+0Vy A==;
X-CSE-ConnectionGUID: fXldOFOMR6mqm5K7A+AQTQ==
X-CSE-MsgGUID: t868wo7VTday+Jx1VJ8PRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="19995497"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="19995497"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 10:07:38 -0700
X-CSE-ConnectionGUID: CE8qiPY3TkiIW5Bgg7mThA==
X-CSE-MsgGUID: cdCX62DqQgOGKZdRP2n04w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22561306"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 10:07:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 10:07:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 10:07:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 10:07:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWuXrTWKwePi3HZWSo6p0q5yn/Mly5zwnD4XIiZpzClWsqiiuSjHcqL0OC+h7S5mT2o/ey+zKhBVns9GBbaNln3nTeq0vwB4wuRGMRkN0aHmpi+pzqSXc1P26jRTFkllNNrobHhGcBDw6hqVFVRp6wKlKjxzS25jcWrlvFZoR5DQDeNNpl/JYL0UplyBFM7ZqIezO39KVdHqV5nTIZtnBJjMnk0HDBDqi1RA6e4KH13xZTwmhkInq+UbSE2hp450BRnDz39G06FcDlhJtAsWAA6FQvZfGT3prgJzQwfT43ktuRbIhhXSLbkovmUuy1l8OW/xJwdwgGSgJwnQiQv8vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SA63tWb/bn6ji/5fH7CKkXj/Kb6Qhm9a0ZjBVOW8ypU=;
 b=PlT8fkvwkFLZoqnKGv6EFBTUleRduT+FZm9CQURj77IPcZTZ4lcweOkmMoeKk8/7hQ/owxlX3mAXbbG5H1mJWrrI2BUfjI8dw86D+d/gKaMzVezghumEVV6Uh2+zHI0CY1YYfwlk8tdzaM9WkxCdjkHqT5cUjg65ByKOQXn0I+RGKmUU+A04vpdQK1t0HtVzf5LcRnd39xj9bItITVu9FgH8Wx8VHIE0yFZtS766t6y0Arz5UHcpnRESI9MpWklGSS8iJ2ULSKXGrcnHPLh7k6IPbqPCKeajAQd8tHlI3ElbjqLUpj0bEj6FcuzAo4gDkdJ6wnwBU5pbEtu/LZjLcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB7893.namprd11.prod.outlook.com (2603:10b6:610:12e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.31; Mon, 15 Apr
 2024 17:07:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 17:07:35 +0000
Date: Mon, 15 Apr 2024 10:07:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH v3 20/21] drm/i915/display: perform transient flush
Message-ID: <20240415170732.GJ6571@mdroper-desk1.amr.corp.intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-21-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240415081423.495834-21-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BYAPR02CA0064.namprd02.prod.outlook.com
 (2603:10b6:a03:54::41) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB7893:EE_
X-MS-Office365-Filtering-Correlation-Id: 26c952e2-0988-4dfc-8fc5-08dc5d6e8b86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jPJ7sqFZBoHPfJo2o4LVc9VQP5VdmPSU0ruQjjyoVJyQHu8owrjuaRLWSvmKNFBF5u80Rn58EpC8wJswWFJbg1fpdd8esvIMfeajV5weES61g15jWFEuX0UtqWVi/yYgRkvn+SV4fP3XUGMEKZ9KHJyuEf9MlnSchHPHmcJ/2XNvaJBWqJEi2r5y0p42z9YI+aG23dqiPrMuMe050ToY9BKqsgVTiRu6upBaP6z9SA+d4DMWfQl14ekKQIsMev+gOoRpwQZZDc4eJSFSJDqAwwViC06Myt73c5quj3eS9794dDYzq0K+YzqcAip4HeMolfIz0EyNFwtuNOExBId9ApbQserF6xlne+hPsQAmbORAg2MO9brA2GMAjiEKzHR3zz0vCb21j6/EQ59h3Am0zf+NBr5FhlPume3r4ooBvibTdF5SKWGqApkGZdm0DAAaoonPWeK8BrhnUmxJJJhlomwweu4tAZfX4YACmhI69nFxtA7388f3rja+3pSKIQvU7VBxvbiFqrzmQ4DI+nbUlRw5m8xb2f8eOXCVtzJGPuVqpu97u77zM2kH8yqhk109G7AGpQIZuUd+G7YNu4CDujBYC1sLIEJmcUbHXzkrgnrhQ9WN018P/fFM3mieHrsACqGshLl5vkPBEf7L53T5QFyPmR0K7tHZ5RwAneGk5/o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?3LxF+UE+Yu+NDSQH/QIMH5JCp+5pgW3gYoo8OFHSD/TXgiJgtxEnN9MvwA?=
 =?iso-8859-1?Q?se/hTAfXnBkWlnfDZ5/aPcrbAplQ/ST23r2WBVdOxdi/lj0QmFDIOVaawJ?=
 =?iso-8859-1?Q?s+6FV+9Ngx8o/Y0dH0Lj4waBAM/+vf2SJsfbk6UNVeAC12DyCYOqw3HhV7?=
 =?iso-8859-1?Q?7YZjQyXCTlAjak9Zb4YqjmHWb3f53Om+89Of4suFGnsYWhmGM3cp16fyqu?=
 =?iso-8859-1?Q?ULTihjOLXrTzl7Uur+UhjZsPh9i5lvjbZsaBSzQItjaGztWpd2sqZaXzxA?=
 =?iso-8859-1?Q?8Ct6WoS2glWd56Fm92dd6gBV1yBhP0vkBU3VDL9jbAFRlyJ6SRVrkXx+VP?=
 =?iso-8859-1?Q?Z3ygL3OcF8tKCCQyTGzVBxmb3ADwW4fAnVOkzUKHzZkLjJh3cVGdAaWJVa?=
 =?iso-8859-1?Q?TLCo7c0Jftcna54tOJzVvx7UJqTG9oWGxN0B/dC4elNDzqpwoSRGPyCrFA?=
 =?iso-8859-1?Q?Q0HKq6TdElhYRwnbRHxkHqYAo5hZBM5d7nUDz5i1zV7L8PSNEDSQ1q7kWA?=
 =?iso-8859-1?Q?Lfm2Ytxm86O4YP5M+5BclJr3q5b9MI9fZbTAg1uiLR15slGmv8Ehj0MMRM?=
 =?iso-8859-1?Q?VY0dhJwnQcR8tVeSXzQ3caZjkgQjcdexCUSHwSS2SkdB1eGAC8hIzckfdj?=
 =?iso-8859-1?Q?k1/StRDLgWvwWcL0v0dSQQfZdJmG/rl9TdL2QhC49T/eDCD0RqYJ3uF2+f?=
 =?iso-8859-1?Q?qeHom2/VsipfbpLglyzVtHnIqgiYEpm+ZnFX1jFMqIaw3Cn3JaPrckDo/G?=
 =?iso-8859-1?Q?gKlY3ssLdZCMIJFcihmkd/3LXIpyhkOjEqcOkdxPWyStZt1pNTkL+aOq+e?=
 =?iso-8859-1?Q?pJc3doBusz5BLf+A8hVu/D+sU4BhegG7nXnT0eg1kkShW2LHYg31vSF+l+?=
 =?iso-8859-1?Q?zP3/Q0yrN7vvSek8kSXe+YFUSJaUP9rVNWLHINHzrccDF90SxB8D3I2t2Q?=
 =?iso-8859-1?Q?dlxPu8qZW92+BpesJQuEJns1r7bab4uIzPFyTF5HQ4hKhpDbXxFqqjivp8?=
 =?iso-8859-1?Q?tu+iK/ypR4olkEiG2/H/RXNYi+OI4X6bMdaP1PG38dqD5cC7yZv9ttN8wl?=
 =?iso-8859-1?Q?NDNrGEoVJNk7haY9JW+bnzEMUw27efyEaJQn8GNetpaNX3kMNxW6OGFnAM?=
 =?iso-8859-1?Q?v4EiMkQMcgMTZZHJWtKP/b5IJNJrlGZyD1+X+vqLzkFGbh1muVoNJ9n4M0?=
 =?iso-8859-1?Q?5im+3g/9d5MyaIVmGJGR0MOE8HshP2/vKWs/cXHVVs+k/KzjjpCaH/hzd9?=
 =?iso-8859-1?Q?iDvXd30X6ohlS0VZV8mj4bPFyyPlrGgkY03CDZKmWJN3Iy3lK93WWNnGJl?=
 =?iso-8859-1?Q?x0FQ7uBWRbZ4vr0/9uYDgkGCcVWuD7U4iq7TAHTnLvudoXAcPF9KSxnTp/?=
 =?iso-8859-1?Q?GU8s9NDnz6HhtCZy0QE64D9wYqK5gjEK3qqtcIiWEFOadeYgOqnINCc1Y3?=
 =?iso-8859-1?Q?07948epyo67xyfT1aYS2YTm/jOvQFancM1MNMmnsZLiTzxlroMZftM9L/t?=
 =?iso-8859-1?Q?Ab1hcctLS/nAaytLt7XXJnZorJ+rufGrchWNZGOH73zIYP68gXOLqAzUWT?=
 =?iso-8859-1?Q?eNtEHfwJsWlKn1p/UbX3zM4MEei+V3GvZObLtH19zZ4XJgPdxil/U39ezd?=
 =?iso-8859-1?Q?wi6PkK7zdzGRpK9mWAixggwnDkPjgypOFoML9SHee6u6vHTFkYR8UaBQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26c952e2-0988-4dfc-8fc5-08dc5d6e8b86
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 17:07:34.9652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9xVLd1roW+oUaUcHsEykGYjVh3et/mLeI/Z7UJmXuswvYYMKeGPR0G6Q5ustdoxwjkGSNfsxeKsvahyayC3WXXMivC9x/G1gBg432WGBcZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7893
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

On Mon, Apr 15, 2024 at 01:44:22PM +0530, Balasubramani Vivekanandan wrote:
> From: Matthew Auld <matthew.auld@intel.com>
> 
> Perform manual transient cache flush prior to flip and at the end of
> frontbuffer_flush. This is needed to ensure display engine doesn't see
> garbage if the surface is L3:XD dirty.
> 
> Testcase: igt@xe-pat@display-vs-wb-transient

Has the IGT patch for this been sent yet?  If not, we should probably
make sure that happens soon, and then use the CI Test-with: thing if
there winds up being another revision of this series so that this will
be included in the CI results.

Anyway, the changes here look good to me,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
>  .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 ++
>  drivers/gpu/drm/i915/display/intel_tdf.h      | 25 +++++++++++++++++++
>  drivers/gpu/drm/xe/Makefile                   |  3 ++-
>  drivers/gpu/drm/xe/display/xe_tdf.c           | 13 ++++++++++
>  5 files changed, 45 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
>  create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 67697d9a559c..4fc46edcb4ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -110,6 +110,7 @@
>  #include "intel_sdvo.h"
>  #include "intel_snps_phy.h"
>  #include "intel_tc.h"
> +#include "intel_tdf.h"
>  #include "intel_tv.h"
>  #include "intel_vblank.h"
>  #include "intel_vdsc.h"
> @@ -7242,6 +7243,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  
>  	intel_atomic_commit_fence_wait(state);
>  
> +	intel_td_flush(dev_priv);
> +
>  	drm_atomic_helper_wait_for_dependencies(&state->base);
>  	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
>  	intel_atomic_global_state_wait_for_dependencies(state);
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 2ea37c0414a9..4923c340a0b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -65,6 +65,7 @@
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_psr.h"
> +#include "intel_tdf.h"
>  
>  /**
>   * frontbuffer_flush - flush frontbuffer
> @@ -93,6 +94,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
>  	trace_intel_frontbuffer_flush(i915, frontbuffer_bits, origin);
>  
>  	might_sleep();
> +	intel_td_flush(i915);
>  	intel_drrs_flush(i915, frontbuffer_bits);
>  	intel_psr_flush(i915, frontbuffer_bits, origin);
>  	intel_fbc_flush(i915, frontbuffer_bits, origin);
> diff --git a/drivers/gpu/drm/i915/display/intel_tdf.h b/drivers/gpu/drm/i915/display/intel_tdf.h
> new file mode 100644
> index 000000000000..353cde21f6c2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_tdf.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_TDF_H__
> +#define __INTEL_TDF_H__
> +
> +/*
> + * TDF (Transient-Data-Flush) is needed for Xe2+ where special L3:XD caching can
> + * be enabled through various PAT index modes. Idea is to use this caching mode
> + * when for example rendering onto the display surface, with the promise that
> + * KMD will ensure transient cache entries are always flushed by the time we do
> + * the display flip, since display engine is never coherent with CPU/GPU caches.
> + */
> +
> +struct drm_i915_private;
> +
> +#ifdef I915
> +static inline void intel_td_flush(struct drm_i915_private *i915) {}
> +#else
> +void intel_td_flush(struct drm_i915_private *i915);
> +#endif
> +
> +#endif
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 6015c9e41f24..97a8674cdd76 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -198,7 +198,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	display/xe_dsb_buffer.o \
>  	display/xe_fb_pin.o \
>  	display/xe_hdcp_gsc.o \
> -	display/xe_plane_initial.o
> +	display/xe_plane_initial.o \
> +	display/xe_tdf.o
>  
>  # SOC code shared with i915
>  xe-$(CONFIG_DRM_XE_DISPLAY) += \
> diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
> new file mode 100644
> index 000000000000..2c0d4e144e09
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/xe_tdf.c
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#include "xe_device.h"
> +#include "intel_display_types.h"
> +#include "intel_tdf.h"
> +
> +void intel_td_flush(struct drm_i915_private *i915)
> +{
> +	xe_device_td_flush(i915);
> +}
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
