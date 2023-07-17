Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63B77566E3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 16:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2AB310E26F;
	Mon, 17 Jul 2023 14:55:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9202010E26E;
 Mon, 17 Jul 2023 14:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689605716; x=1721141716;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yvTnA05ZzGR1DJF/uAPWTRfR54j/KVGkuPgeuc8/RO0=;
 b=PDtGsOZ2KaDPhzBjC0CRHeoib/t2LSzvdspuM66TKSVYEenZO6DHjkYw
 wr5YuDVcKixIueFC9zcnVKHD0iok/VBaKSKlb/p4RHHKVt0cLQ9BwXTNY
 zxmINuVFTjrkglWPHKVZCMFtJdEazLm1YGMDD+H7KNwceHZrXm3cdAkIc
 WNCkr3vLS5a6OGnnT23W10Upqa8Z2DVXAQu3qDCYxjrrT18zXCb3aO/cU
 JUAZ8hmjHP5pT7H72MFTs4UQuEOtSXoXJk+5sCNpSI198j318qu+Fmtxx
 0kuYx3nQvWjPvjyT1adU0TyDd4EJMQSNzrRuA6NR7jalI/O51xVG8RPLM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="355885581"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="355885581"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 07:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="793275621"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="793275621"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jul 2023 07:55:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 07:55:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 07:55:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 07:55:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fyws6Vi4+rKa8CVWqBCKdRbe3VWvkt1ohE8YE0g02WbEDloCGyVbknQRNHGS8FCSk/c5DC/Rf0YRYVWOLM3M4lAS2jpQLztJ7cy2Mz+Xknh8ELXLR450YrLm/lC10vnIVa5UaO+dgkXAwDJ0Rynhu90pn5NmvPZujUqnTPiTb/Hs1EtZAXZlB+GJj2pc6EeHSg6rVbbvB/psZL4TZchJa7X3ck9v0JWIQT6GdZrP2pdL2kWvrNuNk9fUTdFZIiiow1MSOGQyiDUJlYGIy/74pcHXaayxLR642eCTrr/M4ZcdozM31Uu7yBVzG00obgSHSR/K0MooRAyBk46wCSunNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFY5sfQm9kIK0Ej5tWjpV3idw6DhKbmMSYOUo87yFyc=;
 b=LZ7PZfkfqbxhDhNQW41y6wEaYZ4zMZ3DSJvVYvUtyEcArwlvI73IEEZ/rI+QWuKLDIEFCHyJcPqJQ2d/6ZfruVvdJTUNJo4J3od+i0qtK6IE1G7yYViTxD+UnucIgfh/u1fBBRf0N89s1pOSGJnRC14RpIFG8MAIedPG1PelIr/okbhZUzDb/pWXhcp2bqerKy3FZNH71VPcrxp5/LRJyD7Oeqc9k+AL2kRo7GuRh765Bg7ODNlwCOt6Sy6NZPXvR5uOB/LCCH9llbYqqGGCD9zuINsCEPBz/CeYQTdmSDBnQCVgBOqBirbW2Eg5E8/6ip5hQhXMhPbSAuiK1uYDbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 14:55:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 14:55:09 +0000
Date: Mon, 17 Jul 2023 10:55:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZLVWSfKIrOOuVUjX@intel.com>
References: <20230711160214.463134-1-tvrtko.ursulin@linux.intel.com>
 <ZLGEPqoQWsBvTv52@intel.com>
 <b5f66bab-6b17-7d0f-343d-17d11a590f4f@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b5f66bab-6b17-7d0f-343d-17d11a590f4f@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0204.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7562:EE_
X-MS-Office365-Filtering-Correlation-Id: ca38b24c-04b1-4b87-b8cf-08db86d5d0ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lXTtyYB4RJDUINpXMFbDrFC6HoUAmyJPKKmYy87ddebFFwBVI3+uzpS89UYSl5AdCpf0ZDZ9h9XhDRUPMSM0oeJ0HJbSFxhbtBKCSZeHAirnmSo6zzA+/NzU5FGHAiW+18gPeRO6zQOjL5vACvE4yKBNp6/bYdSUFQP1HZSzUobyTUrvVBXJ166OvhMTa3uDf1F1lZ77XHCBHga7zmExPq/UB7BFRhhtj2JP+ZmFBLNZmi5iRkN5UmL1IvJVHk8L7C6vuaWv1ZVp/Dsh7o/rSMLewBH7fuU25bVwG76Ic9wznjNzhaka8kkWRMT4QO64AP5wghNBBt42PehOe9344Q+Ql0LSI+8bNYZCCQ6nvycz+jwQtS5ZkE+dr0ePu6b2q3MEHvNPFkQTB2z6Dqlt74nOOXqqW0llR4zmY7eeP+VuvIE1S2yCL0BhiMX+ifJdU+RgC4yQp7B3g8+pqshrVIXLX1Z1oSEKTZv9lM0/idbDl8Wh0kuOIwn/YLAEGUcZ+fR4tmKdKry0EB9wRmOvrjIH1ixQdS4+QDc9Wh4jIAJILCs9+Cd3Fn2yzqFnjvh/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(366004)(396003)(39860400002)(346002)(451199021)(478600001)(6486002)(6666004)(83380400001)(86362001)(2906002)(30864003)(53546011)(36756003)(186003)(6506007)(26005)(2616005)(6512007)(316002)(66556008)(82960400001)(38100700002)(4326008)(6916009)(66946007)(66476007)(41300700001)(44832011)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jQ120ophGyJlUHg8VO6JmGIHGSXcWqxLkRviqZxZ4Ljtb8yLf5sWGbb4Nird?=
 =?us-ascii?Q?WThcS7Qv74EFqwXLudj19URoTDPiPsEh6y10u8fNIEEzzm/lYbhSZh6D0gOR?=
 =?us-ascii?Q?efY3IjHl5tQeoj1ThF9ZX+I5hCDbvKlbP+r3UXhI9YEHJJ95GfkdwWO2jRso?=
 =?us-ascii?Q?4R1LtPXAETChwTb7q67noRWQ/BnZo2Fk+BRNJ3UAg/93DJphjNXgZi3LJ4u4?=
 =?us-ascii?Q?ChG19QGOWaoVqtflVgLEOdAkQAtkiHQZQswzgm322jLZqN+eEqgKXaeZVbFO?=
 =?us-ascii?Q?lBum/g9Ik8fRaiyHcVbgQetZBR6M2rtRm18tq5dElyP48jf3Ee9iu9BQT0Qz?=
 =?us-ascii?Q?9Pc/JFcG4Orzm5nfPLE0vEgIQ21E45rLLI78tR7y5sWteuN0dPX4gEJK+2x/?=
 =?us-ascii?Q?3A6xnsBfBB1GqJ/VVEFHSJhsca2zLL9bu72XklFKZozJnC+PBtOtUheSA3/K?=
 =?us-ascii?Q?Q0RmRZqDEOLwsmf02h2+92mxKuthmjHrYEM+iEsdqpN+06x7Geq8XYmEU8vw?=
 =?us-ascii?Q?etNOsacF7t5ChHZP8cpNmyfYEO5fpGB/lb3h/D/j6gIZYlEwowP4wS6gZcP5?=
 =?us-ascii?Q?xAA0ooua807SWR92H7OD/IDkq4xRoMTNq+bG4sOvwvYVGn5bW18pJRMzBtqy?=
 =?us-ascii?Q?57RjTGdEpFqroUBrLm7vR94iEdA28wKaDE4NwmCP9wVpkt7t60zxuhyoluX4?=
 =?us-ascii?Q?xgeHG9PJLsGPRfQN8LVWz6EBA570mO/NFNCKAbwg2qlphtUNdalgucQ+Dwnf?=
 =?us-ascii?Q?fT7G523RuIj741UMAg6rBBwBt1DCWnq7bkBlLTcawDLNlzAFo4YjJaaAP23x?=
 =?us-ascii?Q?GZSx8Q/Uv1aK7UKk8xaUurrvyMtqf6YZAKMZiD4ZjZmSfT1eZLr0vlex2LKV?=
 =?us-ascii?Q?1YJ4efMKGjGMtiwr/hbHP9DwZGxdLInqABQwCuuHr/x2IVebXtoBqjF4jO65?=
 =?us-ascii?Q?kCXbdlECODutN/rukbSj0w+1tgqsyrHsvZj4xTmJ5Q4lL7RwPBzB+D4M8IfT?=
 =?us-ascii?Q?6dcnCR+kl3qOzvfOmWaxDcr/jXnKwtxRkS4xIxdQa8EJZpTWrUrpb6y/oAQ0?=
 =?us-ascii?Q?oo3FRwXNVT0+163kfGm7/Tqq1n6gDL91XPlQdlOci0P6OxLO+ra88SdaoFSK?=
 =?us-ascii?Q?qdghZFYdxaVpV1L5QAe8FS4T+vo6gQ4sRC4Id80gQjpMkOCMhlTf1Y8K6Q4N?=
 =?us-ascii?Q?8vNwjPoBVwmn3byzzMbseb17pn9cNtWa3LpHnlr71Dsimo43al0bNm6PyZqX?=
 =?us-ascii?Q?VsSBXn5xOz5gzXqgD2gzZTi09uR7dIWYkT9kgwFUiH5RSig0+yrM5YCOTVlF?=
 =?us-ascii?Q?BIPU8N3lFijcGuvTEsYfqGwvpyU/KlPKBKkv8bM80NVufGLDccj6Njt3m9YM?=
 =?us-ascii?Q?+9T7FxnyyWyEarP4LA5tL9SdReruKQ4mRu7NpoQ6+1LtWzr782eIW4VXKSJ1?=
 =?us-ascii?Q?Fn6jZFVkO314sEnQLKyMZsxYOZwVmLsmskMEA8bgB/Ds7CQUDneuoqJ8tnug?=
 =?us-ascii?Q?l+CtY2b7TLd/y46BnVYspfwVlR4SSmmb0MBEbQ3FWSnSvX6o3ESvkeZHwoam?=
 =?us-ascii?Q?U0cSl2lGn7pabp/Qp44peDsilXxRaiOAU7Jfbbud?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca38b24c-04b1-4b87-b8cf-08db86d5d0ec
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 14:55:09.7387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GtT1O1P52e6Z+f0bqFGqkQJVqXxCXZyLwztr/boxaAZQOBAk6za3057lReq91mzDrGvU+6EAY4SMGSHb+oEKCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] lib/igt_dummyload:
 Extract sync spinner API
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 17, 2023 at 09:34:36AM +0100, Tvrtko Ursulin wrote:
> 
> On 14/07/2023 18:22, Rodrigo Vivi wrote:
> > On Tue, Jul 11, 2023 at 05:02:13PM +0100, Tvrtko Ursulin wrote:
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > 
> > > Sync spinner API is identical and compatible with regular spinners just
> > > that it tries to make sure spinner is actually running on the hardware
> > > before returning from the constructor.
> > > 
> > > A few tests already use it, one more will, so lets promote it into
> > > common library.
> > > 
> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > > ---
> > >   lib/igt_dummyload.c     | 105 ++++++++++++++++++++++++++++++++++++++++
> > >   lib/igt_dummyload.h     |  11 +++++
> > >   tests/i915/drm_fdinfo.c |  81 ++++---------------------------
> > >   tests/i915/gem_eio.c    |  15 ++----
> > >   tests/i915/perf_pmu.c   |  84 +++++---------------------------
> > >   5 files changed, 140 insertions(+), 156 deletions(-)
> > > 
> > > diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
> > > index 9f941cef73e6..d3cee91540b6 100644
> > > --- a/lib/igt_dummyload.c
> > > +++ b/lib/igt_dummyload.c
> > 
> > why here?
> > 
> > > @@ -33,6 +33,7 @@
> > >   #include "drmtest.h"
> > >   #include "i915/gem_create.h"
> > >   #include "i915/gem_engine_topology.h"
> > > +#include "i915/gem.h"
> > >   #include "i915/gem_mman.h"
> > >   #include "i915/gem_submission.h"
> > >   #include "igt_aux.h"
> > > @@ -715,6 +716,110 @@ void igt_unshare_spins(void)
> > >   	IGT_INIT_LIST_HEAD(&spin_list);
> > >   }
> > > +/**
> > > + * __igt_sync_spin_poll:
> > > + * @i915: open i915 drm file descriptor
> > 
> > anyway to make this not i915 centric?
> > or maybe move it to or start a lib that is i915 only?
> > 
> > I know that we have many more lib things that are still i915 centric,
> > but at some point we need to start organizing it...
> 
> Is igt_dummyload i915/xe agnostic already? I missed that. It would be a big
> ask for me to get on top of two uapis and do that.. ugh. :(

no, but I also asked above why igt_dummyload to start with?

> 
> So on the "why here?" part. Assuming taking the i915 route.. where would you
> suggest to put it?

maybe something new inside ./lib/i915 ?

But, well, I actually don't have a better suggestion here, so let's
not block and any clean-up on i915 vs xe will need to come later anyway.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Regards,
> 
> Tvrtko
> 
> > > + * @ahnd: allocator handle
> > > + * @ctx: intel_ctx_t context
> > > + * @e: engine to execute on
> > > + *
> > > + * Starts a recursive batch on an engine.
> > > + *
> > > + * Returns a #igt_spin_t which can be used with both standard and igt_sync_spin
> > > + * API family. Callers should consult @gem_class_can_store_dword to whether
> > > + * the target platform+engine can reliably support the igt_sync_spin API.
> > > + */
> > > +igt_spin_t *
> > > +__igt_sync_spin_poll(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> > > +		     const struct intel_execution_engine2 *e)
> > > +{
> > > +	struct igt_spin_factory opts = {
> > > +		.ahnd = ahnd,
> > > +		.ctx = ctx,
> > > +		.engine = e ? e->flags : 0,
> > > +	};
> > > +
> > > +	if (!e || gem_class_can_store_dword(i915, e->class))
> > > +		opts.flags |= IGT_SPIN_POLL_RUN;
> > > +
> > > +	return __igt_spin_factory(i915, &opts);
> > > +}
> > > +
> > > +/**
> > > + * __igt_sync_spin_wait:
> > > + * @i915: open i915 drm file descriptor
> > > + * @spin: previously create sync spinner
> > > + *
> > > + * Waits for a spinner to be running on the hardware.
> > > + *
> > > + * Callers should consult @gem_class_can_store_dword to whether the target
> > > + * platform+engine can reliably support the igt_sync_spin API.
> > > + */
> > > +unsigned long __igt_sync_spin_wait(int i915, igt_spin_t *spin)
> > > +{
> > > +	struct timespec start = { };
> > > +
> > > +	igt_nsec_elapsed(&start);
> > > +
> > > +	if (igt_spin_has_poll(spin)) {
> > > +		unsigned long timeout = 0;
> > > +
> > > +		while (!igt_spin_has_started(spin)) {
> > > +			unsigned long t = igt_nsec_elapsed(&start);
> > > +
> > > +			igt_assert(gem_bo_busy(i915, spin->handle));
> > > +			if ((t - timeout) > 250e6) {
> > > +				timeout = t;
> > > +				igt_warn("Spinner not running after %.2fms\n",
> > > +					 (double)t / 1e6);
> > > +				igt_assert(t < 2e9);
> > > +			}
> > > +		}
> > > +	} else {
> > > +		igt_debug("__spin_wait - usleep mode\n");
> > > +		usleep(500e3); /* Better than nothing! */
> > > +	}
> > > +
> > > +	igt_assert(gem_bo_busy(i915, spin->handle));
> > > +	return igt_nsec_elapsed(&start);
> > > +}
> > > +
> > > +igt_spin_t *
> > > +__igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> > > +		const struct intel_execution_engine2 *e)
> > > +{
> > > +	igt_spin_t *spin = __igt_sync_spin_poll(i915, ahnd, ctx, e);
> > > +
> > > +	__igt_sync_spin_wait(i915, spin);
> > > +
> > > +	return spin;
> > > +}
> > > +
> > > +/**
> > > + * igt_sync_spin:
> > > + * @i915: open i915 drm file descriptor
> > > + * @ahnd: allocator handle
> > > + * @ctx: intel_ctx_t context
> > > + * @e: engine to execute on
> > > + *
> > > + * Starts a recursive batch on an engine.
> > > + *
> > > + * Returns a #igt_spin_t and tries to guarantee it to be running at the time of
> > > + * the return. Otherwise it does a best effort only. Callers should check for
> > > + * @gem_class_can_store_dword if they want to be sure guarantee can be given.
> > > + *
> > > + * Both standard and igt_sync_spin API family can be used on the returned
> > > + * spinner object.
> > > + */
> > > +igt_spin_t *
> > > +igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> > > +	      const struct intel_execution_engine2 *e)
> > > +{
> > > +	igt_require_gem(i915);
> > > +
> > > +	return __igt_sync_spin(i915, ahnd, ctx, e);
> > > +}
> > > +
> > >   static uint32_t plug_vgem_handle(struct igt_cork *cork, int fd)
> > >   {
> > >   	struct vgem_bo bo;
> > > diff --git a/lib/igt_dummyload.h b/lib/igt_dummyload.h
> > > index 6eb3f2e696bb..b771011af74f 100644
> > > --- a/lib/igt_dummyload.h
> > > +++ b/lib/igt_dummyload.h
> > > @@ -143,6 +143,17 @@ void igt_terminate_spins(void);
> > >   void igt_unshare_spins(void);
> > >   void igt_free_spins(int i915);
> > > +struct intel_execution_engine2;
> > > +
> > > +igt_spin_t *__igt_sync_spin_poll(int i915, uint64_t ahnd,
> > > +				 const intel_ctx_t *ctx,
> > > +				 const struct intel_execution_engine2 *e);
> > > +unsigned long __igt_sync_spin_wait(int i915, igt_spin_t *spin);
> > > +igt_spin_t *__igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> > > +			    const struct intel_execution_engine2 *e);
> > > +igt_spin_t *igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> > > +			  const struct intel_execution_engine2 *e);
> > > +
> > >   enum igt_cork_type {
> > >   	CORK_SYNC_FD = 1,
> > >   	CORK_VGEM_HANDLE
> > > diff --git a/tests/i915/drm_fdinfo.c b/tests/i915/drm_fdinfo.c
> > > index c0e0ba1905f1..5cafa0e469e2 100644
> > > --- a/tests/i915/drm_fdinfo.c
> > > +++ b/tests/i915/drm_fdinfo.c
> > > @@ -138,68 +138,6 @@ static unsigned int measured_usleep(unsigned int usec)
> > >   #define FLAG_HANG (8)
> > >   #define TEST_ISOLATION (16)
> > > -static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > -			       const struct intel_execution_engine2 *e)
> > > -{
> > > -	struct igt_spin_factory opts = {
> > > -		.ahnd = ahnd,
> > > -		.ctx = ctx,
> > > -		.engine = e ? e->flags : 0,
> > > -	};
> > > -
> > > -	if (!e || gem_class_can_store_dword(fd, e->class))
> > > -		opts.flags |= IGT_SPIN_POLL_RUN;
> > > -
> > > -	return __igt_spin_factory(fd, &opts);
> > > -}
> > > -
> > > -static unsigned long __spin_wait(int fd, igt_spin_t *spin)
> > > -{
> > > -	struct timespec start = { };
> > > -
> > > -	igt_nsec_elapsed(&start);
> > > -
> > > -	if (igt_spin_has_poll(spin)) {
> > > -		unsigned long timeout = 0;
> > > -
> > > -		while (!igt_spin_has_started(spin)) {
> > > -			unsigned long t = igt_nsec_elapsed(&start);
> > > -
> > > -			igt_assert(gem_bo_busy(fd, spin->handle));
> > > -			if ((t - timeout) > 250e6) {
> > > -				timeout = t;
> > > -				igt_warn("Spinner not running after %.2fms\n",
> > > -					 (double)t / 1e6);
> > > -				igt_assert(t < 2e9);
> > > -			}
> > > -		}
> > > -	} else {
> > > -		igt_debug("__spin_wait - usleep mode\n");
> > > -		usleep(500e3); /* Better than nothing! */
> > > -	}
> > > -
> > > -	igt_assert(gem_bo_busy(fd, spin->handle));
> > > -	return igt_nsec_elapsed(&start);
> > > -}
> > > -
> > > -static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > -			       const struct intel_execution_engine2 *e)
> > > -{
> > > -	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
> > > -
> > > -	__spin_wait(fd, spin);
> > > -
> > > -	return spin;
> > > -}
> > > -
> > > -static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > -			     const struct intel_execution_engine2 *e)
> > > -{
> > > -	igt_require_gem(fd);
> > > -
> > > -	return __spin_sync(fd, ahnd, ctx, e);
> > > -}
> > > -
> > >   static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
> > >   {
> > >   	if (!spin)
> > > @@ -264,7 +202,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
> > >   	ahnd = get_reloc_ahnd(spin_fd, ctx->id);
> > >   	if (flags & TEST_BUSY)
> > > -		spin = spin_sync(spin_fd, ahnd, ctx, e);
> > > +		spin = igt_sync_spin(spin_fd, ahnd, ctx, e);
> > >   	else
> > >   		spin = NULL;
> > > @@ -349,7 +287,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> > >   	memset(tval, 0, sizeof(tval));
> > > -	spin = spin_sync(gem_fd, ahnd, ctx, e);
> > > +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
> > >   	read_busy_all(gem_fd, tval[0]);
> > >   	slept = measured_usleep(batch_duration_ns / 1000);
> > > @@ -418,14 +356,14 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> > >   			__submit_spin(gem_fd, spin, e_, 64);
> > >   			busy_class[e_->class]++;
> > >   		} else {
> > > -			spin = __spin_poll(gem_fd, ahnd, ctx, e_);
> > > +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e_);
> > >   			busy_class[e_->class]++;
> > >   		}
> > >   	}
> > >   	igt_require(spin); /* at least one busy engine */
> > >   	/* Small delay to allow engines to start. */
> > > -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> > > +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
> > >   	read_busy_all(gem_fd, tval[0]);
> > >   	slept = measured_usleep(batch_duration_ns / 1000);
> > > @@ -475,12 +413,12 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> > >   		if (spin)
> > >   			__submit_spin(gem_fd, spin, e, 64);
> > >   		else
> > > -			spin = __spin_poll(gem_fd, ahnd, ctx, e);
> > > +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e);
> > >   		busy_class[e->class]++;
> > >   	}
> > >   	/* Small delay to allow engines to start. */
> > > -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> > > +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
> > >   	read_busy_all(gem_fd, tval[0]);
> > >   	slept = measured_usleep(batch_duration_ns / 1000);
> > > @@ -624,7 +562,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
> > >   			ahnd = get_reloc_ahnd(i915, ctx->id);
> > >   			if (flags & TEST_BUSY)
> > > -				spin = spin_sync(i915, ahnd, ctx, NULL);
> > > +				spin = igt_sync_spin(i915, ahnd, ctx, NULL);
> > >   			else
> > >   				spin = NULL;
> > > @@ -732,11 +670,12 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
> > >   			if (spin)
> > >   				__virt_submit_spin(i915, spin, ctx[i], 64);
> > >   			else
> > > -				spin = __spin_poll(i915, ahnd, ctx[i], NULL);
> > > +				spin = __igt_sync_spin_poll(i915, ahnd, ctx[i],
> > > +							    NULL);
> > >   		}
> > >   		/* Small delay to allow engines to start. */
> > > -		usleep(__spin_wait(i915, spin) * count / 1e3);
> > > +		usleep(__igt_sync_spin_wait(i915, spin) * count / 1e3);
> > >   		val = read_busy(i915, class);
> > >   		slept = measured_usleep(batch_duration_ns / 1000);
> > > diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
> > > index d889d67dcebd..6d4b8f7df909 100644
> > > --- a/tests/i915/gem_eio.c
> > > +++ b/tests/i915/gem_eio.c
> > > @@ -47,6 +47,7 @@
> > >   #include "i915/gem_ring.h"
> > >   #include "igt.h"
> > >   #include "igt_device.h"
> > > +#include "igt_dummyload.h"
> > >   #include "igt_fb.h"
> > >   #include "igt_kms.h"
> > >   #include "igt_stats.h"
> > > @@ -429,22 +430,12 @@ static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > >   	return __igt_spin_factory(fd, &opts);
> > >   }
> > > -static void __spin_wait(int fd, igt_spin_t *spin)
> > > -{
> > > -	if (igt_spin_has_poll(spin)) {
> > > -		igt_spin_busywait_until_started(spin);
> > > -	} else {
> > > -		igt_debug("__spin_wait - usleep mode\n");
> > > -		usleep(500e3); /* Better than nothing! */
> > > -	}
> > > -}
> > > -
> > >   static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > >   			     unsigned long flags)
> > >   {
> > >   	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, flags);
> > > -	__spin_wait(fd, spin);
> > > +	__igt_sync_spin_wait(fd, spin);
> > >   	return spin;
> > >   }
> > > @@ -963,7 +954,7 @@ static void test_inflight_external(int fd)
> > >   	fence = execbuf.rsvd2 >> 32;
> > >   	igt_assert(fence != -1);
> > > -	__spin_wait(fd, hang);
> > > +	__igt_sync_spin_wait(fd, hang);
> > >   	manual_hang(fd);
> > >   	gem_sync(fd, hang->handle); /* wedged, with an unready batch */
> > > diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> > > index 0806a8e545b5..a888027ad9af 100644
> > > --- a/tests/i915/perf_pmu.c
> > > +++ b/tests/i915/perf_pmu.c
> > > @@ -377,68 +377,6 @@ static unsigned int measured_usleep(unsigned int usec)
> > >   #define TEST_OTHER (128)
> > >   #define TEST_ALL   (256)
> > > -static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > -			       const struct intel_execution_engine2 *e)
> > > -{
> > > -	struct igt_spin_factory opts = {
> > > -		.ahnd = ahnd,
> > > -		.ctx = ctx,
> > > -		.engine = e->flags,
> > > -	};
> > > -
> > > -	if (gem_class_can_store_dword(fd, e->class))
> > > -		opts.flags |= IGT_SPIN_POLL_RUN;
> > > -
> > > -	return __igt_spin_factory(fd, &opts);
> > > -}
> > > -
> > > -static unsigned long __spin_wait(int fd, igt_spin_t *spin)
> > > -{
> > > -	struct timespec start = { };
> > > -
> > > -	igt_nsec_elapsed(&start);
> > > -
> > > -	if (igt_spin_has_poll(spin)) {
> > > -		unsigned long timeout = 0;
> > > -
> > > -		while (!igt_spin_has_started(spin)) {
> > > -			unsigned long t = igt_nsec_elapsed(&start);
> > > -
> > > -			igt_assert(gem_bo_busy(fd, spin->handle));
> > > -			if ((t - timeout) > 250e6) {
> > > -				timeout = t;
> > > -				igt_warn("Spinner not running after %.2fms\n",
> > > -					 (double)t / 1e6);
> > > -				igt_assert(t < 2e9);
> > > -			}
> > > -		}
> > > -	} else {
> > > -		igt_debug("__spin_wait - usleep mode\n");
> > > -		usleep(500e3); /* Better than nothing! */
> > > -	}
> > > -
> > > -	igt_assert(gem_bo_busy(fd, spin->handle));
> > > -	return igt_nsec_elapsed(&start);
> > > -}
> > > -
> > > -static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > -			       const struct intel_execution_engine2 *e)
> > > -{
> > > -	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
> > > -
> > > -	__spin_wait(fd, spin);
> > > -
> > > -	return spin;
> > > -}
> > > -
> > > -static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > -			     const struct intel_execution_engine2 *e)
> > > -{
> > > -	igt_require_gem(fd);
> > > -
> > > -	return __spin_sync(fd, ahnd, ctx, e);
> > > -}
> > > -
> > >   static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
> > >   {
> > >   	if (!spin)
> > > @@ -484,7 +422,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
> > >   	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
> > >   	if (flags & TEST_BUSY)
> > > -		spin = spin_sync(gem_fd, ahnd, ctx, e);
> > > +		spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
> > >   	else
> > >   		spin = NULL;
> > > @@ -536,7 +474,7 @@ busy_start(int gem_fd, const intel_ctx_t *ctx,
> > >   	 */
> > >   	sleep(2);
> > > -	spin = __spin_sync(gem_fd, ahnd, ctx, e);
> > > +	spin = __igt_sync_spin(gem_fd, ahnd, ctx, e);
> > >   	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
> > > @@ -583,7 +521,7 @@ busy_double_start(int gem_fd, const intel_ctx_t *ctx,
> > >   	 * re-submission in execlists mode. Make sure busyness is correctly
> > >   	 * reported with the engine busy, and after the engine went idle.
> > >   	 */
> > > -	spin[0] = __spin_sync(gem_fd, ahnd, ctx, e);
> > > +	spin[0] = __igt_sync_spin(gem_fd, ahnd, ctx, e);
> > >   	usleep(500e3);
> > >   	spin[1] = __igt_spin_new(gem_fd,
> > >   				 .ahnd = ahndN,
> > > @@ -675,7 +613,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> > >   	igt_assert_eq(i, num_engines);
> > > -	spin = spin_sync(gem_fd, ahnd, ctx, e);
> > > +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
> > >   	pmu_read_multi(fd[0], num_engines, tval[0]);
> > >   	slept = measured_usleep(batch_duration_ns / 1000);
> > >   	if (flags & TEST_TRAILING_IDLE)
> > > @@ -737,7 +675,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> > >   		else if (spin)
> > >   			__submit_spin(gem_fd, spin, e_, 64);
> > >   		else
> > > -			spin = __spin_poll(gem_fd, ahnd, ctx, e_);
> > > +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e_);
> > >   		val[i++] = I915_PMU_ENGINE_BUSY(e_->class, e_->instance);
> > >   	}
> > > @@ -749,7 +687,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> > >   		fd[i] = open_group(gem_fd, val[i], fd[0]);
> > >   	/* Small delay to allow engines to start. */
> > > -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> > > +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
> > >   	pmu_read_multi(fd[0], num_engines, tval[0]);
> > >   	slept = measured_usleep(batch_duration_ns / 1000);
> > > @@ -796,7 +734,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> > >   		if (spin)
> > >   			__submit_spin(gem_fd, spin, e, 64);
> > >   		else
> > > -			spin = __spin_poll(gem_fd, ahnd, ctx, e);
> > > +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e);
> > >   		val[i++] = I915_PMU_ENGINE_BUSY(e->class, e->instance);
> > >   	}
> > > @@ -807,7 +745,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> > >   		fd[i] = open_group(gem_fd, val[i], fd[0]);
> > >   	/* Small delay to allow engines to start. */
> > > -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> > > +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
> > >   	pmu_read_multi(fd[0], num_engines, tval[0]);
> > >   	slept = measured_usleep(batch_duration_ns / 1000);
> > > @@ -848,7 +786,7 @@ no_sema(int gem_fd, const intel_ctx_t *ctx,
> > >   			   fd[0]);
> > >   	if (flags & TEST_BUSY)
> > > -		spin = spin_sync(gem_fd, ahnd, ctx, e);
> > > +		spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
> > >   	else
> > >   		spin = NULL;
> > > @@ -1406,7 +1344,7 @@ multi_client(int gem_fd, const intel_ctx_t *ctx,
> > >   	 */
> > >   	fd[1] = open_pmu(gem_fd, config);
> > > -	spin = spin_sync(gem_fd, ahnd, ctx, e);
> > > +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
> > >   	val[0] = val[1] = __pmu_read_single(fd[0], &ts[0]);
> > >   	slept[1] = measured_usleep(batch_duration_ns / 1000);
> > > @@ -1776,7 +1714,7 @@ static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int gt,
> > >   	igt_debug("Using engine %u:%u\n", e.class, e.instance);
> > > -	return spin_sync(i915, ahnd, *ctx, &e);
> > > +	return igt_sync_spin(i915, ahnd, *ctx, &e);
> > >   }
> > >   static void
> > > -- 
> > > 2.39.2
> > > 
