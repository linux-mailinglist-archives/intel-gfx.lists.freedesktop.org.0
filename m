Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDB877BC55
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 17:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3AA910E211;
	Mon, 14 Aug 2023 15:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177E710E211
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 15:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692025503; x=1723561503;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NkXgO3cUQfuZe1ZmaJBl1aydlnJt6Yrwt1UuBFFSAiE=;
 b=CnZHLOhODaJUNbfToZVu8QJi/5gnRvd1ABTHGufm67IvtHojMb4r7eJM
 dNshiKQZb2Y8IxC84o3mHMf60IUKi9EKW028LUvCC+QszFMHQCT+Zki5H
 Lo0lj7SnklamsiMJpMn7oVLJ+pJ8GtakrW2o5Fahd0qEuDEmSiGMzJ0FT
 9WJR7eumU7RZUckGfAHVSEwBPBRKg0fs2j8+5FkGgmfrzSDSbX6rOcQtC
 uUmEL9oUjZGkLfW6fszEqOGwOLpcM9PeMZV1HE9op1ewcBi8qDTc4Iypp
 2Xoo2lhNoCqrd/Av3CcluilkTtoyly/iR/HIMIftXI3hUOULnVgGbXdfA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="351654150"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="351654150"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 08:05:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="876966691"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 14 Aug 2023 08:05:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 08:05:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 08:05:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 08:05:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 08:05:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PN6YXfWlD8J9bPNXhVZfVKryVzFwQARDOcjTsfT/d727G3jqo7zjE5m0+qDdFqrPLIO77ANI/eg+ZAJkGFI31DN4oquRR89dcd5LUopbWUaXydo6CjSqetdaVKgW0FDctIJhNyZoTt5cRkLmBXwWvtolMiaTcAh4iJMZOAQKRdl6OCjy/uEaC3Il13YVLYhryd2ZRq0L2Ap/xt6Fsrp6Lk4JYVBI9I/JesU8xEJBa3JKy25+19jKkzgJgcTrO5jE/pMMs74NJJmXDkppM6z1hMvNKbvmc54UQC2eAH1lxbPovCzfO3reaDyWEQECiIR3BxjQEyhqIduuKMBk7MSM+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6aeqzjrddL0GwXZo6CJd+8ObRN3/ju3rSroNVN+cB7Q=;
 b=YBzTaMRpeV0lWClUK+XK7vLTj7iLkZP3TcMlF7P9fE3UW4lCmNKbDqMNsWSCmwVb0mgpErba0et4AflvFFeAz5OEmGYwHUK4PIyP9fAu7nZrd4C8aIyglWzChD13N7yiFcXbIbJE1uwdeqIXCsIbOVdT58zWbNr6IOw8MlT76TdAccgeT4sYdFCwdL0RzyUYfbNYTqDIf/PpqPwFLQcRfnzjaKNW7ZxwMjsH1VkStuBcWf8l+VKhWjzWYlBnQEs3m5PBAVNnwRHX3XczQ78Y6OAF2jSnGp8af9yeX1KEy5ac88maxo4tBvfxuWIZBTKKtOxGs+LKxmIim3BunMh/ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CO6PR11MB5634.namprd11.prod.outlook.com (2603:10b6:5:35d::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.26; Mon, 14 Aug 2023 15:04:59 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 15:04:57 +0000
Date: Mon, 14 Aug 2023 08:04:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20230814150454.GJ209733@mdroper-desk1.amr.corp.intel.com>
References: <20230814150215.873941-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230814150215.873941-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: BYAPR21CA0027.namprd21.prod.outlook.com
 (2603:10b6:a03:114::37) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CO6PR11MB5634:EE_
X-MS-Office365-Filtering-Correlation-Id: 51632e99-d625-45a8-1b15-08db9cd7d2e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tCH6HcriRcrF8JbqVSt1bodHazWq9GBLnlbWfX229GTt0BEd3ItNc92TIhEIatoTSLRibo4qjopYlkNPlUsbccMbMGx/guMLt6vHX5lJdZMQ2n/B3v5+MdrhUkr4RSCe1KarWhv5xTTZJGrr6obBjqmHADkSZmBcfPLOqB68SlqnkFaJFanuqgsTZm/P4khmLdAvXRmKRT0xDDHsTsbir6PFOQ4B2XlmFEGQ27bOv6nL9ROpKiyyHA+V7/w+5KW1FXWvYNeV6VwLyZQn81GjiTe1wWNHMLRyfvrlUby08kNWeBarjCavWFlAGy04rbjUotaCL0vd1U/aL3R7pBg+t3D7yYP4aYdmYmVGg0Q1kcYL4JVyMYU+X+6Nb1NGBrZr6ThWXRXSlo91NO/0SUNbfepm0glCCb9cPAoln3vEv0rXAEZ3PhlwULhxRM53z3RNxp+xyFWj9TT5LQbSxffYZ/ZuhQo4/s9dfZy/sNW6rX3MevDlyAaCV+WZZPnw/QSHDSJWcEz7Z6lA//JuBGIfoB6566N9FsLOHglUoVxl7yo7HdS8J0lFi6C9gPWUL+wd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199021)(186006)(1800799006)(38100700002)(66899021)(6486002)(6666004)(478600001)(82960400001)(5660300002)(2906002)(33656002)(86362001)(6636002)(4326008)(66476007)(66556008)(66946007)(41300700001)(8936002)(6862004)(8676002)(316002)(83380400001)(26005)(6506007)(1076003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Qdd5njSmGjudBkFXPB368ftw4AUlOcm4aPi7Ngyh6htEqZrlPjvSHPE/psZv?=
 =?us-ascii?Q?Y81JaTgSUeudEV86HWj/eVlnCFsYn5ZFxxuMqWgOkzQAQNyxvpYptpKflI15?=
 =?us-ascii?Q?dbti5uqjCPopezJj6ZWM1qMyuGaiK2n3pARXr9Fznh/5L2QAAEqm0LRO3zje?=
 =?us-ascii?Q?cQPbzsuJG6eyRP3qmgtUNTJqL5N7GlBwBngCITiuOEGGMzLWwvG7EBCL607b?=
 =?us-ascii?Q?qCaYLDFfaT+ZSZjYk4Cv4WLUrTmppkgOdUwVg1hGoWKoDJRusONvH4z4KASp?=
 =?us-ascii?Q?UV/be4QZsdWS76c/qKpiosZhcgbRGbmdoJn8NQCtH4x0ZtZ3fDVv4ib64tOG?=
 =?us-ascii?Q?tP+nsc3g7dF/mDpT/rdhpbPqpkMQGCzMyNJN7fyGU0S8WaTgFG3t1Wj/czXA?=
 =?us-ascii?Q?xeB4v9Z8WvrWmpSAIrNJsIlIvE+VChzoeb3CkF7ZhlsN+74BtsPZwmnz71SH?=
 =?us-ascii?Q?L+uzq9jqTjkKBhHsA4SHYc2+PHIHicRDyfWQuXvqEEwoWuTl+1MSF0TLGbQ/?=
 =?us-ascii?Q?LFAbCpYbVG5LSPcuvmLqP+50D+GCrEnd0ZlP4QAoRd2GwxubAiO9q8uX93sV?=
 =?us-ascii?Q?imdUrZr1IOwErX6kOKkyqtCwH9nupnQaDyLq1Y2z7RQjxKcYJlu8JwIQj2q8?=
 =?us-ascii?Q?Tfnzjv05v1Vc5Q5AnkEDEXWBPG2AcIEeIawAgHTEHNjTNK5k0Qp1VL722sgq?=
 =?us-ascii?Q?QKC8/IgtJzPFihASZYMVkJkG5pvu/+Z6QD8/NUU8y8c2bxzazfKdIvlyOlhd?=
 =?us-ascii?Q?5nTcV6pwwolmrnQAnZ5bo+2NtlnIz4A35j+M/vUjhh3xFaTjfZTYuiS7KGcY?=
 =?us-ascii?Q?KpMh8H+8WPozdwHqf4wehM/67LjCLiwHXuGsjsVblU/xWeQeRHV4JP44lt1/?=
 =?us-ascii?Q?BM//YUx0ea/NkZilDx+EXgYNBNx4tPgAFZRi1UFGpY8pkL5HAnhL7HA+VB1E?=
 =?us-ascii?Q?Vvofbb5w5zVFaHskuCbh3mJSyX/AofAh/OVm3MUArJXIL4UWYq4NrRoxwSgP?=
 =?us-ascii?Q?BNwV8uu+BAWcZI1Fi8iQHh5GxgKdZvpPBmxxNx39h6XWsvJGRjWu6WPuuUf5?=
 =?us-ascii?Q?XmLBSOVPnoBmyrDP0/nVF/6iktyv0VTJXhdwsfwdsHh7JFXH7bBs3EZpyEFs?=
 =?us-ascii?Q?fCErXm07T/eanE8G281VeUNMa48s3LsUElkmgKdOriQgAtkQJIi6/kal/w41?=
 =?us-ascii?Q?YI7F2mKCfU4rARBDZ4Fgg+lg/VVnIvGuPqkY93oza7ti3gz7fznwJxLCQoCb?=
 =?us-ascii?Q?f9W5GCrTSMPy5Pc/rUmWRWO5+NvGsp2obok1INAaaluzoUm7k5faiVRa7C5T?=
 =?us-ascii?Q?TyYlq7JNrXvimmjFjB4IInx7GX72AMmlujHWITA9wqNgzRVuYnsS57UyBDWD?=
 =?us-ascii?Q?ubDo2ZwSs/zHxV/xnuie0vdDjHBMgFt4uU4xs9/Hd0p1mN96TR2t/08fSQO7?=
 =?us-ascii?Q?zLhqK8fDymHY/q9o+iM0AdlYR7mJN5HmmRbTd2pZWlCrVsfGwLH87F+lcA1t?=
 =?us-ascii?Q?u9O7N8FDf5INKgL6Upx4heo2XhKWSMyzzF9QeKX8xLnXv58IV+t3Z5lbgplS?=
 =?us-ascii?Q?vXq2WIB1sRuuub75Po9J1m+xuR0OyXR70GAOYKtbCKh2Qq9UM8FPol00d5Cx?=
 =?us-ascii?Q?nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51632e99-d625-45a8-1b15-08db9cd7d2e4
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 15:04:57.5264 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6pjo3u/YIr3VE0gPDzDB0uiw+7djmYpSBurQq2cJ9lXs1LxICpzno/5LmlOAcqKmmfGDLYfp82T+28S0aw5z3xODEPpTFz3wIF74lQr2X0g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5634
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Remove Wa_15010599737
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

On Mon, Aug 14, 2023 at 08:32:15PM +0530, Shekhar Chauhan wrote:
> Since this Wa is specific to DirectX, this is not required on Linux.
> 
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Too bad the hardware teams didn't do a better job of documenting this so
that we would have known earlier.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ---
>  2 files changed, 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 718cb2c80f79..15b82d37486b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -412,9 +412,6 @@
>  
>  #define XEHP_CULLBIT1				MCR_REG(0x6100)
>  
> -#define CHICKEN_RASTER_1			MCR_REG(0x6204)
> -#define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
> -
>  #define CHICKEN_RASTER_2			MCR_REG(0x6208)
>  #define   TBIMR_FAST_CLIP			REG_BIT(5)
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 01807a7dd2c1..5aa0d3f23c6b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -805,9 +805,6 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>  		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
>  
> -	/* Wa_15010599737:dg2 */
> -	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> -
>  	/* Wa_18019271663:dg2 */
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>  }
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
