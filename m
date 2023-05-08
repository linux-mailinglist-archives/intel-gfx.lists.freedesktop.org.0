Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6D06FB623
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 19:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C39B10E066;
	Mon,  8 May 2023 17:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B92EC10E066
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 17:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683568728; x=1715104728;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=2YU10ATqApcIyGzOC6SYrvnrRLLA4kcIRPeOakp26Mw=;
 b=mIrBnvAWeS1+huEEs/tjNB4rWSJKbBtX1F3b5WgUmpH6RUCgD0pur7rk
 /YjhCcQKjLWT048cKTM4ZoRVLqrsEYMUU2lpD5vI/F6YAuaRAERmU+9fN
 OQgeRW7sg/Tq9Ran4eVZRayLvD/1ZPgmiP7T85eIHnOS6Uxl1AYRQkMsY
 /Wstchh+xt4iiAOcWMx/jNCqI3FDEOIb1uNs2Tpqrr2+bJMth56/9E2Dc
 O8WTI6o2V3n1MYEMhOh81tICfJXljcPwrW0h219ayoD3R3BUB5INVM2s+
 /XDF76SIrhgvTKcC95f1K5hlsljVi2abuImqC0dQtUR88+5HpoTsXp6yz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="347183228"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="347183228"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 10:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="763487919"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="763487919"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 08 May 2023 10:58:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 10:58:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 10:58:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 10:58:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I56QzNOu428o+OYbgtcRgZYb8Rp+Rwv9HD0LksqOaujBxWf+k6QkjFrARndjo5NJZrI1AfkiTNnXyuNPwggxupwtAz/rqSc8fapcJEvBrC7K+JMW35+LevqyDBaymiVq4dMJCSfH3OVH/1WNTCeeoIN4Aeh8S0Ix1sIccD/WnrI5gIa46cpEYtBLkRyVi+hDigccF8No2KPQP2dyqi9eUHqEJmfxNbdkACfzsGcw78y/yhW00W3F1KoXs3yFTQICIaSYCbzZVxHZoElTA0Pg1oPtadbjpkSkCRONZgfF47OGRPolcruyZZFpNNN3vbZ+/vRf0vCIs/cYTYWe9Pckqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xzm+ZYknox48zJMVdeahIcIJpvJ9naxGIwMgESbZL7o=;
 b=CfihI7MYuOrs0gp/91nPrdu4zZqrk1Ej/ox9GZMgBAToN6WvgK2OVpa05Pp++V25u5SwvCehIt8aGhxmOLUxlFtms4Y+su044ACYDxTRKmhEjC8mBdoUaaTEP5Zk3395262hEdAWfVVlycKAuddvLDofch3NPfNZTsZmDcGHY6N68zOWRGq1s4m+L77+tvWuvEf/WJeW0hryoGD9qfxql8YNG19l3G2+d3uemmWEJjVIKe1Eqt/Hr3h9y/sCgTrRfLui7NLcjxiYladjqk8YVcN40+Dzb011uECzwUI6R5a9D9EVULkJsi6o2e8VgBmbg/ciFw6WY/a3Kx2yGQpY4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH7PR11MB7606.namprd11.prod.outlook.com (2603:10b6:510:271::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.32; Mon, 8 May 2023 17:58:45 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b%6]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 17:58:44 +0000
Date: Mon, 8 May 2023 10:58:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZFk4UnFNC7wocHd/@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-5-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230506005816.1891043-5-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0113.namprd03.prod.outlook.com
 (2603:10b6:a03:333::28) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH7PR11MB7606:EE_
X-MS-Office365-Filtering-Correlation-Id: 67cdd63e-5170-440f-e127-08db4feddda6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0xkRkXz+oK4TOixaeHSJkaKjuGs0eM+tM+kBuuEQEXq6QQ/CNUWziHQv/f5CwX3QmSL0lUjgHoIiFY7W5jiCslt6jiUfv/KQ/KL7pgQNY7AxbcsbvCFXJs+TLzPQ0GMXayXZWrohcB03EZO88f384mVsDyj2nipZ3H4wdSBY4C05n6DAMB5zu8cSZl8N0XdWhbfCrEfAJPrEpl8Bg5jVv9wMPBe8/tEbjpzqjjxyvuMAhhCrsub1Y6EPT10wQnnRF4kuRAwoLHmwZBx1kbtSZh4BNXtAt/jqgcZXfN/25swtRPxGRzh+gT/9HsG0Gbf7gOg4ALJEyB/NkOrizwoKMdqQFMzq4gCi2tEdaKuI4q4SdNGr+D9+i83GPe7po3+8XMGw1tQaf1SKujkmfyyvQfNMuYvSYqW2X/BO/3wDg6yXr0JS05rR80dJouElxb1nIjA8QyfRs81bm5avrQeP84mG5trUYjlqqP2ZANLw/KkJD7KzbKFAvLJ41lxLP1oZZ2YTJUagdPW4sBPeUD4R5U9cplI9CXCeNkHtgTd8KZ9yFcOyAEnt7EJ1cC6RMAzj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(39860400002)(366004)(396003)(451199021)(2906002)(478600001)(316002)(41300700001)(8936002)(8676002)(110136005)(66476007)(6636002)(66556008)(5660300002)(66946007)(6486002)(6512007)(6506007)(26005)(186003)(82960400001)(83380400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXAzU1ROSTJHVGVxWGx2eW1heWFPSVozMG9VRG1SWGs4T2RWeWlFMWFpd2ZB?=
 =?utf-8?B?T1hWbXMvSzg2U1dNMGVNZFZoaVlwVlMyay9aM0pRdXZmOG9JRThKRG5HWlM3?=
 =?utf-8?B?WkU5RWZUVjFzMzg2R0JkbjYzNjFZMVNVWDJsc2lXUGFUVE5KMGhCNDJwL0o1?=
 =?utf-8?B?dkdXSTdZREhwN09laWR3bmVpV3pSbzRWZ0F4V2pvTEVBUkg1RFNjYXhDSDlW?=
 =?utf-8?B?RnNEb0ZzRzl1TUJpTU9LYjFXNnQ2VktnZXltSmlJMkJ4VmxrSzUzbi93SUx6?=
 =?utf-8?B?VG4zT1BOQnBMdnNBNDN0TEtEdGhVb1RCT21ZazdDcEg0M1B3YjJzSUN5U1Rh?=
 =?utf-8?B?M1RpSnB2L0lHUVlkR2I3RWU4YzFQV3N4b0ZCZ2sxVTBpdEMwK2FnWjQwMEYx?=
 =?utf-8?B?VmdZa3krZWtuelVMMnRlQUZDQ3ZiSDRJOUZKTENBam5YM0M5aGwxNnBiamJ2?=
 =?utf-8?B?WTlGS1AzYXJTRjZpVnJ1SThOSXhEelkxc3JaZ0FtR1lrTTBvdXk4VXJoUWNK?=
 =?utf-8?B?TlRrMjBpbVBiWFZVVVRScFQvK040Y3luVllDc2dONko3N3FlMzEveHB4RWta?=
 =?utf-8?B?S1U0ZStyakNvbHZzWVRLek5ybGc2d1VWYTJBdHRYQTdXeE14RFA0SWRkanRP?=
 =?utf-8?B?RFcrSzMxaENHWWkxVkZSNnpvTDNtVDRGVTl0T2JIeFhEc1N4K3d0Z2pMOXU1?=
 =?utf-8?B?MGdNYnBBTXM3RFFVdlUraGc5VkU3aU5YSFVrMWNLZC9VcHovNGFtTkJuUVA3?=
 =?utf-8?B?bnpTKzREcCtFT1grTTQ4UDVjaGNXNi80ckZzdWZ3enZRcmRmTWVWSy9UaXgv?=
 =?utf-8?B?aG0vSWxZUC9NMDlwZFhudGxtdDdYWUNscjFxUlFIVVhXbXNTeTRVRERrckdy?=
 =?utf-8?B?UU5ncEJDbVgvaEJYbnB5OHUvM3g2R2JFa09IbjdLa3NWV0JVRU1HWjNKMGpW?=
 =?utf-8?B?TXVBR1pnR3lkcFVCQVcxN0hkWStkV1JyUHdudmxlWkFiQ1gyM1ZjbHdDYTd0?=
 =?utf-8?B?L1dzQk1WK0psR0ExWmt5U2RjTTNXUE1DN2NHQVgxYWJYZzR6L2p0OXM5ZXJM?=
 =?utf-8?B?T012RVl5VlFyMmJydk1mK3FuaHl0dytFVU1HUzRHSFZWYmRHbE02K3lnenpa?=
 =?utf-8?B?bjByVVhqbGhTTlRVQU96SENCS2FYemdhNVRkL3BJK011N3dva1ZQYWkydFBC?=
 =?utf-8?B?bW1ZRzM3YUE2WEVUQ1ZxbmI4b25Zb0E0eHkvcWVHTGdpNTkwekJpQ2dPdmdC?=
 =?utf-8?B?cUpvM21XLzA3RU84eVE1L2c5aFRGU2RmNDEyNnZnNFRjOExvUUdtQU16RFJk?=
 =?utf-8?B?TzZ4M3h0ZzhvYTZ4NTBQNldoVUhQSHY1czhkMW5SWWdsS2Q2ZGRCbnJtcGt4?=
 =?utf-8?B?MW5HN1U3dGYvemtDdnBvRmNqYWhNa1NMRDJraDR2UE9BUUFrbkxkVEFMejZp?=
 =?utf-8?B?WmRZMXdPZm5JQTZIYkh4QzkzZ25ubnRDVE9vRjRLOXpGTENjVFl2UmhTV1Mw?=
 =?utf-8?B?bUtOM09LSDBlRzcwU1ZKUEY0ZFBnUWE0VldjRFhLR09hc2RnVU0vVGhRSjRv?=
 =?utf-8?B?TVlFMmJtbVQ2eFIzZWhDRVZybStJeDR2MXR2TEVGb3pXRXpJNUxXNTdUZnBs?=
 =?utf-8?B?ZXZKdzc2VjdDdUhpRkVIK0VqcDJEcVhjTjlYRnZXUEV2U3BhMTFocVJOaHV2?=
 =?utf-8?B?OGh6Kzgxc1dVR3lxem5Lb2Q4QldmOUhGMVRRcXhqbk1PUjRoMTEzRURCV1Mw?=
 =?utf-8?B?UHZYNG5JaXhrZFdreVJ5dTdpSEYycWo1QkgvcEw2MUVjLzhYNXUrcDcxNkhH?=
 =?utf-8?B?U1RBekcxRDFtTVkzdTJwMld3OW85OEV1WGZaVGk4K0E3NTdkSXZFYjhnRTUr?=
 =?utf-8?B?b01URHNLRzBmaUZ2Sy9iT1F3YmxPcjlJb1RORkRBTlR5Ym04UU5QVUdkQnRs?=
 =?utf-8?B?TFZuZmxCcVhSR2VjRDFVb2hXR1NpM3lCRVZoSlNGZmFWUUxZbjhXc0ZTdGRD?=
 =?utf-8?B?K1BXQ0FkTDJzVzA2SDZ0K0hybVRrcEhXWlU3a0JvMlZ3a09yNjRlM2VOQkhr?=
 =?utf-8?B?VGZ0b3JLK08wdU9lMlhWOGl2aUd5WXp0RXRiL1QvVGdTWWZIaGlzOGZ6NTZl?=
 =?utf-8?B?TWt0S1ZVcjcxTGtnS0ttWmY4N1NGTnJFU1E4aERMSERNYzNyWXFNc1pVSHI4?=
 =?utf-8?Q?hrWiCeKDTAYN3xwV1qd9pog=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67cdd63e-5170-440f-e127-08db4feddda6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 17:58:44.9364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: scTNR2g9u2ytdAFjie6VN+U+k6liTsVsLr9KPPJ+GxQIr4uAb//nNn6QkHJZR8Td2ZXetb7pIlM6KAmRPxj6E/68+UBXIuMlpv0dPzmjrTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7606
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/pmu: Add reference counting to
 the sampling timer
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

On Fri, May 05, 2023 at 05:58:14PM -0700, Umesh Nerlige Ramappa wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>We do not want to have timers per tile and waste CPU cycles and energy via
>multiple wake-up sources, for a relatively un-important task of PMU
>sampling, so keeping a single timer works well. But we also do not want
>the first GT which goes idle to turn off the timer.
>
>Add some reference counting, via a mask of unparked GTs, to solve this.

Looks like the previous patch is a prep work for this one. I would 
mention something about this patch in the previous patch, but then I am 
not sure what's the norm in these scenarios. Recently I created some IGT 
patches that are prep work and refer to future patches in the series.

As is, this patch is 

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh

>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++--
> drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
> 2 files changed, 14 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>index 2b63ee31e1b3..669a42e44082 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.c
>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>@@ -251,7 +251,9 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
> 	 * Signal sampling timer to stop if only engine events are enabled and
> 	 * GPU went idle.
> 	 */
>-	pmu->timer_enabled = pmu_needs_timer(pmu, false);
>+	pmu->unparked &= ~BIT(gt->info.id);
>+	if (pmu->unparked == 0)
>+		pmu->timer_enabled = pmu_needs_timer(pmu, false);
>
> 	spin_unlock_irq(&pmu->lock);
> }
>@@ -268,7 +270,10 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
> 	/*
> 	 * Re-enable sampling timer when GPU goes active.
> 	 */
>-	__i915_pmu_maybe_start_timer(pmu);
>+	if (pmu->unparked == 0)
>+		__i915_pmu_maybe_start_timer(pmu);
>+
>+	pmu->unparked |= BIT(gt->info.id);
>
> 	spin_unlock_irq(&pmu->lock);
> }
>@@ -438,6 +443,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
> 	 */
>
> 	for_each_gt(gt, i915, i) {
>+		if (!(pmu->unparked & BIT(i)))
>+			continue;
>+
> 		engines_sample(gt, period_ns);
>
> 		if (i == 0) /* FIXME */
>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>index a686fd7ccedf..3a811266ac6a 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.h
>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>@@ -76,6 +76,10 @@ struct i915_pmu {
> 	 * @lock: Lock protecting enable mask and ref count handling.
> 	 */
> 	spinlock_t lock;
>+	/**
>+	 * @unparked: GT unparked mask.
>+	 */
>+	unsigned int unparked;
> 	/**
> 	 * @timer: Timer for internal i915 PMU sampling.
> 	 */
>-- 
>2.36.1
>
