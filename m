Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B1C880AAC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 06:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9997910E2FB;
	Wed, 20 Mar 2024 05:30:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IH0NSKPT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9BC10E2FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 05:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710912647; x=1742448647;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JJSntALV/3CPfMRCIWyoXbC8IqG0NRb7TrCMeZditak=;
 b=IH0NSKPT/VIItHhO6zFgNvjHHGSHw2qs7ebYc4FzlJvHNXZNwkvL6OUf
 l3eAtI+z63zTXXgS46L9LPpq1PLXjD2YmnZpRArsioL+Y71BxumXPsU37
 a0xMR4YcY9vYYyaJRlQVGa2fjQNBewbFCdSD17uER3jyWWwIfZMYSj8NT
 WYUOAbSVso0W2dlvo6McO7q2Gcp+CvmN630vCocL6z9Utz7qNYyUcW41I
 hl2cRpq8DXaklXjBjrfhZYK250ICn4PRPteQFZ+AKQVEViP6OHUxG/Qw8
 idWKJHx/rIs7wjnCJdejKt+oYR5o6nzRmjHvqTPXhWRJKkMuDRXVfH+rB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5938629"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; 
   d="scan'208";a="5938629"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 22:30:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="18767077"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Mar 2024 22:30:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Mar 2024 22:30:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Mar 2024 22:30:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Mar 2024 22:30:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFDWvjaHwVfDPJBc2cOjUsVnfVnX63mh96OMKBMDOxeEaSzIq5YMH9Imvgkz4KVHVyW3oz9sy3LK1V3MeHBd7GCDCWG1e6wi3x+cPDfHqP7mMrgA1REqFK/LbPzyPxwsEmNnxyGkr1oC76cIfc3JE/5h6ZW9+dhlJvUGCYDR2Yp1YlSPw13hXSf1XYLbw39FS+2yN24yboMUI6hQBzF93s9VHc/9eTPV6JA3vGIVPL1Wxc6Ns6SqdXLKMrzH7Ng+qHA7XE2Q1swsc4eGvIdPpflMdKAGmszPGiuoPiRtfY8mejeP0CMW3aQ2MKiE3v7b0Q2uA41IT4ceSgTvfTKEjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h1EIuspkiGldd123J2hGrs2Th7sBFHSVvvCdiDT4kDM=;
 b=VRCodU+aduzh4M3eZiuDrVKEUhvb5eOkXiq0SsYgmzy72+lmh4oRziSWSBll7WtOv8emN7RhlC7mDETHyX1XWEdqEgDtxeVOClzufdDKBpbVDj13BDbB7Lf8jAK1z8lVhzHAjSHS4w6HoTlGGlqHNP4CqvALa6N68YWWlaIzyQweWDUT+CyDiJf7na33EXSPyHxrU8lIPp0JLqOEnxfeEg8k85z2Joq9gafVlWkZHOspAWMHO3MccYQvSuRkUlNCwzX9G58UAWMIkLUJemg1tjYnx/vpRDyDCLtetCnXIECAZ09XesiK7W35Vp8f0z5m0dJTeLsiZi7k4OFZrhPMbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB6889.namprd11.prod.outlook.com (2603:10b6:930:5e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12; Wed, 20 Mar
 2024 05:30:43 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.010; Wed, 20 Mar 2024
 05:30:43 +0000
Date: Wed, 20 Mar 2024 00:30:36 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [PATCH v2 6/6] drm/i915: Remove special handling for !RCS_MASK()
Message-ID: <swo34bo4wcrovtyfibcv4x2ay7lpmouewlndzk557il34etbgi@qxmho5cawv45>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
 <20240312235145.2443975-7-lucas.demarchi@intel.com>
 <20240314205746.GG2837363@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240314205746.GG2837363@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY3PR03CA0012.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB6889:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e9cae74-e023-41a6-b4a1-08dc489ee320
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5o4wEb65JnokjlhoZvZ5yu3HP0LlFk529K13Bw8rvQQ6EPvxilhzKUmGGqeMv1UYjvsWfD8hZuI7PR181VAKdgCkbGaRVpsZSMajR144hVkpH5CjbSCE4bNU++1qdwJ2pI1ZiCY31e3WRPP15bMjIJroMKr5mF4tCMY7OsKjRklbEmqMdGGxN5pfwdrhihb8WCbxatE/yYJmdfRr0B+fyUTIHERogsXtvxH0VqYDiQLf7yKcauGwdaY3+ppb4bYZ/e9GTHYFQew5hfIOGjL13sVfLfLlSFdoxqi6UVCWljuzn/he0FHkEOggq9hBfJDNA5UblW9tmPRPqjXXpGSluGXarld5R4ilx9XjfMLJEqfe4p7NAhMwLqP+iCBuawnpFZPjTaWd/r3ZlvanK7PD7+98YSguLOobM6D03GMUoZ8tq+LIrcNtqpp/JfEQ47W+7cgV5AryvupHxHdFxjW7Rbk51HRvozmc8QkudEXg1BO4xvAJZhb8c6whyXRzCMKKcyPhyLHKjZI61i5nDG0rRc5q80elOd7+f9LZYan/++cM5FnQWF9iXDUHqi9llc7VTc2n7VnTxRR7r03NwtHjJ8jv8Dbau05NAAYhq9tMg3DWAWyK0D53YTUogpO/wrznaF+wjGFnAmDjTD4wltM9U6qhl9aJyb0Q2kn/MzpBkzQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hiEBB/Z+ruJoyCQqMdudgp4su5qi7HSWkEx83uJC9oQMI2F7JyrEQv1EBdKM?=
 =?us-ascii?Q?C+xYcIGFKiG6tDAf/tjT4OT8fn/Rc9cT5c1frpKgi3gN1vBeq9QP6DR9ijyS?=
 =?us-ascii?Q?KTifTp1Hy448JHFz8vsBy2r85wzggriPYb4sXIXfwOyRXtGjyq2Jr9dt4y82?=
 =?us-ascii?Q?ulokCSAjpYpwz3XG8sWmFgV5ETc6SId/5zMaDHc8ffMoiVsB5pkPQSs3ViHf?=
 =?us-ascii?Q?BiT9diSqIxjFVRGRh4HHxAx84Pol2oBVJaEdGB6k1/yiPO7/nntofHL8Je4j?=
 =?us-ascii?Q?q+VoiCzBH37gWFaP2Ez4CJBS+ZFcm4zBRCYQ8VSwwfjJbs0Ca+Q9Mb6mTflJ?=
 =?us-ascii?Q?VIwGb6WIddJTNupTTEDG3cvKlc5EQF3UR+Tm3aCffVJYkOBgWvjyJ5331q2/?=
 =?us-ascii?Q?Ol1b13pLhVhSkz33Qg9DRp7HXJSxhKJqHBy3VSjV3zG91PzzJkaJ/eeyWllT?=
 =?us-ascii?Q?ii+lcWeskyb1BAZslxozjQdNS6/4VI/i8Q+oBFf0TDii4xW1/l525666Xa/f?=
 =?us-ascii?Q?WbCGg2zCUHkwb0Qo/dRdUjkb3j87KqUNgW1ya6r+sKCCFaWto7fU/TaIa1F3?=
 =?us-ascii?Q?lfXE94NNpMJCLzAqMSDtbdDitXxDVUUOGmHvwuIqcaOovV6Dv7Qb1bwyLcvY?=
 =?us-ascii?Q?SBYL+XwM6uYhqcjB6v5A3Sizg5ndtzBoJTt24RLj1WkecwGDK7S9SAVHd/dh?=
 =?us-ascii?Q?b20jwwRh8TCPx8UJMKy8HO4D4aJwFnMQhN/v4bdT1un66txy7sGHcm7kfPIC?=
 =?us-ascii?Q?Gwpo17G1Eddg7cVWGJmyt5q6So5X0ftNh43jrBkfUlSLX3/pINr5/yWY5HJ9?=
 =?us-ascii?Q?SmJzmbtmMoQSBtSAaGLLwvJRTPgORwFHnlCdBRhrq5SNkOSJU+rouFJ9xEI4?=
 =?us-ascii?Q?Rbjgj33kJGmJvXqoEQTh4kI2queoxG1hSOjxFaeHNLF8PJ3PecDL2Iles0H/?=
 =?us-ascii?Q?xyyGuU/l2xlgzX0dZ0gkOwGBrp/wdf65s3vtdJhrAFsVC+4JrRxF6Dme01av?=
 =?us-ascii?Q?VT2wL9sGupGpBr2ZzMvWVF8cK76X7VmyQs6YKvTdHJFdcb++dJFCJhBZjn3/?=
 =?us-ascii?Q?nKGX27A9KxmW5FH4mBprWqexo1+axBUNZpu3ovLvyxrT07UkkOMVxmmBPYM0?=
 =?us-ascii?Q?W/AN+h+V5c7F/4iJhxFnPNcafYU014VNhZG08akEhcJiDYrgZI33xrZGFG+6?=
 =?us-ascii?Q?nbgsp1LWNeGzsjwhTlprMYfzlAqtCzljGLjoSBW2lAaMlcyONjMVglOYNhrW?=
 =?us-ascii?Q?H9/bZIC9kDSQPPPcxqGVzyUAcHDCkhaKncgXRgazEZE/AYOOuLRhh79NPUgQ?=
 =?us-ascii?Q?JTReR7VvzK/ahBQ3DuJQCAX+JHyQm0ts0gvHVwCV23/Q9NTFTooN3dZ6iCjJ?=
 =?us-ascii?Q?YvcxaMg+gzYXVetspEHza7gtThWUJguKsVgtJ/9oJIOZpq5+WEm2KZJ8Wrps?=
 =?us-ascii?Q?Dud4+tE13JVNX1brRiqRDIoN7XExjBldjIryPga6zs6ZeyL2hRy1P+VwffzL?=
 =?us-ascii?Q?4x4qQrQaMpcYgwWpJuLEW6jjUDI1kEi4vWXs9V6YmYpVvAZ34ViZ/lZH5baa?=
 =?us-ascii?Q?VobJOkdoqvLFlxMymPJ4ZSVRHwGnvjMOmh/VybhdxRjMTziyQy5fNO0ueG0B?=
 =?us-ascii?Q?3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e9cae74-e023-41a6-b4a1-08dc489ee320
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2024 05:30:43.3932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N0lB2cWz05tteFD+GKxfD9iOtNPeFLv0qBCzgaZGI9TAwZVk117kBY9J7MjuTWOMjcuXuR1xZuJD/Wc9Z5hbfpp6SjVLgLrx1YZawf2/JTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6889
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

On Thu, Mar 14, 2024 at 01:57:46PM -0700, Matt Roper wrote:
>On Tue, Mar 12, 2024 at 04:51:45PM -0700, Lucas De Marchi wrote:
>> With both XEHPSDV and PVC removed (as platforms, most of their code
>> remain used by others), there's no need to handle !RCS_MASK() as
>> other platforms don't ever have fused-off render. Remove those code
>> paths and the special WA flag when initializing GuC.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 5 ++---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 4 ----
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 -
>>  3 files changed, 2 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index 396f5fe993c3..476651bd0a21 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -497,9 +497,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
>>  	engine->logical_mask = BIT(logical_instance);
>>  	__sprint_engine_name(engine);
>>
>> -	if ((engine->class == COMPUTE_CLASS && !RCS_MASK(engine->gt) &&
>> -	     __ffs(CCS_MASK(engine->gt)) == engine->instance) ||
>> -	     engine->class == RENDER_CLASS)
>> +	if ((engine->class == COMPUTE_CLASS || engine->class == RENDER_CLASS) &&
>> +	    __ffs(CCS_MASK(engine->gt) | RCS_MASK(engine->gt)) == engine->instance)
>>  		engine->flags |= I915_ENGINE_FIRST_RENDER_COMPUTE;
>
>Given that we expect all i915 platforms to have a render engine now, we
>could simplify this down to just
>
>        if (engine->class == RENDER)
>                engine->flags |= I915_ENGINE_FIRST_RENDER_COMPUTE;

makes sense, but I'd rather add a patch on top to get rid of I915_ENGINE_FIRST_RENDER_COMPUTE
and make this assumption "we always have a render engine" explicit. It
seems that there's more that can be simplified when we do that.

>
>But either way,
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I will keep this patch as is for now. Thanks

Lucas De Marchi

>
>>
>>  	/* features common between engines sharing EUs */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index 217277329546..3dd7699f2ad3 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -320,10 +320,6 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>>  	if (IS_DG2_G11(gt->i915))
>>  		flags |= GUC_WA_CONTEXT_ISOLATION;
>>
>> -	/* Wa_18020744125 */
>> -	if (!RCS_MASK(gt))
>> -		flags |= GUC_WA_RCS_REGS_IN_CCS_REGS_LIST;
>> -
>>  	/*
>>  	 * Wa_14018913170: Applicable to all platforms supported by i915 so
>>  	 * don't bother testing for all X/Y/Z platforms explicitly.
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> index 14797e80bc92..1ad31a743197 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> @@ -101,7 +101,6 @@
>>  #define   GUC_WA_RCS_CCS_SWITCHOUT	BIT(16)
>>  #define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
>>  #define   GUC_WA_POLLCS			BIT(18)
>> -#define   GUC_WA_RCS_REGS_IN_CCS_REGS_LIST	BIT(21)
>>  #define   GUC_WA_ENABLE_TSC_CHECK_ON_RC6	BIT(22)
>>
>>  #define GUC_CTL_FEATURE			2
>> --
>> 2.43.0
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
