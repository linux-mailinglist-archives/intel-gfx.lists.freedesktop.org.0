Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10E6720BF2
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 00:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0F210E64A;
	Fri,  2 Jun 2023 22:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BCC610E64D
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 22:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685744817; x=1717280817;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=s3pZnMolNefyDOR5rvuTLt9IrLwO93b6ExsI/L4j5cU=;
 b=oA/UguU11rOblamNnV26D3AjIocmmixM9sipHQfMkMBt4644rKgJjwKk
 wMPqpS9bLdIx5Tu31ufv2vwd6WTem5xWc4kp/jGqKSSympAJddS29dAYo
 TsGBzQqC2SzfcL9SLXOpI3tyrpCkrrt2ok/dFGQCiMhkXPcDb/cHJsENr
 h6KMfXUhFEz96CqCL5B/PPW5VZRCAkqU5it0d0p1i8jAgzmSB0886/brB
 lpSbumUsTf9Q91NGmQAK3OSpy4lLyUaxKsks4CoXBuWQ+ZaDIJCPVzoYv
 7M0839xGYYIwtjgjavj8rW0SGXSsLgLkwCA2bXMrJslP4VUN84E+XuBM9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="384270819"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="384270819"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 15:26:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="882220132"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="882220132"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 02 Jun 2023 15:26:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 15:26:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 15:26:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 15:26:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJXe6Prr4jBE/7Ez01TgsU34AQNvOejbljZNDqTTzWKzCOk5r9+fALl7hVEZFjQFgD8ccERKViv5uONDgU8gWy72+FTaifpO8uYrBLdZtZ08WBlztgdiDEgricdDNSXBkQYAbLtI/LeGfbb2tHdjgecMUnCWCqO+Fofy9nnMG8DbwMrJ+Lvb6R2qXnzh9cT9NcR+qxH0ZazG1dI6AaDUwKp/vJwkDNb2ULOij13PI1Cx3rNQNfIoCIQu0SKtbJBwxleb3ZxsBAxmln58jTW0vzQZ2O7TwlmegsHnVCJvwD46PTz/RBJ9Ty13afRZHlSTEnl7Fov8QmHEJsZczZqsBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=usFYZ/gQu8OcECHGu5WQ7pBF4AtFlF800iLSgx7/yo0=;
 b=dD5eo1Lp2DWwixcuIKh4ZasKG817Ha0/qj3IhV1bpgCxWI5g1IE/ceIavUjlvUdZ89ypCCgaX2CjklI8EVNOR1a/p+eRMucWSX1zV3unrqY2m+cDfQmVVKzaRnzYQFCm8aVTXtG4L4wchTFUufKWs8k1qPtT3s2KCXRpZHtz0jxhGjJnUydyoa+o1A8EcfeVR0U41KCIb0zWCgDs2/JCq4PrtIKBZSyiEcRC+aQg1DlzMd/genuU7nx4Zv6OPAbyMo9kPkKKNsd3+FdDXVXOhg33gb8yvcw46hK9JfMbJ7I+lOSTRAGuvR5QsUanlV7C8mlp/+/sRh4OjS8Pw9Tg5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB8202.namprd11.prod.outlook.com (2603:10b6:8:18b::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.26; Fri, 2 Jun 2023 22:26:53 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.027; Fri, 2 Jun 2023
 22:26:53 +0000
Date: Fri, 2 Jun 2023 15:26:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20230602222649.GR6953@mdroper-desk1.amr.corp.intel.com>
References: <20230602214022.1583682-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230602214022.1583682-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR05CA0031.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::6) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB8202:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a65cea2-c75f-45f1-ee1c-08db63b87704
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3NXia2P8fRXlOAxLZ4PwcSKYKwGHIS+ajPhFbv92DcspnqV4REW9NuE9MjWlVpQnz6Ji94Ble1Q/Nk0crDAOiZpmuBgWDdJLpIqYrk82YB7VhUy3RoaJNa/+f4t+NFpK804M8G6x+0qgoZFQpwk01TMjrdXw9XIyzEbjkbknpZkTFsYm2iQOFq2i8IH5TIYVKNuYArpI7FfVpZR6UVT73Kx9zzGu69SGHobOG6Pq+7potneD3hf1XgeSUzGgXyWKgLZsIH0XF+T7uekEjxhYTH52A9GL/sBnTzDjjwEVHL6vfHA37TUBZXDEfz3iB36si+8ZpIu8X0naggSwqZYhhumGKIGjbBtdtr39aGzX3Dd5Xtalczvy5yAtBBe0beTZXdMKVhXMEgYJDMRfBd6MbU1Xgm/2jp7ixm2o3lvvWfo4t7hH1HIE8+OKZkvvU7q1/5EBnrhmQyRtba+J9dQS+17mj8l9ryyV0F5D8BFa3K0imG0hATgwrqUcj9d/PoUtau9/vE82E88mtDM3Q/nWUX33qAgOZkyIP+VCJPFxcTwSyvRrkZOWrab2ZDO+RsWU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(396003)(366004)(136003)(451199021)(478600001)(26005)(6506007)(6512007)(1076003)(6486002)(6666004)(8676002)(6862004)(5660300002)(8936002)(83380400001)(33656002)(6636002)(66946007)(4326008)(66556008)(66476007)(316002)(82960400001)(41300700001)(38100700002)(2906002)(86362001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jnSEPdjvZFupYQ6SBIcgLmvZUILcENDFg3UEuRBh6YYWZlNyQ89ivyeI8Xxw?=
 =?us-ascii?Q?auC4FV7moW1tnzRNaucG/FOkK3Faxm9XP6owdGjBZ54R2MyhpOKqX7o5HvCw?=
 =?us-ascii?Q?gf7cDVrarRs6dYZ+oAYvJFmy6R795ep1w+Thm6XOV+7bvWyJlnKOHjnx7Zxk?=
 =?us-ascii?Q?L75sPa3rxNLSrJvTb8O3f5ruDPxvVOZ53e7/UhGJTbiqerFPQbvFhpV/z46J?=
 =?us-ascii?Q?p6ZPQ1lKS6wqSuIUU6292CWbYZ/KK70zz1G9OPYnsJwkW+glIvCpqtkoDkrw?=
 =?us-ascii?Q?soAyoRiYpVJhDc3G7fBhp9XB02oDKvrwSWuGesTdD7ChRzlw8d2nz7GLKe1N?=
 =?us-ascii?Q?SG4zqwvgTURsDbo/Z6P/omRwMSAQ902uvjFI9Nfr7I3KmluoUv3l+EASAlNz?=
 =?us-ascii?Q?Mrd+jtUy05DHKnO99VWQzEeyjCKrbjg8lt80/Reb4yIsYU4EK1xojZD0zgVv?=
 =?us-ascii?Q?uKF/1296NmZwok8ct78/2OfRZoVEtM9MUNKVAa9st2cKK8x5H5uzdpckfP0t?=
 =?us-ascii?Q?FHLDR0zqpxZALrnOzGBIQp6Ql0A76f+ULmxbpy8TDCNirzoXY7qegjaBVSif?=
 =?us-ascii?Q?6Pzs00DECDk/maiQELP7Cgmm6fPSoI7w2Hrot3SBghncQRuntgo+HUHIJg9M?=
 =?us-ascii?Q?48aIBUVOmBxbIxxk6+s8m2YD2aeaVu4o4hG4qdR3OXmUTS9SpwL+oowYIX7q?=
 =?us-ascii?Q?zIcPTPMKYgl4dFp6XfipMu2ilk8cwUZq8GA/5Dl3tvRptOCZ7485hyuvPkxF?=
 =?us-ascii?Q?t4TBVbBJI9zTSKNY2g1RilrVuMSM0ednZqQWSc/1f/sMUu5cskZGNPnwJyo2?=
 =?us-ascii?Q?T4/flOOsbNFkxnN6Iw+OrmlRTtXoDqBBLiEFUkuxKvqCzjK5k0+k0uIluVzc?=
 =?us-ascii?Q?jVnfGblF9n3iDIvB4wfEpgtj4Hi2ML5jt9Uk8m+yCnAR5gK1qJ3amuBKGlWq?=
 =?us-ascii?Q?Cr6OODX6HQIKh/u0OroGci+c1/fwFOB/skm81BREYQYysyfWTyLM6qbvF+LM?=
 =?us-ascii?Q?20h3NBpebU/z0umFc+1GHCOrABLtFFO8uaScXQUPOgwMdk1FWPbhBAKmzMWt?=
 =?us-ascii?Q?PM4UL4CJ76n3jzkM7n9t2eMNuxQUrTpOK7jfmxLvquK9LJEURUnkkUuJEitv?=
 =?us-ascii?Q?asughLfParsdTkHQd+5IzNoS8H6QK+h/4egOJT8Em/LuIZL7w1fAQ8ep/KYZ?=
 =?us-ascii?Q?MS9QApnk0CKdMe7KeWd/oPBRBM7Lwtfr8CBEj10sbYiHHuZwdq3vnLm4XHZ0?=
 =?us-ascii?Q?rvRaGgI4kSY2cKV80w8kS8I+ZGQ7hvYG/31YSb9S9x74k8RdKM1fJICA0QXL?=
 =?us-ascii?Q?Veo1mXdFHvI5fTOD0L67W+5qWLHkOZMUfmI+RElrlG/6PYTf6mxg5A6bsvHV?=
 =?us-ascii?Q?py1vIu0mAUHqd2Dswfjg33h1EYIf2clO+r5vhalyQoimTtUzyTh67ZWdreCK?=
 =?us-ascii?Q?HRs1HLVn0Wrgql9JczmHQt+Oeu7HyGAYmvB0553cnLFcsF5MtUdgZl+JmDku?=
 =?us-ascii?Q?k+08maDJAVjKPRaxHq3ei+F4/zxc5AjUitsUpRCQgANdlVupQkhK4ivgcgcQ?=
 =?us-ascii?Q?hLbH20Z4AYU5G+KFFZJtQQ8kBnWJB5mEuDwDksu9GygvRbmUSJ+9IsBcskQc?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a65cea2-c75f-45f1-ee1c-08db63b87704
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 22:26:52.8091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fiawKCkACOzjIrQT6k969OHWSUH+mPUfetGeI4rxfFNjACQWuFEoLbt2PvLmyWCYcUGTAkUSCqxquHEDwuOZ8N0z1AFKoPnRMq1jfmmt94U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8202
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: sync I915_PMU_MAX_GTS to
 I915_MAX_GT
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

On Fri, Jun 02, 2023 at 02:40:22PM -0700, Matt Atwood wrote:
> Set I915_PMU_MAX_GTS to value in I915_MAX_GT, theres no reason for these
> values to be different.
> 
> v2: Change name of I915_PMU_MAX_GTS to I915_PMU_MAX_GT (Andi), Change
> I915_MAX_GT from 4 to 2 (Ashutosh), Explicitly set I915_PMU_MAX_GT to
> I915_MAX_GT (Andi)

There are too many things combined into one patch here.  The headline
and commit message make it sound like we're just changing a PMU-specific
define, but now the real functional change is that you're changing the
value of I915_MAX_GT, which could affect all the code outside of PMU.

Renaming I915_PMU_MAX_GTS to I915_PMU_MAX_GT is a general cleanup with
no functional change, so that should be a patch by itself.  Changing the
value of I915_MAX_GT is a completely different change (that does have a
functional impact) and should be a separate patch.

> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h |  2 +-
>  drivers/gpu/drm/i915/i915_pmu.c |  2 +-
>  drivers/gpu/drm/i915/i915_pmu.h | 12 ++++++++----
>  3 files changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index f1205ed3ba71..c3923f52ca56 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -314,7 +314,7 @@ struct drm_i915_private {
>  	/*
>  	 * i915->gt[0] == &i915->gt0
>  	 */
> -#define I915_MAX_GT 4
> +#define I915_MAX_GT 2
>  	struct intel_gt *gt[I915_MAX_GT];
>  
>  	struct kobject *sysfs_gt;
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index f96fe92dca4e..d35973b41186 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -132,7 +132,7 @@ static u32 frequency_enabled_mask(void)
>  	unsigned int i;
>  	u32 mask = 0;
>  
> -	for (i = 0; i < I915_PMU_MAX_GTS; i++)
> +	for (i = 0; i < I915_PMU_MAX_GT; i++)
>  		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>  			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>  
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index d20592e7db99..260a39aaa06b 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -38,7 +38,11 @@ enum {
>  	__I915_NUM_PMU_SAMPLERS
>  };
>  
> -#define I915_PMU_MAX_GTS 2
> +#ifndef I915_MAX_GT
> +#define I915_MAX_GT 2
> +#endif
> +
> +#define I915_PMU_MAX_GT I915_MAX_GT

It seems like this just makes the code harder to understand.  i915's
header include spaghetti makes it very difficult to see easily whether
I915_MAX_GT would actually be visible here or not.  If the other
definition of I915_MAX_GT gets changed in the future, then the value
here may or may not stay in sync (and may even behave inconsistently
when included from different .c files).  It's probably better to either
leave this explicitly defined as 2 for now to avoid any ambiguity about
its value, or move the single definition of I915_MAX_GT somewhere that
can be used more easily everywhere.  The display code has an
intel_display_limits.h and it might be worth considering something
similar for GT-related enums and limits.


Matt

>  
>  /*
>   * How many different events we track in the global PMU mask.
> @@ -47,7 +51,7 @@ enum {
>   */
>  #define I915_PMU_MASK_BITS \
>  	(I915_ENGINE_SAMPLE_COUNT + \
> -	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
> +	 I915_PMU_MAX_GT * __I915_PMU_TRACKED_EVENT_COUNT)
>  
>  #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
>  
> @@ -127,11 +131,11 @@ struct i915_pmu {
>  	 * Only global counters are held here, while the per-engine ones are in
>  	 * struct intel_engine_cs.
>  	 */
> -	struct i915_pmu_sample sample[I915_PMU_MAX_GTS][__I915_NUM_PMU_SAMPLERS];
> +	struct i915_pmu_sample sample[I915_PMU_MAX_GT][__I915_NUM_PMU_SAMPLERS];
>  	/**
>  	 * @sleep_last: Last time GT parked for RC6 estimation.
>  	 */
> -	ktime_t sleep_last[I915_PMU_MAX_GTS];
> +	ktime_t sleep_last[I915_PMU_MAX_GT];
>  	/**
>  	 * @irq_count: Number of interrupts
>  	 *
> -- 
> 2.40.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
