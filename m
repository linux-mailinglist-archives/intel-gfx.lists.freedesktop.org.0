Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EE85728D8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 23:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C0596E1A;
	Tue, 12 Jul 2022 21:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCF2B96E18
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 21:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657662916; x=1689198916;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vflUv1nb8884TDdDO+zqxJWHa9G649XpFwoN2FrlH1Q=;
 b=UnADa/cODz+SsCXoyOVr0xVCiYvbByDqO5WSZ73piowfiT+SFs72ejlZ
 GsDudUbe7Uo7DTkrNaiDFsDTxKLB2WRHJCxxCallT+3D1qmHGw5uS25W7
 8rIoOasbYHIwe/PBdBxus1QIE/o1zuw1W/grQ1QcOmzgbPBgGnMhkzvg1
 YtDt47wpfvk1CJ/m5BfbWIzQm0+y1LHca0OM8pIjDQErw6Gxtf6B/O6ud
 t8PTP0PqwVYNmTotMIT2OIEhDj+F7A9RqkIelaOw+HiOlsthuuLRVDzB9
 d8Gwyp8144SkYN4P8b+LSGhx61+VUAzCwLp4Vf9eVdsqECCnKTFX2CRiR w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="285077991"
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="285077991"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 14:55:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="570361846"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2022 14:55:16 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 14:55:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 14:55:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 14:55:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ha51MruCpD0CNzPGeSk+sC62aaqGWbcy5KEQUIHVlOCLQ2j4qgkh9GWBVBmttF9k49BBQ40NI+kuhvjuzivwzxczgggtCVyKIlIEzXFBdduyVUQ17dKjJSr8R3dqBXdX3OrmS1S3FRl2npO2MoVzjGm6uy4QJYx5B117JudISgks7jPhVr+LjfGbRdJPW3uW4d9m+pq87B29YoyOHfIDhSiKWmEmKHZV5LDHMowdqQprlu8BC01fHJQEE2OsuV46I3TFKCP5tSc5oZLA9khXsFLGAzxBnRBZ5DNBKVvtjd1ewRH0W1qeHxwTkRfDd8sV3uCtDwuisO8gsGm6oFb8hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oLnbaVM35WUaMYYl3yJ9Y+7OnoTtc4SwL018nmmc0Bc=;
 b=MCqLyOQ/Pk/8x9qk3ayd4f1k21onr7MmU2gVGLZS5UHUASFE0XpDgRqpfohe2HlmkG+bKpKwIi6z/oQNpIfK4170gWFzYDD1OdUJqvqyfaQYTetR3RP0cWL1JIOxOHbe2JsEQPt3U80NMXoWsTWCq2fW9N7QraTvwrtfaoD7eefZ+nitZFbVpbKMcak5GA4yoMQYw0Tr6EwNGL/US60JPPi1ovxx0src1kTCTgl1+107oRXA1bP5/YnVskU1p1pCvszxzl9ffu2X+l++7dh1luBCAaLa0jUoHRhW/oUvITtGAmGloegw3N5JrjftY/T3ZxsW+O7SrDgSldWI0OSuPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BY5PR11MB3925.namprd11.prod.outlook.com (2603:10b6:a03:182::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.25; Tue, 12 Jul
 2022 21:55:12 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 21:55:12 +0000
Date: Tue, 12 Jul 2022 17:55:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <Ys3tvMcz5+DYXY4C@intel.com>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
 <d7b953c7a4ba747c8196a164e2f8c5aef468d048.1657289332.git.karolina.drobnik@intel.com>
 <YshB2NJK2QF8WQkg@intel.com>
 <2410b714-e1e5-1369-9e3b-0a20f5b3e6c8@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2410b714-e1e5-1369-9e3b-0a20f5b3e6c8@intel.com>
X-ClientProxiedBy: BYAPR11CA0060.namprd11.prod.outlook.com
 (2603:10b6:a03:80::37) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d5d5f4b4-1fbe-4238-0228-08da645131f2
X-MS-TrafficTypeDiagnostic: BY5PR11MB3925:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VUes3tzT+D2STDFH7o5IjVsy5ZKPd1B6zyjHEXFrUydWCs+pVi4y0N1clRC6YW0IhteF28Epxk1GXEmdNtoCFW2y6abHJY7ww7/fb+ImgjjbsfxLm1283sTjWPkGGWVMrsgsNfVrmwQ9jyzX7PXmnBAYhbj9YMxOI1CTPkwlPwrhdITT5Q3WOWt/BBrA9tRy//Vqb2AFgx3UJ1ozAoR5ejPPgVBbxKnT6vDp3gAJqFsw88HfVE1zGqaLD0MB2zSGESIfM5v3mKNjC3YWA6oGyZ1plCyZHBZTtGmevRacUlrvgBfB3s/LDV6xRzyDDrh5jKPVR1QwCBnFNxpgXmVetrTG/k9BYIuxPWnmOida2hY+fbwX3ecW+ETQXAbjG5MyrtMNQ1xQ3pwmGUzNWvKn0VKdMBPj3MRA2ycsW9dNdkytP7f21wEpMFrobImh7zROfYWB4HpcN3oHcBqvHM0/czyAqQzTqr1Fn72M2Ep+YB6iI4C7Q1BexKAbly02Sop53D9bGtu0GUpc4Ji4pdrcTzMLigafCsXwCFTE3co6JZ9sOMMnnbbNlSC7DRPQxzafP1sPsStnvr0MxOz8sOhTggUOp6z56e85WBsHA7W+aFEAeNtsD4IItdT6m/cLJKvVHSndny9/BuVUmfeuviQ+6HOHr8gENS2pIkmhxGKclZSWz08miFs3usSL7W3j4q5oGg7zUVO8HBH3V30V9XhU/CJa8R+hyEkKmr02j4HC+VnoKTpEznTJ+Fs8nZoAmRpsSRJ/oMVaeCTFIeL3daAsb8BQh/1yNn7m+IPsmBDjDPTWKOwX+ydzSyB91jca+aqV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(136003)(346002)(396003)(376002)(66556008)(66476007)(6506007)(41300700001)(53546011)(6666004)(2906002)(6512007)(82960400001)(66946007)(6636002)(4326008)(6486002)(37006003)(2616005)(26005)(86362001)(186003)(44832011)(38100700002)(8676002)(8936002)(6862004)(316002)(83380400001)(5660300002)(36756003)(478600001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KMJ3Kqh2PDJsrOHvyXjTK/D4/63F47EboZF8HTYDuJrzeCQQKN8WWJfwae6H?=
 =?us-ascii?Q?Ai2pzUZ2K5eEyZc86N43TFII0KKe+aZ6bS/UQR8XfPM1yKTZDHCgv5lBV3Yq?=
 =?us-ascii?Q?yXFR/dTGocY3krKr825d7F5upwfUqyznKY8JknmflZB0XvY0XgJgS1NR0eic?=
 =?us-ascii?Q?McKX3rbwOSOPtAbIQCZrwO6FXf2iqx6N7U8zzKrKMf2KhQdZUk6NUoDjL0bA?=
 =?us-ascii?Q?ZauuXv3lxQIVbl2UYXG7amc/B1HBQbvYKH7yr16OpMBLP31sZ1xn30+KxHVu?=
 =?us-ascii?Q?oOYHMtUv6Gaob5vtpdVRZzXlBTq1UqCaLbzmMrFPU8H8k03m5lBeK4ae1yAb?=
 =?us-ascii?Q?BmCcJBphNj6+tQp3QaDx/iP+94zUesneY3C7y7s6bkQOutNZynHJhVcyDYr3?=
 =?us-ascii?Q?tpwXx04mCo0whGrcmfY64hqNjrGSEHROv6wweNGlk3JYSFD1NrITI/zXrCzb?=
 =?us-ascii?Q?qitxkDf+8F7WFR9IndrOt/7SXzKWW6tvJeZRIHMF3OBSPBzxlo1FhtWeYtVi?=
 =?us-ascii?Q?2uiFKVHrrn06wUwmmg9hm+yR89zCc3UMGW3SGg3EjF1zwmPxWh8sWQ+2e4L1?=
 =?us-ascii?Q?bgRelv+iwFtoXErYLk5gXaxqMv7qPWAmYEHWbKXZvMRpi/wyoNxf9pc4K7Na?=
 =?us-ascii?Q?XSPfj5Ga8umOjSH5GXTbkRqEEo898hVD9IVYt9ISLZJ+HPWiMJcmUUYQ8qqX?=
 =?us-ascii?Q?9TkCHrULgAAR0vpOjLpJVJfuOJrW3c9AkQUkPLn2QpND85tJGCcWxbobXNOQ?=
 =?us-ascii?Q?uTHngWJpi/ahfXPoJQkPrNZteSEna+HdICriPVapvbZnkLh8wyn9i0chyENp?=
 =?us-ascii?Q?H5ux+hNyDE7/lueleQfvCVztPh6Ag5fMZzEq0QsLn4yasQDsyRPnuBsqnmxF?=
 =?us-ascii?Q?zQUzEviEdofrOlX1amfgIYE4R1cT7dLwFq7pFpoozwDmTs15EmfOAITMecwV?=
 =?us-ascii?Q?ggA9RUKKt9o1XhnRi16aVVTPmo5FIcB62Xo6gViVOxse6wseRinvhS5myuOH?=
 =?us-ascii?Q?zxCoQIhTLGOaKuximEjokZBOs4uHyheEulHoAIkb2mjoDPQ/vOTzpg4aEXQJ?=
 =?us-ascii?Q?A5F6E4BP2gp7NlKFqMhZGsdKvZreCyVxDuzb0uThgsQ+Y5LzgWb2omocXa+o?=
 =?us-ascii?Q?9Pp8qb3MRjIqFM7S88Lul1+7Q74q/SPDfw0yVxRd8qN+qnPOtTqWhIAKRdyj?=
 =?us-ascii?Q?j1CfzNI8W3ztzpe5i/8nTJb08jNCoE8vPsPumcXiVoko4bjwes811BgGlRAx?=
 =?us-ascii?Q?bA5U2iHPcnckzGE4a/lVhxt/66cCOjzk2a9T8hZ2X2diAtfIrBRm1F7YqcqK?=
 =?us-ascii?Q?UzkTlTHVxDM9Ob1fWYMeAuY8NPK41NZjOnS+M6PF3K/lWzc50ltho0IYXdnG?=
 =?us-ascii?Q?zQSBSMjjeLZg+5uQnoQg7Jjm5hnNL5xfLXqOSRM2bXrq7LmDlxuP3N+YoAQP?=
 =?us-ascii?Q?g8iotvCnAiXpm0tAR0zbjGAztCmmCFfzOBrw8ROWURcNpLBtdt0ct8WXsuCC?=
 =?us-ascii?Q?jpKxRR2sgsedu7XRakPO7l+FNybfIbuPvzqcuxorrK6J+QBtyRsR5ZgjHHt3?=
 =?us-ascii?Q?sOBHwUFppD+m7atpKyBZDWoqrBvwCP/zvaGGwJ8+2qboQnDZq6o8LP62jWa7?=
 =?us-ascii?Q?1w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5d5f4b4-1fbe-4238-0228-08da645131f2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 21:55:12.2868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J+Z0/20op2Iu+82kqBocEeCxuchGXigVmwgTYnkL1g/j4kySO4umv2+rzmWHIDegHl2439lYiOSYK17R0yZ8cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3925
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/gt: Only kick the signal
 worker if there's been an update
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 12, 2022 at 08:29:32AM +0200, Karolina Drobnik wrote:
> Hi Rodrigo,
> 
> Many thanks for taking another look at the patches.
> 
> On 08.07.2022 16:40, Rodrigo Vivi wrote:
> > On Fri, Jul 08, 2022 at 04:20:13PM +0200, Karolina Drobnik wrote:
> > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > 
> > > One impact of commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove
> > > dma_resv workaround") is that it stores many, many more fences. Whereas
> > > adding an exclusive fence used to remove the shared fence list, that
> > > list is now preserved and the write fences included into the list. Not
> > > just a single write fence, but now a write/read fence per context. That
> > > causes us to have to track more fences than before (albeit half of those
> > > are redundant), and we trigger more interrupts for multi-engine
> > > workloads.
> > > 
> > > As part of reducing the impact from handling more signaling, we observe
> > > we only need to kick the signal worker after adding a fence iff we have
> > 
> > s/iff/if
> 
> This is fine, it means "if, and only if"
> 
> > > good cause to believe that there is work to be done in processing the
> > > fence i.e. we either need to enable the interrupt or the request is
> > > already complete but we don't know if we saw the interrupt and so need
> > > to check signaling.
> > > 
> > > References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 ++-
> > >   1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > > index 9dc9dccf7b09..ecc990ec1b95 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> > > @@ -399,7 +399,8 @@ static void insert_breadcrumb(struct i915_request *rq)
> > >   	 * the request as it may have completed and raised the interrupt as
> > >   	 * we were attaching it into the lists.
> > >   	 */
> > > -	irq_work_queue(&b->irq_work);
> > > +	if (!b->irq_armed || __i915_request_is_complete(rq))
> > 
> > would we need the READ_ONCE(irq_armed) ?
> > would we need to use the irq_lock?
> 
> I'll rephrase Chris' answer here:
> 
> No, it doesn't need either, the workqueuing is unrelated to the irq_lock.
> The worker enables the interrupt if there are any breadcrumbs at the end of
> its task. When queuing the work, we have to consider the race conditions:
> 
>   - If the worker is running and b->irq_armed at this point, we know the
>     irq will remain armed
>   - If the worker is running and !b->irq_armed at this point, we will
>     kick the worker again -- it doesn't make any difference then if the
>     worker is in the process of trying to arm the irq
>   - If the worker is not running, b->irq_armed is constant, no race
> 
> Ergo, the only race condition is where the worker is trying to arm the irq,
> and we end up running the worker a second time.
> 
> The only danger to consider is _not_ running the worker when we need to.
> Once we put the breadcrumb on the signal, it has to be removed at some
> point. Normally this is only performed by the worker, so we have to
> confident that the worker will be run. We know that if the irq is armed
> (after we have attached this breadcrumb) there must be another run of the
> worker.
> 
> The other condition then, if the irq is armed, but the breadcrumb is already
> completed, we may not see an interrupt from the gpu as the breadcrumb may
> have completed as we attached it, keeping the worker alive, but not noticing
> the completed breadcrumb in that case, we have to simulate the interrupt
> ourselves and give the worker a kick.
> 
> The irq_lock is immaterial in both cases.
>

I just pushed the patch. More relying on multiple reviews and on the tests
that unblock our users than on this explanation here.

If the locks exist to protect some access we need to use it. It should be
simple like that. Magic cases where locks don't apply just helps this
castle of cards to fall apart later.

> > > +		irq_work_queue(&b->irq_work);
> > >   }
> > >   bool i915_request_enable_breadcrumb(struct i915_request *rq)
> > > -- 
> > > 2.25.1
> > > 
