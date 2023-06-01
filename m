Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E359B718F6F
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 02:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2ED10E0E5;
	Thu,  1 Jun 2023 00:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3A210E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 00:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685578570; x=1717114570;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=puQ31Nxe5P5zXAHbZU1mj7zQwDHaukuqx+J35Jyr0P8=;
 b=d+d8r7BmNk0WiWy3f2PEX+yoU6m4K3MZU+1HLULB7yiQ/HzdOGGFQYqM
 MdzCwb3b2YkP7kiYBSPTM5JFHWANjxxMc1QCnov7RO0XxDCTXiKDaYTlE
 jrO1Aw7IYVEz2q0gaCgPXv+qFlSUDdcOa3qNJmBbvFugIfKq9qoYE04Ac
 XQEdwfJbQvba+d9glp7rX5cShdKR3oAqUzUc0c2qVxAsMsoDno4VH7Drp
 prsh6I5scnkOzHJ3wKMjSv/+gBhCdqXLSdpYrGVatv+shOai9iHJ6Lq+/
 tZvO7d8Pa/hQCi7mLidEaZtmgwq3VD7kn04xfc9BfEkmCHRryiCtdMkdH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="344926519"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="344926519"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 17:16:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="657557721"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="657557721"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 31 May 2023 17:16:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 17:16:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 17:16:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 17:16:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqDiLDi1tQr7l8OJ6e7olIIDZjQ6+7wXtqAYnieLElg8O4J4A9MCwweuOGVWnOVBv39WKTAIORYMjUCtEK/paWZJhy+ywa8+1wYQo1IdmJW7Uki5rZtynkFAFgIN1j8DMuDLN7BjGMNMv2lbgrDnOd0lRGkHPMgKtUNybufkJMFRMJwc4q9l9saIim7XXlSR7F8AZmRTzqU69KLrMPB+nveGA+DxVLWyPFKZNJiXPpot7/q2tZIEd8vKuUI8p0LAbGgW43DeCIHo6nS94GOeN29oBMu7d2+CnBjuxK0Qwq5NKpnSIrXu2bu2ItH+cFn3XKhod0CaLLL0QTDD6wvG7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6m9gG4AntvF48ah3DXctnXdrIEWdKuS+csnCQZ86LyU=;
 b=oXdMBWAqS3hTy1n51ILk+S+e5O7o3XN4b8E9wqhuyvW0B3sA150Nu2SQqB7veXEy8AK1OspzLknLMzfhgL+zhwQEuXuLMBjqCD+HAYIyAII6yibPn8jGMwMxJWPoqPX0lhA/4pgNOYpEq0WVOftmcn22erluDWWywMVLlATwyoBTwvB9K8quP+JHk4/OCCCCKNql9gb2d3/YRGdLJgalz9WgedWlwCPGt5XbwzpdBlN7NUkfIBbzQelVyQCtL+ZGrCuys73Q+Ikdti2WgtIAiLCS2YKQlEbKLqVEiSXC9YKeoznpgw9hwFgv287Xx/wvmSy89xovqLWsUniqIOW+gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA0PR11MB7187.namprd11.prod.outlook.com (2603:10b6:208:441::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Thu, 1 Jun
 2023 00:16:06 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 00:16:05 +0000
Date: Wed, 31 May 2023 17:16:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <20230601001602.GE6953@mdroper-desk1.amr.corp.intel.com>
References: <20230531143214.1650701-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230531143214.1650701-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: BYAPR07CA0091.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA0PR11MB7187:EE_
X-MS-Office365-Filtering-Correlation-Id: 69fa1b6e-9752-4604-ef58-08db623563e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DfCij8wVPG9ezBCQI5wQuuQnIMYA5ZxO67l7oVD6AnIsdRNbn74oauz749zGE/Nry9s8y+fWB4qgSCD9Y4y9SBz0wO7FH1H1JgW+3Hkzli9E0jaM+KAWPvmY1JuHwm6v6dUcOez53x06D84U9YtaLblqcKTWwDwmt9fxXlfn19WFzSK8cBHrAC7mj32z3IlDsJI0yzFSs2WW3MzfUfDlGK5aN+CrThx77RHIP1EGW3NdPip+KEXimUv7BWbC/NwHkU9plLOi6Wr+RIcI3pgkvP4pFwEKZ8pLjGBOFLViHa+soc7NOpbENQnzQm9H+xnLJrGdB+ltYO9MQmQM4HXqzw691urN2nTjd5VjNnvEI8esD75FL0waRnZLUC3DZB41TtykjlPY+tw1er3gOyge53p58om/qAtPY8iZrUBMyyK+lumHr4oYqUcoNmvxwxN0Ijk37e/pUo1wywafYKI33Y7EV6KxYJqFXSJuTPo62/sKNdZaPb1n1Wnj40bL38mdedwpeP51NeA0iVPm7D096nrNVy/Qk9nBqtlOcuEzdL9OvEi5eJ5P0q0pAvgtW1hgus44qtSjFu6BtzTpLB3BPGer++gBMjC/666yE8LukRA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199021)(82960400001)(38100700002)(86362001)(33656002)(8676002)(6862004)(41300700001)(8936002)(966005)(26005)(1076003)(6506007)(5660300002)(6512007)(2906002)(186003)(6666004)(83380400001)(66556008)(6486002)(66476007)(316002)(66946007)(478600001)(6636002)(4326008)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AtiJ8+EPKo4MhG40hq9PIcbiF3m4zEQ44+ACchGdFiLQuMumi4HYXKCgY367?=
 =?us-ascii?Q?HaZthxZZqy4xSI3usb7qJ8ShrT2De7ZSqUZKF8MyJ4BqiErd0Sx7E4LAnBT3?=
 =?us-ascii?Q?r9cXDmZA9RYZfBxQQlM57yRw2oIJ8pnAqXlxWmiJ9nJf296BuP0qeFdiR5E9?=
 =?us-ascii?Q?0eS1prQBS9y6spvLeRbCot+fR32IySH8wGIr5Fnrlz4QF6vMJPi6W22E7Jlf?=
 =?us-ascii?Q?ZJKF3/t1ke428GoJqSYQboHF7pF5NDdYhRh/QrvPhr8aOa3nDOjTg08KuUo4?=
 =?us-ascii?Q?U/3N/jYESTTY2zS3mndRbNYmtAEXqyMiXtn8v1CyaHfTEifPHaFYZ/V3hAdx?=
 =?us-ascii?Q?Aw+dc89D3fzQ+oKCUgBn2qQxjhRX46a+v0opRZqif3ZtYv6aaWIrjXAZUgnK?=
 =?us-ascii?Q?FcoIcHj8AMCCg4Epq5sAsO4FVmoFaKJ4E6aNSd8dIEEulwgrx7KiH6lDX/dc?=
 =?us-ascii?Q?RkDGOzp33scup8IkWCdeppF/luZQtSIcRsmEmtBic3V3UMu00y8Zk2nuZrfz?=
 =?us-ascii?Q?nI5V3W6xWkho8ck+y6ef2NIR7FviFk6J6QeUwSkKGDJo3CKARnQ0/i5HeEhR?=
 =?us-ascii?Q?3RANDvk35eLSPSpLsNIYV14nqCYHqdTHHZKuVIqnIilQlQN8pHBIhCV3F5iw?=
 =?us-ascii?Q?e2kXgftK+A6LZuyxh7PkxqxouMh50i1XRIz++NP0MaqGEuO1OZRErneCIRrI?=
 =?us-ascii?Q?Ik06R8UYWI/zGZ0r3JU8rWaV8SFT04tZTJG0Ed6ELRgLG3wnpEOxpNhcgD93?=
 =?us-ascii?Q?URKQcPrRdTjtd9vrAMTIZ/yyv07wIR08Tk4BcHfQRLkJM7WDlci5pGXLUZ1k?=
 =?us-ascii?Q?nMYnA9Bz3d3IzXRBJryR4mQEzmWmr8+59I0ewf/6L+ajt6ZX3b9oo2p+JWJQ?=
 =?us-ascii?Q?w/91cGK6y8XHO8M+vtaIHu6liHb5WKDhU8bMDy75HwXZ0QnmUmEghslEY0wZ?=
 =?us-ascii?Q?a6Ak63EsI8161bulHGozE0Mbgj07pKQUwu+fbvYI0U7KOpQeAnBP+5knvhH9?=
 =?us-ascii?Q?mNk9NIm80QEtRlxWoVAdc5pDFFj23Y/+tHf0fhiwRKcvFfb3BSmO5aWvuYn4?=
 =?us-ascii?Q?PKnRGa2uUWn0XRjOqUihoq54BqyXdPmKIrn4WGqdj9MjlJtSHPFQ8iRZnXzW?=
 =?us-ascii?Q?zH4DjmrGRuRWiZQBylxpUMNEyIvmlfZx6+oi7w/XP1/je32RW+gbFPnB8CdW?=
 =?us-ascii?Q?obsD6eGSrv8KDwPTUt+roS5iWOOK+4GYgRr6w7ZBfM8y5K3zbfi2PBcGNc7A?=
 =?us-ascii?Q?npLJ8o6GE87PX3DZbDB8lLCj3gzuP1og3DDBy8kx4BvpuvGeE7zeG+ua/fXT?=
 =?us-ascii?Q?EJrZy2JUYoXnRIGTrgeCA7K/CufBtha1oDsovkZDv/3K5U0/k6vC1fO3E33O?=
 =?us-ascii?Q?U5eZRpxwsXwLw2YT+oFWZ1kaC5q286eEv1ffrDjbF+H+QnH0ezQUChQn/gPe?=
 =?us-ascii?Q?7qOdOwun1+ey6/x45wLC+RoE4rUlxay26y9MyvW8ciKryzBZs85NQ1EIICoL?=
 =?us-ascii?Q?V0Dj5yj06hU2APfFHAPkib5WEfDsOpby2FvsVv6p/zS/8EATMeiEms7fDVG4?=
 =?us-ascii?Q?AEpzXZrQfhk9gNRsqEwuLmwRS9zLn4WVg7VfqyaA6+caQRG5C2r6gLYCTj4B?=
 =?us-ascii?Q?Gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69fa1b6e-9752-4604-ef58-08db623563e0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 00:16:05.5335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oKH9jipSPSGDa6AiWCwHLryKIjpJszuvTCJ1XOIPyGJHvWPNUBjPadqj/Lil/EQ3wTpzlxIvrkZeWFMblfyYIryzZ3hRbHFtQy82QWBZb7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7187
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/gt: Add workaround 14016712196
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

On Wed, May 31, 2023 at 08:02:14PM +0530, Tejas Upadhyay wrote:
> Wa_14016712196 implementation for mtl

Since this isn't one of the trivial "write XXX to register YYY"
workarounds, you might want to give a brief description of what we're
being directed to do.  E.g.,

  "Wa_14016712196 asks us to submit a "dummy" PIPE_CONTROL when XYZ"

That way it will be more obvious to reviewers if you truly got all the
spots in the driver (e.g., it makes it easier for someone to point out
mistakes like "XYZ is also true in function foo() too").


Matt

> 
> Bspec: 72197
> 
> V3:
>   - Wrap dummy pipe control stuff in API - Andi
> V2:
>   - Fix  kernel test robot warnings
> 
> Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 39 ++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e1c76e5bfa82..206947f1fc7c 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -177,6 +177,30 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>  	return cs;
>  }
>  
> +static u32 *mtl_dummy_pipe_control(struct i915_request *rq)
> +{
> +	u32 *cs;
> +
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +		int ret;
> +
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = intel_ring_begin(rq, 6);
> +		ret = IS_ERR(cs);
> +		if (ret)
> +			return ERR_PTR(ret);
> +		cs = gen12_emit_pipe_control(cs,
> +					     0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
> +					     LRC_PPHWSP_SCRATCH_ADDR);
> +		intel_ring_advance(rq, cs);
> +	}
> +
> +	return cs;
> +}
> +
>  int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  {
>  	struct intel_engine_cs *engine = rq->engine;
> @@ -185,6 +209,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  		u32 flags = 0;
>  		u32 *cs;
>  
> +		cs = mtl_dummy_pipe_control(rq);
> +		if (IS_ERR(cs))
> +			return PTR_ERR(cs);
> +
>  		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
>  		flags |= PIPE_CONTROL_FLUSH_L3;
>  		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> @@ -218,6 +246,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  		u32 flags = 0;
>  		u32 *cs, count;
>  
> +		cs = mtl_dummy_pipe_control(rq);
> +		if (IS_ERR(cs))
> +			return PTR_ERR(cs);
> +
>  		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
>  		flags |= PIPE_CONTROL_TLB_INVALIDATE;
>  		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
> @@ -733,6 +765,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  		     PIPE_CONTROL_DC_FLUSH_ENABLE |
>  		     PIPE_CONTROL_FLUSH_ENABLE);
>  
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = gen12_emit_pipe_control(cs, 0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> +
>  	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>  		/* Wa_1409600907 */
>  		flags |= PIPE_CONTROL_DEPTH_STALL;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
