Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE29C701003
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 22:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C34610E07A;
	Fri, 12 May 2023 20:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E7B10E07A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 20:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683925092; x=1715461092;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YmLlP0bvsMW7jWVgHVEPaK2pGm4sAeycpwTvG+2+7mE=;
 b=BhZpSxr1bgR4Vyq/3D156oNftJ8bdN3LMnwv8H+BX1SLr9AKLUSDj5vz
 kPXW4H89TUwCeMrxI4rhjq4JQaTmhV7X/KyhF3/ZRINU17Xc41JeQkEZR
 0tC0AMoeaj6rg0VEJ6EY9FwTcoyrlK1augaSTiPo1gvNZnel2BduJ29bm
 FES/STeouU/WKlSt96F/wFF2u/gCA6eHPQZ3poM59rCGoxAUDu8Av1w8K
 mqBfEjrRaNamXUL79pm2zweMLkbKH9sH3mPO7Ecd7eWglAo/Je1gVpFtS
 MlyS0LAuuZ8QZPoa3RVbMWXFmBmNLUTMn2tUR2DhWCzw4tCVxb70o5imN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="331249744"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="331249744"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 13:58:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="769933672"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="769933672"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 12 May 2023 13:58:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 13:58:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 13:58:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 13:58:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mRs76lq6N8LS29T4gdpo9XHtluI44CIXlkHT9zJMEsXvudtbcgLGmYl/w/0bBZGOqdNm/czfAMG4omNsbjRgiOojhvP5z+vLLytf5uEO7T+SvWP6KSU149LqaQRZJKwwoXYssMwyKk5aw1eo/4H2+wgAVXnifsSJKrReSysR/GFba9ejXSpRorXZcTNE0rwfur0mZOddb3zZHlou4uvs0bYdo+rRvemOISA9UzkCTb+kuqYp3IKhC3tTX0088y2GBtaXqCz/UgoTxOqC5VV9uqNIiKp8XgZtks46u9fG1JjRxxzOokj274GacEHozNYD1NniKwZMBeVDOcuaW5DfSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pnuR7HgJs8YEki3b9WV7irOP0830XRlaT3stuysTM/Y=;
 b=MdQLxrrHm7QzqJF7gxFmXdNn7Vo5nhOrYAsMz4PcHoHncr61IFz0B56I15QeTjJLRyVDeJbMKt1tKjSsNyFbjfl14C7wca43IeAeRphkKrUAtGI0xDEiOyBZTPpvqcS+TN8MVh2xycb3bVK5XYsAcOIokXDGLpetMET/Mq7c+TIqE33zJtfoGuel0yezxpaXU2/G4Tt4TY6pyVPToJMPAB+6gPDn1aWyfCflTn4SXmtkctF8qFONnB90J9ET7kEmc3mjj+xanXkNmz7/wrbrIhSfydqqbI3H880oMofwPy94xGfdG50k7ThrHIX+Qc77SduQXwF6C7MAoi1dJsOCEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CH3PR11MB7795.namprd11.prod.outlook.com (2603:10b6:610:120::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.24; Fri, 12 May
 2023 20:58:09 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%3]) with mapi id 15.20.6387.023; Fri, 12 May 2023
 20:58:09 +0000
Date: Fri, 12 May 2023 13:57:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZF6oV4FT73yWtWD7@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-6-umesh.nerlige.ramappa@intel.com>
 <87ttwie4qn.wl-ashutosh.dixit@intel.com>
 <e96ccb15-057b-5a2e-3e77-54ffbadf86a4@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <e96ccb15-057b-5a2e-3e77-54ffbadf86a4@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0193.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::18) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CH3PR11MB7795:EE_
X-MS-Office365-Filtering-Correlation-Id: cc90c226-5c1d-49e6-91a9-08db532b971a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FbOK6DYRGmKSNKjS5i3JeOax2BnXg20JhMrwAwLkcoHc6s76Xqlso0iVJ4k4Ejwe7R8s+OxUXaXIt/9Z4Vkg96FNZnyLpTI/tjm+gSC60tCm8IagScG+/NHA200C0YsOo9csLlCo9GUde3koNH3lrs0NxYlkcN3A0Q1vnk8SL3hkuOVG5jm4EMQiP7rzQvFQeBryFB2xCc8mvS0+3EdDdf2Mjhg+I59JWiDyrYCZDvboQKCYPbneSnLGYWPYh6Q89YOdG5SvbL4Wuqy20OcQR09zTRE93NfUZAtOszpE9k3lmr47OfsM7rHjruSBPD+FbSFqex10BBduNcmLHw52Ic98Ino+yXPRyhe5DINWnUAkHsTQFDdAIz2Jtj5qIQSip2y/YxescKkyZqxJU7gKMNimvkAkypJDa1VTeE6cB93Qe54zMsvlHGrSTiux+Z6PBMNkbixR8UpjI70f/nfWOSog8pbcVVbGgCU0bzT+X9igbzQTXqz7xzZiwNuI0JhAnaEqzz/uETDK+18VNynGKefA4YGJfYT6QHXNHfZXNq/dpEo0Fu5u0fZDog+kNlY4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199021)(82960400001)(5660300002)(6512007)(83380400001)(26005)(6506007)(186003)(38100700002)(2906002)(30864003)(8676002)(8936002)(478600001)(6486002)(6666004)(316002)(41300700001)(66946007)(6916009)(4326008)(66556008)(66476007)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzhpcUNibCtPeEpWRkthMXFCcUxjeURPZ0FBUHB4ZUV3MjYvQk9GZkxuVHAz?=
 =?utf-8?B?c3orMzR1dWIvRFlvNGZXcFN0YkpycTFwejBoMmVHamZoNHE4UUdQczk1T096?=
 =?utf-8?B?eWhpeHc2V25KU0dlMVhXdi9YMG5abk56ZDdvSDBtMmViN2xhRkRZL1JaVXpp?=
 =?utf-8?B?RWY0aEREcTFjdFVQVnZSdEMrOUQybGxvaGhQT213Z1lPV1Vsa0YzbXpyblc0?=
 =?utf-8?B?Z2pXelhLcnN3OFdObWpxTnRiTlZjOWtNbExaVENXd2JSRW1NQVZFNnZ1L0F6?=
 =?utf-8?B?OXJLcVg5ZkVFS1AzU05GdXpTcS9KQWFoR1JFSXdFdzd2MFpTRjE0c3pQbWdh?=
 =?utf-8?B?MzNVNGl2dGpRM2dPcUluQzBuUnJFUnpzYzlnK1RVVVlyRDdGSDMrMjJ4Y0Fl?=
 =?utf-8?B?cVZ6Y0huRUJad242dDZadm1aaVRWSi8vaENrUGhXOERFUWxvZUVmUndJVGhL?=
 =?utf-8?B?ZnZPeUZHYkE1S05NN0xvaFVmVEcvWmNvb2pXeFRERXh4RlJ1MTVQVlRxcUo4?=
 =?utf-8?B?WUNlcHlYN1R5N0FWVEJ1VnJhR2syOU51UlVrOS9RRTBrczFqaWNKdGR0a3lM?=
 =?utf-8?B?c283UzNGNXJub01PbURHWEdHV3FEakcvd0xyUXZOMWNKMDNWWUhlaCs4Z0Vw?=
 =?utf-8?B?OTV3b3B6eW93V3Z2empnNXNjZWhhUThjcWk5TVVONkRwQTBmTXlUWmNMcXBx?=
 =?utf-8?B?amZ2czJWS2ZwWjNyUndlYUwyY0hzWndyckJ1L3RSWGhoMHVwd085RmlYYWVT?=
 =?utf-8?B?bloxZjRHWUora2NxdExCaXRaeEEvd0ZXUGhzMXlWb0dKSmVQczk2d0JTUzZa?=
 =?utf-8?B?ZzVwK3RhREhIcm5KYlhLWDZieFZPVlY5M0NEcE5Mc2JJUkVnV0ZrcncxSE4r?=
 =?utf-8?B?VnpxU05Oank3MDJLWCtiN29wMnFDRzFSeUQwVDVZQkplT3d1Q2t6QjlRWG5J?=
 =?utf-8?B?ZmNIMVVrS2JGcEI2bjF0NklGNkhCWHkxMVQ4ZjRFenRVSWFxYkxJZE8ySS94?=
 =?utf-8?B?UWJBSW9pVHFTdEE0bmtvc1VtUGR0K01aK284V2FMYWNWZWpvNUNQRnlacmpP?=
 =?utf-8?B?bE9OejhkZmZsbDE4d1N3Y2g0SzI5a0RLdTk1bW50dzlXQnQ1MDQ3bEhSR1dr?=
 =?utf-8?B?SklYMWhLNFFnNS9BUmJ2bHlzYkNIS2ZRTVIrdzdpSTNjTVl6ZUplN3FjeVhD?=
 =?utf-8?B?TlB0cWhnVGxlNWpBVHBZWUlxS1I5ZG1HZCt1MmhwSDE4ekdUN0xTaTFZWGFx?=
 =?utf-8?B?c3d0NXBmbHBCaGFVbzJGOS8vN0RSbEFUelBaSk0ya0FSTnN4WkFCeDloNUcx?=
 =?utf-8?B?QmVQNFNMMmt0UlVMcGc4TTcrbTc0TjhlS1NpQ0xqN3Z4Rmh3SDFqV3oxeTRv?=
 =?utf-8?B?b2hkdEJWUEg3S3VCYXhvbTRiL1VMb3lraUhIRytOL0taR0tSS0huRmxqQmJw?=
 =?utf-8?B?dG8rSE40dVB5NTM1OHphQ2ljTVdOWFE4NWlnMVM0YVA0bUlVMG1zTTIrQ1Ju?=
 =?utf-8?B?amFFYkxKR09uSG9ST2hUYnBpUDI3NC9PVm9PTENZdkxEL3Vhb1ZRUVN0YUNl?=
 =?utf-8?B?Yis1WXNyTm5jNmZCanRoMWd4QjhOK09mb08zb0MwRHhRTUJCY0czZEdVaGcr?=
 =?utf-8?B?eUFjZHJjK3Q4R2dscDY2L3B1Y3NSMnlPOGpaL0tGUHRnTGEzWWo5c3FxTFBv?=
 =?utf-8?B?eVJpTEVnMllsYkxIRStVUFIrdFNUejkrVHh1V3llb0N4Q0xwVFVuVm1qV1lB?=
 =?utf-8?B?TGFuckc5eTk3KytxRjQ3VkltYnNST1YvT1RVVGs4MmtEYVZuMmRXbXpNbXNi?=
 =?utf-8?B?bWRubmhFdWl4ZThvK0tINVZxQ0xJbUFNZ2FLNDJJaDE0SFU3dUZjenQxeFNs?=
 =?utf-8?B?ZEFKTlVsK2xsK3pIbUI3a1I2Tms0TG4yWWF3RFpMellkdmYrWExYd0NuMGtP?=
 =?utf-8?B?cjBIUFhqL0svZ3cvby9Wamt1RmlyUEpnR1pnOHppQllra0YzYS93T0YxQ3Ew?=
 =?utf-8?B?SHkvZlN1RWR5bk41YmNFbTB5SGN3cjNhZ1ZNWUcyQk44NGRSd2pIZHNxaGsz?=
 =?utf-8?B?M042QXRnN1gwOWRRWVhUc3NkdnBQeFZJUmZoenRxYWpOMlZmdHhUUW13Njk3?=
 =?utf-8?B?N2VKOFZuRTk3RDdaUFFyV1RkT0lDdEY5UmR4aTViK1JsZU1YVGJlck9uMWFl?=
 =?utf-8?Q?RNxHAg/b32Q2YK/rTaM3sM8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc90c226-5c1d-49e6-91a9-08db532b971a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 20:58:09.0143 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WZzqnvyYa/tKvgytQgNj97wqRBJOPMynnTEA+aFaDc8HkYJixR0u4mDabZE0rbL5rRKNzXyFCjk7sQAMEpef60s0BIEG2ejfu65s8Fsz1f0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7795
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/pmu: Prepare for multi-tile
 non-engine counters
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

On Fri, May 12, 2023 at 11:56:18AM +0100, Tvrtko Ursulin wrote:
>
>On 12/05/2023 02:08, Dixit, Ashutosh wrote:
>>On Fri, 05 May 2023 17:58:15 -0700, Umesh Nerlige Ramappa wrote:
>>>
>>>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>>Reserve some bits in the counter config namespace which will carry the
>>>tile id and prepare the code to handle this.
>>>
>>>No per tile counters have been added yet.
>>>
>>>v2:
>>>- Fix checkpatch issues
>>>- Use 4 bits for gt id in non-engine counters. Drop FIXME.
>>>- Set MAX GTs to 4. Drop FIXME.
>>>
>>>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>---
>>>  drivers/gpu/drm/i915/i915_pmu.c | 150 +++++++++++++++++++++++---------
>>>  drivers/gpu/drm/i915/i915_pmu.h |   9 +-
>>>  include/uapi/drm/i915_drm.h     |  17 +++-
>>>  3 files changed, 129 insertions(+), 47 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>>index 669a42e44082..12b2f3169abf 100644
>>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>@@ -56,11 +56,21 @@ static bool is_engine_config(u64 config)
>>>	return config < __I915_PMU_OTHER(0);
>>>  }
>>>
>>>+static unsigned int config_gt_id(const u64 config)
>>>+{
>>>+	return config >> __I915_PMU_GT_SHIFT;
>>>+}
>>>+
>>>+static u64 config_counter(const u64 config)
>>>+{
>>>+	return config & ~(~0ULL << __I915_PMU_GT_SHIFT);
>>
>>ok, but another possibility:
>>
>>	return config & ~REG_GENMASK64(63, __I915_PMU_GT_SHIFT);
>
>It's not a register so no. :) GENMASK_ULL maybe but meh.

leaving as is.

>
>>>+}
>>>+
>>>  static unsigned int other_bit(const u64 config)
>>>  {
>>>	unsigned int val;
>>>
>>>-	switch (config) {
>>>+	switch (config_counter(config)) {
>>>	case I915_PMU_ACTUAL_FREQUENCY:
>>>		val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
>>>		break;
>>>@@ -78,15 +88,20 @@ static unsigned int other_bit(const u64 config)
>>>		return -1;
>>>	}
>>>
>>>-	return I915_ENGINE_SAMPLE_COUNT + val;
>>>+	return I915_ENGINE_SAMPLE_COUNT +
>>>+	       config_gt_id(config) * __I915_PMU_TRACKED_EVENT_COUNT +
>>>+	       val;
>>>  }
>>>
>>>  static unsigned int config_bit(const u64 config)
>>>  {
>>>-	if (is_engine_config(config))
>>>+	if (is_engine_config(config)) {
>>>+		GEM_BUG_ON(config_gt_id(config));
>>
>>This GEM_BUG_ON is not needed since:
>>
>>	static bool is_engine_config(u64 config)
>>	{
>>	        return config < __I915_PMU_OTHER(0);
>>	}
>
>True!

dropping BUG_ON

>
>>>+
>>>		return engine_config_sample(config);
>>>-	else
>>>+	} else {
>>>		return other_bit(config);
>>>+	}
>>>  }
>>>
>>>  static u64 config_mask(u64 config)
>>>@@ -104,6 +119,18 @@ static unsigned int event_bit(struct perf_event *event)
>>>	return config_bit(event->attr.config);
>>>  }
>>>
>>>+static u64 frequency_enabled_mask(void)
>>>+{
>>>+	unsigned int i;
>>>+	u64 mask = 0;
>>>+
>>>+	for (i = 0; i < I915_PMU_MAX_GTS; i++)
>>>+		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>>>+			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>>>+
>>>+	return mask;
>>>+}
>>>+
>>>  static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>>  {
>>>	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>>>@@ -120,9 +147,7 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>>	 * Mask out all the ones which do not need the timer, or in
>>>	 * other words keep all the ones that could need the timer.
>>>	 */
>>>-	enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>>>-		  config_mask(I915_PMU_REQUESTED_FREQUENCY) |
>>>-		  ENGINE_SAMPLE_MASK;
>>>+	enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
>>
>>u32 enable & u64 frequency_enabled_mask
>>
>>ugly but ok I guess? Or change enable to u64?

making pmu->enable u64 as well as other places where it is assigned to 
local variables.

>
>Hmm.. yes very ugly. Could have been an accident which happened to 
>work because there is a single timer (not per tile).

Happened to work because the frequency mask does not spill over to the 
upper 32 bits (even for multi tile).

--------------------- START_SECTION ----------------
>
>Similar issue in frequency_sampling_enabled too. Gt_id argument to it 
>seems pointless.

Not sure why it's pointless. We need the gt_id to determine the right 
mask for that specific gt. If it's not enabled, then we just return 
without pm_get and async put (like you mention later). 

And this piece of code is called within for_each_gt.

>
>So I now think whole frequency_enabled_mask() is just pointless and 
>should be removed. And then pmu_needs_time code can stay as is. 
>Possibly add a config_mask_32 helper which ensures no bits in upper 32 
>bits are returned.
>
>That is if we are happy for the frequency_sampling_enabled returning 
>true for all gts, regardless of which ones actually have frequency 
>sampling enabled.
>
>Or if we want to implement it as I probably have intended, we will 
>need to add some gt bits into pmu->enable. Maybe reserve top four same 
>as with config counters.

Nope. What you have here works just fine. pmu->enable should not include 
any gt id info. gt_id[63:60] is only a concept for pmu config sent by 
user.  config_mask and pmu->enable are i915 internal bookkeeping (bit 
masks) just to track what events need to be sampled.  The 'other' bit 
masks are a function of gt_id because we use gt_id to calculate a 
contiguous numerical value for these 'other' events. That's all. Once 
the numerical value is calculated, there is no need for gt_id because 
config_mask is BIT_ULL(numerical_value). Since the numerical values 
never exceeded 31 (even for multi-gts), everything worked even with 32 
bit pmu->enable.

>
>In this case the config_mask needs to be updated to translate not just 
>the config counter into the pmu tracked event bits, but config counter 
>gt id into the pmu->enabled gt id.
>
>Sounds easily doable on a first thought.

------------------------ END_SECTION ----------------


>>>
>>>	/*
>>>	 * When the GPU is idle per-engine counters do not need to be
>>>@@ -164,9 +189,37 @@ static inline s64 ktime_since_raw(const ktime_t kt)
>>>	return ktime_to_ns(ktime_sub(ktime_get_raw(), kt));
>>>  }
>>>
>>>+static unsigned int
>>>+__sample_idx(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>>>+{
>>>+	unsigned int idx = gt_id * __I915_NUM_PMU_SAMPLERS + sample;
>>>+
>>>+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));
>>
>>Does this GEM_BUG_ON need to be split up as follows:
>>
>>	GEM_BUG_ON(gt_id >= I915_PMU_MAX_GTS);
>>	GEM_BUG_ON(sample >= __I915_NUM_PMU_SAMPLERS);
>>
>>Since that is what we really mean here isn't it?
>
>ARRAY_SIZE check seems the safest option to me, given it is defined as:
>
> sample[I915_PMU_MAX_GTS * __I915_NUM_PMU_SAMPLERS];
>
>What problem do you see here?
>
>>>+
>>>+	return idx;
>>>+}
>>>+
>>>+static u64 read_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>>>+{
>>>+	return pmu->sample[__sample_idx(pmu, gt_id, sample)].cur;
>>>+}
>>>+
>>>+static void
>>>+store_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample, u64 val)
>>>+{
>>>+	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur = val;
>>>+}
>>>+
>>>+static void
>>>+add_sample_mult(struct i915_pmu *pmu, unsigned int gt_id, int sample, u32 val, u32 mul)
>>>+{
>>>+	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur += mul_u32_u32(val, mul);
>>>+}
>>
>>Gripe: I think this code should have per event data structures which store
>>all information about a particular event. Rather than storing it in these
>>arrays common to all events (and in bit-fields common to all events) which
>>results in the kind of dance we have to do here. Anyway too big a change to
>>make now but something to consider if we ever do this for xe.
>
>Could do a two dimensional array like:
>
> sample[I915_PMU_MAX_GTS][__I915_NUM_PMU_SAMPLERS];
>
>Any better? Honestly I don't remember if there was a special reason I 
>went for a flat array back then.

Maybe we improve it in XE. I am looking for the shortest path to get 
this merged without any functional issues.

>
>>
>>>+
>>>  static u64 get_rc6(struct intel_gt *gt)
>>>  {
>>>	struct drm_i915_private *i915 = gt->i915;
>>>+	const unsigned int gt_id = gt->info.id;
>>>	struct i915_pmu *pmu = &i915->pmu;
>>>	unsigned long flags;
>>>	bool awake = false;
>>>@@ -181,7 +234,7 @@ static u64 get_rc6(struct intel_gt *gt)
>>>	spin_lock_irqsave(&pmu->lock, flags);
>>>
>>>	if (awake) {
>>>-		pmu->sample[__I915_SAMPLE_RC6].cur = val;
>>>+		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
>>>	} else {
>>>		/*
>>>		 * We think we are runtime suspended.
>>>@@ -190,14 +243,14 @@ static u64 get_rc6(struct intel_gt *gt)
>>>		 * on top of the last known real value, as the approximated RC6
>>>		 * counter value.
>>>		 */
>>>-		val = ktime_since_raw(pmu->sleep_last);
>>>-		val += pmu->sample[__I915_SAMPLE_RC6].cur;
>>>+		val = ktime_since_raw(pmu->sleep_last[gt_id]);
>>>+		val += read_sample(pmu, gt_id, __I915_SAMPLE_RC6);
>>>	}
>>>
>>>-	if (val < pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur)
>>>-		val = pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur;
>>>+	if (val < read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED))
>>>+		val = read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED);
>>>	else
>>>-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = val;
>>>+		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
>>>
>>>	spin_unlock_irqrestore(&pmu->lock, flags);
>>>
>>>@@ -207,13 +260,20 @@ static u64 get_rc6(struct intel_gt *gt)
>>>  static void init_rc6(struct i915_pmu *pmu)
>>>  {
>>>	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>>>-	intel_wakeref_t wakeref;
>>>+	struct intel_gt *gt;
>>>+	unsigned int i;
>>>+
>>>+	for_each_gt(gt, i915, i) {
>>>+		intel_wakeref_t wakeref;
>>>
>>>-	with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref) {
>>>-		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
>>>-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
>>>-					pmu->sample[__I915_SAMPLE_RC6].cur;
>>>-		pmu->sleep_last = ktime_get_raw();
>>>+		with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
>>>+			u64 val = __get_rc6(gt);
>>>+
>>>+			store_sample(pmu, i, __I915_SAMPLE_RC6, val);
>>>+			store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
>>>+				     val);
>>>+			pmu->sleep_last[i] = ktime_get_raw();
>>>+		}
>>>	}
>>>  }
>>>
>>>@@ -221,8 +281,8 @@ static void park_rc6(struct intel_gt *gt)
>>>  {
>>>	struct i915_pmu *pmu = &gt->i915->pmu;
>>>
>>>-	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(gt);
>>>-	pmu->sleep_last = ktime_get_raw();
>>>+	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
>>>+	pmu->sleep_last[gt->info.id] = ktime_get_raw();
>>>  }
>>>
>>>  static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
>>>@@ -362,34 +422,30 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
>>>	}
>>>  }
>>>
>>>-static void
>>>-add_sample_mult(struct i915_pmu_sample *sample, u32 val, u32 mul)
>>>-{
>>>-	sample->cur += mul_u32_u32(val, mul);
>>>-}
>>>-
>>>-static bool frequency_sampling_enabled(struct i915_pmu *pmu)
>>>+static bool
>>>+frequency_sampling_enabled(struct i915_pmu *pmu, unsigned int gt)
>>>  {
>>>	return pmu->enable &
>>>-	       (config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>>>-		config_mask(I915_PMU_REQUESTED_FREQUENCY));
>>>+	       (config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt)) |
>>>+		config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt)));
>>
>>Here again:
>>
>>	u32 pmu->enable & u64 config_mask
>>
>>Probably ok?
>>
>>And also in i915_pmu_enable() we have:
>>
>>	pmu->enable |= BIT_ULL(bit);
>>
>>So change pmu->enable to u64?

Right, changing to u64

>>
>>>  }
>>>
>>>  static void
>>>  frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>>  {
>>>	struct drm_i915_private *i915 = gt->i915;
>>>+	const unsigned int gt_id = gt->info.id;
>>>	struct i915_pmu *pmu = &i915->pmu;
>>>	struct intel_rps *rps = &gt->rps;
>>>
>>>-	if (!frequency_sampling_enabled(pmu))
>>>+	if (!frequency_sampling_enabled(pmu, gt_id))
>>>		return;
>>
>>Pre-existing issue, but why do we need this check? This is already checked
>>in the two individual checks for actual and requested freq below:
>>
>>	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id)))
>>
>>	and
>>
>>	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id)))
>>
>>So can we delete frequency_sampling_enabled()? Or is it there to avoid the
>>overhead of intel_gt_pm_get_if_awake() (which doesn't seem to be much)?
>
>I think it was to avoid even getting an already active pm ref if 
>frequency events are not enabled. Timer could be running for instance 
>if only engine wait/sema is enabled. So yeah, just a little bit 
>cheaper than pm get + async put and avoid prolonging the delayed put 
>for no reason. (As the timer races with regular GT pm activities (see 
>mod_delayed_work in __intel_wakeref_put_last).)

leaving as is.

>
>>
>>>
>>>	/* Report 0/0 (actual/requested) frequency while parked. */
>>>	if (!intel_gt_pm_get_if_awake(gt))
>>>		return;
>>>
>>>-	if (pmu->enable & config_mask(I915_PMU_ACTUAL_FREQUENCY)) {
>>>+	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
>>>		u32 val;
>>>
>>>		/*
>>>@@ -405,12 +461,12 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>>		if (!val)
>>>			val = intel_gpu_freq(rps, rps->cur_freq);
>>>
>>>-		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_ACT],
>>>+		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_ACT,
>>>				val, period_ns / 1000);
>>>	}
>>>
>>>-	if (pmu->enable & config_mask(I915_PMU_REQUESTED_FREQUENCY)) {
>>>-		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_REQ],
>>>+	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id))) {
>>>+		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_REQ,
>>>				intel_rps_get_requested_frequency(rps),
>>>				period_ns / 1000);
>>>	}
>>>@@ -447,9 +503,7 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>>>			continue;
>>>
>>>		engines_sample(gt, period_ns);
>>>-
>>>-		if (i == 0) /* FIXME */
>>>-			frequency_sample(gt, period_ns);
>>>+		frequency_sample(gt, period_ns);
>>>	}
>>>
>>>	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
>>>@@ -491,7 +545,12 @@ config_status(struct drm_i915_private *i915, u64 config)
>>>  {
>>>	struct intel_gt *gt = to_gt(i915);
>>>
>>>-	switch (config) {
>>>+	unsigned int gt_id = config_gt_id(config);
>>>+
>>>+	if (gt_id)
>>>+		return -ENOENT;
>>
>>This is just wrong. It is fixed in the next patch:
>>
>>	if (gt_id > max_gt_id)
>>		return -ENOENT;
>>
>>But probably should be fixed in this patch itself. Or dropped from this
>>patch and let it come in in Patch 6, since it's confusing. Though it
>>probably belongs in this patch.
>
>Hmm my thinking was probably to reject gt > 0 in this patch since only 
>the last patch was supposed to be exposing the other tiles. Granted 
>that is not entirely true since this patch already makes access to 
>them available via i915_drm.h. Last patch only makes then discoverable 
>via sysfs.
>
>In this case yes, I'd pull in "gt_id > max_gt_id" into this patch. And 
>this hunk from the next patch too:
>
> 	case I915_PMU_INTERRUPTS:
>+		if (gt_id)
>+			return -ENOENT;
>

pulling in the above snippets from patch 6 to patch 5

>>
>>>+
>>>+	switch (config_counter(config)) {
>>>	case I915_PMU_ACTUAL_FREQUENCY:
>>>		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>>>			/* Requires a mutex for sampling! */
>>>@@ -599,22 +658,27 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
>>>			val = engine->pmu.sample[sample].cur;
>>>		}
>>>	} else {
>>>-		switch (event->attr.config) {
>>>+		const unsigned int gt_id = config_gt_id(event->attr.config);
>>>+		const u64 config = config_counter(event->attr.config);
>>>+
>>>+		switch (config) {
>>>		case I915_PMU_ACTUAL_FREQUENCY:
>>>			val =
>>>-			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_ACT].cur,
>>>+			   div_u64(read_sample(pmu, gt_id,
>>>+					       __I915_SAMPLE_FREQ_ACT),
>>>				   USEC_PER_SEC /* to MHz */);
>>>			break;
>>>		case I915_PMU_REQUESTED_FREQUENCY:
>>>			val =
>>>-			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_REQ].cur,
>>>+			   div_u64(read_sample(pmu, gt_id,
>>>+					       __I915_SAMPLE_FREQ_REQ),
>>>				   USEC_PER_SEC /* to MHz */);
>>>			break;
>>>		case I915_PMU_INTERRUPTS:
>>>			val = READ_ONCE(pmu->irq_count);
>>>			break;
>>>		case I915_PMU_RC6_RESIDENCY:
>>>-			val = get_rc6(to_gt(i915));
>>>+			val = get_rc6(i915->gt[gt_id]);
>>>			break;
>>>		case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
>>>			val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
>>>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>>>index 3a811266ac6a..d47846f21ddf 100644
>>>--- a/drivers/gpu/drm/i915/i915_pmu.h
>>>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>>>@@ -38,13 +38,16 @@ enum {
>>>	__I915_NUM_PMU_SAMPLERS
>>>  };
>>>
>>>+#define I915_PMU_MAX_GTS (4)
>>
>>4 or (4)? :-)
>
>Bike shed was strong with you on the day of review I see. :)
>
>I would rather get rid of this define altogether if we could use the 
>"normal" MAX_GT define. As I was saying earlier, I think this one was 
>here just because header dependencies were too convulted back then. 
>Maybe today things are better? Worth I try probably.

dropping this and using I915_MAX_GTS

>
>>
>>>+
>>>  /*
>>>   * How many different events we track in the global PMU mask.
>>>   *
>>>   * It is also used to know to needed number of event reference counters.
>>>   */
>>>  #define I915_PMU_MASK_BITS \
>>>-	(I915_ENGINE_SAMPLE_COUNT + __I915_PMU_TRACKED_EVENT_COUNT)
>>>+	(I915_ENGINE_SAMPLE_COUNT + \
>>>+	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
>>>
>>>  #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
>>>
>>>@@ -124,11 +127,11 @@ struct i915_pmu {
>>>	 * Only global counters are held here, while the per-engine ones are in
>>>	 * struct intel_engine_cs.
>>>	 */
>>>-	struct i915_pmu_sample sample[__I915_NUM_PMU_SAMPLERS];
>>>+	struct i915_pmu_sample sample[I915_PMU_MAX_GTS * __I915_NUM_PMU_SAMPLERS];
>>>	/**
>>>	 * @sleep_last: Last time GT parked for RC6 estimation.
>>>	 */
>>>-	ktime_t sleep_last;
>>>+	ktime_t sleep_last[I915_PMU_MAX_GTS];
>>>	/**
>>>	 * @irq_count: Number of interrupts
>>>	 *
>>>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>>index dba7c5a5b25e..d5ac1fdeb2b1 100644
>>>--- a/include/uapi/drm/i915_drm.h
>>>+++ b/include/uapi/drm/i915_drm.h
>>>@@ -280,7 +280,16 @@ enum drm_i915_pmu_engine_sample {
>>>  #define I915_PMU_ENGINE_SEMA(class, instance) \
>>>	__I915_PMU_ENGINE(class, instance, I915_SAMPLE_SEMA)
>>>
>>>-#define __I915_PMU_OTHER(x) (__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x))
>>>+/*
>>>+ * Top 4 bits of every non-engine counter are GT id.
>>>+ */
>>>+#define __I915_PMU_GT_SHIFT (60)
>>
>>REG_GENMASK64 or GENMASK_ULL would be nicer but of course we can't put in
>>the uapi header, so ok.
>
>Yep.

leaving as is.

>
>>>+
>>>+#define ___I915_PMU_OTHER(gt, x) \
>>>+	(((__u64)__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x)) | \
>>>+	((__u64)(gt) << __I915_PMU_GT_SHIFT))
>>>+
>>>+#define __I915_PMU_OTHER(x) ___I915_PMU_OTHER(0, x)
>>>
>>>  #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
>>>  #define I915_PMU_REQUESTED_FREQUENCY	__I915_PMU_OTHER(1)
>>>@@ -290,6 +299,12 @@ enum drm_i915_pmu_engine_sample {
>>>
>>>  #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
>>>
>>>+#define __I915_PMU_ACTUAL_FREQUENCY(gt)		___I915_PMU_OTHER(gt, 0)
>>>+#define __I915_PMU_REQUESTED_FREQUENCY(gt)	___I915_PMU_OTHER(gt, 1)
>>>+#define __I915_PMU_INTERRUPTS(gt)		___I915_PMU_OTHER(gt, 2)
>>>+#define __I915_PMU_RC6_RESIDENCY(gt)		___I915_PMU_OTHER(gt, 3)
>>>+#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	___I915_PMU_OTHER(gt, 4)
>>>+
>>>  /* Each region is a minimum of 16k, and there are at most 255 of them.
>>>   */
>>>  #define I915_NR_TEX_REGIONS 255	/* table size 2k - maximum due to use
>>>--
>>>2.36.1
>>>
>>
>>Above comments are mostly nits so after addressing the above comments, this
>>is:
>>
>>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>Well you found some ugly bits (or I got confused, double check me 
>please) so I'd say hold off with r-b just yet. Sadly it's on Umesh now 
>to fix up my mess. :I

I don't see anything wrong with the SECTION I marked above. As in, the 
pmu_needs_timer and the sampling code for events that need to be 
sampled. If you agree, I can spin the next revision.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
