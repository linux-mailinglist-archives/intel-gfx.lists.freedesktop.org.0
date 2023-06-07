Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 194BA72733B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 01:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B515A10E574;
	Wed,  7 Jun 2023 23:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0DF110E574;
 Wed,  7 Jun 2023 23:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686181264; x=1717717264;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GY2DrPtzgZ9EWPsh17AIsNagPIptiyLTGkDs0V7x6Xs=;
 b=d8BxcHStxMCD9bpfUrPmobS5rYkuqPUqfWKJgUNpDzoAcePhCwC1p5Pi
 WA4dALfNJV2feE0Kw/+9oSThNfRcOYseEr0KcYdZNKkekrtjJ+4G5cE5D
 dm8Er89qBa/Q9xyxiS1xtO5nY2/Cu9dkhHmb7ag+YEYjkWCm7m5NA+fKY
 j5xUmhqv0FPS9tIPycYhYaTVtQ7Az+HM4JP8MnojbO46nSeMtQRR81W6k
 /J8ZeG9/o68fjUf+B7BKCP8m5s+xFSX+gkwoHqcFBGLfF3/lWtlQS+ZcK
 pdmXGrw8QnucigC9PfrjVWQVhyL9H/U3sJedJYDLvTmqYUtyChP3DMOvN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="337500432"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="337500432"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 16:41:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="687171169"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="687171169"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 07 Jun 2023 16:41:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 16:41:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 16:41:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 16:41:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bL6l1pmfnMOVCUTPdweStSu88pJktqBZEhqteKEP/UhGzDX74Z1ghRcWvU5zOJt89hi0yoVzYWq9KqgoikYk07/AjvByx2A48CwX6VehIK1Ku2q4D2sI3YaPLxnmXTglf8YtVUBFqiNlVWKlJaTMSaOvfts9xbLDs3d/GmwG45+8hKwJR5htWY0byCmqPdcmejyzRrFjd3IaEA50LgRezXOYZB65n4i7WCuRhtrHVsvYHrE0oQp+oEJm94E23q9jzLkFQorUsxysY8fAGX4p9dhWNVJ6DurHixEwKMjwJzyY7x2J51248Ak3ZofYPRP6J8WkMNFwBt2BUjUf9O0Nwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X0SA/PRiSBEaM54TusrTizDc6xfEVBpJ8gaiyotJCpw=;
 b=CacqOX3/mq+sOD86R6n1ylGqey9R+TDV7LV11VgxKfeDLwyo1tUvR9XONTd62p2S5fxS7T1UVy3qWG31NCEvI6j9FFLH3GMhwA/CiGSMYtBqM/1xHItCOl+gYAlbisKiIwROC76Ul81xzpDCY3jb6/qg+esDMBbee/CBpcf1LOjEUJnHBSF5hwex+mUWmRAHgPBpxYgoLWFjR8rIJkPw79Ez0jUW5o8oB2dpAACMxp3fZPaHSBfIjakDV6kNHhGZkNx2sHSuOg6SaQr718HZxZ4NX9R0Kq34L01EZcuYAu0Ql7JnBYdwLhIGMKBMYHGBJiy0mthUE6FdsG8M+WjM4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CYYPR11MB8331.namprd11.prod.outlook.com (2603:10b6:930:bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.36; Wed, 7 Jun
 2023 23:40:55 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a%5]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 23:40:55 +0000
Message-ID: <6c9e4193-f569-b65d-09ed-9a959ef82274@intel.com>
Date: Wed, 7 Jun 2023 16:40:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.1
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230606203535.292739-1-vinay.belgaumkar@intel.com>
 <87bkhrm0xk.wl-ashutosh.dixit@intel.com>
 <c46fbbe8-51b2-bf23-50df-328dd5d9bc21@intel.com>
 <87a5xanaoq.wl-ashutosh.dixit@intel.com>
 <408f6bd2-66bb-5fc6-345b-f7ed34715a5f@intel.com>
In-Reply-To: <408f6bd2-66bb-5fc6-345b-f7ed34715a5f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0273.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::8) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CYYPR11MB8331:EE_
X-MS-Office365-Filtering-Correlation-Id: c313b07f-839c-428f-6d93-08db67b0a324
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +sqD6aZuTt7J0ygXPwZr5//F8ky2mdGi9qfm9o2tqxXqFj7RqIA3EAP5HLI3nGo+y6RhCHD1RQhgP5mF2jKSBK8Fuis51bcJRoLnHMRw/tQ3VuiIpxpNYHxa6TjK/LBn1A+/4/mXRKgst2XMe+LSq7ggDPVic5UdNqEZfbXKrljeFlZvZEUhQgFTe7A8un+UFDC4+AD/QyFVWkr/QVLCki7/gTGvb18+UYyDkLQC/whV6XbmNsw+if3OM/WRs2W8OXtSzqWdGj1/2w5igAng4l1LwcTF2UPRekpk/sT870CEiAH4hdb1L2KqkzNd8ukWkd5ejYtwu4us2cBmY2PXJ/OUwOgldyLTpg5f8MqPkvBchYcX4+DsTpHwLEZ7x0rDdObRKNtPV3n+GTe+BoH1ZtjZyuAS4xUSDoNnVapstUv+6/+lPYGkvZ7KSU+Tkivk5iDjgVAkenQ6IoAbk0skRYxmrrvlqnD8mTBUQzc/vXXVxOP4qph7tvaXUlYiyt5VtEEBCVRSB4QVlMFXooCA4kaqIDHtA3OzWgm0BRbC+bVUhyiUwQBEErXDhU4NYPfVumeGaMTOLgPFtF3n027/p0n90VCOVAKoadvQ5wNAvvjrxSVgDSaVga+Rt79vjK4KiKLoDImKO/0hfTROTN06wg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(396003)(376002)(39860400002)(346002)(451199021)(15650500001)(478600001)(2906002)(83380400001)(2616005)(53546011)(31696002)(6506007)(186003)(6512007)(26005)(86362001)(82960400001)(38100700002)(6486002)(36756003)(5660300002)(450100002)(8936002)(6862004)(8676002)(31686004)(41300700001)(66476007)(4326008)(6636002)(66946007)(66556008)(316002)(37006003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0o5RzlJY2NmN1FDcWZoUVBlWDFvQS9lN1JzSi9EamlIY1JROWNTVlJvckZ0?=
 =?utf-8?B?dEM1ZHVVN2hiczZZdjh2MEdLTkNOYUwwY3ZRVUM3UjFrbWVFN3BKdHljaUJD?=
 =?utf-8?B?SmVFdkY4Q2JieUlETUs1WExFVFlpck9uNEwwbHM5Y2FGM1FlQlBRVTJmM29p?=
 =?utf-8?B?TnZ3MU8wSWN4emQzQzRhZEk0eWZaQWxrd1doU0VpV1NuSXNKVEVjT0YybDBF?=
 =?utf-8?B?RjkrQU5EOStWUHplcmowVnJ4VnNaSU1hK05MK0UrdnV4TUpjbis4eEg4SWFD?=
 =?utf-8?B?OVNtaTZoRG5mWWxOWkxud09VS0lESUdBSGxKdHk3WkMwS2hiMGRHTzZkdEJa?=
 =?utf-8?B?MzhFSDc4UDMxeitIQVBhejhycU9hYjI3ckxkQTNyNFRWR0xqMFlXTTRjbFNW?=
 =?utf-8?B?L3ZDV09IOWtpN0F3Nnl1Qy9LdnBXbVp2S1VoVytvRWNjdFBuaHV5SDNpWFda?=
 =?utf-8?B?OGNrd2puY0IxeU94RXdmM3hPb1dQT3M5aU9Na0s1UWdBblhvSnpvaGVIbUV5?=
 =?utf-8?B?RUtwcnNucVEzdTJOcFI3S2JaZU05OXNwaXdYQXVoUmdxeUpkbGdYUmY0NHBM?=
 =?utf-8?B?UXNRYXlrUmxwTTB5ajMxbWtHZ2RQdStncGF0NVZMbnFtSW5NR2hKK3N0SVZC?=
 =?utf-8?B?MDlUNm9zeEpsRE56WlBVMnBSdWhqc3IwREFqMWhzRzhsQzV4T1VGKzRwbEpE?=
 =?utf-8?B?T3h2eldPb0J2V0RHNW9RNGNVdDMzUzJLYzhkL0R1SmZzalNPd0hLRFhxR1pQ?=
 =?utf-8?B?WnJaNHUwLzRpZEZzcklVcDhGK2VGenJVM2NxQys4VnpVb3pvYTVnVTlMSWkv?=
 =?utf-8?B?bVRLWFBwNkVOejU4Z1Q0TkNOaFRzUUNIcVJON3dPbFMvNjcwa1JEOUU1bW5y?=
 =?utf-8?B?amRuTHdyZDFLUUd0ZUtncWwrREJkRm40VUdPZXA3dUtkWmFzRFdkVFVUNUhJ?=
 =?utf-8?B?TFFxbEYrVGd3bW5mSmRtRDYydWZJTEIrdmhNb2NsMDNxOUNldm52MW5pbjA1?=
 =?utf-8?B?eWVjRk9ydzdlTFMyc3Y3QmZodG5XUi9mNE1KNHlFaHZrK2R3UVBLb3ZyTm1u?=
 =?utf-8?B?Q2hrMW90WUR3T1ZJKzR4SllxelRQc3JyeE1DRjNESTlEeUQrakd3WnAyNngy?=
 =?utf-8?B?OTJVYzJQMFBabkxtZXNmVkMzMVNjaXhnaWFUQ3dsbUJhaXZQOGorUVkrM1cv?=
 =?utf-8?B?LzVZWjBhYkdYSWhPdXpTbmJCL2paMnY5SVo3ZStyTElPZlFvL2c4T1lrd3Vu?=
 =?utf-8?B?L1NpSjNKNmxvRlpIeXNvTUNybUZVa3JHYTUzamx0NWlZOUduVHc4NkdnOW5h?=
 =?utf-8?B?YTU4d0xxbkpVSVNxdVlSR3B4TE5rWjdiQ2lTZ09iMkRrc0JNM2FmVWlrRS85?=
 =?utf-8?B?QytuRTYrWDdGbm1Vb3pQV2JRUjZOcWJuanBjNE5uc0xFT1JsRG13UFluNWNj?=
 =?utf-8?B?NEZodUg1V3A0Wmk2UHNzMVhOaG5BS3NVbzZvWDF6YjA3T2hhL1k1OERKTXBP?=
 =?utf-8?B?WEh3MWZUdzQyT0cwdHV3alhSNmUyVE9mWGhrN1kzRkJhNjZxRUluNnUzczBm?=
 =?utf-8?B?OEQ2U1A3ZmdoUHdGMFV2WExyMWN1aCtYL0w3OGlzekFxaGNpanhKUnlIZlo4?=
 =?utf-8?B?R1pEeityeWNCWEJXVUxyRWZqaDJ0V0NpaWJ3bHRiQ0tKS1lwVEFFME9MbFcv?=
 =?utf-8?B?eWNZNDJWUWtCekttYmpyaDlzbjdqWXY2Nm5Ua1BOSG83QTRZZVZEeWQ5aWVh?=
 =?utf-8?B?d1kxQWd2ZUMrM3JoSVlCMVdnanR3ZUZ6RnZtVnRVZzdRcG5EMy8wTFpGWDJQ?=
 =?utf-8?B?c3gvVVhabm11bFRjRnpIQ1ZHU1VqSlNTbDJ6NnRrZ1lETDZERXl6QlZ2Smpx?=
 =?utf-8?B?cklkL1FDVVZEVi91K2R4Q1JvRGdPZjJIdFY5Zk1BL041WWE4cGNaZlRoNW5I?=
 =?utf-8?B?b1hrSzJ5YTZPRTFDVnJNaE04OHdFNGlMdWNRZW51WktPUzc2REhmS0h5RWVn?=
 =?utf-8?B?MnRMNUQ3N0N1WnZYOVhTd1dIRWVRcjFkRnoyMDh5c0NiNExwcGY5d2I4MXJ4?=
 =?utf-8?B?ZkFRdEFlaFZ0cWN6VlB2c3Q5M3cxdTNIVzNtdGNTTTI1MzFBQjkxb1RrdXF3?=
 =?utf-8?B?NnFsZmhsNDZKZXFwV0F4NWJ5Y3F6K0lKY0xUTWRHTkpjZVNqWk9kODZ2S05v?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c313b07f-839c-428f-6d93-08db67b0a324
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 23:40:55.3348 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y1z9qEdaGGT7G1Tsk3iwqUlDBqkj0qfZZS+XE+iuPpFYciQ9IF6UypZ8oZSDEEexhnRoqZqBLRaBXyW2S8Kro3YS66oilGp0zog+LVBLHP4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8331
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


On 6/7/2023 4:11 PM, Belgaumkar, Vinay wrote:
>
> On 6/7/2023 3:56 PM, Dixit, Ashutosh wrote:
>> On Wed, 07 Jun 2023 15:31:33 -0700, Belgaumkar, Vinay wrote:
>>> On 6/7/2023 2:12 PM, Dixit, Ashutosh wrote:
>>>> On Tue, 06 Jun 2023 13:35:35 -0700, Vinay Belgaumkar wrote:
>>>> Hi Vinay,
>>>>
>>>>> Verify that SLPC API works as expected after a suspend.
>>>>>
>>>>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>>>> ---
>>>>>    tests/i915/i915_pm_freq_api.c | 30 ++++++++++++++++++++++++++++++
>>>>>    1 file changed, 30 insertions(+)
>>>>>
>>>>> diff --git a/tests/i915/i915_pm_freq_api.c 
>>>>> b/tests/i915/i915_pm_freq_api.c
>>>>> index 9005cd220..f35f1f8e0 100644
>>>>> --- a/tests/i915/i915_pm_freq_api.c
>>>>> +++ b/tests/i915/i915_pm_freq_api.c
>>>>> @@ -18,6 +18,9 @@
>>>>>     *
>>>>>     * SUBTEST: freq-reset
>>>>>     * Description: Test basic freq API works after a reset
>>>>> + *
>>>>> + * SUBTEST: freq-suspend
>>>>> + * Description: Test basic freq API works after a runtime suspend
>>>>>     */
>>>>>
>>>>>    IGT_TEST_DESCRIPTION("Test SLPC freq API");
>>>>> @@ -99,6 +102,24 @@ static void test_reset(int i915, int dirfd, 
>>>>> int gt)
>>>>>     igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>>>>    }
>>>>>
>>>>> +static void test_suspend(int i915, int dirfd, int gt)
>>>>> +{
>>>>> +    uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>>>>> +
>>>>> +    igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>>>> +    igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>>>> +    usleep(ACT_FREQ_LATENCY_US);
>>>>> +    igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>>>>> +    igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>>>> +
>>>>> +    /* Manually trigger a suspend */
>>>>> +    igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>>>>> +                      SUSPEND_TEST_NONE);
>>>>> +
>>>>> +    igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>>>>> +    igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>>> I am wondering what the purpose/value of this test (and also 
>>>> "freq-reset")
>>>> is?  How can the "set" min/max set freq (which are just input 
>>>> settings)
>>>> change whether or not there is a suspend/resume or a reset? 
>>>> Especially when
>>>> we just return cached min/max values from i915?
>>> It is mainly checking that we don't smother the softlimit during a 
>>> reset or
>>> suspend flow.
>> How can softlimit which is a ordinary variable in memory get 
>> clobbered by
>> suspend resume?

It shouldn't, but funnier things have happened. Anyways, I can add a 
check for cur_freq and ensure that is at min. That will prove we applied 
the soft limit after suspend.

Thanks,

Vinay.

>>
>>> In addition, it also tests the read/write interface works as expected
>>> after those events.
>> There's no write. Sorry, but I'm not convinced. There should be some 
>> more
>> meat to the test.
> There are writes in the IGT fixture after the test completes.
>>
>> Maybe we can write a test which will check /all/ sysfs values are the 
>> same
>> after a suspend resume cycle? Why do only these specific ones have to be
>> checked?
>
> This test is specific to the freq api, hence just min/max entries.
>
> Thanks,
>
> Vinay.
>
>>
>> Thanks.
>> -- 
>> Ashutosh
>>
>>
>>> Thanks,
>>>
>>> Vinay.
>>>
>>>> Thanks.
>>>> -- 
>>>> Ashutosh
>>>>
>>>>
>>>>> +}
>>>>> +
>>>>>    igt_main
>>>>>    {
>>>>>     int i915 = -1;
>>>>> @@ -143,6 +164,15 @@ igt_main
>>>>>                 test_reset(i915, dirfd, gt);
>>>>>     }
>>>>>
>>>>> +    igt_describe("Test basic freq API works after suspend");
>>>>> +    igt_subtest_with_dynamic_f("freq-suspend") {
>>>>> +        int dirfd, gt;
>>>>> +
>>>>> +        for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>>>>> +            igt_dynamic_f("gt%u", gt)
>>>>> +                test_suspend(i915, dirfd, gt);
>>>>> +    }
>>>>> +
>>>>>     igt_fixture {
>>>>>         int dirfd, gt;
>>>>>         /* Restore frequencies */
>>>>> -- 
>>>>> 2.38.1
>>>>>
