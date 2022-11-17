Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8045262E105
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 17:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B33FF10E64A;
	Thu, 17 Nov 2022 16:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062B010E64A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 16:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668701195; x=1700237195;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rIQMDLb0ooCGbHB01CpWHkMpdVOJHUZg9ptVCAZnJDk=;
 b=hGWXF9xmYVH1SDqtyY4TTjk6Am7udPOElV+LMOKBPufZF5KhyHSjy77+
 Q5NrM2FOHi4N30JFb2DBRiqiA8aeclILbpQ3BD+s/k1o1qvlzMyMoocJE
 Ow9wLEM88x4HbB0t+C6QugXEEV4kobzNt5PVqt0srOjP19IwywNtuTK0g
 c5hbc0Qn3v42j7Gq3F2JaUfJ8+s3M9oeWJJS1nkbwA2Nw4Vut2S7J2aj4
 3hV21OQ8T8GVv48OtwyI1UwRRY5NC9yUHTPtzMU9htk11a5/hYTSdG9vx
 9R73gFRYrYHWltpIdqv6WzKIxlEb7JPrLl5CG92qSMxexd79oPjM+WAZC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300424197"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="300424197"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 08:05:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="617660179"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="617660179"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 17 Nov 2022 08:05:07 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 08:05:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 08:05:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 08:05:06 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 08:05:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ixXwpa9zawNCpUzNCiYG8lmE/WdS1kWEz07S/6Uq5x/86vVpdrH7sy2SYtM/nmDna8udH05p9e7ql/FH6GSEGVIFJPx2Y2ICdcZ4YsslD2PqXWw/HM86sBzj8mpJF9rWGGWB+f7w1EPKV4mVia+n4P8i9XYt/7dtSWYi/opa1ykZEQBAUwd0//tEYqTjK9U1iuC3HU3oKFtjRQQ4f+TRz/dEwPhPt8md9LyO6yDOcV3oAJzNJLQfmw6tu3qdxAwtdWOHGA4kwL01C1WWfW9jI4koWzgqLxb3RRmAhGNlEIVHdqxPXIjbAEjheQYDfK4+mda3b85PZUitOMLmznUA9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zHqICtGmcT+Mu6d7mUSre6yMPQjgug4YVpkv9UFO5R0=;
 b=m8kvNleVG+SQSxe8v13lvcoJTCUqSJMEERk9CyfnHANCVuAkSV3oO70/ZsfG/CSInCW9fzuScjI7GgfmCqGrHdQQE+2UcZcywCiGY0a7fAf+DxM5w6oPFSk1j3F6vQGgxzv3/Tau2uOPSmLI90ZIqiooYvK/Xs1JLKePHxKmv9Vn95fv2nzbenSqbnJG674ViTUPgedIqmRdX2N4UcXjrkC6FDgvI3Ei8DS8VJvi+GiPhZv7w8Nn0NnTqS2Eh/IClHWwk/lub6IzT/ddljBrbsRNYVGR6OOcAHuBDX717wgN/46+LLkcypMH58LGA1yg6aHTnxuBd0Fc6kngN7CZ7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Thu, 17 Nov
 2022 16:05:04 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%5]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 16:05:04 +0000
Date: Thu, 17 Nov 2022 11:05:00 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <Y3ZbrD/aCf58QI0+@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-4-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117003018.1433115-4-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: SJ0PR03CA0089.namprd03.prod.outlook.com
 (2603:10b6:a03:331::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO6PR11MB5651:EE_
X-MS-Office365-Filtering-Correlation-Id: cdd88e5a-a344-4611-7e29-08dac8b57d10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +ugO49dzZzD5CxFeL1vjFl8vIV1HUdqqRb0taNrexKSOJSzRrlwiESSeB85hWrRQ58dzjtu0rJcw1Qd02lRUz5yIvzB8ohXjTKJKPylRyE4yT049auXP3b0dBDWDlKkwcApPpRtckwwAkH76+MRyzmNGg8i22pN5dqgVJZrA+yG/6d70l9mpC8jj3NXHzlFHg4wI83TQB9oVDyLXMv/qj7OsLIhyAgumAbw3Fbv2m4kn9uuweJbqOqOmFQb/LBvln4v9ZkAgjaREr48h14ROY9A1D1NUfRWcTrTCf0Ak8z5jDUYWIpDFM0PPStGldhGsaDPAb8qkFqXHdfQAHi8uHOLcJzXqD5r0KdnbGNhFN1wOxOmWnsQnmof4quwRKFdMPUhEaRq2jcDNsKGzb7mi8Ar2oz2LsLOXMTK7S4KIBNmvndmCAwhEExhA46r7M4gdhdUTBjHI6QMFJAEitJjKNQ5bTU8KQG6V6/rDf2BD+mAiHe3AZ2DF4waIb91Xb4rad7u4Au+raVP2QbGDfqWTQVjDzY4YBrPFi6uln2osNJRhzW74+9UzybUtMY/ab0A38F+T8bco2DT/15HQsTCQ3ZPp1cv4g5N8eRKxSfFHs4Zylar3gVTAfJT4jFb85Kh1xDZsgvCBh4T+Wy7Jeg0q2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(36756003)(86362001)(186003)(6512007)(38100700002)(6666004)(6862004)(83380400001)(6506007)(2616005)(478600001)(37006003)(66946007)(6636002)(66556008)(66476007)(316002)(5660300002)(8676002)(4326008)(26005)(2906002)(8936002)(44832011)(82960400001)(6486002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k9l2+agG/erBcR3E7ouMX7oyCBOdGAe6yKmgJRRzGI/ZijoJrQDkrJh8OnFp?=
 =?us-ascii?Q?2xEFoe0X8dgNI2VhlrwoRtqMh8u+4fzBPw7j0WuptEYcyrLc4khljESqGqJ7?=
 =?us-ascii?Q?3WOSR8yjv8EzLX8OJfeRziWi2vrL26Yhfexllyj+ANLyM0gWIlTaukTxv9TA?=
 =?us-ascii?Q?LgFFdBuUV5D844oCZd2tA9Y02/iT3U2RIscME2wP3jY8LKGei5RoR8lxYfTW?=
 =?us-ascii?Q?a/GEb4u4w/YN+y03nKkJoaRi/mfUVhPMGV/Ewm0J4pblehhO4B8xntSxDQqa?=
 =?us-ascii?Q?s/BeL/EG8OqveJyrQGfMkKrk4fQe7CAP888Mris1yDKHv9DnYdZVn6O2jKbJ?=
 =?us-ascii?Q?Owfjm3mHvTvB9Y+uCHqnoCSzJNX2dAASKAVr5C85QaeQlzZSx3nEqNmcjFG9?=
 =?us-ascii?Q?sZT+2zyqHtS+yDomNiFl8UbDEGRlohGZuRd5CWODDT6wJ0m9hq0iXuHxfClg?=
 =?us-ascii?Q?O0KZt+oo0AHe0Uh8zHJtCV3Rre6vGf5tk0vvt7Aw71RDM5Li5NS+mPXP0NDt?=
 =?us-ascii?Q?XaLk1Y03ahpkCtdRTtoANWFHI+342fZRzs8Ptdo8gJRiXceQAvhQQQdhFZ9z?=
 =?us-ascii?Q?klohIZ/+E9eMC10brCYASlgxxOe2fOG6Zh8iDExwGTTDM4YQGUGIHVXLDN52?=
 =?us-ascii?Q?RTYkg0qIBD27iT7T58cGGdG1sa7mlOL48aGgk53JieMTf3Q++BUdCySSk2V2?=
 =?us-ascii?Q?JCj7apCMIautKoHTSFxlH1+RyNVJsmfayQJfQDsT3vSPLbk9wFDhxp2sSOOo?=
 =?us-ascii?Q?7LSpoMMm9PexKsnhVTc3mCyv+SSZg8soDypNwMj2EcgDxjCvjcPI2qXGDbTx?=
 =?us-ascii?Q?tzfhnSB8dnhPWxNmCrFesll8X72rma1sT6iPv3xsnOa5t7vQTtxCjwWX26+3?=
 =?us-ascii?Q?KKrpbT+06NH7QMEPxBhvHSzgqD6sZr9ENjzh+IGpuf6Q6HB20hZfGOJ7gp26?=
 =?us-ascii?Q?HUBvwpLzbxQv7DBD2ca5Qn25JsvMmQuaI4HLFhjQtFaiHYICvQNvGS3I0hNM?=
 =?us-ascii?Q?4kixZeQiW3KbZX74gggzKHY0hQPr//b+rSDy/RfU5ybip+iUQHOJM1EFQOq5?=
 =?us-ascii?Q?6lnYBwkmJd6E8vPCMz9FQi/G6s1TO10WvkhsYrMk9ZTY0Ci5bdxpW1pSbkui?=
 =?us-ascii?Q?Idx5n6/T4JOH61WUenfZQWzrM7KvtCHkdUbf3rtzgLQXdSJ+gHOkKHE+5gnK?=
 =?us-ascii?Q?Y/A2dfbIPZ0Kvn0FdiAVv5yBYVjjkMNtqij0gEDo7d/UmGTyM35iRhno4Ua+?=
 =?us-ascii?Q?QxOAp8zzhpDh51SzEuQlgNJt3EMoHaOi1BluOPLaY+eON4pfRrdGSKOcqJ/K?=
 =?us-ascii?Q?wLVFxe5rcZX26cGAML4kVT8YqZi6k9O+BLIqOM+AKW4CSx64XYZHc++KdVDT?=
 =?us-ascii?Q?HXmo+yBho+dgBOPe7M36UW0lKKnx7mbiSwkvcM1VbK4KVACUg93aiI+j6bpB?=
 =?us-ascii?Q?D7ObWMHAzQz7sxwMgaJyJeFGGtcq99VH5+y9BuOovPHv8QfHCXlmJ1F+QPCO?=
 =?us-ascii?Q?qx+D8DOUOwjLWOhAgyBAJ0eBK+c7ytiL3kwzPjUiRqK1izPIbZdfcBP52uMX?=
 =?us-ascii?Q?LL7RoO3X5LdyLyEDpq9SlIekcafu1z6KCPxQVwJe?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdd88e5a-a344-4611-7e29-08dac8b57d10
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 16:05:04.6102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iEJE9dtjbpNx7nysocrsJ52Pq0zCkkXuucFVKxAa2a8Wy9EY7TIwF+znv3gnj+L1MWZYO9ZiyPPNbJs/IdeeDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5651
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 3/6] drm/i915/pxp: Make
 intel_pxp_is_active implicitly sort PXP-owning-GT
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

On Wed, Nov 16, 2022 at 04:30:15PM -0800, Alan Previn wrote:
> Make intel_pxp_is_active a global check and implicitly find
> the PXP-owning-GT.
> 
> As per prior two patches, callers of this function shall now
> pass in i915 since PXP is a global GPU feature. Make
> intel_pxp_is_active implicitly find the right gt so it's transparent
> for global view callers (like display or gem-exec).
> 
> However we also need to expose the per-gt variation of this for internal
> pxp files to use (like what intel_pxp_is_active was prior) so also expose
> a new intel_gtpxp_is_active function for replacement.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         | 14 ++++++++++++--
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         |  3 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  4 ++--
>  drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  2 +-
>  5 files changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index c123f4847b19..165be45a3c13 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -271,7 +271,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>  		 */
>  		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
> -		if (!intel_pxp_is_active(&to_gt(i915)->pxp))
> +		if (!intel_pxp_is_active(i915))
>  			ret = intel_pxp_start(&to_gt(i915)->pxp);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 88105101af79..76a924587543 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -87,11 +87,21 @@ bool intel_pxp_is_enabled(struct drm_i915_private *i915)
>  	return intel_pxp_is_enabled_on_gt(&gt->pxp);
>  }
>  
> -bool intel_pxp_is_active(const struct intel_pxp *pxp)
> +bool intel_pxp_is_active_on_gt(const struct intel_pxp *pxp)

if we are asking about the gt we should pass gt

>  {
>  	return pxp->arb_is_valid;
>  }
>  
> +bool intel_pxp_is_active(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt = i915_to_pxp_gt(i915);
> +
> +	if (!gt)
> +		return false;
> +
> +	return intel_pxp_is_active_on_gt(&gt->pxp);

> +}
> +
>  /* KCR register definitions */
>  #define KCR_INIT _MMIO(0x320f0)
>  /* Setting KCR Init bit is required after system boot */
> @@ -287,7 +297,7 @@ int intel_pxp_key_check(struct intel_pxp *pxp,
>  			struct drm_i915_gem_object *obj,
>  			bool assign)
>  {
> -	if (!intel_pxp_is_active(pxp))
> +	if (!intel_pxp_is_active_on_gt(pxp))
>  		return -ENODEV;
>  
>  	if (!i915_gem_object_is_protected(obj))
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 3f71b1653f74..fe981eebf0ec 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -19,7 +19,8 @@ bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
>  
>  bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp);
>  bool intel_pxp_is_enabled(struct drm_i915_private *i915);
> -bool intel_pxp_is_active(const struct intel_pxp *pxp);
> +bool intel_pxp_is_active_on_gt(const struct intel_pxp *pxp);
> +bool intel_pxp_is_active(struct drm_i915_private *i915);
>  
>  void intel_pxp_init(struct intel_pxp *pxp);
>  void intel_pxp_fini(struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 4d257055434b..52a808fd4704 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -25,7 +25,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
>  		return 0;
>  	}
>  
> -	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active(pxp)));
> +	drm_printf(&p, "active: %s\n", str_yes_no(intel_pxp_is_active_on_gt(pxp)));
>  	drm_printf(&p, "instance counter: %u\n", pxp->key_instance);
>  
>  	return 0;
> @@ -43,7 +43,7 @@ static int pxp_terminate_set(void *data, u64 val)
>  	struct intel_pxp *pxp = data;
>  	struct intel_gt *gt = pxp_to_gt(pxp);
>  
> -	if (!intel_pxp_is_active(pxp))
> +	if (!intel_pxp_is_active_on_gt(pxp))
>  		return -ENODEV;
>  
>  	/* simulate a termination interrupt */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> index d3c697bf9aab..c25c1979cccc 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> @@ -86,7 +86,7 @@ void intel_pxp_irq_disable(struct intel_pxp *pxp)
>  	 * called in a path were the driver consider the session as valid and
>  	 * doesn't call a termination on restart.
>  	 */
> -	GEM_WARN_ON(intel_pxp_is_active(pxp));
> +	GEM_WARN_ON(intel_pxp_is_active_on_gt(pxp));
>  
>  	spin_lock_irq(gt->irq_lock);
>  
> -- 
> 2.34.1
> 
