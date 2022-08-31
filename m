Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A4E5A892D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 00:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C3C10E530;
	Wed, 31 Aug 2022 22:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EC1D10E530
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 22:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661985969; x=1693521969;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=95ik1MnoqrlzIhDGf1U8ED56UpuInmYMKHsMvj78aiM=;
 b=g0OEAb64KGSICv46N4AghSjJKvE5GZlcVBSTQleWJqr6KdYcmQI7Sdf5
 lClsnTCFYHYRo8vgJ4qPgo6Ln2KiLCoUxXXvhGDv4BUT+gmY7Q9+JDfoK
 /xl8bsJyQUgq9pvZ2c4NColZKA+zr2tEWXinfADpSOIQ03o1SazLMDxNl
 rElnkp3z1hL0eRj5Hv2KzdCIYcmGOGUvsvPTzPKLoFdXLO8gxFkW8jPq+
 2Bb5QzCzzDciMnGA5FsoYrfYib7T/w04d2u+1F/bMYKjx9JMR975JFM2a
 /E8KDT0mAg2MKZPN2iEYd9iYbabt73SJ++I6XL3KfLcTbgnDTXwiGWkI6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="294300719"
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="294300719"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 15:46:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="738265255"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 31 Aug 2022 15:46:08 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 15:46:08 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 15:46:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 15:46:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 15:46:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCS+qZ3makeGG03U2EKBVjjUM277ZBSZK3ITyR4v2TCLeMtyGIWEmXmNqHtEwx7Lh/wT6vmyoAvcOmLBtmgLgryuKndHONIxbF+qu2P+y3BRqJdgQbMxYD+hkNm8ItNSn6YbgJb0kUUH6gkkkFfnnW76ZeVy67Us4Jpj7HRbZdT8UaSEGUa4kaOgQoU50ZVXoleaD+ULZ8z7IUAGn3N6hYWJ/FUvbiZ73VO2c9mzorJiERk3vmkrANLN5ocPa69m2fLEeKXu6uVT7+vUWTZqVQrVCqrfF9fLDjRrJgUZ3jwfzmC5TrItY/7uVfaTj5RxqmZrYgSS0SQLJUObN6dmFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/sBSEy3MHR6Nj8Cgf7ZlOtOli8PZdebW5ien7R5XGM=;
 b=n8QrEoDsVxt3SyaBjelAAFo7LFlivQjKQgqBjl83Ae4NFsNenbqUbG3hcuk+BxD48V1REQXlA3XbpJEGJ1aJyXkoW8ExTuNZXjvkXv6QegKil7JGUYi3vNEeZnNFMOGXlxucCuRUavqZ5fXCGXVanEad5nExdnVOIyV1Ts+rs1zl3jCJLYBqmCcE99w9Lx53dgo/KJJNf9YwFDua6dwQYfQbJuGyJvWKBEZQ+ZQy3Ir2hwPrbHOMxuQwPIXdIcS1L/YNa85I4spC4bhVN1IK+NAtktFDR+xRl+DS5qtHWd3N/rQVB3YXBM6KT1DBOVRlNETHEurYr1+OlKyahE6zwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SN6PR11MB2944.namprd11.prod.outlook.com (2603:10b6:805:cd::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Wed, 31 Aug 2022 22:46:00 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5566.021; Wed, 31 Aug 2022
 22:46:00 +0000
Date: Wed, 31 Aug 2022 15:45:49 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <Yw/kna1W/vrCiMmF@unerlige-ril>
References: <20220831193355.838209-1-ashutosh.dixit@intel.com>
 <20220831193355.838209-2-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220831193355.838209-2-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR13CA0098.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::13) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eed0716d-5141-4160-8007-08da8ba2937d
X-MS-TrafficTypeDiagnostic: SN6PR11MB2944:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YYy/WJsSLXXNteTZ/S6SVltsJF0T6e0f+froIu7i4sErWgzWYrFuhr5+81F0HnEiUOA71rMg5DbhJz6nRTwpDnYF/TK1RTeY15tIq0E22JPdYbLALZh/O27jvRZ9nrsNWO5BX3Tc8sfqMn+0yaUDzbYKWD8gpba5sLu/8IXGWi8C0aHvm2AyiJpXEdrlWz3G3R2czTWYkddjSL6iLx8cms2f7qmEmWJLfP4QqM2GUcsEeJVF1acTq8UDO8/caqhhoo93utTFw1vz6D/23XBQmEdw4XbGshNqKL52MguRNjLIUscx3Wd5Nvojwpqy1nyuGYR4GT9wcURCTC7OXdfDtijGfnoTqSkPjIi9X0pJEkgs/6DW92gGwv2Tlsk6x+AqULhUpKD9S2oKCO61MQD7DKoC3tJ/n+skZeQ8dJ6CnuCtneHPxt42jSVncisyDiRcFHuQbfQ5o7i21WHhPZOyPOlEPc4iPDeUCl0i2rEpbmDTzOepl5QuEhhdXa9Tp0ss5LusfbExQ3dpTfF/0dBepSFDW7LY1RhICt5GZ3rAuisYFxAucQL/8jlswrHF6jPWrU/EUQrMkE+8pjyeQMw3kVFR6j7ZvGRSAXKlWaG8/mM+SptW1wKyYEz4TyHQL+NjTmBOVLrR748GRDWsD7HftYagRM6V2NUrW/RmVIoqT8gCQNWI2QDJZE3WJBroby+Q8YnGuOjFRAlGvnaCiF8Myg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(346002)(366004)(39860400002)(376002)(396003)(136003)(66476007)(86362001)(82960400001)(6486002)(5660300002)(8676002)(33716001)(4326008)(6862004)(478600001)(66556008)(41300700001)(38100700002)(8936002)(66946007)(6636002)(316002)(186003)(26005)(83380400001)(6512007)(6666004)(2906002)(9686003)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmNoM0V0MU1VY3ZDTzR5TmludjFrTHM2ZVIyZi9iQjdtaEczb2lpRVJjdlIz?=
 =?utf-8?B?S2QrYjBUTmEzUDVPTmJzL2Y4QmVnZjBsU0pCKzIwMU11MVZGR0RqTXpBYVdY?=
 =?utf-8?B?YVlqb1NibmcwRmxLN0h4UEVrelo3ZEpwaUh0SzBudnNyRzdaK1pCUU1rOU1t?=
 =?utf-8?B?N2ZqdTNuRCs4OUpmYjFhNEpwWWlDcU50czgyT3NpRGIxYmdrVG1aL2NzNnpU?=
 =?utf-8?B?YzRTbXl4VjAranAyN1RBQ3crRytJekZkZnpCRk00dDkwN3A4NCs5eCtCeGFK?=
 =?utf-8?B?bk1ONDREc1BHZ2hYbVc0SDVnT1FTZ0pZVE1sRVR2N1FSOWptT01XWUJXS1h4?=
 =?utf-8?B?ZllVZXNaWGZmQlowUkUrUElDQ2ZuREM1SnVHdXc4R01TcTlwME5oL3VwQVlv?=
 =?utf-8?B?Y0x0d3JPVzZqcnpZUkF4eTNwa3prY1U0aE9zUmV2K1ovbCt0emRKbE9KeGxV?=
 =?utf-8?B?MXZnNWxvR1B3QXVyK3BEeU4waEEvbUh5cUdxcGdIR0lZQyt5alFXL1duK1RZ?=
 =?utf-8?B?NzQvMFlTWVo4bEFtNE81KytudmVtd0JoYW5DYk5uQUllazdvcXV0eG5FZ3Y2?=
 =?utf-8?B?SDZvVjNCSmZTWXZ0dDM5RlFGeEtxQU94ay9LRXdkWm8yT0dEaFFwRWFkeUJR?=
 =?utf-8?B?TDFoK3g4dFIvd29HTjZPaU9MVU4xVmU0QmlmNVZhaVp2eGdnakxUejVqSTUx?=
 =?utf-8?B?YUlTQ1FrWjVPNWlVTnhQWnkrbC96R1JuZm9MQm5aT2NDSUlPSVNBYlNCQ1Iy?=
 =?utf-8?B?YkJIa2ZnSGFNT0hmaW5VZXJ2dzM2OFdnSi9NZGl0Y09qS3Q5cEduYnNuMkFv?=
 =?utf-8?B?K1dpUVdGSklHZDVEV2pCTnBWQzRqVmtkeGRybk9TYjlOcWU2b1RSaVRLRWha?=
 =?utf-8?B?UGxMOUJDKzhWMXUvbmxicGd4cnpCWXRIZ3lMNy9NckFmTkhEK3lYbnlVb3la?=
 =?utf-8?B?Mks4cmN3SzlhS0Fhc2FDTEFWL3V3NzhzQnFwYno0RmQzK3VDY2RLZnMrTnho?=
 =?utf-8?B?T1RzbU9leDNReWdWbk9XUXp3Sk1XMzNYajNaSk44ZWQ1Sm5xQjNITzNINlNJ?=
 =?utf-8?B?QTFoMTZ5N05zR3FYUkpBZVFUaUVIK1ExZ2RBS05qUTd0TFQ0Ynpjd3RNcm53?=
 =?utf-8?B?T2p6blBpYWdBbGllT0pEOVdhNnpPTkZuUVZhUmI1dWpuMWxtR2hZVkFrNWhT?=
 =?utf-8?B?d3dDSkdCQkhyZFhXVDJHM1dUeE14M2F4alZaNEFRSnBGSithZDVXSGFsL0Zq?=
 =?utf-8?B?ZVhpZDNyeDBqWXdRbks0R2R0S0tsTXJ3UTRuZ3RwT1pLRXAyVUVBZ3pQMGxE?=
 =?utf-8?B?ZWNUSG9IU2grSVhEVEFHWE81Tnp5a3pMYlVia3NrcWplbnQ4ZWcxSlVzTFNW?=
 =?utf-8?B?d29zZDIyRlRlYy9nVlNmQUtFck11YVUrMmJQNzNGTXpjN05za1h2RW5Wd3dk?=
 =?utf-8?B?UFFPZVZGRDZ5MGZ4aEh1a3R3SG4wQktCYlpTL2tIUStEalh0SmcvTGhUYTYz?=
 =?utf-8?B?VDhaNTc4c1B4YXN2azJZdWZqTWVwMjR5YitZYlgrTkZacTVNQXlZSFlRWjBa?=
 =?utf-8?B?SWFjYkgwaGxYeVZWMWJ1Yk1CRDNUWjdISG9DbFB6RTI4Sk9SSXRURUt0S1c0?=
 =?utf-8?B?cFExcTlkd2IrSXloYTlVZlVxN3JBVGNXMnVUTWkraUtDNnJuWDhUVGRzTmM1?=
 =?utf-8?B?cEVYbXUwTWJPQXB4czIrUzd6VGVoeDdGaVpWR2wvUlZNcE9nNE9Ham5lSmFz?=
 =?utf-8?B?THJkSjRKZ3JDZSttV29tdzZvZkM4SFI2a2VYSEVuM1hvYlZvTnNac2pDUE5n?=
 =?utf-8?B?dDk3RzFOV3hsaDNSdURBeEdNUHJKektxZ21DdmRYN2Q2WXVPQjA5VDRuUE83?=
 =?utf-8?B?aWlYK3NLOUc2U0Fqa1Z6VlhWcTN2Wk02ZThIamUwY1Zwa3liUnZZc3NJUUZu?=
 =?utf-8?B?K2dVNmxjNlpJbXBFWVNZTjB4REpqODlxVDEzc0RxQVQ0OFBhR3YrZDN5d21o?=
 =?utf-8?B?ZldxY203YXh5dXNrOHNuYUpmN1dadEU3UnVpVi9xVjAvdmcyYytiUWU5b2Jq?=
 =?utf-8?B?WG9HeUpsYlRpd25LL0dNS2dweFZ5WHFSck5jQmIxQlZodWhxeWxyY0thNGg4?=
 =?utf-8?B?MXUvYmRCZUhmNHo4R1NRbWVOT0dsUTZsd0FtYnFhTnppOXFlcWcycGF6WGlP?=
 =?utf-8?Q?temhntGA3ohI71nrc0RQ7Qo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eed0716d-5141-4160-8007-08da8ba2937d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2022 22:46:00.3503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D/qYOWt5ApaH98JW5MZL/lpzYpKWLYGjeZqphqeCk2P14ZzrzzcvtI0UhiLY+ijUPY4BId6y7GC67OALVNgUSiwNmVTTnKFUWWR/FeYeetY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2944
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] Fix per client busyness locking
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

On Wed, Aug 31, 2022 at 12:33:55PM -0700, Ashutosh Dixit wrote:
>1. Do all ce->stats updates and reads under guc->timestamp.lock

Other than the question about READ_ONCE/WRITE_ONCE, I am not sure I 
understand what's broken in the locking logic here. Can you please add 
some description? thanks

>2. Pin context image before reading
>3. Merge __guc_context_update_clks and guc_context_update_stats into a
>   single function
>4. Call lrc_update_runtime() unconditionally in guc_context_update_stats
>5. Seems no need to update ce->stats.active with this approach
>
>Some of the above steps may not be correct or complete but the idea is to
>discuss/improve the original patch.
>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_context.c       |  2 +-
> drivers/gpu/drm/i915/gt/intel_context_types.h |  2 +-
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 41 ++++++++++---------
> 3 files changed, 24 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>index e2d70a9fdac0..c004f676de27 100644
>--- a/drivers/gpu/drm/i915/gt/intel_context.c
>+++ b/drivers/gpu/drm/i915/gt/intel_context.c
>@@ -581,7 +581,7 @@ u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
> 	u64 total, active;
>
> 	if (ce->ops->update_stats)
>-		ce->ops->update_stats(ce);
>+		return ce->ops->update_stats(ce);

This is an improvement that we can add and eventually, we can make this 
a GuC specific vfunc. Doing so may also remove the 
COPS_RUNTIME_ACTIVE_TOTAL option that I added to GuC specific context 
ops.

>
> 	total = ce->stats.runtime.total;
> 	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
>index f7ff4c7d81c7..699435bfff99 100644
>--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>@@ -59,7 +59,7 @@ struct intel_context_ops {
>
> 	void (*sched_disable)(struct intel_context *ce);
>
>-	void (*update_stats)(struct intel_context *ce);
>+	u64 (*update_stats)(struct intel_context *ce);
>
> 	void (*reset)(struct intel_context *ce);
> 	void (*destroy)(struct kref *kref);
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>index bee8cf10f749..40d0edaf2e0a 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -1376,7 +1376,6 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
> 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
> }
>
>-static void __guc_context_update_clks(struct intel_context *ce);
> static void guc_timestamp_ping(struct work_struct *wrk)
> {
> 	struct intel_guc *guc = container_of(wrk, typeof(*guc),
>@@ -1401,7 +1400,8 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>
> 	/* adjust context stats for overflow */
> 	xa_for_each(&guc->context_lookup, index, ce)
>-		__guc_context_update_clks(ce);
>+		if (ce->ops->update_stats)
>+			ce->ops->update_stats(ce);

context pinning logic needs to be separated for this (ping) path vs. the 
query path - intel_context_get_total_runtime_ns().
>
> 	intel_gt_reset_unlock(gt, srcu);
>
>@@ -1476,17 +1476,21 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
> 			 guc->timestamp.ping_delay);
> }
>
>-static void __guc_context_update_clks(struct intel_context *ce)
>+static u64 guc_context_update_stats(struct intel_context *ce)
> {
> 	struct intel_guc *guc = ce_to_guc(ce);
> 	struct intel_gt *gt = ce->engine->gt;
> 	u32 *pphwsp, last_switch, engine_id;
>-	u64 start_gt_clk, active;
> 	unsigned long flags;
>+	u64 total, active = 0;
> 	ktime_t unused;
>
>+	intel_context_pin(ce);

intel_context_pin can sleep and we are not allowed to sleep in this path 
- intel_context_get_total_runtime_ns(), however we can sleep in the ping 
   worker path, so ideally we want to separate it out for the 2 paths.

> 	spin_lock_irqsave(&guc->timestamp.lock, flags);
>
>+	lrc_update_runtime(ce);
>+	total = ce->stats.runtime.total;

For long running contexts and frequenct queries, calling this ^ when a 
context is active does not add value. I would just call it in the else 
like before.

>+
> 	/*
> 	 * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context is switched
> 	 * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>@@ -1502,27 +1506,26 @@ static void __guc_context_update_clks(struct intel_context *ce)
> 	guc_update_pm_timestamp(guc, &unused);
>
> 	if (engine_id != 0xffffffff && last_switch) {
>-		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>-		__extend_last_switch(guc, &start_gt_clk, last_switch);
>-		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
>-		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>-		WRITE_ONCE(ce->stats.active, active);
>-	} else {
>-		lrc_update_runtime(ce);
>+		__extend_last_switch(guc, &ce->stats.runtime.start_gt_clk, last_switch);
>+		active = intel_gt_clock_interval_to_ns(gt,
>+			      guc->timestamp.gt_stamp - ce->stats.runtime.start_gt_clk);

Makes sense. Earlier it was a rmw, now it's just a write to 
ce->stats.runtime.start_gt_clk.

> 	}
>
> 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>+	intel_context_unpin(ce);
>+
>+	return total + active;

return ce->stats.runtime.total + active;

and then drop the local copy of total by bringing back the else{}.

> }
>
>-static void guc_context_update_stats(struct intel_context *ce)
>+void lrc_update_runtime_locked(struct intel_context *ce)
> {
>-	if (!intel_context_pin_if_active(ce)) {
>-		WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>-		WRITE_ONCE(ce->stats.active, 0);
>-		return;
>-	}
>+	struct intel_guc *guc = ce_to_guc(ce);
>+	unsigned long flags;
>
>-	__guc_context_update_clks(ce);
>+	intel_context_pin(ce);
>+	spin_lock_irqsave(&guc->timestamp.lock, flags);
>+	lrc_update_runtime(ce);
>+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
> 	intel_context_unpin(ce);

 From where lrc_update_runtime_locked is being called, I would assume 
that the context is already pinned (until unpin_guc_id is called).

Thanks,
Umesh

> }
>
>@@ -2780,7 +2783,7 @@ static void guc_context_unpin(struct intel_context *ce)
> {
> 	struct intel_guc *guc = ce_to_guc(ce);
>
>-	lrc_update_runtime(ce);
>+	lrc_update_runtime_locked(ce);
> 	unpin_guc_id(guc, ce);
> 	lrc_unpin(ce);
>
>-- 
>2.34.1
>
