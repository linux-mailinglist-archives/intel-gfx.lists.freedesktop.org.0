Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1050D56BBE3
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5158E10E467;
	Fri,  8 Jul 2022 14:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ABF910E44B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657291285; x=1688827285;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=18XVk/ocvSlhsnZu9K2sWUyGZkRApI8BzjM+JT0+uSY=;
 b=IKZp8WXPXCEZJys/i46JyOMTfcBxBUjEz39wcZY82P4ooI+JeB233Ehj
 PpMe48inXKwsfUsz+cDa+CstTWl+lR6tMHsgzIgseH8jPiW+kdBKnWzBk
 pa43/fMGqnueU2U2XHlVnSJnPn9Wrx3bLMtYnDDVRBvtkGXfjn6tfgLSZ
 5YY1MYR5aKsYHroB/sdr4Gzi/9+xmPkMeGLvfsjM6SOvjGX/Cf/T0anTl
 xMDogjTaUPw5NETH/Hez3vhtaNwYNdhu6L1HHpk2HGatCIqRXO/5b5eQ7
 W0UWjzthgl5lwXnboOqMtrYso4H/mI94cg3vlFmwjJyjUKGblRCpaxfUO g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="264073745"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="264073745"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="683678971"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jul 2022 07:41:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 07:41:24 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 07:41:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Jul 2022 07:41:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Jul 2022 07:41:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WvW31hLRyXYKAGCgDGqFKXV9eRregvwWToAEKqxRlIIsZgOzPS0x//qbjuMSaDTOCxWYnwgG5mc/KyNTsS+HD4sAAtjJuFDEwh6JgAbs9U1PPmO+enbp0VzF+DdH6LV5pyslF6mPYOOxjpDi7Pm6Dy+HQSFSsmwiNftwb+1E9MuWDDNGtjzc1CaUDJ5HAkBen2f+TpwQh4jYEDeT3PRAnZO1tDx36kozoytDkBVOPzi1UjP5LVhufYbD2fka/cVMzUx55kY9tGX4OAjGgdhmbxLF2AsAJ66E9wiIZjaB3O4AZLA4O7v8fQzFaG6EF52GLQxPE77Tr2ymRSaZqp16bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YprCqhVhTJF2j41DGihAbcqleI938x0OvcMK54V0fSE=;
 b=Ee6dEiw2o2lE/wv1a0u6dib68zwKKMLMNB+T2TKlmMBkRZnzm6sNvmS6Er3QYwYE2qLFyuIO1VsA5BbH2M+2I5QM+kUdvxR/yF7Gsm2jFO/E/0n4Gux1UhfQWVlsAgrZ4zqImH91qgJOzf5k7PvuKdvBoYGiE2g/BIekSO0tZq5KiF9hDaK/p8VDhBLf8OnHJtbyAWp+3ac1ufKDUW45L2x1WXh6fzDjyA4HlPZ7wthkqcE6Pky/EjNCD3GvqmZOFdcxwlAcLL+FJcUvUrFnpnOLyhzs4WlTZgq30pHYnoO/nT+lCK+/XkLDLFUWPjTPA2NDiEP5Bc9/Bc8K0Bv+JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM6PR11MB3372.namprd11.prod.outlook.com (2603:10b6:5:8::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.18; Fri, 8 Jul 2022 14:41:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.020; Fri, 8 Jul 2022
 14:41:21 +0000
Date: Fri, 8 Jul 2022 10:41:14 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <YshCCpvH2OSUrK3y@intel.com>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
 <07e05518d9f6620d20cc1101ec1849203fe973f9.1657289332.git.karolina.drobnik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <07e05518d9f6620d20cc1101ec1849203fe973f9.1657289332.git.karolina.drobnik@intel.com>
X-ClientProxiedBy: BYAPR21CA0010.namprd21.prod.outlook.com
 (2603:10b6:a03:114::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44b5be76-402f-4239-be3a-08da60efeb78
X-MS-TrafficTypeDiagnostic: DM6PR11MB3372:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AS1+5IbjrkR7U8bZTvkFitxs/OhbTPazk4jRalMQfeslqfZ5yqJfHPDe24ibVlfg3T/wPOYzF3H6yma2XuMrYqRCLKm2LG5n5eOpvF+cu5NvtPatM5FOg4Mv7ebwG/M6gtAqORA+2fVEoH4iQm/h/Lz7R+WmIt6hFoqzHoeWlxrRRpZMToiQxMYhwu7Ke7kyJ9wU6h5AX4nGMzW7k5iCpUrBXH4i8yvifg4QpfOtJO87Edg2JhVCG6rv1+1YYVzKCHH8G2mdLwbI5uHrfz78b7BPDuO+kNDMbgq0viR42W5R7JiK9RonDDB4xPXalXaKqegU62f4po60wK7DuFp2r2KbgZnDicMXt5DM2Lf45Zg9HiWQVfYLBPNDRLLn/1ljUyBFDcHsI685q+BkO8LGHa0ERCs9DjEhAl4gkELWk7c1GFRiI+ldgsHQchWz0HeT96qCZ2//frKw/WfVUQEDFxUQNUd6/IRLnCSF+f4bU/z04zsOBxcIkn+4Pf+2yLCsIiaWUuDbiJ2Ju6Ib/+X6WbOgvLcdaLURuYDnEh9Ve2bKn/Ji9w4qK6Trj2stNJHdWaMM4N0JvbEm1LCZi9EmUB8XYj1r+nf2CUGhfQMFcK+QsjlUuiXCv3HN9hIEhagExTazafWo1nFlPZxvoqXoWAktKxso1bPLOiZLqrDuBQe7nM4CtZ3tApC+EC4gqSj2S6L6vt0zzPEhlEXkHH7tjg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(376002)(136003)(396003)(366004)(37006003)(6486002)(966005)(316002)(26005)(41300700001)(186003)(6636002)(66946007)(54906003)(82960400001)(6512007)(2616005)(36756003)(86362001)(44832011)(8676002)(2906002)(83380400001)(6506007)(478600001)(4326008)(66476007)(66556008)(6862004)(38100700002)(6666004)(5660300002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/U+RwlHJI+aUIE6g5oSQUr4Jm3rwzyAbHBDUVyfqCvmk/1yiKEbe8PRtgw1M?=
 =?us-ascii?Q?tnfwEVDKLGZW8MLX/B2QK4QkLlxjFb4diqorSaZfABwR9xY7qAoeEarWdXI/?=
 =?us-ascii?Q?zZPa2qZRlYHU0ige+wmxq0LJw0Gvw4sWxfLQoQ0wjqLY/6It6ilDTvi/UC5+?=
 =?us-ascii?Q?K+QLEnIa2fwK9dQBmbl7BpWmF3ktrutZv0gJHWLg6uZ9J8kRoAABBGLS42nM?=
 =?us-ascii?Q?okLqQqD266400KMNK07z+9SeB3303rJJ6XbZyYBSgs9Q0UF7C/V7U4HFI6pV?=
 =?us-ascii?Q?5DeTsljFK2QvMYpqjDUmCR8NcNA91TEcCfc3wgaz2DV9uyKQ/XD3qqHWiXKX?=
 =?us-ascii?Q?f2EBiviE/hb6nl3nFN1LqdAmvhs2P6WfNs9npGEPhuuZJUSl/6YdT7AnkRGg?=
 =?us-ascii?Q?H6Sd3F/T2q4zIOxlquKKD8BC3fHFYeC/4eXWGXNzanutXkt28ahxZtDqnf71?=
 =?us-ascii?Q?DyLXFFxxTwMYpN0BnWoK/Ct4wWLGtQkVgL3VXi2L1QSN8HMpRpSlRG074tIv?=
 =?us-ascii?Q?TbCL/uITvRyTU3wfkNDjbBHHY7yWLEh+CTVe2kVGPPEefrFFO/qr2LUUttal?=
 =?us-ascii?Q?JwlLuBd6NSyHpNrrhm7cOCGJ8ypP/Jvlsa4wcVs1MqASnxDr0Rbz4kq95h7x?=
 =?us-ascii?Q?TeQx6u3f9d7kuO8UhiGrfz3/OyXd3FYtCFWn3+yUgaA1Bpx47cENd23/DT6f?=
 =?us-ascii?Q?ZjFPbUxcQCv3yLteQ0EFstpK2D1hBmJxlqTJGjoZye7USH2D25jY8Hpljpc4?=
 =?us-ascii?Q?eMnesgRiYrBGO6qWGdbYJE1jMWdHrlhJ6E1IYpLt2/EjxcjO0DtFvHqsOEcu?=
 =?us-ascii?Q?h3qB2nIJWAcIW9RSXEq1VMnF+3e7i+UBmwVU83bbpCWGUEG3/yqNEFmauhpF?=
 =?us-ascii?Q?oAspSLRCcwltVX6C3kzeVxMU6JfUSFoTbfJUmEdMCPPlpBmvW9Q8+BBf1QSG?=
 =?us-ascii?Q?9z58yDv1xxLKbaoquIy2z2/gj5fs1tGMnQqInEELeYbAE+6kqvEzduvLp2Zg?=
 =?us-ascii?Q?QrvxtqKTjJcydRzU/6NTZxGnpZrCUBjw3yh1U3b2hi3cXqMIgZwLAMBBSaWz?=
 =?us-ascii?Q?CV6OAaEIwLS78B5CHYGjA1N9s6V4W6f4dtqLzb4FdcoQ3kAq/rTpGyBq+eQx?=
 =?us-ascii?Q?DG7FHFHx4GMI1uYeZu+XKU4oZRKXD8whFYX7qJTKKOO+cX1TtBl0lWQ922VE?=
 =?us-ascii?Q?w0H8PPd5BNOF/+DB70k/qje5p4TiVT5NWnwcxlAUKo3b4+YPuPAX2awOwWMb?=
 =?us-ascii?Q?3ArSysz7S+n1QYzohK6xtMrPIjMpWsUeLKwbdWvxpWJGRWKqACScIMDbyU+2?=
 =?us-ascii?Q?NxwhpQhOEY/MnC6SIJ5pzXFRWexVeaV71GUN2LhXu+kMNMoJtX11xrZbQk9b?=
 =?us-ascii?Q?Kl0HVoR+XK0hzg3bIZ9VK2wn22tM6TQcRoi0qb3Hu5svgiv+T6IQKDo4YZg7?=
 =?us-ascii?Q?Dx5Tce4pgpZD0d4iMD5W/Ad6YhqSkArFVYJ4sn5AUTVrJsOh1YENokP5ocnh?=
 =?us-ascii?Q?Lp2yNDPcF2ps6BPyPelKI4bPH2z5NpOaVAi3JIFJyiX6EhPXq4szTlNtqjHl?=
 =?us-ascii?Q?+4T0dv6UEwNXK77ICH24Lk3nLUXXS/lThDM3avItKWl+7DglgBeBp2oaW4Cu?=
 =?us-ascii?Q?7g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44b5be76-402f-4239-be3a-08da60efeb78
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 14:41:20.0509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZV8Q2RNL4nhpDonoXtBbCa5EgyIfJhWa193E5jIeMITz/It3RG0xBbipvKwO7wcN5mFVoOsKYEumWSq1np1ABw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3372
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/gem: Look for waitboosting
 across the whole object prior to individual waits
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
Cc: Thomas Voegtle <tv@lio96.de>, intel-gfx@lists.freedesktop.org, Chris
 Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 08, 2022 at 04:20:11PM +0200, Karolina Drobnik wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> We employ a "waitboost" heuristic to detect when userspace is stalled
> waiting for results from earlier execution. Under latency sensitive work
> mixed between the gpu/cpu, the GPU is typically under-utilised and so
> RPS sees that low utilisation as a reason to downclock the frequency,
> causing longer stalls and lower throughput. The user left waiting for
> the results is not impressed.
> 
> On applying commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv
> workaround") it was observed that deinterlacing h264 on Haswell
> performance dropped by 2-5x. The reason being that the natural workload
> was not intense enough to trigger RPS (using HW evaluation intervals) to
> upclock, and so it was depending on waitboosting for the throughput.
> 
> Commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> changes the composition of dma-resv from keeping a single write fence +
> multiple read fences, to a single array of multiple write and read
> fences (a maximum of one pair of write/read fences per context). The
> iteration order was also changed implicitly from all-read fences then
> the single write fence, to a mix of write fences followed by read
> fences. It is that ordering change that belied the fragility of
> waitboosting.
> 
> Currently, a waitboost is inspected at the point of waiting on an
> outstanding fence. If the GPU is backlogged such that we haven't yet
> stated the request we need to wait on, we force the GPU to upclock until
> the completion of that request. By changing the order in which we waited
> upon requests, we ended up waiting on those requests in sequence and as
> such we saw that each request was already started and so not a suitable
> candidate for waitboosting.
> 
> Instead of asking whether to boost each fence in turn, we can look at
> whether boosting is required for the dma-resv ensemble prior to waiting
> on any fence, making the heuristic more robust to the order in which
> fences are stored in the dma-resv.
> 
> Reported-by: Thomas Voegtle <tv@lio96.de>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6284
> Fixes: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> Tested-by: Thomas Voegtle <tv@lio96.de>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_wait.c | 34 ++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> index 319936f91ac5..e6e01c2a74a6 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> @@ -9,6 +9,7 @@
>  #include <linux/jiffies.h>
>  
>  #include "gt/intel_engine.h"
> +#include "gt/intel_rps.h"
>  
>  #include "i915_gem_ioctls.h"
>  #include "i915_gem_object.h"
> @@ -31,6 +32,37 @@ i915_gem_object_wait_fence(struct dma_fence *fence,
>  				      timeout);
>  }
>  
> +static void
> +i915_gem_object_boost(struct dma_resv *resv, unsigned int flags)
> +{
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
> +
> +	/*
> +	 * Prescan all fences for potential boosting before we begin waiting.
> +	 *
> +	 * When we wait, we wait on outstanding fences serially. If the
> +	 * dma-resv contains a sequence such as 1:1, 1:2 instead of a reduced
> +	 * form 1:2, then as we look at each wait in turn we see that each
> +	 * request is currently executing and not worthy of boosting. But if
> +	 * we only happen to look at the final fence in the sequence (because
> +	 * of request coalescing or splitting between read/write arrays by
> +	 * the iterator), then we would boost. As such our decision to boost
> +	 * or not is delicately balanced on the order we wait on fences.
> +	 *
> +	 * So instead of looking for boosts sequentially, look for all boosts
> +	 * upfront and then wait on the outstanding fences.
> +	 */
> +
> +	dma_resv_iter_begin(&cursor, resv,
> +			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
> +	dma_resv_for_each_fence_unlocked(&cursor, fence)
> +		if (dma_fence_is_i915(fence) &&
> +		    !i915_request_started(to_request(fence)))
> +			intel_rps_boost(to_request(fence));
> +	dma_resv_iter_end(&cursor);
> +}
> +
>  static long
>  i915_gem_object_wait_reservation(struct dma_resv *resv,
>  				 unsigned int flags,
> @@ -40,6 +72,8 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
>  	struct dma_fence *fence;
>  	long ret = timeout ?: 1;
>  
> +	i915_gem_object_boost(resv, flags);
> +
>  	dma_resv_iter_begin(&cursor, resv,
>  			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
>  	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> -- 
> 2.25.1
> 
