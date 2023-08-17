Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9728877FE98
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 21:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A2C10E0C7;
	Thu, 17 Aug 2023 19:37:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C51B10E0C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 19:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692301066; x=1723837066;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3BJCrZmOgvNtUlAAjHU3wVaCsMgOuYN6S490M3fYs8s=;
 b=HE1Gq0bQrmgpluA5h3JjGBnjJDa4qYeSVeGOoiq06GOowfjVoankHrHH
 A7t+fw4YwjToqhqJdrR4dYLkbiuL8Za0wcdqzan63EwnHeBEN5c3INDIG
 RIVh8T5MKbcIBcRUTSEzWP0q012faS6TEEtVVgrtDU86Ngg2iHwPY04F0
 U+MJJoBYJ54ajkR7NbjtvVd+AzlZ6JbnKtcQCMJ01PG/xeWfWFu21U8DD
 WFGXG/JF6hLt0Aqc9uDieNLjvWYEJ8gfvQYnqfLHgsG7tewIvrl13gEUN
 evwXuOuYDwTw9ASmhWzJ5xPJQ5NBZXsE5zKTZeBBSfaqVLWgcmKbohLdy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="459269284"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="459269284"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 12:37:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="1065416997"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="1065416997"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2023 12:37:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 12:37:23 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 12:37:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 12:37:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 12:37:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ojtl341IsJmi9piVq/+UOi2CnbHKlPYdCmlNTFTRo19z6k8EOBB1/teMz4ddaM5qGODACaG055tgv1xZozStgpezYlaz4MyK7kmfoQg2g6HTw6TmyLn6TwT4nimzgJOvg9lEnYJ0LMvf2bfc7ZtnY9bRTujg9iS35GdWWxKg2eHgEetB9xTzMdN5sMcLpsKavVfywy+PGYqlm8D3aRy8I7Jo8n/Tv+v9oYXqnA2evqhkXrSBBhSrVqmzi5QDScWX/AMGGjUkZoBieIIGWHGo+AbB62o0s6MCvXfMBo/qxtcACkQp3I2gyFTfVXvp3jyUlmv2F9wpM3YNFFu+4uDEdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wXlGjfxAlbwp8XPMwvBPAhSilYjYJeT7Ur47DwtpNkc=;
 b=PDwv1Lcj0cnshZMJ2vSgCcy+KjENUxzLrEcNXcDXgLPC8e0FcnoSjZ5nzsKdYuG/Ei9k4w1tYTeMNDrF9k4vL27TfUZUEqYdeJwzoy3vqPSddTuH2a42jygmoVUrClSiH09Iq6TgBmxkv5/xL28+jiq+jhpZTAhoHXnls1FDvQX+htKY+z0pnBQDhNEtVnNe1aj7EoskS1lvnrSla/ivhhoRcKYx7yv4Gxkcr3cpQjszcLs5mSXxR4Auzg818zwnET14oNJYegfZdsttEsV8xTFmAgCxflcl+H6kK9ZTJrYMuTRUoR8PjpLg4+wi+sQTZiMW5H94rRNYGe/d/uk+RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH8PR11MB6684.namprd11.prod.outlook.com (2603:10b6:510:1c7::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.30; Thu, 17 Aug 2023 19:37:00 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 19:37:00 +0000
Date: Thu, 17 Aug 2023 12:36:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230817193650.GE3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230814131331.69516-1-gustavo.sousa@intel.com>
 <169225486143.12434.2683685378441171286@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169225486143.12434.2683685378441171286@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR20CA0004.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::17) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH8PR11MB6684:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e94e6ad-e319-4f34-091b-08db9f595330
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: awDe7AOrkTPrpEtu/NDEMjD1XH7iZmcE4PxgG/D/Ga8n2SMcwmOfKsiCR2xdApx2IfSfMy1QtfSsIE5GGIgmqbibDI4sYPV+QB11k63wQj4jmYjlgQGQ2Shl386Utp78lSdDf5T+0M4VsX/8if5S4g25cpKN8EecLURe2saCYqHVarkJEoYd942TmxXKGVC9HDqn1Bs5JUBDOOxbvoCFulB6BbPdFjJXUBUngEXlwSUu1+0JISYETmQ4VZYvZ0+AaNlGlUbe/iojIG/gyFeV9n077TgNxzxaV0RvtciOCmzjZKxo/vtfj3TNN0u3cjlSRcIf1bPRqS8NoDDAnP1cJ5vdRjktTD++wP0vlNlFGJl0XX+IcQixyHxwebtYwLFVPvdPrNIvZBZFQWZispG0WYfCzt8t/8ZSNdL1y21Qn2wEJgfM3fRvnfgEVAryMsGK89sHrqDPALCz/3NMZ3Sw5TM8FUzV4f9f2WkRW9jxwSyDdSlnQYjAH8jMZORaEb37G1t9Z/jI/Tw2BGRAX3O34Xuzrf5s8SM0kDzNMo1AkWdgPZgT50DyH00qQs2zwNXZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199024)(186009)(1800799009)(316002)(4326008)(8936002)(6916009)(66946007)(66476007)(66556008)(41300700001)(5660300002)(2906002)(30864003)(38100700002)(478600001)(83380400001)(82960400001)(33656002)(966005)(107886003)(26005)(1076003)(6486002)(6512007)(6506007)(6666004)(86362001)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HYx9+TxdiJyJImSvk9l3dAz+TjOubqY3EFNf3ge6NK145l6Z5hjzlDzQ01rX?=
 =?us-ascii?Q?gMRXQpI3XBaBz5N887cwWq0ZiDzbxjSaXji3NPVJVdIjIY6PvdWrs5haw6GX?=
 =?us-ascii?Q?dxM3jODOXbIgIOAd62zwQuDhsYGB7dqX/xFIxpoOfjfiiQAmSvmue+8ZYpNq?=
 =?us-ascii?Q?jdNd3OaNhGWr6h9nYyzTkEnKzt8H5asfekZpBfihPLbRavCR2xqH9eIk8wNA?=
 =?us-ascii?Q?qL2yawnjic6Pm9u/5E7HPHPn/1D3W8u7t+V66m9wBXy6TX4tq2u9SzPGSmhi?=
 =?us-ascii?Q?YNTQrp+wh9ZYEC4TB0uakwtE8hfAnVKLYwZaovZMknpEebatvRjy1aTUnIiO?=
 =?us-ascii?Q?WXiFXu0I919C+62DrwAoY5qVbTBpncchy6mKNwsRxgF0XamyiyuPINiW7/ox?=
 =?us-ascii?Q?oikI6Lu9GOrgkhvfh2Qc8QmIfKPC8IjF3dpQstOyi90Yo6kR2dSZ3ottkFc2?=
 =?us-ascii?Q?sPdr2NWtrxAsUFudtPWmt1yIqOCrYud8WW81BZua8VADyAiwk5VVzKRXuy86?=
 =?us-ascii?Q?fHu0Q1vDJ+9Ljgua60VmYPiZ2Mrkhg0RW3LSHqD6VCB6KxoFXBHBBxsoWXEk?=
 =?us-ascii?Q?xncp9qo/GUUvfa3Oq49/yiMKVFcOW+ivvpzA4d8OclfSavFtfSe0Azi1ZIoI?=
 =?us-ascii?Q?iA3SuFPTkWTDdr0MS4hwm1qGLnr3aOjZlAGPchIkwQJ85wW8DOVpBNdVijv+?=
 =?us-ascii?Q?ryQpTgB+dg7ucatrKuDcCny4Q6RK55vSyUHzPRywFBuP6CK4C6l6jttGvR/d?=
 =?us-ascii?Q?Pat+a5a2gRtrpEeg33bDy8muaTZemiBcUuBOygvJKADt0nPHqYJOJYH0NPV6?=
 =?us-ascii?Q?8DPI4v3zGO9iksLi6/Rli4TGXDbY0LKhOk9WNdrQM1JLR4hM9nnWIGNPJrQd?=
 =?us-ascii?Q?awPu4T4lpUikM0HQG9/orZ5DWt2WmlHyZU2Dz6H5k7MChFExI4YDwRWYBgy1?=
 =?us-ascii?Q?yUXEPjl+gv6QCAS3Q8+w2Zi2+WnbNRojn1fNrnRKy9H1r/2FnsZfyhz4kqIt?=
 =?us-ascii?Q?BCLknirFbJAzDULbDBuNXMRD8cFLbEzcLxA3A6TRPKtO1LBV7Zu/WgYmaqMm?=
 =?us-ascii?Q?/JkmL/hSHEPEe1GR0lMeesOvCQnv7iMpppHpnqCJNJ2Io6VrAGw2K2lGLd3I?=
 =?us-ascii?Q?Q2+ZmETe6yz7UZl1K8359xHXsSW6B3oPnn69yDCh0b6be9HyerIT3uMv68qi?=
 =?us-ascii?Q?UvhMwxvh2rMdBB3R7WpOv4rPxLuVOuDYaGjD6ZnSlJVWxiZYRJvxy6TD6JLO?=
 =?us-ascii?Q?aJj+Wpy/2w4Y8Yj8rNO/PRP3zOiG3rY0n5Bwq3eio5pRBToM5ynmb1hZ13Jd?=
 =?us-ascii?Q?2swCn0zKAOYA5gH+X+FVkzDyr/HHKoUpdKKvvZ6T2LVi6stQmnUsduZ2QQcx?=
 =?us-ascii?Q?LdddX/FT7Tx3xqHj1GwGg/i0bjB5cc7QCK9j629ALGt9Vj8EnB6m9GaP/HgQ?=
 =?us-ascii?Q?JUejfut8Wcv8ahY6BzV/D8BhwBrEb3HhaudX7RS9yLMer0saXsi5q3eo0dXP?=
 =?us-ascii?Q?k1jSph3zj5OJaasFBfdazBPyR77x4aw9f2/QflC31yMwwuNsVtUdON4AM/Lh?=
 =?us-ascii?Q?affUmM7Sd1TgOJwnHuEdicwv1LFv/sa/1Am2qE7HbgN93A5oF9iv4FNkU97I?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e94e6ad-e319-4f34-091b-08db9f595330
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2023 19:37:00.2636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6iZIdvr6/CLqrrRvPhFqL7mKeweX1jdEmx+R4mWSGShIrVogkwpw3Xp7Wi8r0UQwj4Rj5oCSK2Fa1lyrAlahpYKdNaTWPUTFr866U4ztrf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6684
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?_C10/C20_implementation_w=2Er=2Et=2E_owned_PHY_lanes_=28rev3=29?=
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

On Thu, Aug 17, 2023 at 06:47:41AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Fix C10/C20 implementation w.r.t. owned PHY lanes (rev3)
> URL   : https://patchwork.freedesktop.org/series/121334/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13526_full -> Patchwork_121334v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patches and reviews.


Matt

> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_121334v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8411])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#8414]) +19 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-mtlp:         NOTRUN -> [SKIP][3] ([i915#3281]) +3 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#7697])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ctx_persistence@engines-hang@vcs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][5] ([i915#2410])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@gem_ctx_persistence@engines-hang@vcs0.html
> 
>   * igt@gem_ctx_persistence@engines-hang@vcs1:
>     - shard-mtlp:         NOTRUN -> [ABORT][6] ([i915#8865])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@gem_ctx_persistence@engines-hang@vcs1.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile:
>     - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-snb4/igt@gem_ctx_persistence@legacy-engines-hostile.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#5882]) +9 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:
>     - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#5882]) +5 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8555]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#6334])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture@vcs0-smem:
>     - shard-mtlp:         [PASS][12] -> [DMESG-WARN][13] ([i915#5591])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-5/igt@gem_exec_capture@capture@vcs0-smem.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-3/igt@gem_exec_capture@capture@vcs0-smem.html
> 
>   * igt@gem_exec_capture@pi@vcs1:
>     - shard-mtlp:         [PASS][14] -> [DMESG-WARN][15] ([i915#5591] / [i915#8504])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-3/igt@gem_exec_capture@pi@vcs1.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@gem_exec_capture@pi@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][16] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#4812]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3539] / [i915#4852]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([fdo#112283])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#3281]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-active:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3281]) +4 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@gem_exec_reloc@basic-wc-cpu-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4537] / [i915#4812])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4860])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#4613])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4613]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [PASS][28] -> [TIMEOUT][29] ([i915#5493])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_mmap_gtt@big-bo-tiledy:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4077]) +4 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@gem_mmap_gtt@big-bo-tiledy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4077]) +11 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_mmap_wc@write-wc-read-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4083]) +4 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@gem_mmap_wc@write-wc-read-gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4083]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@gem_mmap_wc@write-wc-read-gtt.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3282]) +4 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#4270])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4270]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#3282]) +3 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4079])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#3297])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3297] / [i915#4958])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#3297])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen3_render_tiledy_blits:
>     - shard-mtlp:         NOTRUN -> [SKIP][42] ([fdo#109289])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@gen3_render_tiledy_blits.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][43] -> [ABORT][44] ([i915#5566])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-glk7/igt@gen9_exec_parse@allowed-single.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-glk6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#2856]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#2856])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#2527])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_hwmon@hwmon-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#7707])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@i915_hwmon@hwmon-read.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [PASS][49] -> [ABORT][50] ([i915#8489] / [i915#8668])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#7561])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [PASS][52] -> [SKIP][53] ([i915#1397])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg2-10/igt@i915_pm_rpm@dpms-lpsp.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [PASS][54] -> [SKIP][55] ([i915#1397]) +4 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-2/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - shard-dg1:          [PASS][56] -> [SKIP][57] ([i915#1397]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#1397])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#1397])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#6621])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@i915_pm_rps@min-max-config-loaded.html
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#6621])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#6188])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-mtlp:         NOTRUN -> [SKIP][63] ([fdo#109303])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@i915_query@query-topology-known-pci-ids.html
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([fdo#109303])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4212])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
>     - shard-mtlp:         [PASS][66] -> [FAIL][67] ([i915#2521]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-3/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:
>     - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#2521])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#8502]) +3 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-rc_ccs-cc:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#8502] / [i915#8709]) +11 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-rc_ccs-cc.html
> 
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][72] ([i915#8247]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-7/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_async_flips@crc@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][73] ([i915#8247]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_async_flips@crc@pipe-d-dp-4.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#404])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#1769] / [i915#3555])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([fdo#111614]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([fdo#111614])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#5286])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][79] -> [FAIL][80] ([i915#5138])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         NOTRUN -> [FAIL][81] ([i915#5138])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#5190]) +9 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
>     - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#6187])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([fdo#110723]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4538] / [i915#5190]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3734] / [i915#5354] / [i915#6095])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-4_tiled_mtl_mc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#5354] / [i915#6095]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_ccs@pipe-a-missing-ccs-buffer-4_tiled_mtl_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#3886] / [i915#5354] / [i915#6095])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][89] ([fdo#109271]) +93 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-snb4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3689] / [i915#3886] / [i915#5354]) +3 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#3886] / [i915#6095])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#5354]) +6 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#3689] / [i915#5354]) +17 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#5354]) +37 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#6095]) +8 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4087] / [i915#7213]) +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-dp-2:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4087]) +3 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_cdclk@plane-scaling@pipe-c-dp-2.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4087]) +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html
> 
>   * igt@kms_chamelium_color@ctm-0-75:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([fdo#111827])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_chamelium_color@ctm-0-75.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#7828]) +6 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#7828])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#7828]) +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3359])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#3546])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([fdo#109274] / [i915#5354]) +4 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
>     - shard-mtlp:         [PASS][106] -> [DMESG-WARN][107] ([i915#1982])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-snb:          NOTRUN -> [SKIP][108] ([fdo#109271] / [fdo#111767])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#4103])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#3555] / [i915#3840]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_dsc@dsc-basic.html
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#3840])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#3469])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_flip@2x-nonexisting-fb-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([fdo#111825]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_flip@2x-nonexisting-fb-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([fdo#109274]) +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_flip@2x-plain-flip-ts-check.html
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3637]) +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#2672]) +2 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#2672])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#2672]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#8708]) +16 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-dg2:          [PASS][120] -> [FAIL][121] ([i915#6880])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-stridechange:
>     - shard-dg2:          NOTRUN -> [FAIL][122] ([i915#6880])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-stridechange.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#8708]) +3 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3458]) +7 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([fdo#111825] / [i915#1825]) +3 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
>     - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271]) +7 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-apl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#1825]) +13 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3023]) +7 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3555] / [i915#8228]) +1 similar issue
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3555] / [i915#8228])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([fdo#109289]) +2 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([fdo#109289])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][133] ([i915#8841]) +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-snb4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-vga-1.html
> 
>   * igt@kms_plane@pixel-format@pipe-b-planes:
>     - shard-mtlp:         [PASS][134] -> [FAIL][135] ([i915#1623])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-6/igt@kms_plane@pixel-format@pipe-b-planes.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-6/igt@kms_plane@pixel-format@pipe-b-planes.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3555])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [FAIL][137] ([i915#8292])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][138] ([i915#8292])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#5176]) +9 similar issues
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-a-dp-2:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#5176]) +3 similar issues
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-a-dp-2.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#5176]) +15 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg1-17/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#5235]) +5 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#5235]) +15 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#5235]) +3 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#5235]) +3 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#6524] / [i915#6805])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_prime@basic-modeset-hybrid.html
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#6524])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([fdo#111068] / [i915#658])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#658]) +1 similar issue
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#1072]) +5 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_rotation_crc@primary-x-tiled-reflect-x-180:
>     - shard-rkl:          [PASS][151] -> [ABORT][152] ([i915#8875])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-1/igt@kms_rotation_crc@primary-x-tiled-reflect-x-180.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-4/igt@kms_rotation_crc@primary-x-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([fdo#111615] / [i915#5289])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#4235])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
>     - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#4235])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_selftest@drm_damage:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#8661])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@kms_selftest@drm_damage.html
> 
>   * igt@kms_selftest@drm_format_helper:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#8661])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_selftest@drm_format_helper.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-apl:          [PASS][158] -> [ABORT][159] ([i915#180])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@pipe-c-wait-forked-busy:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#4070] / [i915#6768]) +1 similar issue
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_vblank@pipe-c-wait-forked-busy.html
> 
>   * igt@kms_vblank@pipe-d-wait-busy-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#4070] / [i915#533] / [i915#6768])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_vblank@pipe-d-wait-busy-hang.html
> 
>   * igt@prime_vgem@coherency-blt:
>     - shard-mtlp:         NOTRUN -> [FAIL][162] ([i915#8445])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@prime_vgem@coherency-blt.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([fdo#109295] / [fdo#111656] / [i915#3708])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#3708])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#4818])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#4818])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_submit_cl@simple-flush-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([fdo#109315]) +2 similar issues
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@v3d/v3d_submit_cl@simple-flush-cache.html
> 
>   * igt@v3d/v3d_submit_cl@single-out-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#2575])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@v3d/v3d_submit_cl@single-out-sync.html
> 
>   * igt@v3d/v3d_submit_csd@bad-pad:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#2575]) +7 similar issues
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-10/igt@v3d/v3d_submit_csd@bad-pad.html
> 
>   * igt@vc4/vc4_create_bo@create-bo-zeroed:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#7711]) +3 similar issues
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@vc4/vc4_create_bo@create-bo-zeroed.html
> 
>   * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#7711])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html
> 
>   * igt@vc4/vc4_tiling@get-bad-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#7711]) +6 similar issues
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@vc4/vc4_tiling@get-bad-modifier.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_shared@q-smoketest-all:
>     - shard-mtlp:         [DMESG-WARN][173] ([i915#1982]) -> [PASS][174]
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-4/igt@gem_ctx_shared@q-smoketest-all.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@gem_ctx_shared@q-smoketest-all.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-mtlp:         [ABORT][175] ([i915#7941]) -> [PASS][176]
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-7/igt@gem_eio@in-flight-contexts-10ms.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-mtlp:         [ABORT][177] ([i915#8503]) -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-2/igt@gem_eio@in-flight-contexts-1us.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-8/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_exec_capture@pi@ccs0:
>     - shard-mtlp:         [FAIL][179] ([i915#7765]) -> [PASS][180]
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-3/igt@gem_exec_capture@pi@ccs0.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@gem_exec_capture@pi@ccs0.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-mtlp:         [FAIL][181] ([i915#4475]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-3/igt@gem_exec_capture@pi@rcs0.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-4/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglu:         [FAIL][183] ([i915#2842]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-tglu-2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-tglu-7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-rkl:          [FAIL][185] ([i915#2842]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-7/igt@gem_exec_fair@basic-pace@bcs0.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fence@parallel@vcs0:
>     - shard-mtlp:         [DMESG-FAIL][187] ([i915#9121]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-4/igt@gem_exec_fence@parallel@vcs0.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@gem_exec_fence@parallel@vcs0.html
> 
>   * igt@gem_exec_fence@parallel@vecs0:
>     - shard-mtlp:         [FAIL][189] ([i915#8957]) -> [PASS][190] +2 similar issues
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-4/igt@gem_exec_fence@parallel@vecs0.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@gem_exec_fence@parallel@vecs0.html
> 
>   * igt@gem_exec_schedule@preempt-engines@ccs0:
>     - shard-mtlp:         [FAIL][191] ([i915#9119]) -> [PASS][192] +4 similar issues
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-1/igt@gem_exec_schedule@preempt-engines@ccs0.html
> 
>   * igt@gem_exec_schedule@preempt-engines@rcs0:
>     - shard-mtlp:         [DMESG-FAIL][193] ([i915#8962] / [i915#9121]) -> [PASS][194] +2 similar issues
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-1/igt@gem_exec_schedule@preempt-engines@rcs0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [TIMEOUT][195] ([i915#5493]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-rkl:          [SKIP][197] ([i915#1937]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-dg1:          [FAIL][199] ([i915#3591]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-dg1:          [SKIP][201] ([i915#1397]) -> [PASS][202] +2 similar issues
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg1-17/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [SKIP][203] ([i915#1397]) -> [PASS][204] +1 similar issue
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-12/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [DMESG-FAIL][205] ([i915#6763]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_cursor_legacy@single-bo@all-pipes:
>     - shard-mtlp:         [DMESG-WARN][207] ([i915#2017]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pipes.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglu:         [FAIL][209] ([i915#4767]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-tglu-6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-tglu-6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1:
>     - shard-snb:          [ABORT][211] -> [PASS][212]
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-snb2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
>     - shard-dg2:          [FAIL][213] ([i915#6880]) -> [PASS][214]
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>     - shard-apl:          [ABORT][215] ([i915#180]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
>     - shard-apl:          [DMESG-WARN][217] ([i915#180]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][219] ([i915#8292]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-tglu-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-tglu-5/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-rkl:          [ABORT][221] ([i915#8178] / [i915#8875]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-1/igt@kms_rotation_crc@sprite-rotation-90.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@perf_pmu@semaphore-busy@rcs0:
>     - shard-mtlp:         [FAIL][223] -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-1/igt@perf_pmu@semaphore-busy@rcs0.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-3/igt@perf_pmu@semaphore-busy@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-mtlp:         [FAIL][225] ([i915#2346]) -> [DMESG-FAIL][226] ([i915#2017] / [i915#5954])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][227] ([i915#3955]) -> [SKIP][228] ([fdo#110189] / [i915#3955]) +1 similar issue
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-rkl:          [SKIP][229] ([fdo#109285]) -> [SKIP][230] ([fdo#109285] / [i915#4098])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-2/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][231] ([i915#4816]) -> [SKIP][232] ([i915#4070] / [i915#4816])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - shard-dg1:          [SKIP][233] ([i915#1072] / [i915#4078]) -> [SKIP][234] ([i915#1072]) +1 similar issue
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13526/shard-dg1-18/igt@kms_psr@sprite_plane_onoff.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/shard-dg1-14/igt@kms_psr@sprite_plane_onoff.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
>   [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
>   [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
>   [i915#8178]: https://gitlab.freedesktop.org/drm/intel/issues/8178
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8445]: https://gitlab.freedesktop.org/drm/intel/issues/8445
>   [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8503]: https://gitlab.freedesktop.org/drm/intel/issues/8503
>   [i915#8504]: https://gitlab.freedesktop.org/drm/intel/issues/8504
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8957]: https://gitlab.freedesktop.org/drm/intel/issues/8957
>   [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
>   [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
>   [i915#9119]: https://gitlab.freedesktop.org/drm/intel/issues/9119
>   [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13526 -> Patchwork_121334v3
> 
>   CI-20190529: 20190529
>   CI_DRM_13526: 8f80e179d343f69717efc936833a839cb1155e5a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7441: 152bb04fd1297075b5d0b1c4487dac8e9a70d070 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_121334v3: 8f80e179d343f69717efc936833a839cb1155e5a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v3/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
