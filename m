Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A6981AB34
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 00:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1FF10E632;
	Wed, 20 Dec 2023 23:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF62310E632
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 23:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703115965; x=1734651965;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QWpO6XjqR5SRkUEUZRiMTNMfVCqTATAHjCAhiOE+bt8=;
 b=oH/G4y1YbORTe4IubGFfhUZQG4X9hvXzP16WSi5SByIC0iF85b+iTrGh
 7xmY/OaTm5E0yOOhibeIg5YKvpCDyyzrrV9nbI07Zf5lnnk8k+EHasYKc
 qZo8zXHAs/RgkWswc6mesiyW8s2d+YihjrpmHlem/AAahTRVY99S7BRzP
 j7ThyrGNdcAElU00lKD80+1sH8hXIBBH8Uoi2+sGTlBJvlvnHabIh18yT
 /KoKx1XpjG1OnI6HltiH757wQ1VSEL7glQKw7/0Xy547r1NJ1CC6N73Dl
 y3+8Kxyw0dyb0h/Xw+9ZgK4Gx11tlj7UUhezhOC3ezL5PCkr+FAXCpbsD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="2726759"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; 
   d="scan'208";a="2726759"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 15:46:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="776505755"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="776505755"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 15:46:04 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 15:46:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 15:46:03 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 15:46:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mb1w+jxrgMO24LnR4PwK4DrOizCUBnc5n7ednKaLJgAvMfTxpcld16gKtRpHcnmYUreZz6JcNn/ENuAGjLlYPcYbJEdDoahwqn9l88jlI1Xwx5qCvZXQ7j45CXbWjyXzniVzFPIpJwiifD0XppRWgj0SmTB9ZjMetHVnT+4UWIOazCgucEV8JU5V3nBriLSNeMLH6HTdeNgN5wHzeGeVX6l4XjmYCHeI4TV8Nh/qzyixieVTwOKJ+LtChZlI0S5Fr6si1FOlRHa09/lg2wGh3o/pzqotDXl1wlpGYGb0ej90Q7fbu270ml5Q3bDKXG+wcfTZav0eD05wttuoeE7nqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5aI0z6/JWSKOnNlHfoDD2ko28HxSjRT06gDbuQ6NfNw=;
 b=hYcaU5VVcRphlDhNuX5weloOawJogutlQ7EzITZunr5ErCPAXE84hJYX2CBUIo3ua8RG9ioj9jKfq1AAv+mUYF5fgN/OmGYf85cqsIEwWFLPaZvuts5ap+n+zhISTofY+NyU+UQIwHMpLEhMU1/sDyIIhrY+XjOwdTXVbOUjy9hvJONC9/kHj2xpYzyVi4iVvaE9FboROFKjExGPle8p5w4iQJltOya3E5MhyIeHbtMnSz3F3hfYTVWB7QjFPx6vsfy/CzxKvwExrsZFWPParIUt2LKOy+1lm6jkfsmp3RDqBdW2eFxc1IHDQtZDHg+FStRM5cFv1g54GfTjRMoqrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 23:46:01 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::48d6:d63b:c2a0:e07]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::48d6:d63b:c2a0:e07%3]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 23:46:01 +0000
Date: Wed, 20 Dec 2023 15:45:59 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Shuicheng Lin <shuicheng.lin@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Change wa and EU_PERF_CNTL registers to
 MCR type
Message-ID: <20231220234559.GD2808452@mdroper-desk1.amr.corp.intel.com>
References: <20231220123951.4076088-1-shuicheng.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231220123951.4076088-1-shuicheng.lin@intel.com>
X-ClientProxiedBy: SJ0PR05CA0064.namprd05.prod.outlook.com
 (2603:10b6:a03:332::9) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB6825:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e5e90b0-a7b8-4354-7ef2-08dc01b5d291
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9jqG2iT7QsKAZlSVha4rBD6/+RsLgr5cJV5FIh/CiD2vCUc1E3hfajUPnU3OqIXelv3i68qhF1DYASNKvTLcDq8EzU18BnNg+UDq27XVLAmpDpqIOrCAHXTbqz0vshj42fIH/VZOEA8ye1ggf+zEGd4AjthCM1Tw/bx+iPomGo62pmmQqbnnubGo4h0ylyIxre4qU6SdD8r5J2BUCgKYC1NoDRv3+F/ltSfdw7jqLvstY40ub+Nb7Ejmuh5QpxBNtdJwlZ05EB4O0K6eCmAfU1ai4Obe5/ll7J9R2SMThWft2gdPfFaLQkr68IxUvxcjBq+6xXYhGs799Wb79mP11Bep44NUesZoL9LrzpZetdDMpzQuAmKc+fyeYIj6GXY4eHx4eutWXCvlJPaBIS3KiIoe433gCN0Jq1K95lhVhZSepf+df0jZxUgOmW4HIhe7zDEe5DKVzum+tPlCZQeQ6D6A5Fkwy73DSIjJrG44GhMcjGsaoC6vF0x4t8SyXu5GSPJS75tw+QNehopoIUb+0O3yMVrkgwhmQtD++Z+qpNIqtv496GuhHwUUE/UB/aVS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(396003)(366004)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(83380400001)(6512007)(107886003)(1076003)(26005)(6506007)(5660300002)(66556008)(8676002)(8936002)(41300700001)(6862004)(4326008)(66476007)(6486002)(66946007)(6636002)(316002)(478600001)(38100700002)(82960400001)(33656002)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yAj+c6P8nTI0O9EbwqcV1rBsgXpYEwkrbR4Qx8ePAFJm6T/NF9Z4Hs1wUW2O?=
 =?us-ascii?Q?5ngyxNQYm9MrDE92HKFBZLvd80conllL7B+bLNcLwrKKXd4i42Dx81WFgH0t?=
 =?us-ascii?Q?WP/Da6hktMBTbStNMuASPFQ4LrXmt3/gTkOpNNNAveujDjwmSICrGmju7noe?=
 =?us-ascii?Q?WTrZM4SbbvRlc4mzUFYkeSFgrt8rDmuUXY2GuusiGkVzbgaCXZdgAsHHGAKL?=
 =?us-ascii?Q?X7tmkwzT8U1E6TDkVZ7CXcjVMeBn3XdpmkQGQp3oW9tz4FGSu2Xs9W8gWKw+?=
 =?us-ascii?Q?t8gANod0slD/MDSOqVcraCjJBizKjXZ4gvUdwSZ/Iij6MdOXr8yxuQRkN/VG?=
 =?us-ascii?Q?GLa/OhUJogbdfYEkPo3UjPerhlq7aVhTz016mjZdK/ksel9RPUdNhHQc/AK0?=
 =?us-ascii?Q?0nSg19gCtVabqOGjlVvr5J9uxzfrBQ4RbBw9oAlZlE2FI3h/htCzxcnZM5B/?=
 =?us-ascii?Q?805ENNmwMzYFbj2ysPzbts+sXzpmP1mH/AMH9Y9xblIastWfgXWOotF20AWh?=
 =?us-ascii?Q?QTcAKYgIYpROPxdLU2rhJUVY/2vFk54jN7FZAZP/NdbxDxX6XLJJfMahfLRh?=
 =?us-ascii?Q?GxtS8cyat4M5euKMttM/1RxMGG2/g+zLLFYifqB8rpw/bhyHqDfejJW6hCZn?=
 =?us-ascii?Q?zXXO9d4pEpcSKQRJz9vusIGxWt6OzLd3Hysa9x2ze0uHfUicJUYFWctZkBtf?=
 =?us-ascii?Q?Yax84hTM6DgJT6bzFc0jrqrLswXGVc6MafZXW4pOr5wyJZuLL2MfVzE8KidQ?=
 =?us-ascii?Q?c2lWHpD4hXJnXei96p6D5hdhNt83AIpE8XwbWmZBMBJjqPc/v0IxMwK6K5cA?=
 =?us-ascii?Q?StbPaPxaMbj8frEN435ii5OsPiMHIQqiIhhRggeewaIa77EZHGJJZUgXs6Lg?=
 =?us-ascii?Q?9D0lHfPcBj7bxrNDvtp+EN/L5a8znF1NiQw6A63cBqQPOFauCeCJvyuv4F9c?=
 =?us-ascii?Q?MdeAtdVauLciqHFo4xLk20cTS4hBbnXavr2eqPU5pQo5LJ6wrCTE8CVMPXGV?=
 =?us-ascii?Q?u4fHvxbZp/6TPLtOPPgNsrt8tUCnp4qQteOW/Y6QxTfyqZbSF3UFiaGcsNHo?=
 =?us-ascii?Q?NzJSdE77hll0YefXLiKOMfbxoXh7BhDwNR/DbilUc6lhItHBQShfi3wzAevo?=
 =?us-ascii?Q?uvY7u3UJRzETHs9Rfe2SLmXsWOJ9Tj8CJ1XeTpnjyD0Xb58BWXfy9y7oEosx?=
 =?us-ascii?Q?9TblE4H7hFlFQA8FY2QAG/ihAN8nnngnUl/w6lxT6HxEXglnc+ncry9Ol0wS?=
 =?us-ascii?Q?G5r1kGaoFnGzyrY/RUhRpmD11iVE+XR3XfM42hiRWI7riQKDqzCvR6MQVOZ8?=
 =?us-ascii?Q?5692cOUfo0Po6SldXpZkJRxj/IWJelXx6O/PeApZ8RN99d/jRa46elqRsCnL?=
 =?us-ascii?Q?6B/5aaWHKKottjbshKzoFI4t8xBdz/fCtYfZeQnwWoHtzwz3fwuuSFoL2tSR?=
 =?us-ascii?Q?Zs0OZfC34FjDzW5/dBvuzGubYEvOH7lQBKnvMlcmuDXxpdr92nRWoJmcJlpU?=
 =?us-ascii?Q?lMsjEz5wrWiFiDtpKHsin03x/cueX/zsSIYFEzJLQrBaOiNScR+rXTl3YWe1?=
 =?us-ascii?Q?usYAF5O5zb3bygDYrHt0T12CB7LYrVbBnLC5D7bqmj7m5gUeZkz8Q5PsOQAF?=
 =?us-ascii?Q?aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e5e90b0-a7b8-4354-7ef2-08dc01b5d291
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 23:46:01.4223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BEH/l280H2d39BczCSN6Wy1CGq94wfUFlwF5ASlT8v63MoAWpyYUYJbgc6JVwDgNx/SS5eTmGpCoBhdnoHTys7IQztAxzmC31xiogkIEYeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 20, 2023 at 12:39:51PM +0000, Shuicheng Lin wrote:
> Some of the wa registers are MCR register, and EU_PERF_CNTL registers
> are MCR register.
> MCR register needs extra process for read/write.
> As normal MMIO register also could work with the MCR register process,
> change all wa registers to MCR type for code simplicity.
> 
> Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 63724e17829a..61ff4c7e31a6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -378,7 +378,7 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
>  		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE, true);
>  
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa->masked_reg);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg, wa->masked_reg);

I'd add some kind of a comment here, explaining that it's safe to always
use the MCR form here, even though some of the workarounds are touching
non-MCR registers.  With a clarifying code comment added,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

>  
>  	/* Be extra paranoid and include all whitelist registers. */
>  	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++)
> @@ -394,13 +394,13 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
>  			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
>  
>  	if (GRAPHICS_VER(engine->i915) >= 12) {
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
> -		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL0)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL1)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL2)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL3)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL4)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL5)), false);
> +		ret |= GUC_MCR_REG_ADD(gt, regset, MCR_REG(i915_mmio_reg_offset(EU_PERF_CNTL6)), false);
>  	}
>  
>  	return ret ? -1 : 0;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
