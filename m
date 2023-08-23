Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E3786324
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 00:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A9E10E479;
	Wed, 23 Aug 2023 22:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F9210E478;
 Wed, 23 Aug 2023 22:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692828134; x=1724364134;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+dSQIWVYVQSB3Hi363/cW0OMe4HGZvxlvPlyidHrBsA=;
 b=HpsbgLbMxZujyR+j5cbeXGl7LEpu37L0ZNxNWWE7nd1Kcs5Ugp0GlAYr
 MNw8z8tpNL1XE26TACWbendHCFnCpEavZNcUJOtS7DPRRfhEoXbHtGX8Q
 hn4gLQR8U8tcvlyBv5xR7hmk+keJMrWD84OKJfRjefLA681aRk3egm/LH
 KERnvER8mMX5MHJgZnG/RqBddzL2rWYw0fThxr+kFKkESEicoU4T1Uk9o
 Fa8+P518CKCHfzunGq0VbsAmOLCmqLB+gqmxE5sPBE7gMMlkJDQbStlGi
 ApryeqACyrJ9tmxLH6Q8jFm7Ou50dB48h0CQGqs8Z1kCZORfLpYmfGv94 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354613288"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354613288"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 15:01:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802296857"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802296857"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2023 15:01:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 15:01:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 15:01:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 15:01:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XG7tpu6FzphmrCfQPny1mpy5MLQ/5k9k2UrB8U0ADEmUIw2lAxPBL0bAPiJbHhuGm7CyuZht++UVUABgc7HRj8bcnr0UX5FDOuUZqbjQgQMTZEyyOraoVnQCrnlwAUI+X6gjzlDwsoR4skbZ3D9Y5UosG9mWODh6FS6Y56LD11/snof/usk14UNC8LRSM0ZZrSTPQQ3vrDnHRUd9gxF2BG7LkNLOsbvgmnBmpbudveBJrU1fsBjmErECpNwBrWGS7E7Jp0N9/ywJT5pO5UEsgXZ2PejazS7pVf8u2h7J8/+wgj3VABbeyy8+op4LoKRZD9ce+O0qyXYKIoaM9BXU8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lI75DXgTgQoA2LxzMqBBtRSV5QKQQGWvdEhioYENJdU=;
 b=GExd/bqczrRVVBEPpTk+UU8wGRK/q3ITRoMDA4UUSTJ4/6FhNk2M1oqwyH+ASFC9gBl4KRnnSf18s+OsNxVTnnXiu90mqhiLXuwY37OPR92B0Oeo1Qvbh3lRuARoeYZfNnXFUVmSR1MD2NgIX9G36prjv6lklBXfl7UjypJr86n98kzO5QT5fXZMzYi3ad4kBlvI+HiqCv6rObhr+IfOOBsYWoiMBESiQONKuljPWJpLrv6d3WfXGmR20v8mS6I+d8CYUnrPh64zd3YEHlH+7cPTJWKYj1WxxzPJFbPjJWdsTq4ILg9rTBeGs7m3rM+KdygMEzTq6HLtK68+DDmwgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH8PR11MB6880.namprd11.prod.outlook.com (2603:10b6:510:228::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 22:01:41 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 22:01:40 +0000
Date: Wed, 23 Aug 2023 15:01:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823220133.GO1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-35-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-35-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0191.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::16) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH8PR11MB6880:EE_
X-MS-Office365-Filtering-Correlation-Id: 380eee24-f1c7-47bd-308d-08dba4248796
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7N+yK7eGfZtWSXHnK19vj6jDxOB2yBFttpxAIVReCtIZAHnRCcviOyls7NOuo2etEDJCUePGZahWYuhg+XJ38ZNexPtPnSnzTvlaER0RWHD8I+ePK0yue9JmB9r4le/135f5q3TNk3ZOdAotzdEvSYQmixloRiFviYzr62Xo/bJ/t9tLF7WvSUVhEZZIBEFlvThAudAkenLTuJD2fe7L6+0huCf/WUnUQ+IF2iBaYj8GBEBa/CJSSO78PkR9BuYkm4s7wcgL9dBTF6xbVZy+0CTPCTxFOsNbYXAtdXJJc3p0ShNn0sXWgp+eZUdCOPkWribbVlVp0yZXRQ65sJJcxcv7CfSSbSeII4JSkwWdx+J8gPhpIS+IxiL0WqKRCgLcS88+Kwgo1FKV6DUuv1WOuGPNsBon/HOxsvQ369jcPU4aQU0++/3DZo6LgyH7STyKSyGaNsZy8jaaixVaWbPqPSbodV0wg5FDT9pbR25jy8E8WPRyCiMXWeK5EsVKGrEszLWg/aeAuylZW0lbby/rkvut1OUvN64H3A9JdqWBxGaavc2m8uAunuZA0LJObfIh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(366004)(376002)(346002)(451199024)(186009)(1800799009)(6512007)(6506007)(6486002)(41300700001)(26005)(83380400001)(5660300002)(2906002)(107886003)(1076003)(86362001)(38100700002)(450100002)(82960400001)(33656002)(6862004)(8676002)(8936002)(4326008)(6666004)(66556008)(66946007)(66476007)(316002)(6636002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kz3xBBfJB1thk/diEPpv8ZsEoftsgLNU2B6hEquzW9oToY4N+ITAZ3fKlzEZ?=
 =?us-ascii?Q?RS/5bZCUjbACGKAB9rX38RwnffP4vg/3qY/LHnr/CUY9hOCmImZ1WY+Picfg?=
 =?us-ascii?Q?ee3dnLgGO0uW8bL6fgsrC0hdCK+65aFk3IDFj82bmTW9h5aM4TdvATK4Mbfj?=
 =?us-ascii?Q?yrDjctV2bJVzY8ENS7RRXBm68jGGY2fiM+qFvG7PUDG75gq8a5tx3MohKnNq?=
 =?us-ascii?Q?iPRnydjlCQtdwgvgR/VzxQSIyrfI8SmiAEsjZKA59FBobaaEaG0uq4srvYeK?=
 =?us-ascii?Q?/gd1bQTARTljRljUxd+sPFJZJIhZnGQSBB7fVgnsxFHvigBoxPrr3uwLaEag?=
 =?us-ascii?Q?8YGVaolcGK4kx9Vnbd+zfGBNLfLpLUmgOUHn7ELRiAjH1YYyLXk1BrNlxYBs?=
 =?us-ascii?Q?M8IWW3vQuWmKx+inCMwbwYZvaMw6ELducTEcC9uWA6ZdfAiXqCyHhFjjhA44?=
 =?us-ascii?Q?VMOX/GhsGmHHVtQHx7RV9ufmR+/fnOqtE/RelINVAlf48fV2KrFMIGEL3Ror?=
 =?us-ascii?Q?f6S/Jxi6BPpumH+VypaoXGoZXRZ+g043g3Sjz/I4Ntf4iA29uIiXEdANc5wW?=
 =?us-ascii?Q?7fJOy/kz81CgoA+jq3rxgimJ5PxL5Px/2EAj3aRxTphSLZDam1PhfRQnOBCX?=
 =?us-ascii?Q?VPnGouSlq8HDPyjni9JCxQ23QWnZoiofDhE+92jvanPCtFNNlTata/xl7nNT?=
 =?us-ascii?Q?np4rRiJg0BAizsgAxM92GisiFunvtlkzD6iEgiz64KCT7ao5LLGTb0NiGB2m?=
 =?us-ascii?Q?ziJhCG9nmPPSbmRHxmFnJQeEhCzRNB6ucTDYO1qo5wNYtWhOJ49x6Q17cZgF?=
 =?us-ascii?Q?h35OsZ11TYNUfSmTDTcZOtChuXk2GAmk0Tqj2SveaHAtNu+uelk2SsMjIyTD?=
 =?us-ascii?Q?KjY6fGtPvCMEelTO/znFi7gTA3B7HAnowLrQ3sEFv5GfqFkTfMSkD0zMNFyC?=
 =?us-ascii?Q?Gr1QltB+W0bjMYqP+UZAiKB6k1SrAQVFtMtmVyo75ijeGXbJS4l2BgMqNGK+?=
 =?us-ascii?Q?yGFmMor5ftVPwZnvh0uzL2N8mF7L6JEBc6NEOvnb9UJupNQV1zd9GwCemXfh?=
 =?us-ascii?Q?b2yql0pClIFHndJeLeeIso2g2Vek42NHRzESiNs635m3eStplWF/NciDdtS9?=
 =?us-ascii?Q?xgqHEOZhClAtHKs0Vwgei/5wa4A/0ibo7TNdgVsG2HhkfMjno9HXnQFArKnQ?=
 =?us-ascii?Q?SW9c0GwQI15q4j8hQK+ZQbhnEQ5YDFZp3bdV0jlTkohADEm5O04etg8ej0lD?=
 =?us-ascii?Q?lS6NPEFIZ/3pCZ0kAfhXiX9EP8Yp36n+jo0xnyVgwIC3kQFjkUAKspFFfn/I?=
 =?us-ascii?Q?uaCej98zEp98FB8Qc2m6eO+7PBi36BzuT1cK/acOa33VGxwqK9PNj+HkXN/V?=
 =?us-ascii?Q?Wh7rjEXF5mM7d9W2chrCmmOXfAaE//Dd6kM0FOMH5pojWoDwKPl/F9prvdrV?=
 =?us-ascii?Q?OZONV/9MF7M7JkilA7xA/n80um/YfvlhzTgH7ypjUbh+j+fNbZgL/np+Arj/?=
 =?us-ascii?Q?tJkvZWY5aBTjkh0UEAgNj0FRjXWITn+BJAPX//Iwh/RW+YOLan/kFSglNpDK?=
 =?us-ascii?Q?nG7nUm1hPeNdvKImjxJOT+aLb4LCL9GAMpeIW32NBC2eCmO5jh9w5Dy5dzjn?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 380eee24-f1c7-47bd-308d-08dba4248796
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 22:01:40.5683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SuAXl6/Gtdr05S+4f4XbMbCFZZnzZ1b7GLGPuZwgSeaLeEdBML6tJ2loBFHbsbZKmRVCYtdkq69axrWofXvEBhSSNYAuqGtgA7dXlBZ1pkA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6880
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 34/42] drm/i915/lnl: Start using
 CDCLK through PLL
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:32AM -0700, Lucas De Marchi wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Introduce correspondent definitions and for choosing between CD2X CDCLK
> and PLL CDCLK as a source.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h            |  3 +++
>  2 files changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ed45a2cf5c9a..04937aaabcee 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1932,8 +1932,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		dg2_cdclk_squash_program(dev_priv, waveform);
>  
>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
> -		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
> -		skl_cdclk_decimal(cdclk);
> +		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
>  
>  	/*
>  	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
> @@ -1942,6 +1941,17 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
>  	    cdclk >= 500000)
>  		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> +
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		/*
> +		 * Using CDCLK through PLL seems to be always better option when
> +		 * its supported, both in terms of performance and power
> +		 * consumption.
> +		 */

I'm not sure what this comment is based on.  But the table on bspec
68861 specifically tells us to set this bit for the cdclk table we
implemented in the last patch, so the logic is correct regardless.

> +		val |= CDCLK_SOURCE_SEL_CDCLK_PLL;
> +	else
> +		val |= skl_cdclk_decimal(cdclk);
> +
>  	intel_de_write(dev_priv, CDCLK_CTL, val);
>  
>  	if (pipe != INVALID_PIPE)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index fa85530afac3..d5850761a75a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5933,6 +5933,9 @@ enum skl_power_gate {
>  #define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
>  #define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
>  #define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
> +#define  CDCLK_SOURCE_SEL_MASK		REG_BIT(25)
> +#define  CDCLK_SOURCE_SEL_CD2X		REG_FIELD_PREP(CDCLK_SOURCE_SEL_MASK, 0)

No need to make a single-bit "mask" or define the unused
CDCLK_SOURCE_SEL_CD2X here.  We can just define
CDCLK_SOURCE_SEL_CDCLK_PLL as REG_BIT(25) directly.


Matt

> +#define  CDCLK_SOURCE_SEL_CDCLK_PLL	REG_FIELD_PREP(CDCLK_SOURCE_SEL_MASK, 1)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
