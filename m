Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB9C839C7B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 23:44:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72BB810EB11;
	Tue, 23 Jan 2024 22:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53BB10EB02
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 22:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706049855; x=1737585855;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=wEVo0I+oMSgcN9Zk6s/P83jgPUu/Bb/5YTFVDfVVp+A=;
 b=E3e/5x4JHCtAX3ZqpK43G45oYu1/k20xQmYYXEnZiTIbhfuK5+HANg8S
 LP0QAojSsYmaO8icdn0JAINaPeTKIc0A3uZpuzzycyx99SGo+QU6T3x3M
 5ps3AIIxqnHXpzdTtRMIB5PxhjVIAPze+MZexr20MWW8sNWpacPnZfCJs
 eRchKoe9hJLsVOcNXSLNTQdcjZy2KZEUeOOa1FHLhRQKwUGUfO5qZ1DYy
 hNmGB87p+98+gy4nw5fW2JaRVvP7Z5GNbHEeTp+/06vCeroYaRTqwXr/7
 2Af8NwJF+dfan3SHO9aIdyhy53Wwp//sFtxjozlIya1BW8Ua3y1Fv7uMM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8431797"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; 
   d="scan'208";a="8431797"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 14:44:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="820257195"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="820257195"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2024 14:44:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Jan 2024 14:44:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Jan 2024 14:44:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Jan 2024 14:44:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Jan 2024 14:44:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R2NXx5rJTDD1o0RFvTuB+7FOaD4GoanRD7BvmTSlYLVnCzZY6/VmexAg0+69FODaydFgoJnZi7FIP0/kLoQLEPW7lGvCMgrNsLAlcPrkALCV8aLqrReLSoctvzxiFVo7KUBh6ZTeaEkHZdTqOV0FAiZeGR/yZ/2J/Jx+tVLNt9OXZcdywqZde14CcClkrdUOK7tM4JTIQFbssA/XnqhPNrxCG4GBJjGUd+5MMe1RaNhX1HqnnERZrRyfJIJRjGo92m+EnwypfgHlK1atgSctDLq1jdymu4v+6cwY83QoLhrj2IRzlxuKIRbggTrYFdACA0crrCMcpvn0bbU4Oe1XZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYUzp32Nyn0mg/pBqxDHN9+9kW/ySUwvqxmi5uQ+dJI=;
 b=QSQSIax+ku+h7laucCE5LpIKpNmfWrOyVGdStFdldlqIQjJ0VHpUP+BqEVdLo9ZMq8QYnKX68oib/dqHDBCoEzbdKNqk8w94byhKAcMyyjL1UtV3Xawk/h0bjUnqNoCnLUdF4LknSwIbgXS2KsFPg+4Iv4L1hBHFLueERJ+aWKUFrR/1z1NVlV+bjNyQJGKiAxc9USWOjCG5NI2io/4J4n6+VQKw35BvvW76Qqw02AGLY/TE+DPb2fEXfKK/w7+VjvA2sMQ6uMu3Czk7gfoC8OGl2VE67cGriwRDWgzGuh939XpUJEOW3IakRZQmLe5YiWIxkQrstqxgvQ8VcGVoSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6722.namprd11.prod.outlook.com (2603:10b6:510:1ae::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Tue, 23 Jan
 2024 22:44:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7202.031; Tue, 23 Jan 2024
 22:44:09 +0000
Date: Tue, 23 Jan 2024 17:44:06 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, Uma Shankar
 <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: Allow FBC with CCS modifiers on SKL+
Message-ID: <ZbBBNsQF_kYGNQTN@intel.com>
References: <20240123090244.30025-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240123090244.30025-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR06CA0061.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::38) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6722:EE_
X-MS-Office365-Filtering-Correlation-Id: 4566e093-68d7-48f7-9520-08dc1c64d024
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7EfZTNMmqfXYFm/YZei6PPbfWUy8xorkU5tx2OqPq14zrB407xu2fn3SjzyUf3xjObHC95OEDJFHXWatJIHVKaZvOB34oUEf1vF4TFc3l32ByWodjB0QoN6SZQaj/HaCUj7ba/M9u///b7wSyer66fJNDUckQyW55if1JtOW2mvxoeUvAWN1Aa+WJMWkhAK2qK0BHW9/qKKZ9wP1cb0apunuh8k8QJH3JagjktUVu4kXbhNlpEtCWIEdvuo87s2i1nlCnHTcXfLQCZwdzS3JA5DvvyCULTwOK7gLMPSKQQXbNuDqjSH/Q7Cpq6eotkdByg4APi6glA9f7iTuOm0/3KSl4yyn+whFYVkf4pMdCAIGrUr6Sg+7uNh6pYqzydyb9OHPwlQViWg6cv7EL0R8ISgtQumK2XkTRbKuXSybAea1nZnD0EdmNu46mT3tob8IOovD9uNfbLqiAwUJ5JeOHp0xCiZGPA50t+90M3aetJS0yySQnK+oQDzmhKQmh+JSiKeTcjc/XUm/glio4eR1oVw614ZbAOfLW5lJKlxapfc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(366004)(346002)(39860400002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(6666004)(6506007)(26005)(2616005)(66574015)(6512007)(5660300002)(83380400001)(2906002)(44832011)(8676002)(41300700001)(6486002)(66476007)(6636002)(110136005)(66946007)(4326008)(966005)(478600001)(316002)(66556008)(8936002)(86362001)(36756003)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?VZR7d6dgOr2694o6FJm9VFLEOda45rMgdA/vt10Z8KqZvzRVNWAXYrAzm8?=
 =?iso-8859-1?Q?SnGsOhtRmSUgChFQZVa/SXfxjS7oNn8hi9GGyPbEr6daWyklYUEDhMZ9nt?=
 =?iso-8859-1?Q?WHaG3wjF8rEcXMJTHRbFPfO62tyDwh+Hp00qeetLr57DjqYLpdOQbbeG0V?=
 =?iso-8859-1?Q?ec/Kok9Hm/IRQK/vwlsa2LqORHhaogzm7E50U1zzj+4XDQ0wCT3UOe9bpC?=
 =?iso-8859-1?Q?svi1m3spq4s2yrfPOAUnOqL6pTEvRzwQwiWI5z3nTIUFYcq28enCyhas93?=
 =?iso-8859-1?Q?9lw6I3x/pSx/VrbkcEEAad3gNJmm4cIaysbYZ8thRFlvDKqgWXWZE0sN4o?=
 =?iso-8859-1?Q?rnTrXtvIbiuo4sy8UBinEsmPjTSNzhoLtKwJiYMUVKwjA7bQ565Jsv65cQ?=
 =?iso-8859-1?Q?I4ipgR9y+PFuA1LgwuRaN1oVarKshyUhGH4bDdwjzLi5/sam6kltkGLe8d?=
 =?iso-8859-1?Q?KuvKjqPNeCEHzaTwx7O1BxIjI43878v+P4K/Y0h27GpTR9K8VIUMCR+60w?=
 =?iso-8859-1?Q?jOwVh8cmKQzNqKvaljvoYVe925K6KdxNF3FjHT0CLTwvxceNhUZYzB4ene?=
 =?iso-8859-1?Q?nPlkyriYOyrJgzc1oyd/48NoxxbNyFROnQm2VBivXiX8O2M1R+P70yP+yD?=
 =?iso-8859-1?Q?YIYblPP85IN36tukMMoePPW9pqRtU6RzoB2/eOnnkE+HzbHwES8lqS0Ffe?=
 =?iso-8859-1?Q?Lw4Qowds7rgiluz8svGaCnRhfIatIjjQfsfW2PutHjZ9NEumb72fYRDBMi?=
 =?iso-8859-1?Q?PfQHUl1RCHKqJ2raHN8Qpb+scT8A96gYvJgzCdXCob16UPJ2gaOTBV8wjx?=
 =?iso-8859-1?Q?62aZO9xn0yW2GLxMYYXP/Mr003rj9bPZKXZCrpn1r/l6fHQIFUy0rkPPU5?=
 =?iso-8859-1?Q?v9izFjm2satmYCqzoC8AUrs5+MlcZJDRM//q0WcxhN4LIKOKnsuyQ9bYEc?=
 =?iso-8859-1?Q?/dm6sYx0B3W3rYRMfRhp202/Q0z1+XjuJZi/UiaWaHtrV8dOc2jo7jXDxw?=
 =?iso-8859-1?Q?PthQgyEE1p8+2VYKfaUi1x6sx82Ix0dqtJvLGj5XXOH/bjKH/rGvsebXie?=
 =?iso-8859-1?Q?12YlnvKyJdeh244oMtZBN08yNm6UvgqTN/jk8I1shZ7UNfVj5o9s7QV+x8?=
 =?iso-8859-1?Q?IRQLhh5L5Ukww7GqLjqxRCWtXwXMKIeekFUYIqCbCvyn3+CcOukY63SssX?=
 =?iso-8859-1?Q?54Odgz5OMwev+7i/pCxWcQS+g7O2eKK2YKG7NCzsFqCVxQoS5cHtPqMxGq?=
 =?iso-8859-1?Q?y4RWCYF38Ecd4XcDlDF6fWjeCBnM9hYpzNIwH7b/RDlTBSKgQyOvMtG1cF?=
 =?iso-8859-1?Q?s7czwJei4somliWeqK86jqp4w13DAImcrtfWoKYJqF5RKkaWKH2jIL22hG?=
 =?iso-8859-1?Q?MWKwWXFwlMCCdfJDEbr23Z58Y6sxVOpw423wo7U1T7fXb4RK4GIzC/pZMg?=
 =?iso-8859-1?Q?RraIWeJ9mqkCZhvKey6Xn+6tBwV0736tJgH/ZwprI/kptb75dDPql/lHZG?=
 =?iso-8859-1?Q?quHYW8lgGflfbGop5KYi4IbVi+cf1uPBD0ed5mMfTR1Re4YjZiwfX6MTWN?=
 =?iso-8859-1?Q?e2+L7HBC2ifcxsgywvX/XbfqKB6Toa3dg+ksHkmdZFpAXORRIfc+hosOpf?=
 =?iso-8859-1?Q?eMjQlqxrCZ51j8Undk1f6+ckJgXTbAF7lT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4566e093-68d7-48f7-9520-08dc1c64d024
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2024 22:44:09.6770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0KXVqKSFY+p/r81WzZa4PpfRsHOuumr6t2p99m3dzWbaqLWU0rObZtAq1hNa7AKrfyd61CxzJLpk5oOwYU/RQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6722
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

On Tue, Jan 23, 2024 at 11:02:44AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Only display workarounds 0391 and 0475 call for disabling
> FBC with render compression, and those are listed only for
> pre-prod SKL steppings. So it should be safe to enable
> FB+CCS on production hardware.
> 
> AFAIK CCS is limited to 50% bandwidth reduction (perhaps
> clear color can do better?). FBC can exceed that number
> by quite a bit, given the right kind of framebuffer
> contents. So piling on both kinds of compressions could
> still make sense.

yeap, I think so.
The risk is to hit a workaround that is not ducumented in the BSpec
cases after gen11...

Uma, do you recall having seen lately any workaround with FBC
and render compression?

> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10125
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index f17a1afb4929..b453fcbd67da 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1087,18 +1087,7 @@ static bool i8xx_fbc_tiling_valid(const struct intel_plane_state *plane_state)
>  
>  static bool skl_fbc_tiling_valid(const struct intel_plane_state *plane_state)
>  {
> -	const struct drm_framebuffer *fb = plane_state->hw.fb;
> -
> -	switch (fb->modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_Yf_TILED:
> -	case I915_FORMAT_MOD_4_TILED:
> -	case I915_FORMAT_MOD_X_TILED:
> -		return true;
> -	default:
> -		return false;
> -	}
> +	return true;

we could also simply kill this function... the compiler does the right thing,
but users navigating on the code needs to do an extra ctag/cscope inspections
to see that it is a simple return.  But well, the code do gets prettier with
the function :)
So, up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  }
>  
>  static bool tiling_is_valid(const struct intel_plane_state *plane_state)
> -- 
> 2.43.0
> 
