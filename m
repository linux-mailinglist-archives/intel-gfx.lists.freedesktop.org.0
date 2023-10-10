Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C7A7BFE9E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 15:58:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D94210E37D;
	Tue, 10 Oct 2023 13:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12FA610E37D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 13:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696946314; x=1728482314;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LwYMKcLh4J4seEugkiONNJBs71mUh4R5cRC4GqISPmU=;
 b=WHHALzhbxXlypzODnV9zXCyQ7Yoxs3S9rnlO+4xNwG6aZpa76yJYawa2
 me6YHB8JNnPGVC+0U/QPYEYHfYp0495BA0jNE7djsg7l6yo/kZGEF7SLH
 wtWgy7a5XSwJVSb/edWDH0DOtF7w/gpXuUwEmsvXSmGaGJHbSYUKhY2aE
 DkpHtIUbsNY4YogW8Vg9Dd710KJyKY9Us89CQ/arL6NxLWbiB6gdpT8ve
 /FDZnLU0m7WsSHG2xb4aYCqjCw8QnHVwMSKxFZ3lxwwah0ELGqnJ8XKQd
 61ZteBpyVcLEoaSSzGWMSxMHT5Wz/jsqsBWGuLiAlmkL8OhNhz1xYVpes w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="369465389"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="369465389"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 06:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="730098625"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="730098625"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 06:58:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 06:58:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 06:58:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 06:58:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fuDxhw1WkazlGVrTcoSO6uJRlsuBl1QLtF+kH5QIDbz005sEbgVlvh5Ii8HrYGdGZyGWI5s5BGrEx/wH/JWVlShA1uwsAG7oAuWMrfLb1CZWZS2Fpiata5A79HDnl36aRZAYQcW5LmYdOnRSC+95mdd5UWz//4BrX/yU2/HlZs7Rrxx0TIt9lU++YHbNy/H74GT82JgU0IVs/EmrijN1O7YFvf0xv+mhE4z+zXSPl5UPRDASKHM6DKr4NTO2Zr2tP5PiHEEp0pThu7CiQP0JuuWnSpjbHM5g5C3HIODXTqVcF7naOiULEg/eiFkZd7Qe9D4Z0t0JbEPZTdvl8hX1pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P9qUfKmHdNxA14cGFSDweXcxc/4wleqW5zX7uQ2UNBw=;
 b=SxnVW1zk/9ThvnD/LEe+0BMVMrWUjBqTrZjidMIVi4VqBl7H0Q8AvkZELS9/uWok3ecJ/6cINEWV0Pc8K21MHqM6zaE87alDwEzp5itcaCUZNCOQeiqBgycgFtR9plngjo0AhTyu4QyiMD5YbTNgeQBPBiTry015ET1YgavSWQg/X/CyzN7ggJorgSa3fZAX5JFaxi3Zs4zkqUFjUZFEp6PHUiMXwa1Sv58OSuoWijTImGHyFmzUekvc1f8Vk+an/N6IglbZBqH94NZm38pbiAqysTjsYXsGLSS1oVUwaQglbRwNHG4/xMZmMES9HqrjOx5kYWELtcHQw4MpOlqLRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB7521.namprd11.prod.outlook.com (2603:10b6:510:283::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.38; Tue, 10 Oct
 2023 13:58:30 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 13:58:30 +0000
Date: Tue, 10 Oct 2023 06:58:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
References: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::22) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB7521:EE_
X-MS-Office365-Filtering-Correlation-Id: 36acc021-9942-4dcd-479b-08dbc998fc0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K0fv0j64LWwMsnc9DB6fAA9bjRh4RtCtCcjLxtKyqbX7nYYZzxHq390Vn7kZQq7bWWJ0LIfEb/ZZ9iP6ibd+YcVnho1GMbYi9SY+Jt2xS3hSBOb1Qpg92PdrObsHqJBIIbCGa516S6HjUtT6NNBcOb46IKJuZxywGvMeG2u8eoLuZIiPV8LrOqNnZGvRp8izaFeC8CD0FRKC+AnXsU5iqdQl8IC7AUXrg4nZAMHuzs9oKWqDZgL9cEzIcEg908FyTqp/JCzfmnq6z2e4ODx35l67sgUFeOOFk5mz4SualKILvd3IhQYQKDAgkUQIXkN9OBDsQCYg8bA7MUbXmDEL0YuIXjLlqOpsSD4k/9IdVfDLiT+iQ2VzJAZYvwUB5AJ/LY4mbRdCrbGZk8cyOYj8u/ifkjLgMukIXf7QtnXDPBLc1Cjf3cR5dtNgWfUU2fk4h6wLjXasGKKOj3ML74Dr+r36XjDueaI5R+nCm58dwN6W6KdYE/NlPVW2I73ocqXrVe8/JI2crL5oLC8VmozPHs9aRRPO5eHjYOreTJ4i2bBGtkjl8VliB++jZ9I0Hms8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(39860400002)(376002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(6506007)(38100700002)(6512007)(33656002)(86362001)(6666004)(82960400001)(107886003)(26005)(6486002)(1076003)(83380400001)(41300700001)(8936002)(6862004)(8676002)(4326008)(5660300002)(478600001)(2906002)(6636002)(316002)(66556008)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Nn4PZKNguWTyhQ9xJ6PfqYlsfjlL/1cF8SAIaJADxDZUFsag5PHyCjnnt8EJ?=
 =?us-ascii?Q?L4BlNgLDGU0fCV6sqX31M1ZORtS/OoNjiLAHcQ6t9iMIKtNnu9YBKkNj11AW?=
 =?us-ascii?Q?u6Zmh9C/pn7GLp7oXIEup6L2LEgFPtH8Rc7tatfM8uIPrqKt9t6wPezU9qGB?=
 =?us-ascii?Q?YHFFAuwRc8zBe/J3yARsvIro+1AzY3XQsXl/WMxbbVaF3xq8NvjgCWWPsG5u?=
 =?us-ascii?Q?dDojov7b/ZDJK03YVNMGv7juhtMPgv6qWqMw79FL6CROKvdIg4vh2E1TmrSp?=
 =?us-ascii?Q?hUvPpOhb2+gxF1eJf6ejA6uNLND03vBwMbI7Cb9dCa5h/UQjD06Nxr73rpak?=
 =?us-ascii?Q?LbJvQdxbr9PGO58VG/cLYK58vNIVhXWOEFDrXPgc+GfFWYSCJmPxdDIpyc0W?=
 =?us-ascii?Q?yY3+BaQUaCOsDa2DZe8bthiRBKg0V+6JIVsMFiJnkgyqZVBkFaCZ9EresSt+?=
 =?us-ascii?Q?BAjE9NyYLLOrtpvZVCzCwg8Je9e+mI7Gf7f4xlDUxY+J4Nh2XLqk3ljS6AyE?=
 =?us-ascii?Q?sxgvDLg3EYPf9/ioBdCXjW7DEVeQ2MRo5vGLl0rTNCkdrZavB6HNhEWgqT3U?=
 =?us-ascii?Q?YtkThDNlg1sDEZTjYT45msP2DtvpKXjpC/YN79/i8EQjDFDkpPpdSphevAqz?=
 =?us-ascii?Q?/6uGmEDe3yS2fnXMgP4mHNl9Hba+7h5ivzt4uwmkmOss2Tgmm/JwmMOBoVHg?=
 =?us-ascii?Q?xU+7aGlLPhWCmnIgfS/3RCyQHGZGwezWUWKGm38k/wDJi5RGLmZn20RHWQ/r?=
 =?us-ascii?Q?9yrdw/Ly2p2Hi8TYOW2c7cH73IeSzq/Ba4qNLPgD5+NPKUm3EhODRCdDt0ZD?=
 =?us-ascii?Q?/fOs5dTfihKRrJGAY6D/FGGYLquvwDWInDbQafKGqJz32VFwcjWES340u4Qw?=
 =?us-ascii?Q?thj6FaW6ADEi0rkmlJgFs7lEEbfZpAKGR1IoWTxkMWtXXxdlPjyjK7wyka9n?=
 =?us-ascii?Q?fNpR8vCY9vo/5VY/mEYQdxz0++BEM/WNchDRbXlXMuwfjZgnkmsOPU3LMr1O?=
 =?us-ascii?Q?DqbweGol00yFIelUc7bHpGA8f2q75ysqWt2w0MMEf6vu6yqi3mHDNnZjMOhw?=
 =?us-ascii?Q?+ALNeXARib3lecFr7I7IQqaiQuIUtqfWf3a5Z4e4TrkxJDYdGfXwlLCz4ZAw?=
 =?us-ascii?Q?ZArRAXmMW4jBb1r0oJ9CnHDbdwMyOCtObdHtTJ1qKNdYA3/7FLeNDyqqoYHO?=
 =?us-ascii?Q?i5WAFuDFqp8pCu+uzVltJTwl2YMP4aYDNL1PdtbgTlIsRpYEESiTgrH+F20K?=
 =?us-ascii?Q?ebyIxQrAE0CtIhukbBfFPg2WRxSo4mRvI4ohgJpfn5Nn/uStAU8pZG0lyCFc?=
 =?us-ascii?Q?EmkfFxOwv1R13OUuG+yOnk3CI3a3Ine14Pk5cWGgiUlfIXJ0BRipZ+tSoygl?=
 =?us-ascii?Q?i11RviMr4IvaMtUswnkOBVRIyu5bimQgaJpJjM6ZmZGBc46dcFXtqotRYBUx?=
 =?us-ascii?Q?tSvuC1GvTarwAOXtaxxAXiV9RvXEg+7yWWXnd9T2uj0z1/aj8xGTmcx4FrnE?=
 =?us-ascii?Q?WfqEf7/1qz0Kb+4aw05w28oROKVl57/tst5vNGvXcB47Z1zj5nqmMHHXjBxO?=
 =?us-ascii?Q?oAPAPXoqQWTllWJ8mbNrPYIIJligzc3JhgxWZOwygbeOc9rlXMkzch+9tZSm?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36acc021-9942-4dcd-479b-08dbc998fc0b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 13:58:30.5214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r183C1UHCfPWme0yEL5j5YAd9pUpLp/Gi0AzgPei/yJ1P94Vu4s9CUSiwDVEawTk3X1xojgp1Sc197zdzIz40nMB8RgwBt98HyoRJY1X2zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7521
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 09, 2023 at 04:38:56PM -0700, Jonathan Cavitt wrote:
> FIXME: CAT errors are cropping up on MTL.  This removes them,
> but the real root cause must still be diagnosed.

Do you have a link to specific IGT test(s) that illustrate the CAT
errors so that we can ensure that they now appear fixed in CI?


Matt

> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c     | 6 +++++-
>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 5 ++++-
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c | 5 ++++-
>  3 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index ed32bf5b15464..b52c8eb0b033f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1026,8 +1026,12 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>  	/*
>  	 * Wa_22016122933: always return I915_MAP_WC for Media
>  	 * version 13.0 when the object is on the Media GT
> +	 *
> +	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
> +	 * but the real root cause must still be diagnosed.
>  	 */
> -	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt))
> +	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt) ||
> +	    IS_METEORLAKE(gt->i915))
>  		return I915_MAP_WC;
>  	if (HAS_LLC(gt->i915) || always_coherent)
>  		return I915_MAP_WB;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index eaf66d9031665..8aaa4df84cb3e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1124,8 +1124,11 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>  		 * Wa_22016122933: For Media version 13.0, all Media GT shared
>  		 * memory needs to be mapped as WC on CPU side and UC (PAT
>  		 * index 2) on GPU side.
> +		 *
> +		 * FIXME: CAT errors are cropping up on MTL.  This removes them,
> +		 * but the real root cause must still be diagnosed.
>  		 */
> -		if (intel_gt_needs_wa_22016122933(engine->gt))
> +		if (intel_gt_needs_wa_22016122933(engine->gt) || IS_METEORLAKE(engine->i915))
>  			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 27df41c53b890..e3a7d61506188 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -774,8 +774,11 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
>  	 * Wa_22016122933: For Media version 13.0, all Media GT shared
>  	 * memory needs to be mapped as WC on CPU side and UC (PAT
>  	 * index 2) on GPU side.
> +	 *
> +	 * FIXME: CAT errors are cropping up on MTL.  This removes them,
> +	 * but the real root cause must still be diagnosed.
>  	 */
> -	if (intel_gt_needs_wa_22016122933(gt))
> +	if (intel_gt_needs_wa_22016122933(gt) || IS_METEORLAKE(gt->i915))
>  		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>  
>  	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
