Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40AE87C487
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 21:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6474310F411;
	Thu, 14 Mar 2024 20:57:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l0oR/cUk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 019D010FD99
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 20:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710449876; x=1741985876;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DOUr0hmyf5hI22CE7BibXCj3Ab+FRFsAxyImR+lJIbg=;
 b=l0oR/cUke6dunUGVdsXgT+4P/H8DFeu5bvasxS1ge6REwCKKASbx1m7F
 Vpoi9sfTZ8wc9L6lHvDyqe8hKuHwVjAIBW/qfKDNR0V8C/SfJLCgD6DGz
 6yAte7UsYFhcGO8Y0eLgKXx63nyAMi2Q+fb5CXF10LYY2sNxg+67XgT7Q
 AA0iz6zIljG4jisaJ9IZQbN0Cb4rGVTrstGsrh5Ts9AMzuN5sFMahEBxH
 +e5/i03OO08Szr0nRSVaES48PzJxSH7M7FFq2qu9Q1ebcswLBe561YhOv
 8xTVIcq/6dA/wnD59Qzyfn7tIrLb83wHhnKREB135TA1hIYCCn6izrR+3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5486306"
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; 
   d="scan'208";a="5486306"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 13:57:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; d="scan'208";a="12341200"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 13:57:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 13:57:55 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 13:57:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 13:57:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 13:57:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NaSfKuusR/1ZjxX72lsE0n6Jmb3hZzOLePajm+cWB+UZEwF8rkdru74Fp7ZcH0Zfhf1bUEQ/QSBUrZYAuB5Ax4m2B7CcROotHyl0n2uCKaxhun4knVKR5tDNNm0yiPeOzpgwiFAc0Ks+sEkcWbLHHMZxOy8FmoNkCYmDjHWmGEjqrPfixSYyYrQbUKx1YF1AHsngL2dQrgn1M8PtvN854Gi7SDkSiWynt7sxn/dylX+iVWjzzMAk8ep3ZL/aJu2jRczOYsrsLi3luQVOmKiYjsT7TLm9shnv+vwuxRVkDMafarVSfUWmHd+okGavyFl47p25sci+hIQVkrKVPxahfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LdApLgS+CigbAdaY8e7gKL6YLGC+lvcQ7jVMXaNOGSE=;
 b=crN3bR3+iXiQUujKI+f+mBcXD4/UiEyXurk2csbNyTsTS2z9J+iGF/tkK/52zpgNekDIY7IdHgG7nQOjKCkBsxoxp0fZRpgXkYcEpZRAz9vN38uvw6sMTnbmitG7WESmr8X51xDQG+GTPiCYwdKNoGEMBjNYTUNE4lzJLbAA16qeCXiQxXynHVnwMi3IWvFu3xhkARBKn2/VH5sg0fTq48fMBytymjyerboimujv3XHGfHYRkW0X3AmdPbdUH6bw8LapKNo7tdP7pNa9ivDitLPhBo2Llin59Jgg1reFDXTn8lkpl4RMk0JN36jv4VIOaHYv7ty6gZiK+490q0kLBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB8399.namprd11.prod.outlook.com (2603:10b6:208:48d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Thu, 14 Mar
 2024 20:57:51 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 20:57:49 +0000
Date: Thu, 14 Mar 2024 13:57:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [PATCH v2 6/6] drm/i915: Remove special handling for !RCS_MASK()
Message-ID: <20240314205746.GG2837363@mdroper-desk1.amr.corp.intel.com>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
 <20240312235145.2443975-7-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240312235145.2443975-7-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR01CA0008.prod.exchangelabs.com (2603:10b6:a02:80::21)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB8399:EE_
X-MS-Office365-Filtering-Correlation-Id: a2afe4eb-f789-46b7-e81e-08dc44696828
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Qz8fwwYk9L8qCV5Jwli+C3TOjTET8FCDk5bfcMLjP6S0WpJJyGSwlCuxf9pVgMF/j9IPJza8RsQ8ZoqQNJCw9WbZxuhnmslacHbdbRnoJd+Dg1Q7jr4AXxEokpP93Hrf9Uj6JvpkjEJ7FmqlV/XrGvRYXE325ma1lfjPWyAW/SkSjjrWI6zW+7rlKaTakEnsKIg5dGuXNLt6P8AFVEnQxDMt3E/dKLlZQtGtlkDI5xkiE0wblcIPmyk56KSmilLGsy4R/l6rxsNTMd5A2IRNyEGeZASh1UlBS1RGOeLUu0HAsAtoGzv3Wfcgk/FTQShLwoQCABXpOZoNr2T5BxoIp9GOMHgjaUQzvLaABkdfQ3bTP/1kinG0usev01rLKruLuNP5UqIGIPd+ToeoWM/R0J2BVH6ujt3nhIELBnaj2jkoOpxbNzLrYz2A+euz1tX+A/Vmjkd0CFu6JtHzhUF4sd8Eih8YaoUAUL2LIXywAYIHvmXyvl5I7pJRoiBF0EAaP+uN0Mfg0szfZB9j/yYHdlzwPdxubcSf9o2kDoHHZCRKXeO82i56g9YTo190FQB0BEi1g0JnHcV833eqVmdn0jqgwQCJgLoLl1VszTc4n2yOczzgTNXEZpE13Kt4KfMLbN/13s8bBAPSKYb9KTdLDK0qduYdlkndhailfSt8bU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WpJqLUnA419MYXRpyPsll3sSmtv9CU7j4dOc99acQIWTtWiMORGj5n8NwlFK?=
 =?us-ascii?Q?yIfa3DVnWu89qccLNuxsuxXJ55+IbMddxeu1MePA+RN7KusS0qsyvqZpK/mm?=
 =?us-ascii?Q?VF12dFWjs/o8zS8xcwDMIlVlwYH6YcndRazKdTo8Ldat8BiKrVUQs+XKKjcv?=
 =?us-ascii?Q?Ia5mf73DkX8MMHRuF/fefWHX6zqWX/AzTqrCjruY6/J7GhedF2oLIch8U8Jj?=
 =?us-ascii?Q?J841/Mg307fL9XXXLJBc5AbX6dnMpfAGOUFmHdGcFjMa7AU9V0Pg3dF3sM0k?=
 =?us-ascii?Q?oOCfI8fPYWAWFNU8n/jtmZzQ/eJ0NV73CzxFHP29YL7NIa77KBSh7SnayN++?=
 =?us-ascii?Q?2cwezIRVAW7uAdLoRMEXWUNJ0R4ljft5JHmKVgSLNsJho6C5zKzcGmhppM4e?=
 =?us-ascii?Q?/+nvaKmG6KrG8N5MgLgkB/rpwBYA4oH25WGbiGQ8eRV0Rf2FiusTs817aNfW?=
 =?us-ascii?Q?8aLuHUEj1/ibXU5fw3+oG36esoW82NaXtCSd1IQFz+BofFWzmKGZsoJ3SnLU?=
 =?us-ascii?Q?U+ogiI9f65oXbdR7c/82t6nk/3SaQv+Gx+0UzjHnTBLWA4fqhLzQuaW2x380?=
 =?us-ascii?Q?bj+ODJhN7DaVy8ALLxsq8TRIaC9aSFoNlLqcDLaxOPx7WWHj4K3AJZylUDR4?=
 =?us-ascii?Q?Xw5AWSLLdWgC83Hgy3bYQ3YZwUF6z82gLxdTyXI1aW0LHfiBzyhcQcy2ebVy?=
 =?us-ascii?Q?YxZnXDExL/0q/uvdc4kyjE5ynYG+CplndV1VcaB6aYgqvDoPP1lnCrAJkeO0?=
 =?us-ascii?Q?aPoAOa370fd0eSKzFFq0wOmOBY+dR2yr+f7ii574VujcohGpfiWeCLRRzOAc?=
 =?us-ascii?Q?7obPgiwc4qrfJ1pw/WiAbVx7H6WMTPfoLqIMVIRL90zkUSucpPDNFRwSlE28?=
 =?us-ascii?Q?3afl8dl6NscdPnS9vXxUMvq5eybP8vIwLpB5wsLp4p31TesylgD7xy2nHj3o?=
 =?us-ascii?Q?VEaVQI7Z7q8SOP27sxsamAJyZtZ/5p2np2MgPqX586JLVYlQubFTh0T7pdBt?=
 =?us-ascii?Q?t87xM0NEhZ044djV4crAXQZUWlcGZW7x6LiOtnvBRZOJpwWFkyem87YQVkj0?=
 =?us-ascii?Q?JTRmEbH0tgHUc9RHYekGzE5dEAlCW7Pel58IU4ScEEt8/yjmeq4v7Tf1PLL4?=
 =?us-ascii?Q?ZigAOqa58KFA8OsTxsKl6qi88Psvrzr4c2HG94nQw4eZLSSE7m0XT47gxiuI?=
 =?us-ascii?Q?5jO56Fu+gPWm5Li7D3qLvIknfrHFZpzscpPwItmZygk+6WJkbG6ONETmxnTa?=
 =?us-ascii?Q?CxkKpu2LMFyXVnFWs7u2vzxInAViDiYyBQ0YqQlDkGRrsNSyqGTXl6DBvJv6?=
 =?us-ascii?Q?ClrATiiwLhU0/0aQSj6ns3q4uNdixWYHmIM6CTKRBPPTR5DDNKz6MRT94TgP?=
 =?us-ascii?Q?r07bpSJAz6N2o44+45r76S8mE3h8NdKatBT/WKBgCDUapiCmlIyjQGv0tyy2?=
 =?us-ascii?Q?UAsJP5kXnHfQHqcmVo+Y2v4c6E9ebW3R0Bautc0WcpQvopU+a//IG540CB5R?=
 =?us-ascii?Q?S136CDMPUkYuaeLBnAadZH4HMDdxbkKXl7T/4FAjAcIloP0mHRFbJEsnr2zg?=
 =?us-ascii?Q?jJsqeq6gqqETnRhJE9BWfV84qAGHtXwQlMH2YI85Taq9wRwMEZFYTEqrwZ1u?=
 =?us-ascii?Q?QA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2afe4eb-f789-46b7-e81e-08dc44696828
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 20:57:49.0727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VqHEMb5lt5tj+gsgKx3PeRMLXB99nkAEks3F+B4WI1WLKbefpog0PSTHSEU8O5BDMaiyDCfjJAmTDjUh3mo9vXeItusUp8alGKuy22Pv7NM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8399
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

On Tue, Mar 12, 2024 at 04:51:45PM -0700, Lucas De Marchi wrote:
> With both XEHPSDV and PVC removed (as platforms, most of their code
> remain used by others), there's no need to handle !RCS_MASK() as
> other platforms don't ever have fused-off render. Remove those code
> paths and the special WA flag when initializing GuC.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 5 ++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 4 ----
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 -
>  3 files changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 396f5fe993c3..476651bd0a21 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -497,9 +497,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
>  	engine->logical_mask = BIT(logical_instance);
>  	__sprint_engine_name(engine);
>  
> -	if ((engine->class == COMPUTE_CLASS && !RCS_MASK(engine->gt) &&
> -	     __ffs(CCS_MASK(engine->gt)) == engine->instance) ||
> -	     engine->class == RENDER_CLASS)
> +	if ((engine->class == COMPUTE_CLASS || engine->class == RENDER_CLASS) &&
> +	    __ffs(CCS_MASK(engine->gt) | RCS_MASK(engine->gt)) == engine->instance)
>  		engine->flags |= I915_ENGINE_FIRST_RENDER_COMPUTE;

Given that we expect all i915 platforms to have a render engine now, we
could simplify this down to just

        if (engine->class == RENDER)
                engine->flags |= I915_ENGINE_FIRST_RENDER_COMPUTE;

But either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  
>  	/* features common between engines sharing EUs */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 217277329546..3dd7699f2ad3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -320,10 +320,6 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  	if (IS_DG2_G11(gt->i915))
>  		flags |= GUC_WA_CONTEXT_ISOLATION;
>  
> -	/* Wa_18020744125 */
> -	if (!RCS_MASK(gt))
> -		flags |= GUC_WA_RCS_REGS_IN_CCS_REGS_LIST;
> -
>  	/*
>  	 * Wa_14018913170: Applicable to all platforms supported by i915 so
>  	 * don't bother testing for all X/Y/Z platforms explicitly.
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index 14797e80bc92..1ad31a743197 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -101,7 +101,6 @@
>  #define   GUC_WA_RCS_CCS_SWITCHOUT	BIT(16)
>  #define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
>  #define   GUC_WA_POLLCS			BIT(18)
> -#define   GUC_WA_RCS_REGS_IN_CCS_REGS_LIST	BIT(21)
>  #define   GUC_WA_ENABLE_TSC_CHECK_ON_RC6	BIT(22)
>  
>  #define GUC_CTL_FEATURE			2
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
