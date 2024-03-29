Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F42891076
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D52F10E8CC;
	Fri, 29 Mar 2024 01:39:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5AZugzc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38CC10E8CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711676371; x=1743212371;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5AjaR7kvbiGHpqMLycz9XyYJzoWXuZd3FnQm7EpyrxM=;
 b=l5AZugzcmU2zSfdIvuj6TGWPzLmsgeBZeIwED5ETsO0gwD34qKuL19X+
 uogp+1q/w8bAFq/jwEbEJRV4CyLrAlY6+6BrHMU2AjTIjYQActn6ruOS6
 7nwPqhFh0zTK8hdlIpfU3c9RkPxzUb9zwe6dd47BtuvLYJGL9jFiLacUa
 VWwYXDWBBfg5g2DdAGj/xYPlJo86+l9+AasXnYdhgPCABnQjcWGMuUxQp
 a6HUrXxxuBqmkPMwGSwI80U/KLhpyFbD6nmSFMhi35nl71/hUXD2FvpOo
 GUxIrOc1PUM28hPJLymr1JhJCTPqaTeOHXEpKo8laZ45OOW2FTwxnzyeo w==;
X-CSE-ConnectionGUID: 3L+CYU+NRlSZqEg+fn18uQ==
X-CSE-MsgGUID: FkqNDdr3RnCKXTPNqWynIQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="18242758"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="18242758"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:39:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="17233433"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 18:39:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 18:39:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 18:39:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 18:39:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vjb02XuElKDq0dQyuxDgrlFRBtLc9Thla42G/ROxpM7U5rTaO4SIp8HVaRxdTNKE0mAp6cHDu9mthjlIH9OkmlJtzbCyOTzF4BNjWyeofPKYNsEzoUP+6jZXPkAofiaPlnEFYLSLUAUbudbq1pPOkeR4a6qosvlhx6UOpCSl0g6wLwl5WED7+wFcJCJWBVLRV4inXnpeqkREi3NLfNQRAnmed/uBqdAk+ylyoxP9J2WYxhehcPuFNa6qw17hTHpepWrjBV0CMWEVdl6emklRPCRpTqUVtbZD4hECkx7g5C1Kv/4GyZvTkEzaRS5tBxG02jmJyBMFl/eVoxHaB39uMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wCWt0DWV6fZeukNGqvLuFN+Av68TWDSNWAgpwhRh47s=;
 b=FR4KaBCb4h5Y8b77dy6UQd/F4mAOG9uD5pA3BsqNz4+4Jjk0UQYj69OXp4o2HNt9bjfQkA8tJvZ1ylM7uP9ICdneX3PtFxxlQ9ly0oop5lIx9kVDT30bStYHPLVBFI2/o162hAGmVNQX3QADTtsrpkziVqdCf/fnQkm5W42cZUzWGMKPrkhg6WrsPlryW7Y9Id3/dVGVmBJyTci+SOEV4rl+cIA/fQ8AYTvx7LZTELpezWbXpTm5c7LuqSgflRewAt69YcPMW4fhwAbayz8RuGXEpohwJT9mzK/a88ezymRpL5eUMIi6Zw+tmJzRqoFAmLkC3Nd9B0VMrTK26qxJAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS7PR11MB6176.namprd11.prod.outlook.com (2603:10b6:8:98::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.33; Fri, 29 Mar 2024 01:39:22 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7409.031; Fri, 29 Mar 2024
 01:39:21 +0000
Date: Thu, 28 Mar 2024 21:39:17 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, kernel test robot <lkp@intel.com>, "Dan
 Carpenter" <dan.carpenter@linaro.org>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>, John Harrison <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Remove bogus null check
Message-ID: <ZgYbxYoSChiVRDM2@intel.com>
References: <20240328213107.90632-1-rodrigo.vivi@intel.com>
 <ZgXkI8tw91z_2RYL@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZgXkI8tw91z_2RYL@ashyti-mobl2.lan>
X-ClientProxiedBy: SJ0PR13CA0056.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS7PR11MB6176:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cGriNeNIPI4YNRcZqxz6qVlNVxetHcBtMWWOtPTooZSH6hUmzJhhSzQeYv6/qkvSUdqqD5WrVgUfwbL4EOcg8JhVJV6PCrf2pYLRZju8KCSdUk33B1hZCLzAGfv3ahc2w+gvOVcmA4XQY766vna8T14LNEHG5hZoPQSJ7fSEcP3JypPjKVpIqDb0rcYaob0ImOUpFcKCL1TZC8kLFdNjr2bB8wlh1u23jnzOBX7ifXDXeySi3thlz2gm/68ON2YCc0zMlUo0dAv1KvBMNA1RL9M1Ew1XEhzVeu0qcHmj/cc2qICiKhOh2VnYFsiF38m3nm5QSE58j4CHWMW2BEFshfR16dLPTpJwO1In9mBqyQppJQ3p6uk/C4GqMFmx3RbpYD+nJhNrASwE3BR7Hcc8BFeBe47zJi24YOKLXs+aTzACCj4pEMGSLDMlg6wk3RLMnG7NGNP4c0TbalG8dP9fNJr4fxiBJ5aXNJ5m7nZcjv/t8ziOZ6EVDFSXNtw1SC88OIwEUr7gZo3d2vypNVQ7d9psoRHM2imGaBnKNf/zVoX7DAKz/X9QEaIUvQoP1QzquvO2/CeKi6LfD777SbAHL0blMr2zZrnq2y2tBEg+0XM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RLk2YtYVZKhzRru6whl88tB+4101GoW7wWtulCQkhwnxyGkJZEUGeeMC2Fyt?=
 =?us-ascii?Q?9zK9AjNIKJOcUEa2WAt8Szg+5raH7Y4GEe17/x79TtYqMBuOy8gy3w9oMWns?=
 =?us-ascii?Q?CeA4dmwJziMoO/oTqaaEdbje3CQAiJwWMFattl5Z5CZz6gyNlxi+0QxGS5SP?=
 =?us-ascii?Q?CUKLZ1omF2vbGOJ+az6FQrhjwFEbmgw9rV4+BTrzMhzRIu+6VyJVN0H8m1Jr?=
 =?us-ascii?Q?Iyn+kQbnsAlkc9s1AwTwc5R07EpE+jof5UBcWUpbiNIXhWTDwRw1N0V7B5Io?=
 =?us-ascii?Q?bAl/FXYnrm/aL+SwaGXduv3Aj95cG5tfKj8EVCdG/vt2nco/50v+PkNzN99e?=
 =?us-ascii?Q?/ey/zDaEB8KLVE+FNf42W57sDCdYBIn0S/9IjmHS2NHiy7/6+QO6BBTdKz8j?=
 =?us-ascii?Q?ntSYVf+yPMdhk1Xr5F4GDSTsDhEoVFCkPgFLaA0lXx5X2Xfp6LJ0JncKgERP?=
 =?us-ascii?Q?r/8ehk1LkorMW2fB9Aipy1nCFwRBxdwL7NDclPsMDayWaE7XnZxh0nPqfT0H?=
 =?us-ascii?Q?y7two9jiewGqsmsm+tmZQDrhjpt/EDIiXLoE9cVgaurktwqfr0pjQahDLlFh?=
 =?us-ascii?Q?+ANaf5qarPOwosWuieGfDJsSqQ9CuRG/Gy6yKd/5bAjEOiW8OWEXaKnVmjLd?=
 =?us-ascii?Q?43KLXcXvwEIaplvlWqmgKKoOVnNXm6two8tU/JMdcn7jPzpylkuGbvLxV/jB?=
 =?us-ascii?Q?LlpBDBu9K1skETzc+fkuUE1tglSpcGp79DQjFmaBkrDoskuJNWJa71h++poA?=
 =?us-ascii?Q?aMZD8PefEE6K1c5Yhp8aOYfoKDptCOylcoGdBBX7acrFqdsjghBj9P4M+W11?=
 =?us-ascii?Q?QADRHityAQX49xv9PLwqDX7FziOAMiZKiq1rzg9kl2+ngh4wqS7JPIBWiw2C?=
 =?us-ascii?Q?27FgVWv346Gh6EcAX5f0vwSw0JiKbyacir72XfkGyOMxLua/s0Q/pUhPRJPo?=
 =?us-ascii?Q?K3lcFDpvpDJQfrcKOPSTOe4G1Emd7zTC+3DYM/xEmjcF0dv2WTQKKxhYcyQQ?=
 =?us-ascii?Q?Te2LNgLF/s0/5L+2AtT4hf+U/JnJ0iM2TmhKYkeeVeSCVEk/lVyb/dxouTTY?=
 =?us-ascii?Q?IuuOWEFsvyLHBjGGmwYEIr+m4LUMyTaKs0TyB+9fgRhp/G6/U+yA+tZKku2Y?=
 =?us-ascii?Q?UONYWIOWT7xDouz9IaAiwC8UEji5x2cggy1g/BUxo+lFkCdKS8Jqh1JkM9tm?=
 =?us-ascii?Q?wu+0RqCeqTrdFaPIgTMEWLd7XUVXkzo3fNlK/dGZs9MW00PDEnRP+9tBZDTh?=
 =?us-ascii?Q?5W9bT3QZYK8mVN0g8TlxrYxtsp/8z/FABXoK3OS7zx+neKp5XcJyjJGAV0lM?=
 =?us-ascii?Q?BogvCgS2foER+npCkAw4exiKxA0qDi/ZC/sywYWpGcKbH2d3KCwfTYw2PcpO?=
 =?us-ascii?Q?BdPvFe0FVZaL7xuJHicrwmoPxqR+Fy2YOswtmqo9XiXSmzAHyW0qknYGa6cW?=
 =?us-ascii?Q?HJnSrzzTJ38X2EZXo1tM3jAL4UXsPe2XGVrQw6GzPTE6QO6ZNlNhnjiipyd3?=
 =?us-ascii?Q?XWL9tBhJ2kIBEf9ZGyTP4ILA9fEbLfPaNJL8PIzUHz+BwAngghnSzq56mNIG?=
 =?us-ascii?Q?zhw+Q5oLbenFf20TYxeB/4WTGyKN1/8kpysGlJcA9UjlN2RRgWobsr9Tnp9R?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8771729c-1a6c-4911-6227-08dc4f910ec1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 01:39:21.9034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5XyqhsY/dn8hCOE3tnsEb4bYXO8Jkq0yG49cSD2hE5kfW401l55KRbWJ+Hd9jUkeTMrvFEV6Co+wPaXwxaOsRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6176
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

On Thu, Mar 28, 2024 at 10:41:55PM +0100, Andi Shyti wrote:
> Hi Rodrigo,
> 
> On Thu, Mar 28, 2024 at 05:31:07PM -0400, Rodrigo Vivi wrote:
> > This null check is bogus because we are already using 'ce' stuff
> > in many places before this function is called.
> > 
> > Having this here is useless and confuses static analyzer tools
> > that can see:
> > 
> > struct intel_engine_cs *engine = ce->engine;
> > 
> > before this check, in the same function.
> > 
> > Fixes: cec82816d0d0 ("drm/i915/guc: Use context hints for GT frequency")
> 
> there is no need to have the Fixes tag here.

why not? I imagine distros that have this commit cec82816d0d0 and use
static analyzers would also want this patch ported to silent those, no?!

> 
> > Reported-by: kernel test robot <lkp@intel.com>
> > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > Closes: https://lore.kernel.org/r/202403101225.7AheJhZJ-lkp@intel.com/
> > Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > Cc: John Harrison <John.C.Harrison@Intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 01d0ec1b30f2..24a82616f844 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -2677,7 +2677,7 @@ static int guc_context_policy_init_v70(struct intel_context *ce, bool loop)
> >  	execution_quantum = engine->props.timeslice_duration_ms * 1000;
> >  	preemption_timeout = engine->props.preempt_timeout_ms * 1000;
> >  
> > -	if (ce && (ce->flags & BIT(CONTEXT_LOW_LATENCY)))
> > +	if (ce->flags & BIT(CONTEXT_LOW_LATENCY))
> 
> We could keep the check but make it earlier.

yes, that's another alternative.


-struct intel_engine_cs *engine = ce->engine;
+struct intel_engine_cs *engine;

if (!ce)
   return;

engine = ce->engine.

But looking to the 2 places where this function is getting called,
we already have ce->something used.

I can make the change to be like that if you believe that there's
a possibility in the future that we change that, just to be on
the safe side.

or anything else I might be missing?

Thanks for looking into this,
Rodrigo.

> 
> Thanks,
> Andi
> 
> >  		slpc_ctx_freq_req |= SLPC_CTX_FREQ_REQ_IS_COMPUTE;
> >  
> >  	__guc_context_policy_start_klv(&policy, ce->guc_id.id);
> > -- 
> > 2.44.0
