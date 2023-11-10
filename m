Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 576E47E7D70
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 16:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CAA10E0FF;
	Fri, 10 Nov 2023 15:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 331C710E0FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699630328; x=1731166328;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XqfqLxnJb1Z46gpIISF+iWnrQ5Gg1iVsRcSB7EVaEgY=;
 b=WGKio/6KQuak4KxF/Me0HoUeTKQnVPnMKRq9Q3OoHISSxCuWb0AxmPC5
 /mXP762laJQIHihvwNoz9HeV+W4eHN+jIr+ydwgbNiT7snRC0jDMgA/nr
 AT+9Zo5F0zgBZYzmqBAViiOcHS3vq4U0fjA2ZUJJMwSIwYvLXLos+YYBt
 qbHWkG6AiECtoCrQP3bn4wBJ1Qc/HHeI8D/omIODsBMEpUbcwyreR3U+z
 fLxjgAsgDJ6tYvXScsO1rpbKSi5CAK8IOSaxnd/VgNzxZwbHcVoENdkRH
 zw51iQ9ST6k1TOW67gzA3Faga/fkPe6YKifjqKjFfjoDjddPENX1Giw4R g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="11747263"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="11747263"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 07:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="763781753"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="763781753"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2023 07:32:07 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 07:32:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 07:32:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 10 Nov 2023 07:32:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 10 Nov 2023 07:32:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vx2MiXTcPhUhgCE8l7RqIF5QYRmiLcP9iPhs7G1AdAvO8AaazwwKGSu7QG07A28baA28ZQe/+H/2JAndlfkZ4Y9MHNpA0cyUNodKND9D8nXW9h4u2n8ld3WH9F5m7bhpFGsJiLDjz5RIm3b7S4jrwqV/pCUcQsX6zuTBugLSFQO/1ahgEG2X+NXlHG6xWcow0dRIWRFUFIEy+4Smkgj8YHD7J4OmTc9J0N91jZQMlPaXjjVCJdk15bp5ZqefTCbwmhKJmHStdwFPbqw0ArwwdvgAgOsW7Bhk3T/qrDbnsoEtscWZhnIVdWkMvCS3/4VrjBqFazvrSSSusCOurrdIdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=99c+iPhrigiOV+EoJJ/xJScjcHLDb+gzeMYToQmCdKI=;
 b=XZUgPWjj85My5RPPtRoh2eFkXJ3KhSELIAlCD/V9GQqUA0bDNH8B/JfDKr5sdUii66KABn1QWwMrSmD9CWB8YykD9jPpZDKkiv+oZdc8aoJtppouCEqRkh1lBHLXvC1X55E4jkIYs438rYyNug3TuruUkcp57TtyOzHP/ZiLEFGIV4o2xBsLNqA0Ki043AySWXJwAtRJK7nIx+j1TfWA1BNDehVJTIxOonvMZ3HXB/jLWim6rg9KGvM6l0KC7LjOE93vvimwLKdZgcpdPTZiNDe0MIgZEyVPmq0jGiLJ4UXBzP+Q2m4d6eAH58FrnCfPhS/XqWcilO6lg8YOZb2//g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5457.namprd11.prod.outlook.com (2603:10b6:610:d0::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.19; Fri, 10 Nov
 2023 15:32:04 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.6977.018; Fri, 10 Nov 2023
 15:32:04 +0000
Date: Fri, 10 Nov 2023 10:32:00 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZU5M8JdwRhBuQlY7@intel.com>
References: <20231110114807.3455739-1-jani.nikula@intel.com>
 <20231110114807.3455739-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231110114807.3455739-2-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0044.namprd07.prod.outlook.com
 (2603:10b6:a03:60::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5457:EE_
X-MS-Office365-Filtering-Correlation-Id: 12509a73-b40c-4fac-6ecb-08dbe20230e1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i38601UDZXsHdwKAf8yMeAFhpNKwSt9ltY5ZWmKmAnXGuPM9GoveY0kEwqOvV53C8e8hj1etEZna4j232/mDLg4M152ZwVj+28fVuV2YZADUQXBmHewULgmTvGDc3/LQFnIa/9HX9z2elHGcG8SFCCnnD8T7fMfjxjYpj5UByyYgd8G8Her0qA6Px10mIpO1q9crzLTKkw0L82RzRJpmQM+MpeoRpo4ZjurXQUzcpr1wxKuBes/WH73jl1Iasq7alGEvB/C1ad579//5DsMLkXbAIOemTdoXiZpe1Nhc6AMc/0sN/em39N+gh0he/rxugHcpvKeYbaZ3y3BNc64b/raP8SQ4vxR8KQ9si4yXGEohQrugFvbs7NdAeF7/Hl+pQ32SKS1Tr3+iQNc4xqoMZXjjvDVOAxf6+ZyXUdsF29+CDF1FrMD/H8pLcuWu6rM4NhClStZ3ZphescgnY/VUi/RDd/Z1No9tqe88ngm3hlep1cwmQCAiX4ZRGqr6E7YLpWzrVfZj19bHQhfDsqj4LFADdWf9YkaL4OVzfYHcrxvlcNeLaVNf8tPNBFpB7aPlDYamcsuzKj+19aqeh+Yw+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(376002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(6486002)(6506007)(6512007)(6666004)(2616005)(26005)(966005)(38100700002)(83380400001)(37006003)(54906003)(66476007)(66946007)(316002)(6636002)(66556008)(478600001)(4326008)(6862004)(44832011)(2906002)(8676002)(8936002)(36756003)(41300700001)(86362001)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+MOTLKmUsDYK71piR7ZH0RfkbO2vEsuH/NCeDirIAr8HGx2Tmd3PB8RtHjlJ?=
 =?us-ascii?Q?9E1NMGP9wogAzym35j3ALuZqr7jOUMrMFz/FfXHsQEnpiKHmelmYFRG3Z50B?=
 =?us-ascii?Q?oP+fSTXH6XC3A9TXcMcFTNMOEMhp0lWeiLhyy4Z1leaR4UeICf0kVN1Uw7+Q?=
 =?us-ascii?Q?cqAKshfGS0aApPEf5/xEVhMo1qe1FooZbimHqv99YoakZsgVA1sciOTV/VXu?=
 =?us-ascii?Q?9V34WKgN+j3CF36cM9xbacj4Yg4HG0gvphn+h2Foq7uJOIlgvGqMksTFBKxh?=
 =?us-ascii?Q?n8ip6QUERVzyZWF4Ji6kqXbFhRnAsUsPaiNPAuseadxZ4pNyWPLRZ34WgG20?=
 =?us-ascii?Q?YZh579z4DpH4Xz6r623JbBrp83p9OIYkQbfEzyuFRz20ncRsEqK1co9J75u3?=
 =?us-ascii?Q?/obK0ORktjdywKtC4ZNzzICgUfuCfS3S3nrgxgeZnWNf5ImwzrSl00lXn/gB?=
 =?us-ascii?Q?eIYqSHOCgdurGvclc7nbAyH2ifw88clGBrap+20NowGFj6A8n46Raf5qZrQb?=
 =?us-ascii?Q?eGfyWxeYY4sLzokh5lmxJVfy3TluoZSTrDc7ARRF4iRuWe3r9hjaUKIo6Ixg?=
 =?us-ascii?Q?D5mG58I14ZL9mkrN/JIsdgEf4JagoHQiuJMaY5pW7u8Awp42BWTC5hyo/I3C?=
 =?us-ascii?Q?g+l8/r6y/Czie4m5OZScv4w4JrNZgGAPovqpAZqO2RIoEdBjhJqClI3YCzfv?=
 =?us-ascii?Q?ubpqkZoEwQhvI5Sw+tR2IQFoGWQdHOY5oC0CVuxb05JXynD2jP1ANA1kSLKL?=
 =?us-ascii?Q?a0qUYwUilFIxDSJ2tTNX2f1UIy9gMJQK1zL603oy7/vJcGUzfBmSQEPQajpC?=
 =?us-ascii?Q?L58RYq2VO06rhGzeEI6h41LYA6qmq6esXwY4DifPyqJjGAjcdmh0RZBZS9ju?=
 =?us-ascii?Q?DjspEyFh1Ieoou8X6wIOwtv+5n3lmCLYEmPML+/K9Dy0ut+lpvJD5LuEqO49?=
 =?us-ascii?Q?wgljMBsn2RSFlSi1JVqasHDUYahXS/ofBDRMM3ov1hvgV9B1PGFTWeqiL7iH?=
 =?us-ascii?Q?B4Ql6V5GtvdecxK/sBZEXk5lExzPvPYBRuoNuQ/pwamZCBK3HFQfnmcTS9r4?=
 =?us-ascii?Q?t48m5422eB48VynTNPrQMih9GUsRqjzPdGRSY8azR5284Tj101YmoEMTElfC?=
 =?us-ascii?Q?6Bml1qq/lfugjLxeJ7oRAEEXK9LXwl9bq84RIDMDrcZJEowihkgbcAvZUDwX?=
 =?us-ascii?Q?iP6O/FyzIDI3mx3oWrQVwe7avVrphO8r1aj41Xh6Xle9WOERl9gIwq49BtEH?=
 =?us-ascii?Q?bpyyQXV8iwPp+OZSTAUekP2E2YBFGNk817lRvmHPTLkIGRZdFULK4IWGbLti?=
 =?us-ascii?Q?rIn08onLwqBp186ev/Adp7Um8vGzzkgWPxv3iFWFLtDKsOsVEoxxW9P1x4LS?=
 =?us-ascii?Q?hY7h/W14K1f2O3YhpyC62WKXqPVSvknUd1KSlnbRAo0l9v31KWqyH6JH5Gtx?=
 =?us-ascii?Q?wGUG6aLkauwNQeL1ef93aFlSgjzOK//pK+3sfdxleiqf4/yqukdoruHXO7df?=
 =?us-ascii?Q?M7wBa6r8DBJNcbj0V3zuenUmQs2diBhBPmzc042zN7MPXOM/x9VGNnCgs0qV?=
 =?us-ascii?Q?pJFByLg/4oWtEBIWInk0EjQkf5Lao6a+m9DIu5MnGioq3xvLOsjF+UEH2kKY?=
 =?us-ascii?Q?XQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12509a73-b40c-4fac-6ecb-08dbe20230e1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2023 15:32:04.4779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KKxa0YPNqxci4hzdkAy/Ez/QQwDELROnIoalQU50u7L+316rL+kglfSjtUMkhyCZvjD3mfg4EwIG8AA2uLMb4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5457
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: update in-source bug filing
 URLs
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 10, 2023 at 01:48:07PM +0200, Jani Nikula wrote:
> The bug filing documentation has been moved from the gitlab wiki to
> gitlab pages at https://drm.pages.freedesktop.org/intel-docs/.
> 
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/Kconfig          | 2 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>  drivers/gpu/drm/i915/i915_utils.h     | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index ce397a8797f7..b5d6e3352071 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -94,7 +94,7 @@ config DRM_I915_CAPTURE_ERROR
>  	  This option enables capturing the GPU state when a hang is detected.
>  	  This information is vital for triaging hangs and assists in debugging.
>  	  Please report any hang for triaging according to:
> -	    https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
> +	    https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>  
>  	  If in doubt, say "Y".
>  
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 00559a75b798..d04660b60046 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -2178,7 +2178,7 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
>  	    ktime_get_real_seconds() - DRIVER_TIMESTAMP < DAY_AS_SECONDS(180)) {
>  		pr_info("GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\n");
>  		pr_info("Please file a _new_ bug report at https://gitlab.freedesktop.org/drm/intel/issues/new.\n");
> -		pr_info("Please see https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs for details.\n");
> +		pr_info("Please see https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html for details.\n");
>  		pr_info("drm/i915 developers can then reassign to the right component if it's not a kernel issue.\n");
>  		pr_info("The GPU crash dump is required to analyze GPU hangs, so please always attach it.\n");
>  		pr_info("GPU crash dump saved to /sys/class/drm/card%d/error\n",
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index c61066498bf2..f98577967b7f 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -40,7 +40,7 @@
>  struct drm_i915_private;
>  struct timer_list;
>  
> -#define FDO_BUG_URL "https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs"
> +#define FDO_BUG_URL "https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html"
>  
>  #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
>  			     __stringify(x), (long)(x))
> -- 
> 2.39.2
> 
