Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E8D7585D0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 21:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5989A89FA7;
	Tue, 18 Jul 2023 19:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BCA789FA7
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 19:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689709818; x=1721245818;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9jN0K0MiWIu/Q1qXNyTFzEA5SgwtuTwXMkdV27upyeM=;
 b=ZzBovH7WRKqE6yTqoh30QExcubMTfIGgijBhNRWDUwY7PJ0me0BGT+ti
 ndV+poLxq00s43Eve1/8rI29H9UCcHRezeVUfD78A8hcEMuh8S6sjAbqd
 aQ42jgC2V9bgIFH5/0HBpJXCZ6MmbMVmuNAs9E3GLIq6KSn5wYyd2mxux
 /pANr/s0cnuYOUoXZdxrGeezMkNE3YsGrxKmb9lr29wwMw7xdN+Vvo8zJ
 rI+zSL7XV+trmRXVfVcQJcl3bzuBd640knsTVWVxOvaToFDvwHAjApXo7
 ErVPbYC9z1jkCq72feibz3w7ZAERaEfOYgkE+p9ohj3cL5lGv1jyaecFU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="345889379"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="345889379"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 12:50:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="867216502"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2023 12:50:01 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 12:50:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 12:50:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 12:50:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 12:49:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JgsymE+TSQkXqWgmsGeVkgiLFyUB7o5i9sWl6btbhFJyubtMQyXgVHjRguYYClmrZkON0mXI8eGyR7TZIKh4nV+VOFEMmM6sh0tVpvwpZ8sVxu1Gv8T+SQbO/aSwftKJVGWIYVwMmDD4Tw7AjfLVuwMwR/dSou7OCanGZazHWIe3xKAojGBh40QuZvRXGNVcFu74fq+FHp6QaOcj4wm6sd3rrpg03fMfusrADuxQaYswnC44Llb8a9AXs4TFjALuptlvsB4Ku03ijajCtHPlC+dYSLtN2qz72OE1B4hEJxcuznQhhR+kbJQSDyg4Xuq4uXa/f9WSlo36M7vJgYiMNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZHdVdYdM3KvR1dz/alXP0OCt8PfyszLBlGMYh9BPgo=;
 b=XiuIdP0QU3R0rExZ+mYSn2KD+Z88w59cO9LoRO3IUo8efw+vZjltJQRfh46RaBIApZWEqxPNxFGLZMWt4VCXl/ek4pNeTNB5B3HBKIMu0I/K8lDXzQpGU71b9SJkG44oV6lhuoavg4Ezu59kF1EaAEBYvHN9WDu6Kyi5AopgGrA+VUvML5c/3QPBdJKB9ahW5AjSzchGk+H1EiLO0rGY5J3JnQawyuGDa6Cfbc+AGf+WbEsDWfD1yG1LG0O4YgYwotJoXaFzm9POB7FOsEiQTF+DEad4K7raG5XX53CKxuQ8Rs6S7IjEIdpNeE48tZXigc16DmDC2JtECPLjCNpbLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7845.namprd11.prod.outlook.com (2603:10b6:930:72::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.31; Tue, 18 Jul 2023 19:49:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 19:49:50 +0000
Date: Tue, 18 Jul 2023 12:49:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Message-ID: <20230718194947.GB209733@mdroper-desk1.amr.corp.intel.com>
References: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
 <20230323225901.3743681-12-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230323225901.3743681-12-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: SJ0PR05CA0068.namprd05.prod.outlook.com
 (2603:10b6:a03:332::13) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7845:EE_
X-MS-Office365-Filtering-Correlation-Id: 3eac4d00-5748-4e2f-c408-08db87c825ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cn3uP/rT0KyPEuLxMz1QU8V+gmAtPrwGGue9tPDDNoxydZoLRbgjyUVxywIVX/J5pjthjy5Nu2UTVinzVp3Tbc0XMnOEmPwC90XgAj4fz0wm3u9t7/kUgyClHWqduql3xFubPHBzQn3kX26XeAnLNqOOV3QtdCZOSHhnFF+ytYmHvvcYRUyLIjI6RcQPkBV5lZMUFQp2eWSFcIupmpah1NimmVaM0Y4sYR72ZfMqN2BaCilJpa9J6db5R4SXW8hqPph8nWZ09khqkfx1RWTNPTXucnbJtSUYHM84s2KCwBdLyA2IlueOdiPrr4p4PnH4YFLyulwZsP7zT3HMCMkEwvRCLWIcE9s6Xylv/AYAH9UzD5AL3cMPudaFqPQcyXPQ25hSARzeZfkZx/lshy9TbkG3ypiE3lMYqvDIRz5xucsDvideB3yz54KsbhOXGYZ5FifszlKt4hJBmp0V243JEpGaS36r0pqcOD+N9CDqz/2IcDQodBDmNQh0taBd2xO0E0JnbYBBOvEw6R8TFCLHj59vrnjZfTt5nBZaWGFG7HdhjzPDLTMV9JyeftmGfEyM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199021)(107886003)(1076003)(6506007)(26005)(38100700002)(66946007)(66476007)(66556008)(5660300002)(33656002)(2906002)(316002)(41300700001)(6636002)(4326008)(8676002)(8936002)(6862004)(86362001)(6486002)(6666004)(478600001)(82960400001)(6512007)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V2QBzA13ZfnyZOQVab+QiTdzBRBW2oWTzm0VxawVjB4tyCJWCteYBAK7iQ8f?=
 =?us-ascii?Q?2gx30Lu8G2sunR3q5ZAJB8/thLY61q1pglI2iAUfUBY3uQtI0dvKPSZvz35/?=
 =?us-ascii?Q?yBzDdbF53MbZ5bbJSlQWJcjtd4FlcJAUn/pQmghLJofJlkP02QFv31eiOJBq?=
 =?us-ascii?Q?kfvr0YpXK644GYr+1AvsTisKg8WNf0WG3d1+LmoOyhjsrqLFpzDyBJENfVEF?=
 =?us-ascii?Q?IiSNLeYWmu52FLfWhr9dd+r4zHHtstatrR+kCUAgaGII6yWTO4O272g4DVVD?=
 =?us-ascii?Q?+wT7uLwm1a9add70gOMyrbyQ+LZFM5udatntdEyoLaYCkeJWE0pf73NTk/3Z?=
 =?us-ascii?Q?eJty78e22zhcOAuK3YIEEKcBFlMkGmP4bOjfJGI2sjBK78gwxxtcr8x5xmKG?=
 =?us-ascii?Q?NWKy/AhCSEndMkgTGIBhyukoAx0di6NuAv/IqN6zUzW+mIbMMzt2anoBEYCs?=
 =?us-ascii?Q?uvMQDUD+9TQJ7HbKfWjbxc7MBXWhgPJZDyiO6tizsL7uE3eVTt1no0CUDKET?=
 =?us-ascii?Q?DPr2CsoOyj18yQHDfMKxV5Np2BOI0p5xEKmvnGsxrJkag5MhgXTU10M7u9P3?=
 =?us-ascii?Q?zaeQdy+S4hYNr7D6Cx9ptqGO0Hk0W0UJkHisyLzMLweh1xBH50Yf8PVp5H6S?=
 =?us-ascii?Q?OYcME4QKgMSZilYbNvpBZyaf7dKuJVUpH55r00h0SwKksLMpCm8UF3MhuWbV?=
 =?us-ascii?Q?NALoC/rjB/Op05Q52EZig/vDCtDeksKMECkA3b6MSxroCgFaK6u6utD+iM+s?=
 =?us-ascii?Q?XBOVQctggp2REu4j2AM0dUWZqkPiA5xENqY7bOM4aMDZNmwamp01tqOedtgr?=
 =?us-ascii?Q?vFfls12FaNLwE3sRmcW+7m+f5Cl6tqspj6oxm2t/it/iTxpUIKqDHcNsydLd?=
 =?us-ascii?Q?GmSqcPmWWHcPCtX/pu/+CVjFiwkPFXkmus9NNObVxA6VILomSjGqoPP00BBq?=
 =?us-ascii?Q?xxQM14vLKXvgKhuVaFBpdN+pQPnRFumg2WyLlTjBzkjBZeAK5NIH4UjqchCb?=
 =?us-ascii?Q?S9z58duf/IKob6omY1sDtv83nnUsnlX33yub4gZv/EmWFj9qdz1yuGnkNAV0?=
 =?us-ascii?Q?7mc9hc+QoKWT7ago3VOrSz0+ht7ggaBDStzqYMc3fzkHKhzcSpx10ulYwt/n?=
 =?us-ascii?Q?iwyYQP7Tg9FYSf0TU6rwgdns6Qn9wRZFV8MqvAuTUc3mMQz8V3erDB3GRdwx?=
 =?us-ascii?Q?AUd9Itm+7yysGmh3ZBGWV6LmWNTRSHYl9+8Svt0O8lttQbky7dnRb3dHrMcB?=
 =?us-ascii?Q?EdwvMuWGOg88BwBPdhFY2bFw/Pa3/RXW7z7MHONq3DOrwc52YKWKHy1mUEjf?=
 =?us-ascii?Q?dTlCwza0ICS6EZvDrg92XIlhfp5NrrkMhSd1DoavHwj9NGEBL2H46LL+rWLG?=
 =?us-ascii?Q?P+LKwRnYveoPboG6oCV/NRXu/AAbk6cBz+bbar19B/hLKHLL+Np1JHCBKvnG?=
 =?us-ascii?Q?EQW+UuwJNitECjp8jm4XU8Oxiazn4H1D8wl9tHEMOkuOd/puSNKPFcusC+xG?=
 =?us-ascii?Q?ttcHr7LXPXIUA1HkkBgYgJzcN4xxYiCrpWafG025Vt+VWbimqZttyM6xMJxy?=
 =?us-ascii?Q?5Cx1aJfojZtgoJo71sWF4SfiGbjsGftHxbX9AFtKwnbzUFDmk3rzTOazJkHQ?=
 =?us-ascii?Q?Jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eac4d00-5748-4e2f-c408-08db87c825ed
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 19:49:50.4465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6peknE1SMQ1xl6cvIPmxFq9FMLXBlsBCf1Vx5OvBXJW4x9RZwkdqWy9n1VY+YeQDvlko37u6Wz8AazYfPR+vpN3+LqLR/HRssgMS0RleR4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7845
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915/perf: Wa_14017512683:
 Disable OAM if media C6 is enabled in BIOS
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

On Thu, Mar 23, 2023 at 03:59:01PM -0700, Umesh Nerlige Ramappa wrote:
> OAM does not work with media C6 enabled on some steppings of MTL.

I just stumbled across this while looking at something else, but
14017512683 isn't a valid workaround number; that's just a per-platform
identifier associated with Wa_18023884638.  The actual Wa_18023884638
applies not only to MTL, but also to DG2 which it looks like we're not
handling below.


Matt

> Disable OAM if we detect that media C6 was enabled in bios.
> 
> v2: (Ashutosh)
> - Remove drm_notice from the driver load path
> - Log a drm_err when opening an OAM stream on affected steppings
> 
> v3:
> - Initialize the engine group even if mc6 is enabled (Ashutosh)
> - Checkpatch fix
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 18afa76653b7..c035dbb84c9b 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -209,6 +209,7 @@
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_lrc.h"
>  #include "gt/intel_lrc_reg.h"
> +#include "gt/intel_rc6.h"
>  #include "gt/intel_ring.h"
>  #include "gt/uc/intel_guc_slpc.h"
>  
> @@ -4223,6 +4224,19 @@ static int read_properties_unlocked(struct i915_perf *perf,
>  		return -EINVAL;
>  	}
>  
> +	/*
> +	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
> +	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
> +	 * does not work as expected.
> +	 */
> +	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
> +	    props->engine->oa_group->type == TYPE_OAM &&
> +	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
> +		drm_dbg(&perf->i915->drm,
> +			"OAM requires media C6 to be disabled in BIOS\n");
> +		return -EINVAL;
> +	}
> +
>  	i = array_index_nospec(props->oa_format, I915_OA_FORMAT_MAX);
>  	f = &perf->oa_formats[i];
>  	if (!engine_supports_oa_format(props->engine, f->type)) {
> @@ -5316,6 +5330,23 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
>  	 *
>  	 * 7: Add support for video decode and enhancement classes.
>  	 */
> +
> +	/*
> +	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
> +	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
> +	 * to indicate that OA media is not supported.
> +	 */
> +	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
> +		struct intel_gt *gt;
> +		int i;
> +
> +		for_each_gt(gt, i915, i) {
> +			if (gt->type == GT_MEDIA &&
> +			    intel_check_bios_c6_setup(&gt->rc6))
> +				return 6;
> +		}
> +	}
> +
>  	return 7;
>  }
>  
> -- 
> 2.36.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
