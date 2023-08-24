Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E9F78749A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA13810E59E;
	Thu, 24 Aug 2023 15:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B9C10E595
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 15:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692892319; x=1724428319;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GCWsHjU0FcyVdUGmxp1BRA4ZxEtsgcW8nII5LXEtcMU=;
 b=Jx/kF1ldPOhyslUkAeVwkqwW5OSTi60nMH5GB5tOdkkNDMhLr/pn6lK8
 +MzFVY8DAWViRgCHo84CCxHqnszqHrEtxoliaE0Suq47ygABeqDXq0agM
 MvQ57kM1LVFIVpUkFcQA+NegJN7yfcBva8F4w2L+EiWaa4QJcKPVMQenq
 9Zx3yLngprpDLbR76lQUncfQ/O30m/JAgwVR5y8J0lFWDGpFzWd9BSNZX
 SQjrK/31Itvh2cwl8XbeIG0pzpWuHZP18vOpRw+IiXO1fziBtS0o/ykpR
 e5rOkYQqnyF2arQJD1jR902xuj5biV98PpKaR/q8EruOTBEpEuqxen8qJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="354010998"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="354010998"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:51:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="1067882986"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="1067882986"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 24 Aug 2023 08:51:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:51:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:51:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:51:57 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:51:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E/Di3Hq+kSw5vx5ROCmnotQoYlaBIZwWXlH8iKmOr+4EzG5bSbIQzwljip7+r64cvQ0aoEs+InxKTQCGt2/ZAvYt+m5EMJp0VNNGCzpuVHq+3Rc9qQX4ikrpL8ULZYpn5JSNwXPA1/WpSge3kG1YutXJOPI4id7w26ei7XwDtBmRuYi+2fbSwpuo668pq0+YZkzGUmTc7rBAYFNPfhE68W1W5nq350WDjrbfKOVNC+Md47NXaYyCFq5JNT3FIalssetT6iMQxp2dOf8n8m8HuwcSsnv1M8xLoXSMDyFbgyC6pTxpOs9OKYmXI6Xp5K4HQ3cystWEhmn/y0uydz3bCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gGDbcR3PXRpkUg9Q2P6UKaRXT84hAN3MiL/36EYvQHc=;
 b=Btl53UxmoJJfDCY2rJV7Yeb3/wJXcCCYWQZ5+FFGL9dPDXdiZocc4KMNiYVqCVsvWABVJAKBRJAeyCqJUu1n50zwdozxSqbxXzbJKk916MIpVTFO+7+mlwFI8rmVJiHdwoB4gSSzqGDCX6MKt2U/dFI0rq2wGP5JePeyqncG/aKNOisWb/0QDbPWeVJp2+03oXgP1guBJoe/o+IVsBGLSKtbrC/e16RqUm+oWD76YTlTRy9CPLnIbKauy/ocQ2+xh4U4HAo7G/pHiQ09VXE5cSyiI2530vekeJMreLel9ofPDqpsJPvm1A962j2dO+9avlLau3f1m9YZuZK4BbSR7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by DM4PR11MB5360.namprd11.prod.outlook.com (2603:10b6:5:397::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:51:50 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:51:50 +0000
Date: Thu, 24 Aug 2023 08:51:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Oak Zeng <oak.zeng@intel.com>
Message-ID: <20230824155146.GR1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230822152859.1586761-1-oak.zeng@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230822152859.1586761-1-oak.zeng@intel.com>
X-ClientProxiedBy: BY3PR03CA0011.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::16) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|DM4PR11MB5360:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d0fa2ef-1212-438a-adff-08dba4ba07a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cvJNUt3UZOY8RuQcRS3zGHqsT8D8YwLTGBP6SA3T8wf8W1nTpcy/u2746M0Oo/vSJJkTpZCjzE8jP2lmB3WIkr62W4Q+fT0th+dSBCeCwdXBmaMx5Ge8OCvwX5tKWwhg3kFpLClGKVExqImZzswTiczh2hS6sSSPUHopaCXri7WCh/vFPI/ipFI6Uq59FZd/HYkb4uCrNa561FmF/h9R3a652/BJ/ejPBytp7EqeiTw4caxop9MnEU+RArkYGhpjLd1Lg6eLyDM9Q+JKWoy8VztqW3Y63O1JH0ln+JICwHu0n5/VmZkzuFr19mdEX8eHtZrj4KuZOZHpaC81BbznZEc1wPu4A8Jivi6vBsuN9lpFhjB5fm2e1o6TGvKuS7xk7l+XKVsSWrUcV8zWKR2x2N+3x6DCKtdJDtpR6OzPROGM8KyAnrimCvoy2ZNlVRpLPdSNTuDdiON5jK2+5WlMoP6bvt2TznLsiNPFhDl4v/KQfXMeHNOrMHNu1gOX9uo7eZYRy0ocJEDbAw2BxGPMahtKva4S1r3P/CCfRILSQWeU7iG+PESNthAoOsYcJOI4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(366004)(376002)(39860400002)(1800799009)(186009)(451199024)(83380400001)(4326008)(6862004)(8676002)(8936002)(15650500001)(5660300002)(1076003)(26005)(33656002)(6666004)(38100700002)(82960400001)(66946007)(66556008)(66476007)(6636002)(316002)(478600001)(41300700001)(6512007)(2906002)(6486002)(6506007)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rwzFGfjKMswQLAEk9KOlQJ8zoy+ox0dfcjqLCVDRT5XCYr2gxU3tGwgV3Sxx?=
 =?us-ascii?Q?B9H1cuz53slXzK0oi3QHN6SXnuhS+bKWVnGi5KwCzxNaPGZAvC+P/G7tDXew?=
 =?us-ascii?Q?1vqbTg2ew6QhAhbdSi61bGSo4i4psdxcNTmOwIGNDgiLPUFKXSKB/AigfS5+?=
 =?us-ascii?Q?jZNPJDdhfVsNwJdxAFUiovT7AwqkU7dvihufnkVgMhEjyQD44nwbYVsRmHdD?=
 =?us-ascii?Q?nnLfQVberhv8q7iZO2M9FLAzODHaQovlLgt2nuDqauHheF4Ng4mLyD0O30Im?=
 =?us-ascii?Q?ZuSA9VuVigOxFX92f3EN6I8+8HMeqPa8+L6ljkQusHDxOFUeukSuKEy/qpWb?=
 =?us-ascii?Q?LqzDb4dW4sRx2+a6BgUmE3pU4O5ELrgEJhvlUBToM8ZV/UehWXWu0/L1rc/7?=
 =?us-ascii?Q?xuoimen4Atn/Eji/MHF4VffLKw+uZOQ6Se4ztYHLTMWudiufshYjiCSPJdCV?=
 =?us-ascii?Q?XLdoRRkbZhF4VNvPpYgDVk/ohEVRQLW/LYkyI1w3xqm+2JGFKQAn9ACmTXkF?=
 =?us-ascii?Q?Be+8FJaB/xF8uxRSNaiMcrK5imM/vuulQ1WUSCue/ifcTH+sjFSGqkrc193T?=
 =?us-ascii?Q?0YWcCy7Mr0DfbP0NSOjj7JS48/tZco+43dzBffu60sGNVu/yVZXQ393emS3/?=
 =?us-ascii?Q?Mo5GvX9bczACy8N7hh9H++YN1lgaDYvyAHeDptoxxdQYTURzamgfmFQ4cMa9?=
 =?us-ascii?Q?mh23X/ILCFwMaUCKHb4IM6YEtFWJ7q9qy8X/5tTo1ZAqlzVy/qja8N7DLSJh?=
 =?us-ascii?Q?dO3UyOFCK1xwumetLSD/2b/Tms/MEGRoXjxO77bOrLLU2bOaAzvsSJD+qcW1?=
 =?us-ascii?Q?PwPjOhXlXHPMR26P4oCFFXJwcGe25uut1VfMpso/mHYilNDcxYnOLnVTYEGa?=
 =?us-ascii?Q?pLwI+JUWpPkAfyeUjoBJ8PEI0lWZDlSNP3S7KO4mrRVcdYrtd1ZIZRBdsCs8?=
 =?us-ascii?Q?/6hfVWviYBA/Bj7U5cvXFPzPumeM72dNrnTnbIi2BqeSBksXGN946Iqw9XfV?=
 =?us-ascii?Q?/yS4VD1eAAH5P9H3merSEGlBgW861jPGJifGlsu1cQ/H+CtFasebnBWedIen?=
 =?us-ascii?Q?0yD9mrmt5UfY9vg9PDsOA195fDl7oTJPlMoLIY6XDkRI5W0vJ03dY4A1VJ3N?=
 =?us-ascii?Q?vF0Mvkeff0dD5FZCE9Z/pw2/j03d5xAbpws/vxkX/no2bG6CKldNA4Q4Nw3R?=
 =?us-ascii?Q?jX6igMAjU/9uBRUZyKEaGKpRy+YJFgiitGu/WT7BDvtZmAspRYJTJ3ZkCXcY?=
 =?us-ascii?Q?uCQvAT6uCTs8TD9O5JoiJlNOcvamyx1zizQVA2zDRCjY5M46GGnW83PnEYe2?=
 =?us-ascii?Q?GTrZ2ePoZ5POO38jxa0PxoN/ch/OLWD6cplkj3ZH50knfmTMuRWA8svzJ7eu?=
 =?us-ascii?Q?Fj9YYq2e19OppdzEWxJ/XhdZRiUOF756WnoL5u6lwAqow6yE3/hW8U1ZAXyl?=
 =?us-ascii?Q?ZilOiWqzB2541LbAXfQdEA7xzvdhm7GHicmolR/XvcLsUyDe6jD5WOQRAYiq?=
 =?us-ascii?Q?KZHa18vv34H7TlYoGiV5I9XAL/IM6XkEuyRePKru939cG9Dcb/p4QxfmeOsY?=
 =?us-ascii?Q?mEKLLGispI6WmNQKIsfFm0+dP6AtP8Wf1IMwJ7Q7HUYf2AMmTClVB6SAW47N?=
 =?us-ascii?Q?sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d0fa2ef-1212-438a-adff-08dba4ba07a3
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:51:50.5328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cNiP7u9GbkyFoS99iR1xBX9jY+nYVPoTE6pJv9eCMVublJR0KRTOI4N41KK+pS4VkNGiM4nK8nUU3AHT5Kn616XQxXbpQW8YAyRoPWmM0dY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Create a blitter context for
 GGTT updates
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 andi.shyti@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 22, 2023 at 11:28:57AM -0400, Oak Zeng wrote:
> From: Nirmoy Das <nirmoy.das@intel.com>
> 
> Create a separate blitter context if a platform requires
> GGTT updates using MI_UPDATE_GTT blitter command.
> 
> Subsequent patch will introduce methods to update
> GGTT using this blitter context and MI_UPDATE_GTT blitter
> command.
> 
> v2: Fix a typo in comment. (Oak)
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h       |  4 ++
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 44 +++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
>  drivers/gpu/drm/i915/gt/intel_gtt.c          |  4 ++
>  drivers/gpu/drm/i915/gt/intel_gtt.h          |  2 +
>  5 files changed, 56 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index b58c30ac8ef0..ee36db2fdaa7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -170,6 +170,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
>  #define I915_GEM_HWS_SEQNO		0x40
>  #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO * sizeof(u32))
>  #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
> +#define I915_GEM_HWS_GGTT_BLIT		0x46
> +#define I915_GEM_HWS_GGTT_BLIT_ADDR	(I915_GEM_HWS_GGTT_BLIT * sizeof(u32))
>  #define I915_GEM_HWS_PXP		0x60
>  #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
>  #define I915_GEM_HWS_GSC		0x62
> @@ -356,4 +358,6 @@ u64 intel_clamp_preempt_timeout_ms(struct intel_engine_cs *engine, u64 value);
>  u64 intel_clamp_stop_timeout_ms(struct intel_engine_cs *engine, u64 value);
>  u64 intel_clamp_timeslice_duration_ms(struct intel_engine_cs *engine, u64 value);
>  
> +void intel_engine_blitter_context_set_ready(struct intel_gt *gt, bool ready);
> +bool intel_engine_blitter_context_ready(struct intel_gt *gt);
>  #endif /* _INTEL_RINGBUFFER_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index dfb69fc977a0..d8c492a507a4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -27,6 +27,7 @@
>  #include "intel_gt_mcr.h"
>  #include "intel_gt_pm.h"
>  #include "intel_gt_requests.h"
> +#include "intel_gtt.h"
>  #include "intel_lrc.h"
>  #include "intel_lrc_reg.h"
>  #include "intel_reset.h"
> @@ -1419,6 +1420,34 @@ void intel_engine_destroy_pinned_context(struct intel_context *ce)
>  	intel_context_put(ce);
>  }
>  
> +void intel_engine_blitter_context_set_ready(struct intel_gt *gt, bool ready)
> +{
> +	struct intel_engine_cs *engine = gt->engine[BCS0];
> +
> +	if (engine && engine->blitter_context)
> +		atomic_set(&engine->blitter_context_ready, ready ? 1 : 0);
> +}
> +
> +bool intel_engine_blitter_context_ready(struct intel_gt *gt)
> +{
> +	struct intel_engine_cs *engine = gt->engine[BCS0];
> +
> +	if (engine)
> +		return atomic_read(&engine->blitter_context_ready) == 1;
> +
> +	return false;
> +}
> +
> +static struct intel_context *
> +create_ggtt_blitter_context(struct intel_engine_cs *engine)
> +{
> +	static struct lock_class_key kernel;
> +
> +	/* MI_UPDATE_GTT can insert up to 512 PTE entries so get a bigger ring */
> +	return intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_512K,
> +						  I915_GEM_HWS_GGTT_BLIT_ADDR,
> +						  &kernel, "ggtt_blitter_context");
> +}
>  static struct intel_context *
>  create_kernel_context(struct intel_engine_cs *engine)
>  {
> @@ -1442,7 +1471,7 @@ create_kernel_context(struct intel_engine_cs *engine)
>   */
>  static int engine_init_common(struct intel_engine_cs *engine)
>  {
> -	struct intel_context *ce;
> +	struct intel_context *ce, *bce = NULL;
>  	int ret;
>  
>  	engine->set_default_submission(engine);
> @@ -1458,6 +1487,15 @@ static int engine_init_common(struct intel_engine_cs *engine)
>  	ce = create_kernel_context(engine);
>  	if (IS_ERR(ce))
>  		return PTR_ERR(ce);
> +	/*
> +	 * Create a separate pinned context for GGTT update using blitter
> +	 * if a platform require such service.
> +	 */
> +	if (i915_ggtt_require_blitter(engine->i915) && engine->id == BCS0) {
> +		bce = create_ggtt_blitter_context(engine);
> +		if (IS_ERR(bce))
> +			return PTR_ERR(bce);
> +	}
>  
>  	ret = measure_breadcrumb_dw(ce);
>  	if (ret < 0)
> @@ -1465,6 +1503,7 @@ static int engine_init_common(struct intel_engine_cs *engine)
>  
>  	engine->emit_fini_breadcrumb_dw = ret;
>  	engine->kernel_context = ce;
> +	engine->blitter_context = bce;
>  
>  	return 0;
>  
> @@ -1537,6 +1576,9 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
>  
>  	if (engine->kernel_context)
>  		intel_engine_destroy_pinned_context(engine->kernel_context);
> +	if (engine->blitter_context)
> +		intel_engine_destroy_pinned_context(engine->blitter_context);
> +
>  
>  	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
>  	cleanup_status_page(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index e99a6fa03d45..62095c0d8783 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -415,6 +415,9 @@ struct intel_engine_cs {
>  	struct llist_head barrier_tasks;
>  
>  	struct intel_context *kernel_context; /* pinned */
> +	struct intel_context *blitter_context; /* pinned, only for BCS0 */
> +	/* mark the blitter engine's availability status */
> +	atomic_t blitter_context_ready;
>  
>  	/**
>  	 * pinned_contexts_list: List of pinned contexts. This list is only
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 13944a14ea2d..9c77c97670fe 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -21,6 +21,10 @@
>  #include "intel_gt_regs.h"
>  #include "intel_gtt.h"
>  
> +bool i915_ggtt_require_blitter(struct drm_i915_private *i915)
> +{
> +	return IS_METEORLAKE(i915);

Drive-by comment:  this workaround is tied to the Xe_LPM+ media IP, not
to the MTL platform.  Other platforms that re-use Xe_LPM+ IP will also
be affected, whereas MTL platforms that lack media, or integrate a
different media chiplet will not be affected.  So the condition here
should be:

        /* Wa_13010847436 */
        return MEDIA_VER_FULL(i915) == IP_VER(13, 0);

But does this even belong in this patch?  It sounds like patch #3 of the
series is where you intended to hook up this programming to the specific
workaround.


Matt

> +}
>  
>  static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 4d6296cdbcfd..9710eb031fb2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -688,4 +688,6 @@ static inline struct sgt_dma {
>  	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
>  }
>  
> +bool i915_ggtt_require_blitter(struct drm_i915_private *i915);
> +
>  #endif
> -- 
> 2.26.3
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
