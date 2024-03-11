Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87445878263
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 15:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C298F112ADE;
	Mon, 11 Mar 2024 14:55:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/Vh4wDq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75625112ADE
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 14:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710168906; x=1741704906;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5P0SzFvKass5qpWd11Zfl1b4cXZjCjAyUkuMVPcNR3s=;
 b=G/Vh4wDqg/4IXtR4skSXRymO3XtXH6VhoK0VJBf+QoRBvdlS2XAH6dFc
 ZwIFbUb0YX0G4LsEo5tFg4Nw5QUOQeIf+wojTJy04hXl1an6ledEkfsgO
 SVdQb7dAGfvPNyPpsv5x0iP0tQYoK66rKMoq+p8Otn5oA7n+wcegxqvOd
 cMRqqtfQZVTF7uyxLEGfzj9KBukc3sY6QFov+kw0jLwxE6NP6JvYpEtOe
 dGh7J20Wnc6BxJ1iSZSp2DH0LAufzynynQGqNWZ8zd1BALbwdPdh2QJ5O
 2s+AahyKckH9h4qk/zolr3JtM99I5J4z9rMf9x/ixjugb1CDR9aWpVNYP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="15398139"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15398139"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 07:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15685872"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 07:55:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 07:55:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 07:55:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 07:55:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iD0uy5lhajsWgJVLoeyRBmHT1XNs90McT3W/DZuAIPG8evqYhhES+E8BU8f6j/+y/GSZd2LEfF3rodkApiHpyryDEHfPq9prKaYNKHVrFdntkNDRgl2iBlVqvWh987cBdUQgSNXANzbifs9hOh0ymcIr3Yonl3qFbyAL5jwsKXmPI47CHx2FRCQsV5/pJ2jscJvmqiZQ94nXmq8uinCAp54/ZJEiCgkHx9VUJEUeW/GDAxR74aQT0N9pCSnY4mj74XEZfVQTQnRkoQvkIJWAR7QHnX7cjKhCKaQnUEJwOUv1NFpjkeycYeg7+pA/0qufeb7QGo4fLS+KRJonDzcStw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jFKsUDxJCd8W9WobI/p6WYMJRBMXUVoIZNrjaMC6a3o=;
 b=DVufssgKx6ZOScKUIQw1hBfFwAOWMffJyQXzEmkELpiTe8T/QkyJwsyfa2VRKNOfEcxoZHWWzPkaczCDqKmBxk6oAr+OZspUp6/vJn5DBoHNR5JNWS4v+fOZToQ1QDfISALuVMIGq20EoGixGP2Q+Psq3840eohdnDiTYacUbSD82ubDZ+RmsALCkE1P8RRCu9ZfLo14KjCGMyFbiUFbFuaLzC05AGoEi+zl+gE4sv33qasa2yhXJ40xbO4qBFOiQGItO7FUZjpcpUl9s/J9fOSIGtrR/919MoycGKXATNqaeeB9qz3Np98gDOEvAH/+LcEzK2yD5KmYpdmYSoH5bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB7762.namprd11.prod.outlook.com (2603:10b6:610:151::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 14:55:02 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 14:55:02 +0000
Date: Mon, 11 Mar 2024 10:54:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Mateusz Jablonski
 <mateusz.jablonski@intel.com>, Michal Mrozek <michal.mrozek@intel.com>
Subject: Re: [PATCH] drm/i915: Drop WA 16015675438
Message-ID: <Ze8bQQoJStxPn8j7@intel.com>
References: <20240306144723.1826977-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240306144723.1826977-1-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0203.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB7762:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f08edfe-a2f3-4b29-d647-08dc41db3a58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g8mf85O8b/5VJVojO0Y8X44EpxPhfZ3UWLgZJin+tr+rQwRWY/d3egUgSq5ZHX/71YkQ6PkBpc2qaQzxe2NycOkJ1SuA8bLr7RQ6JtzKAjgvml6p1Dr1bL5N3+IejgvIp7MKSRqe4w4Bc21JZGemvzBUb3p2w6aeE2d5rUPwyG4UUCrXpVym7LzhwW23fKjovdRO4zZfWbEs0EsH5KmUJ4c6UU0oizLbfxDGrdmTsjojfu1dXNGgRRqJu/YevRb2kFobvMlFyTw2aqKYQpWV19PsBC8861oBXjyKr441GRGgM52d1iVMwp6qWyXhuvgpr2omUTA844uIDsIAjI7xQlHGwqi2k6YFCYFqS0sIMfamLmCIYZcVj/mWelSg001xWRP3G9rMjxbWBVgQFEtIX4c3qVweS3L7mINznHh4+Lwl+XnuDVjvrfmgGQqpa5aLbe7sFi7wtrhsFtlztmaqXDy9lLvJdzvwCOIM6ndDvPvVax6ejkmgxr/w6R44n5N5pOFwnEfoc6PzaRkir/9+qBnp3XVFtqIYQ5hULiknR7kDLDZAn0Q4NBxzpQR13d9rt6kVwn6scie4ufXsbjEtcux4FziZ3RXEOfipIxXd/wM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F0HTwzigawFZz3am/FhimdGd/E9+EuLtppL5HJj6oCL2na7BBJzc3E4jj25G?=
 =?us-ascii?Q?HvZ6qDpQpNqqBKXLJigoGugp/PlxBRCgLorONE6F3SUqe7JhgHAwL/UBvDrM?=
 =?us-ascii?Q?mWz07o2w5GpbrhnnaPWiidFqVlnwZIwl9k+kAK+xC5KsCQ1WZcIIC54Ttd0a?=
 =?us-ascii?Q?Pk9ErEgXZmgAicONh0RThx6e4QYGPHv9oq1T9n+vb1DPKY9xiamt1o+Woftt?=
 =?us-ascii?Q?ce0QiqZryzAEzMqEJGjcstNKD1aXUktfg/rVIg8NOklA12GNlTa1s6Al4W+S?=
 =?us-ascii?Q?WaNRJ0UGf5T0r33FLvKgaf56mZUOZIfOPaHbVu+IfhXyXrJEFw4UZu2xYONT?=
 =?us-ascii?Q?Eb2rUlPOoFR++iVuEUq3r5wdPamTwPOevEAY15wPoZFP4ZdSoN4jeE/6GTfO?=
 =?us-ascii?Q?DmW8XclIYHjm6bwzUgYQ9sH+q/JrdyTCT5p7r+kuybUimH2tyNXvRhcNJ494?=
 =?us-ascii?Q?NSViHf94qK+mw076phYiCZDxV6HeAa3tF518J8rstK0m62wIYkCWLKRfnAwr?=
 =?us-ascii?Q?cjFcBKcHRz7y19Dh2UumXpNBJyKNAxZE8l6slv8ypXrYpdgpPvru7KSXC3lq?=
 =?us-ascii?Q?SVOF56ABqXnapWANlkK92NM3LD2q6/KuqcdAWUm7nyODMKNeF1/Rrq6mEWkG?=
 =?us-ascii?Q?hVu4LQGZbDvn+uluuzpLO/Y4Qciy4RNnMFn6PT1RgatqPSo4qPQY6c63Lldq?=
 =?us-ascii?Q?+J5I9zyUazSrwx80pe9ar3vtyiu325dAhLkORAAVG+VQCtIJV6bW03bMR3oq?=
 =?us-ascii?Q?2yK8hbDfl+8Jc51JnsFv6+M3Owo40b5PhO43bUuFOwO5P0Cpp3vpJSDE4tQV?=
 =?us-ascii?Q?YYw5wW0giZnqejsc0vQhCJsmcnBwJejIDQuSRaHFEXxAtLDmREXNF5NyVVs9?=
 =?us-ascii?Q?78B8osB1HORLKKONKRaBCUR3XFWe3fcRFNLWFx3UDfHSoCSdi5zZUSi9WaSv?=
 =?us-ascii?Q?J1v/owvyamY2dCIvSDQBwoh9qWSK7bitjaGItjzd6dJTUVj4/iK/ok5jYi8q?=
 =?us-ascii?Q?4U6Qo0C4+WBv4IEz05BGcOYEMXEJth6ZmqXmRSz07oMgby59NXn60U7vVBx+?=
 =?us-ascii?Q?F7Ca8P+d4YB45ImDVAn1hBniCYIiWJmZPaDS8gRM2Pj9oOuJFaZuqtvd859S?=
 =?us-ascii?Q?T/JxtOHwcngX5oGEmwrB2RvF/L4WclUMfT+0F6XURzVzTj8ZWUMUl+i3SYrV?=
 =?us-ascii?Q?NcpHWFIp23XmdWbWBXsSGWR8Dbka03cj+kXYK+9Zqh59Fcon9FR2NnBj3a23?=
 =?us-ascii?Q?F14++F4m/J/oboWjTeHFGFFTtBk4kGTzv37KjqcfOQ/N35N6xxv3CgSBXZzM?=
 =?us-ascii?Q?cAWh6hTU8mGAAbAWFVlJczjsGfuJeoFW4MNhtS6Bo0odbhq9yyy45nEiR6DO?=
 =?us-ascii?Q?3tsq7l+fVAHxO4mCDxRQF080zhb5rCuDdLbI0bC2v3x+3MAaL4K6dXKMWyqV?=
 =?us-ascii?Q?jBIBB0678DwR4+0bGDbnVgpyJSYQKrrQATwqXSv5aDr5N8oj1xdbx6EBDlTI?=
 =?us-ascii?Q?d4u8PoF43ki8csjilP4XrbSx5sk+ovubhblAu4UA4hKEme1NA+FLKulpAkax?=
 =?us-ascii?Q?PtXi74u02/zuJ0HPT2yofndyj9qgzHODv0YnHJ33?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f08edfe-a2f3-4b29-d647-08dc41db3a58
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 14:55:02.0258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SSxPcOXE6FKSe1eqznQNI//SiiH9/PJstsN4VpkCpks5HmeS6quoyqXIFPWV8d/qxHx7GVRgwc5X88IWbQn7Pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7762
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

On Wed, Mar 06, 2024 at 06:43:39AM -0800, Lucas De Marchi wrote:
> With dynamic load-balancing disabled on the compute side, there's no
> reason left to enable WA 16015675438. Drop it from both PVC and DG2.
> Note that this can be done because now the driver always set a fixed
> partition of EUs during initialization via the ccs_mode configuration.
> 
> The flag to GuC is still needed because of 18020744125, so update
> the comment accordingly.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Acked-by: Mateusz Jablonski <mateusz.jablonski@intel.com>
> Acked-by: Michal Mrozek <michal.mrozek@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
> 
> This is the i915 counter part. The xe version of this patch
> (https://lore.kernel.org/intel-xe/20240304233103.1687412-1-lucas.demarchi@intel.com/)
> was already merged in drm-xe-next. I'm keeping the acked-by as it also
> applies the same logic in i915.
> 
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +-----
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 2 +-
>  2 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index d67d44611c28..7f812409c30a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2928,14 +2928,10 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
>  	}
>  
> -	if (IS_PONTEVECCHIO(i915) || IS_DG2(i915)) {
> +	if (IS_PONTEVECCHIO(i915) || IS_DG2(i915))
>  		/* Wa_14015227452:dg2,pvc */
>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
>  
> -		/* Wa_16015675438:dg2,pvc */
> -		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
> -	}
> -
>  	if (IS_DG2(i915)) {
>  		/*
>  		 * Wa_16011620976:dg2_g11
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index d2b7425bbdcc..c6603793af89 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -315,7 +315,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  	if (IS_DG2_G11(gt->i915))
>  		flags |= GUC_WA_CONTEXT_ISOLATION;
>  
> -	/* Wa_16015675438 */
> +	/* Wa_18020744125 */
>  	if (!RCS_MASK(gt))
>  		flags |= GUC_WA_RCS_REGS_IN_CCS_REGS_LIST;
>  
> -- 
> 2.43.0
> 
