Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3317272BF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 01:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECAB310E567;
	Wed,  7 Jun 2023 23:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1EE410E567;
 Wed,  7 Jun 2023 23:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686179500; x=1717715500;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h+mCYugp+I+CrtFFPjzdJTWR0YmYycnqAEychV/N+Fs=;
 b=Nlmuf4YoaED8e+bIRvVo/nd7DNKf1Tn+WOqzGFwxBSEaE5rEOgTEiOY/
 p+K7rBAHL3ZwMznTMhUz8KIdqyO6Fu0vihwGzJjEyw1EnQz6/TF1IIOLz
 s4fRj3PhhJwJ/70Mcx5v3OCjQSt2koZxKBCCR4/SR2k5ntWwZl5kIx3bg
 l/D9aVSn/Ka2LdpZwr4C8mkmgscCyhV7EOb0k60xlFGB/Mh81UKmCO2Uu
 4MtltZWBCkGbYjTYoBkRmIdidVXAYYFDo124wIhwVaYU5FLiQZ6ZIdooZ
 /IbzJmEkhoBigXLZ8khbvVHbtc7BJXsL40gn975vFkkPVnZ+ctBkstpz2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="443502784"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="443502784"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 16:11:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="709720060"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="709720060"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 07 Jun 2023 16:11:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 16:11:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 16:11:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 16:11:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NG48xmXihf9MyL6lFvz6RBsKdZcGTAFAEHu8IOPJsOCXmq3F5GDQE0LpE7fZdzJwfOFqA+fDI+l973XY0lsIX8+4vk7ZRKp3cpi0wOYTXmpPOueSPZP+pGti2ERwemT8v+VVFQUE6AcGsaiZBnvf4XTL8w3h0URape70DCllsVpBHIj9XB6kSqN6IpvhZbj3HByFMr3/4xlaP2ZAi3LB02DzWY7m1XAZKqFX7Xt2J2Ik61tl+KIgdGfWKpubK6PjHnXc2+zpoAJYZuqC28+MOrhf1sbVpMNJrmBDREuhIxi3NCxlydOTQDOpJsCy7+x/y3jkjrMRZ596d6O93xvQ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JRoIhwvTdmgHG2SVMu32e5khQblRjI26SATE0p51Ytk=;
 b=ZklTHJ/74aGC4qBmJLXOu80LnzppABmk5ARYDAGOZO93PBha5ZYTCShNXdCHW9yTdVus7tXPSekO6oQtJNLCIH04h/xqNIEPJNn+yNUdcWVbbYGPwvoTybodtPkZ7Q3o05X9KJGlH1g5/C3JKldFyTih0MtHEdAR8U/oJiteQ/wqgx5ig2I/LvL+00h0sVLB/Jn2WMZPtVrmfVVNB+cpvTDoMyuzJMk+QwIb6WMxWEYFzUDp9TULtLigZAa0bPD8svayb18Mof8Sk0/vDMJUFRiwIZoHMr23eXAmtP0DOIr6AgbKfBbIrEpovFqrp1M1JVLF5/OLsfHjY59Q0Hofgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CH3PR11MB8314.namprd11.prod.outlook.com (2603:10b6:610:170::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19; Wed, 7 Jun
 2023 23:11:32 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a%5]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 23:11:32 +0000
Message-ID: <408f6bd2-66bb-5fc6-345b-f7ed34715a5f@intel.com>
Date: Wed, 7 Jun 2023 16:11:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230606203535.292739-1-vinay.belgaumkar@intel.com>
 <87bkhrm0xk.wl-ashutosh.dixit@intel.com>
 <c46fbbe8-51b2-bf23-50df-328dd5d9bc21@intel.com>
 <87a5xanaoq.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87a5xanaoq.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0136.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::21) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CH3PR11MB8314:EE_
X-MS-Office365-Filtering-Correlation-Id: 20ecdd1c-bade-44e1-d215-08db67ac888b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vCKtBUNdJ0IRGFA1MLY/3df/KYazR46c4T0+aVKQUT3ce7DCWcFqkrYmVB/PBLTTa1Cyv35fjrRewFSCTPSmNuGtePblRppp8oH6wJlRcbum0dId5PRVetrj6NEk/DTpFdLH4o/cc7M/NwYUfUkj453fFaUsmZJ0OQ52yfl7RTVZh9/JGeTTPi7HgPkHhGMKJt/y9dTpCnK6M8udWuT/FOfMGP3OyzjkvXyi/PvYF7rX6uLBfwiWYqcUE1bTZUTDhmtGBFsnvWrIZWeu5V0qziHnOdMfN47EkfBWDo8XXFMVMbpQuasjJqIzaBgdL5PD1uPyN2UNxX4rJjvtDeGJnuZ9paSelll3I4avXc/8WvgGl990bRcdNspK05iuK3NLs/qKGadN4YLzgMVa+eQcxJYsc1BnGmkrgAPWi/fTiJJEDVRxALQ6LjsX4lR36SU1RLHbW46JYgsAzYz8WGjFI2QxjqfLGYjosqtNpttudP1qqjBVemhTc2M0N7vVJf7s/8SdV7fK4SnKmpipYSTwh2xIL0GSUPxQ7vBiQGrX9OppVnNsN5bt7HTvtSNzY2JPWgJ6Pt18j0ZTXrN3BZ+oeoKbRHZDUe/2Fo5y2HiSwqoBvHzdpfZyPWYWeNLCcJ4ZCjUNLduBT+DXuHsajD/ZrQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(366004)(376002)(346002)(451199021)(6486002)(450100002)(36756003)(66476007)(66556008)(66946007)(82960400001)(6636002)(37006003)(4326008)(15650500001)(2906002)(5660300002)(38100700002)(86362001)(41300700001)(8936002)(316002)(6862004)(8676002)(31696002)(478600001)(31686004)(186003)(83380400001)(2616005)(53546011)(6506007)(26005)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzBhZUVES3QzS1FYQS9BTWlZZGRMb1ZSYTdpc2FmUXVnajd1L2dlU2JBOC9q?=
 =?utf-8?B?UjBiTHp2QmlhMzZiWlY4RzMvK0tnaVJ2YmZmckppaER5UlBGQ1dSM1J3Yjc3?=
 =?utf-8?B?ck1iRWZWQk1uWkVYZzV4R0U3czVHNDZsTk9ORHRpYkxEdTA4ZXduakQ2aFhF?=
 =?utf-8?B?OVdOU09oQUJrUS9zOHlOelRhZkJKV3pJeXF1dWp5UVdCYittVmJ1MUR3cnFz?=
 =?utf-8?B?bTVHUlZid3NNeUpKV1RNSGlmanJVOTlSZ2V6RTJGVWVVejB3dWVSektORW5p?=
 =?utf-8?B?aDI2MUNTRm1ZUXZsRFllek01VFVxVnQ1NUdoK1MycVNPVlBPaUFFV1BiRnhF?=
 =?utf-8?B?MzRjakdGMmx4VlZ0dWpOSEtzQnJwMFd5N1YrdTVNYldrOU01bG9tYjZRR1M4?=
 =?utf-8?B?NFN0L08xMFdGemhoakZEU3o5SmN6U2Z1RDdoSzV5Q3ZTOU9sdWM4T1dlUjVQ?=
 =?utf-8?B?Q3FRT1Y2WGlNSUlUcGJjR3VPbGpkT3QxZXNiOVRGdDZKU0l6aGo0VHlBcmgx?=
 =?utf-8?B?WlN4cmg0aFFWTjRhQUI5K0ZUMmJOT2tremtJQTluZUNXZ2pNKytwM1JiRlFr?=
 =?utf-8?B?NVhlR1FEMzZ1R0JTYkJUMks3eCt5dE9WSXE4WTVxK0hvd3VGUVd5MFIxNncv?=
 =?utf-8?B?dDFXM05kWWdSQytRME93RVNpYXdDVWdXMDVBZzk2RXpxZDE3VzFWZ2QrVlpu?=
 =?utf-8?B?WDVUWktPMWZWSEs4Z1Q5NU9oRWNxLzZTT0FRWm5NMzVKSnIvN0p3TnZ1MGVl?=
 =?utf-8?B?NEJHS20yOTBQRVZxaEFMVVgvcmZ0bFhDQTkvZlQ1bEtSMWN6ZmdYNHRlenB0?=
 =?utf-8?B?STlOVEF6cHN2R3laT2RUNUcxaXozaE42M2hBOVBmNGg4aXFtcyt3NVlqNjRN?=
 =?utf-8?B?ZHUvTVVOa1lsc1l5b1NLQlNjSHo5OTZDRzBUaXRLdzcrd05FZENhRFZiaGdn?=
 =?utf-8?B?ZGw0bHZKc2tvandIR3ZCSm9ocm54Zkd5U2x5QVVBTE14RE1aSG0rKzFEWWVK?=
 =?utf-8?B?MWZuc0lqNmladnhzeDkxR2R1clRHNjZqa1ZXOGFQM1Z4ZjN4Q1NFN1dwN3Yy?=
 =?utf-8?B?OThweUxIZmpqM1ZmRCtIdEpFWXZPQnc1ZHhsRGRPaWZWdE43UDRqOENEQVRl?=
 =?utf-8?B?dUFXdWg1K09kTFpxZVFjY2xvVVhGVm9oVSswTEZXT0Q1dTlqcGRCOVB0Szh2?=
 =?utf-8?B?UjNaanNzc1UzSWN5Zzl4dDAvbU9UOGFLWnJkTUsxc2JmUnYybWhGV3JpcHVW?=
 =?utf-8?B?aFZ5YUw5b09neGw1eHFBYWFYTkFubUcyZTlUbFVsN2N2RVBpT0xNaHA3V0hL?=
 =?utf-8?B?VGh4N0U4QVdOUVJLWXlTeW9QRWd3UTYyc2gvajRSVkdKZks5Tk9kUEFBVzhw?=
 =?utf-8?B?UGYydk92YVEwZmI5c2pBWDZFWDVHRHVDRTZrWHYvdHNMMHNNNnFCT1lkZmFH?=
 =?utf-8?B?TnBmK1pmVmlEb3BzSG5zVU5obm1nWWQ3TmhVYWVnU0Q2d3BHeTBZNFNweXI5?=
 =?utf-8?B?SzBvRGhad21JS2tVREdoVG41N25oZUg2V3FDQUc3L2kyOXRzVmtPd2VVanZP?=
 =?utf-8?B?Qkg1OGpvWlNMLzk0U1ZFLzltV0ZhMUxtM0xXeXFscHdHOVlKM3QxNVJCZFVM?=
 =?utf-8?B?NVhpVFJrUFdtWXN1blRlQ09UNWtjb1ZyMmYwenI2QTZra283NDdvUzJpNDNP?=
 =?utf-8?B?MFJFOE9kRWhQQ1hVUXB2MHBsSGVzK1JUUXdvZEoyS2V3NVBGcEsrTGYrYWVH?=
 =?utf-8?B?dU1iQmNXN1JqZ1NPQktGOUl5Si9mTmhkZW1HR3RraEt1eUwyQTZlL0ttWU90?=
 =?utf-8?B?STRNbGZvdGF1eUVNMEZkSUVaTjlEYWRpanFDdkEzVjBZaTVNZ3N3R3p3ajBP?=
 =?utf-8?B?aldLaytSR3IvSkt4REdoMDRJWDN6VU0rME4yaXNMRm1qZHpSQ3dlcWxQd0FB?=
 =?utf-8?B?ZWpML0tDWkt2Q1pVUWU2WEVKQVM1cFp5SVloQ2dsOHRyT3BQWU10S1AyTit4?=
 =?utf-8?B?MTBUZjRjY0NINWo5RnhBdm5ZYUlPOXF3RWJwVis3M3FhNG9oNVJBKzBIVjY4?=
 =?utf-8?B?cnI4dW4yY2ZMdVdrUVpla09zbHVabFJlaTl3QkJrUlVFRDZoZWlIMkNzQWVm?=
 =?utf-8?B?OS90d1haV0VzcHNyYVcwcGxuS0VMdEcycXBPcFlUMnZJVzkrMTZGZW85cUJj?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ecdd1c-bade-44e1-d215-08db67ac888b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 23:11:32.7344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QMbzfgv+nMaNG0wK5F4waNx3sKp5stmPUccmT4vWWqoqCOy+648VNOVLti1KduaygnKpqTc5zhaiRrVoNV6WZQnGX2q/r/i/0bs2xBHv15g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8314
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915_pm_freq_api: Add
 a suspend subtest
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/7/2023 3:56 PM, Dixit, Ashutosh wrote:
> On Wed, 07 Jun 2023 15:31:33 -0700, Belgaumkar, Vinay wrote:
>> On 6/7/2023 2:12 PM, Dixit, Ashutosh wrote:
>>> On Tue, 06 Jun 2023 13:35:35 -0700, Vinay Belgaumkar wrote:
>>> Hi Vinay,
>>>
>>>> Verify that SLPC API works as expected after a suspend.
>>>>
>>>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>>> ---
>>>>    tests/i915/i915_pm_freq_api.c | 30 ++++++++++++++++++++++++++++++
>>>>    1 file changed, 30 insertions(+)
>>>>
>>>> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
>>>> index 9005cd220..f35f1f8e0 100644
>>>> --- a/tests/i915/i915_pm_freq_api.c
>>>> +++ b/tests/i915/i915_pm_freq_api.c
>>>> @@ -18,6 +18,9 @@
>>>>     *
>>>>     * SUBTEST: freq-reset
>>>>     * Description: Test basic freq API works after a reset
>>>> + *
>>>> + * SUBTEST: freq-suspend
>>>> + * Description: Test basic freq API works after a runtime suspend
>>>>     */
>>>>
>>>>    IGT_TEST_DESCRIPTION("Test SLPC freq API");
>>>> @@ -99,6 +102,24 @@ static void test_reset(int i915, int dirfd, int gt)
>>>> 	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>>>    }
>>>>
>>>> +static void test_suspend(int i915, int dirfd, int gt)
>>>> +{
>>>> +	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>>>> +
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>>> +	usleep(ACT_FREQ_LATENCY_US);
>>>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>>>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>>> +
>>>> +	/* Manually trigger a suspend */
>>>> +	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>>>> +				      SUSPEND_TEST_NONE);
>>>> +
>>>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>>>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>> I am wondering what the purpose/value of this test (and also "freq-reset")
>>> is?  How can the "set" min/max set freq (which are just input settings)
>>> change whether or not there is a suspend/resume or a reset? Especially when
>>> we just return cached min/max values from i915?
>> It is mainly checking that we don't smother the softlimit during a reset or
>> suspend flow.
> How can softlimit which is a ordinary variable in memory get clobbered by
> suspend resume?
>
>> In addition, it also tests the read/write interface works as expected
>> after those events.
> There's no write. Sorry, but I'm not convinced. There should be some more
> meat to the test.
There are writes in the IGT fixture after the test completes.
>
> Maybe we can write a test which will check /all/ sysfs values are the same
> after a suspend resume cycle? Why do only these specific ones have to be
> checked?

This test is specific to the freq api, hence just min/max entries.

Thanks,

Vinay.

>
> Thanks.
> --
> Ashutosh
>
>
>> Thanks,
>>
>> Vinay.
>>
>>> Thanks.
>>> --
>>> Ashutosh
>>>
>>>
>>>> +}
>>>> +
>>>>    igt_main
>>>>    {
>>>> 	int i915 = -1;
>>>> @@ -143,6 +164,15 @@ igt_main
>>>> 				test_reset(i915, dirfd, gt);
>>>> 	}
>>>>
>>>> +	igt_describe("Test basic freq API works after suspend");
>>>> +	igt_subtest_with_dynamic_f("freq-suspend") {
>>>> +		int dirfd, gt;
>>>> +
>>>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>>>> +			igt_dynamic_f("gt%u", gt)
>>>> +				test_suspend(i915, dirfd, gt);
>>>> +	}
>>>> +
>>>> 	igt_fixture {
>>>> 		int dirfd, gt;
>>>> 		/* Restore frequencies */
>>>> --
>>>> 2.38.1
>>>>
