Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A6356AA1F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 19:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60154112939;
	Thu,  7 Jul 2022 17:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DB9112939
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 17:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657216679; x=1688752679;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mFkpS0g0Uw/0e4MZfoHcQnbMH6HpozwWVWVJ43m3VC0=;
 b=crj7AWIPOz5g32+0OvFbNVvRT7r6eORmiMyzw0yHEO9RxbRvyks9rstA
 5fRHVuyIu0/+26RiZSrCz8R3+isH5+tln+7XvPWhkB3M+E1Do0CUhoNcq
 PDmktaSLX1I8C0gbPKce8CJVuL6PcyhtWu+VzN/GdwVUbRy6h9lczDEjJ
 GZVugx2NRjnQvrp/l008YCYWXKAjYwxmPvsdyEJZj8PoxpsvkIagx4WOI
 668ZL82pi0aVldt3OHm+HbRyjBl4rF9gGyIhe6ytXIoRB+s1SiayRk6Qy
 BP6hnvLnNTjwnVe9/ZP385w0UKpHRWk02kMLm79V/+mV38Su6ufQnBLNE g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="370402582"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="370402582"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 10:57:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="593828204"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 07 Jul 2022 10:57:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Jul 2022 10:57:58 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Jul 2022 10:57:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 7 Jul 2022 10:57:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 7 Jul 2022 10:57:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fN8ec9AL2HisEfK4bbkhyFc8BYVq69DUahqYX3F+mzVf5+klvoNEZUBk4bwXnjE95A/2BLk1qBAZPcOCc4d5EoPlZBywON3J/Op3PMeKCaEo8MeDp/Oo/cmCRv01S3dQleb/41ShJXg/XAjCbxbHetfJbpt+TWOx6Z0biXkb59tk1DZ5GeUvwpnXADSlTAYLYfNgehiSZ1+V9W1bpYagSyZmWsY+XExD8bMTSS7ZQEArqZvmvct0CuznvxkC4Wn3T+B5aYwNUkR1Tzo60yjBZAkykjjSLkffOTp17ZmPY3yZpSXKi6qoQleyXjdJRe5PgiTXss7LE0PeJbypCu5ReQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qUNddOcWq99VtWWhtnfF0x5u2toDrOp9Ib6EU73MpRs=;
 b=jV3mIAinTeTXU/cnf7Krq9kVp01SB9LQiFbnvUlUyTEHX0SgIWBdhUxZ4UmkiBM6tMNsSuLDBC9p8MloOVmyuW6O6l/rOR0/2W6ydRA7ZPJ8dQT1I/bNjQSnxHh6OrK6H5wpfwsA/n+OYYDrGHoDa59E5dARymx5gDjbmb51wYX8Jx9zKLs8QA11WCE6EYmOjDD93VjDAzIHX+0UBMObspWxC8gpb4PFFas6+ZhtRDVmEuC+/PjZBstoEwJOZUbdLcIlBZDI5eaIFbNU5DYyZtBKUxXPk86aWFMbxSGKG/Z31nmX6IiZZEYcnIlaH+LrL9GR2dqznv+QqjymRYJTLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BYAPR11MB3013.namprd11.prod.outlook.com (2603:10b6:a03:8b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.18; Thu, 7 Jul
 2022 17:57:56 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5395.021; Thu, 7 Jul 2022
 17:57:56 +0000
Date: Thu, 7 Jul 2022 13:57:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <YsceoP5CYySLWjJk@intel.com>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
 <b0d575e51f795d0b19ca93fbf3e796a747c961ab.1656911806.git.karolina.drobnik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b0d575e51f795d0b19ca93fbf3e796a747c961ab.1656911806.git.karolina.drobnik@intel.com>
X-ClientProxiedBy: SJ0PR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::12) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f555701c-9797-473a-59e5-08da604238ae
X-MS-TrafficTypeDiagnostic: BYAPR11MB3013:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WFzv9ep3dZkNWoNyiyts2/wHcdgmrZcNrj8ReTYUP3ldyC2R+ykL2ognGxm7qcExpL/+SZr7u/9Pq44zfQrU0FNEaSQhe/1PcDYgsfi7TUmr2OkzmmxoIVicEF8FIuzXetLQTAo/nWIJKWmWoW4WhRgL4u74v6g8g5nzrvYKKdO/GZAHWWXdKIfIMycJfuz/eljDjCP9NTDEIpGo98KgulPxGwrhVPyvoeW41t7kZZL8owcxhctXmV8oUIfgsYSwqmkGTtCMBH6VVik3pisTGSW/Wufs8T7F631Pq4TLmCCUwFq0jbaM+5iAz8URCKHBZEoMlzmE0l8m6qBqnGVu0v6dA4/l1zvbLn1FG7SUpaEGZI3PmBTocad0C2v3DUNAsONwFV00aFDGHPN3nBdt4YZL8qbGeyyw3vAmwKAtmES6me7AML+8fhiAQU6YHMMsHmYZ/Pw5GL+ZU4wsUT0NrrIzdG5hHSDz8TJGB6R9I284R7agxUj0Jcb8K/m4kYhqWyzz0UH0LOMqkcmnW9M/+hZrm27uUcj4f2nSrLRrtvzoAXxK3tM0vVATwgk3LXpmDSgdRPWJkGT3tz2HzbcJll5r+twDTIFO9XsIe57UChAFqPcntiCQlo2LzrxoOgvmbOgh1deyjukHT4oUK4VHVSqO48L/Yky+s6D5M/So1hyqK0xqG7fHgnAcskqfnrn65ridjU6vL2rmuwL/A8yc9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(396003)(346002)(39860400002)(366004)(966005)(6486002)(37006003)(6512007)(478600001)(2616005)(8936002)(4326008)(316002)(41300700001)(5660300002)(6636002)(26005)(6862004)(44832011)(86362001)(6666004)(6506007)(8676002)(54906003)(2906002)(186003)(66556008)(83380400001)(66946007)(36756003)(38100700002)(66476007)(82960400001)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fORx0yp5IqHMqgrQhe/vZKMmpmWxSJi5uTu9PuYX4ywQS+j3w++qFppecjY8?=
 =?us-ascii?Q?C/xLl3+7O9MQ4ArTfg5E6zXbJ6tNCtdJfvF85Z0LoY1Voxs9FxwN197E6ZyE?=
 =?us-ascii?Q?EB9D7VaBeNxT0Oub/xU7H/+DMiPcqmpHUrQQxZiuSnV0tWBUg3YYkfvR+C1K?=
 =?us-ascii?Q?cdntKGiwLp1Hi8CS9qQ2Ur2YEJ4HhcN4qiYk7SkVyDnSZnQXE/hRA6ImziXS?=
 =?us-ascii?Q?bDwiL/qvALHBL2wF9Mux4u0r97BVek06CnhNkm6zN1iXLijqcOmNHeNyiR2G?=
 =?us-ascii?Q?RBg8drLxTTLkp8UyLPLZWd8w7nHxz9il2UAryrbj/SYpbUiH634mfgwsqWdT?=
 =?us-ascii?Q?7iGekxYG9Gk3nh5KFSp0lXVic23oDED7UQ07YpKduLFSbrk4xhOkQ0OuaYQA?=
 =?us-ascii?Q?V6nuyZ2A910BIIseMvB92m6ugiCM6Onp42alOVm2dIuy2G5ZrWhjNxdh+VFE?=
 =?us-ascii?Q?sCnSBpH2OMO6INCS4es4c/yOoLu5f0gB0Ow2Td7ZnbGWtWknBcOiqt+QAd0T?=
 =?us-ascii?Q?ZsA398+pqu1Kpo4nJVUXFjJBC27obvF4zLj+aMmDcJ4f51TQxZ5qzqpkVzft?=
 =?us-ascii?Q?vlADwM35ZRwD1n/EiAZznr0wvCP8Zb51ui55lf1EfEMcuqA1ZNqVn3+/3tDO?=
 =?us-ascii?Q?VA3c6dEnckqpm22QkVff2AUzQzfYeAQDHRjMR/dGS2OLvHfmK38yq6qUKSKN?=
 =?us-ascii?Q?79Xkn5RgqfJCet7jO4PtLmRAGLaVzX822aLSzp4jm7CkmhtYq7jt440fViha?=
 =?us-ascii?Q?xYzrBL5VIA40VJKrZjWlN/tURVMZyBfQKFPYJ7gHy+Y83mW7KR7668+Xiptw?=
 =?us-ascii?Q?agCCFca1yuRypFZF44vAjtPV5KURGlD8PRnn36Eu978s35ga7MX39B/HCGjG?=
 =?us-ascii?Q?FXBupJMB6Kxwdl9W8tAQhj2/OksVKG7vrtM0q7K9u4MprPYZyuLXp52Dkv7A?=
 =?us-ascii?Q?nuG1jiODXHE9MHk3GkaLrXoDYUA/knIdop917lVFSEGq2oNCkRSryTYDXtE8?=
 =?us-ascii?Q?XoO5eidb5tmrKV8NdMX0uM0WWYp9r5EzN1s7Y/nVIystiaFF3MqsjAxfHjbt?=
 =?us-ascii?Q?vfHZq7h2nEwYXm+TksFvHFZ2JIagIrbb/kG+A297yBELkrOExbmjwzLlPByN?=
 =?us-ascii?Q?JDVjHXSfUwhf+vGcfd9X+wi0JtRpEtqLsXq1eU/mjUteLbKBLLobwTRAgCRd?=
 =?us-ascii?Q?ULWNzm7dA6FbfUnG8D+9KnXxli6ct3I+g92kNm82dg/FeibTvEuPKGdxZjEM?=
 =?us-ascii?Q?BQedpb/GMN9lExSDqHF1y/4DfyTDUkFVrzL6+gTBaizX7Xz2KQHwcaikF3dG?=
 =?us-ascii?Q?dLtmye1Z5dfQM5GfCfdUGoYF+T7maI9aQEvyVKQUOiOu4DToItrayBjcYtc+?=
 =?us-ascii?Q?aqMNVHA3QATKuxWVkyAA6C8mUNSfCZfmzniGBFc6MrK4ZjiuR1v37wdVR3W2?=
 =?us-ascii?Q?f618FxwlxWASkCjT5igW7fZdGi9ETNd2eug7knsQxAih+p7iUcWvWviqwxaX?=
 =?us-ascii?Q?skBBX/s6cWXNUWEYrN2IfSWkpxzn17Uj4+gWGp5HWe9CRa/P1iIelOED9/x4?=
 =?us-ascii?Q?TdI4NbpAm13d6FXAZNhMRxHvqzgJwHA6xQBv0L7DhfOV5hhrHwfHSle5LIZI?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f555701c-9797-473a-59e5-08da604238ae
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2022 17:57:56.5165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jeEMT/VfsZ7LYsjhviUs+B+qox/0sBDPgI7VxUH/gKJ4Jx21x9th76U/5OGlOAN7HaQLqjJdW8dbG7/U1U8xsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3013
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Look for waitboosting
 across the whole object prior to individual waits
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
Cc: Thomas Voegtle <tv@lio96.de>, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 05, 2022 at 12:57:17PM +0200, Karolina Drobnik wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> We employ a "waitboost" heuristic to detect when userspace is stalled
> waiting for results from earlier execution. Under latency sensitive work
> mixed between the gpu/cpu, the GPU is typically under-utilised and so
> RPS sees that low utilisation as a reason to downclock the frequency,
> causing longer stalls and lower throughput. The user left waiting for
> the results is not impressed.
> 
> On applying commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv
> workaround") it was observed that deinterlacing h264 on Haswell
> performance dropped by 2-5x. The reason being that the natural workload
> was not intense enough to trigger RPS (using HW evaluation intervals) to
> upclock, and so it was depending on waitboosting for the throughput.
> 
> Commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> changes the composition of dma-resv from keeping a single write fence +
> multiple read fences, to a single array of multiple write and read
> fences (a maximum of one pair of write/read fences per context). The
> iteration order was also changed implicitly from all-read fences then
> the single write fence, to a mix of write fences followed by read
> fences. It is that ordering change that belied the fragility of
> waitboosting.
> 
> Currently, a waitboost is inspected at the point of waiting on an
> outstanding fence. If the GPU is backlogged such that we haven't yet
> stated the request we need to wait on, we force the GPU to upclock until
> the completion of that request. By changing the order in which we waited
> upon requests, we ended up waiting on those requests in sequence and as
> such we saw that each request was already started and so not a suitable
> candidate for waitboosting.
> 
> Instead of

Okay, all the explanation makes sense. But this commit message and
the cover letter tells that we are doing X *Instead* *of* Y.
That would mean code for Y would be removed. But this patch just add X.

So it looks to me that we are adding extra boosts with the code below.

What am I missing?

asking whether to boost each fence in turn, we can look at
> whether boosting is required for the dma-resv ensemble prior to waiting
> on any fence, making the heuristic more robust to the order in which
> fences are stored in the dma-resv.
> 
> Reported-by: Thomas Voegtle <tv@lio96.de>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6284
> Fixes: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> Tested-by: Thomas Voegtle <tv@lio96.de>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_wait.c | 35 ++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> index 319936f91ac5..3fbb464746e1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> @@ -9,6 +9,7 @@
>  #include <linux/jiffies.h>
>  
>  #include "gt/intel_engine.h"
> +#include "gt/intel_rps.h"
>  
>  #include "i915_gem_ioctls.h"
>  #include "i915_gem_object.h"
> @@ -31,6 +32,38 @@ i915_gem_object_wait_fence(struct dma_fence *fence,
>  				      timeout);
>  }
>  
> +static void
> +i915_gem_object_boost(struct dma_resv *resv, unsigned int flags)
> +{
> +	struct dma_resv_iter cursor;
> +	struct dma_fence *fence;
> +
> +	/*
> +	 * Prescan all fences for potential boosting before we begin waiting.
> +	 *
> +	 * When we wait, we wait on outstanding fences serially. If the
> +	 * dma-resv contains a sequence such as 1:1, 1:2 instead of a reduced
> +	 * form 1:2, then as we look at each wait in turn we see that each
> +	 * request is currently executing and not worthy of boosting. But if
> +	 * we only happen to look at the final fence in the sequence (because
> +	 * of request coalescing or splitting between read/write arrays by
> +	 * the iterator), then we would boost. As such our decision to boost
> +	 * or not is delicately balanced on the order we wait on fences.
> +	 *
> +	 * So instead of looking for boosts sequentially, look for all boosts
> +	 * upfront and then wait on the outstanding fences.
> +	 */
> +
> +	dma_resv_iter_begin(&cursor, resv,
> +			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> +		if (dma_fence_is_i915(fence) &&
> +		    !i915_request_started(to_request(fence)))
> +			intel_rps_boost(to_request(fence));
> +	}
> +	dma_resv_iter_end(&cursor);
> +}
> +
>  static long
>  i915_gem_object_wait_reservation(struct dma_resv *resv,
>  				 unsigned int flags,
> @@ -40,6 +73,8 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
>  	struct dma_fence *fence;
>  	long ret = timeout ?: 1;
>  
> +	i915_gem_object_boost(resv, flags);
> +
>  	dma_resv_iter_begin(&cursor, resv,
>  			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
>  	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> -- 
> 2.25.1
> 
