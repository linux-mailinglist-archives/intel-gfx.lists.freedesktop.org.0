Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ADB758407
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 20:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4396C10E0AC;
	Tue, 18 Jul 2023 18:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB4110E0AC;
 Tue, 18 Jul 2023 18:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689703294; x=1721239294;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pCsoPFauYw87fuoYf+CqGMdeSDAO/LsiS++L3cekUs0=;
 b=eqP27EE0wWaUIkZKSJV4LaJKPaYm9joDsK89UihiZUSa6+K8Hf1qzSdj
 QysMFzWTuOufupUGh6sPfLirs+1u/B9yczH6HyWTexKmTzXH6Eyg+wfj2
 yd5lJGxhTDb1EDzvtbUuSgOs6UHe7n7kNRvGnxBXwNC73r1XA2CwvdwNY
 8Vf3GhqQnGo5u4x5GLl1uiXhKQX0e49K1LzeBgcGi0WdOWgBW7MfYk835
 gI6j11PfTmw3H5gGtohKCNhYAL65BWBvSeC1avPdDBtmN02UtITDJ/HDK
 ulQydtcikADsh4htoLUUIkERDMS6h2RpaOqCYcuOesEAN4ASQpxm54qAf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="356220286"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="356220286"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 11:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="674009678"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="674009678"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 18 Jul 2023 11:00:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 11:00:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 11:00:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 11:00:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ch1LGJJqzuHL3RzqGF/TYqcVmdxDlx87iB4SCjsVGx0dCGSvO/3T09OStFJFCL0sc/YoUtUSXYjaUd2XAPmnHnFQ8bhVLZdHpeUrWqtcdAFrfhWYJ7Wd9dA3DZt81ev+BSB/cUOVpCN2n5nYuZoIawYEKddQnOevw4qV2JiRYz5SAtX6CWYZ7B6dlwt6dC1fb/FOTqEt0axpgqhuOJoPWcwWmPiYs3vvuTw9+9vF0fRGzFNxDU42QUvjTDYaHV0Sa6R3rflH6M44kBG6DrBjHhuPRMHaNAq3HP2YMWjPVi0/huemP614VIXXqrm/OsH08e5gua8ebrz2cOclC62JMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8PAetpupWuRaYQmV9XLlBQxUWoxYHlkiGdm5gRsiOo=;
 b=mI9M8ZKKqfkDBradTG6YD1Fe/oJi/tWvh0sytBiXINtypPyRnFZc/wvkdiNaccu4peGtOsFNiwice/5pptK/MB+tTc9Qm4+NXP/+UAJrEMJqlC44VDkGaD6FUzEcPIycpt1rEDzDwJA5ywukx/xHh8c2kHelPp7W8fKy0fPsdt2FDqWSr9Q4Ue7UG9WEi3RCUuk45eAbks8otlPPHHoyJ8u/R3s09WjGfHlC48HCebbidAq3JC3fkZ5gbOyK3VGOncAJa91hJ3e3ONA7Ne1oxooLVl8t/GHl6I35JIBWpSagaSmfvJ8rId86YfJMe9nVcCjzqZMQfR84JtNaR726Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by IA1PR11MB8097.namprd11.prod.outlook.com (2603:10b6:208:457::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 18:00:40 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::8b4:fdfd:4a61:1e14]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::8b4:fdfd:4a61:1e14%7]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 18:00:39 +0000
Message-ID: <da0a376b-9703-b17b-72b8-151794e9beca@intel.com>
Date: Tue, 18 Jul 2023 11:00:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230717184213.624518-1-vinay.belgaumkar@intel.com>
 <87pm4qhtss.wl-ashutosh.dixit@intel.com>
 <8544177f-994d-88a4-6c7f-aa64c84e8846@intel.com>
 <87msztj14r.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87msztj14r.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0005.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::10) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|IA1PR11MB8097:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f167069-e484-4c1e-fbaa-08db87b8e579
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZtzwKKpN0Q7aurndY8flzt/UlnPyB79vabMnYwrlDiHKrxaTfDKcA6EmrNWtbeLUS1qoIGYoy3zyBrYt6mwFZdL9Md3CyK7qxzN5q/4dxLGbuXdkOpkL3EME1xylBAxz8U7EySEm4pi4NA3OM6388oFVKMJ/qa+w0XSNWaFsSXJKGCtYDv2KM3Ip62sMxa9KPdDxiuv2vGxldtK7atSvSqYu+CYFcGwE48FhrXUTAdmTNbM3XYlphuRNYg7LMmAskA57nMDxLyuWa3GENsiGZ9g0CFVufNmBkHJLtV/XyN+weUjKZeGdnlmpLu76S2tXZoAHWzwzzrqzzJ0wuo0owWtMUvWVWJ8TIX4e2M79QB9bODR8A28X1HLMnqMA2BNcohAgluS1ICDuXAMNgvQVQ4Y2MmOMc4Gv75so9AQd+WGSVlXLFjoPWZL2ukKZxFawWmpW0dAXHTUlEy9XOQIfv89ZtMhcunX1dUEChKAToV58afDqgkGJn/Jyo9zRyzyNTKRxTL9aQYxnPl4PBqZJmpPwR9SGcks0zbx53vIGZ6ShVWWW2k+O+V6etuDPD+AsdxzyFnl1fmMNqBf60kn7DpO6xOLXPAtfC37ZoUd5FeLvzxpNsn4MmgnZ9yl6Y6z+q2U6GtbsGAValb6+nGVk5g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(396003)(136003)(366004)(451199021)(31686004)(6486002)(6666004)(450100002)(478600001)(37006003)(2616005)(83380400001)(31696002)(86362001)(2906002)(6506007)(186003)(53546011)(6512007)(26005)(38100700002)(6862004)(82960400001)(66476007)(66556008)(41300700001)(66946007)(6636002)(4326008)(316002)(36756003)(8676002)(5660300002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ay9haE0vaVA0YkJZVlZmMXE4QUhHSUN3NnhCSVBJQ2tpWUlreDFCWHNYdjJP?=
 =?utf-8?B?cUkzZU5xenEvS0pINE9reGg2bVBxSXIvM2pKdEFTR0hsdVBjeWhiT0pvcHdT?=
 =?utf-8?B?dS9Kc2MwWnJtRVJ1eS9pNEx4aHZWTHRSZ0pOVldaVzFDRDA3MFdUSkFaR3Mw?=
 =?utf-8?B?VGduQkRlanpQVHAzejJCRVIxSUNJYS9lcStRS3FpTU5mcUt6RXdBS2Zxa1BN?=
 =?utf-8?B?L0M5QlU3Z3lUOXAweWhlekc0MmpCRzRESmcrSzNISFl2ZVI4bnFKKzI3SUxk?=
 =?utf-8?B?bHdpODBUU2xKb3hla25KK3RMcTRCUE1qMmkxZW9wRi9teW9CVkRZN08zM1R3?=
 =?utf-8?B?d09hNkRCbytNblZKKzRpTHdXVTRSUkM4ZEJSMFVXeTQyWU5VWngwUVdCUTVa?=
 =?utf-8?B?TDRKL0gwVmhFQXJVSXZmTXdsZHV1NW5CQWxRYW4rTUJLbmhRYkc3aVVYdDRk?=
 =?utf-8?B?cllvU0lYb3dDdzFaWUI0bm1zQm92bFBuTmhhcUhwZEZpMSt1OE56R1FFRjN0?=
 =?utf-8?B?RGwxN2FhYkNrbnJHamFlM2dvMXU2Q0FiNnlzZG82S0lFbTZEMUc2eUpqQ0pw?=
 =?utf-8?B?YXNZMnN0bkJCbElUamhsWmhCNVg5V2UzRVR0M1gxSWNTeldQZVErV1o5NytZ?=
 =?utf-8?B?T0JFUVpybExLYi9BQ2pVSnByUldrZTAyTEpDc3QvdjJrbjZzKzRzbDRHUFY1?=
 =?utf-8?B?SDAydjBla25PRzg4RXJoRkdvZ2ttVUJtc3NML05GMFBpRnl0dEdab2oyeFpZ?=
 =?utf-8?B?KzZJMks2VCsvWkw3WkE2aCtsYnJicm9vWlQ4ZXZrNkwrQldEdmZ5Zy9hZ0lh?=
 =?utf-8?B?TW9iR2dzWFV1dFBSVmxvU2o5N0R0eHpPNWE3Z0dnSUpPRDdCUHIycWUrQ1BN?=
 =?utf-8?B?dUI0SUZwM2kyeDF3RERaR1BtaXRObmw4YTV4N3hwRTBMVVNVU2dJM21tdXNk?=
 =?utf-8?B?YzlyaWx1Si9YMWNLWEtsUUh1ZU1aSXFsSFFneHo2anNDMXVjSG1RQUxtR25x?=
 =?utf-8?B?bnYzeERHTTZidGh6UFBYWUJlYTJCdjIxT3lHVXB5eTgwN3B2ZnBwaE13Zkg1?=
 =?utf-8?B?SHNnaTVSNzh0TjBHR09ocmtubGltdzM2NjYxNmlHdVVJa0xoREhpV2lndmt6?=
 =?utf-8?B?d3preDZ6NmIvaWNaeGdodlU0L2lFZUd5ZDJTeU9vZi9Db0JnNWppRElwdUZT?=
 =?utf-8?B?d1psZTRlODMzQlZ4YVR3MFhMMGtXcCt2OUdFTmVhRlF2QnVIWFE1eklTSXAr?=
 =?utf-8?B?WGdaOHZJMDd5cDcvVVZtTFRiQ2p2VFdFSmpTRVh4NUduYUVQOVJwYWhBa1Br?=
 =?utf-8?B?aHRzWjZwSzRuay9JMm1qOFdEdGFTSm9IQW1rYXl1VWpCY3VEWHpwZzVTK2tx?=
 =?utf-8?B?TFo0QTd2VkdYNUZXaUJyKzFqNyttU0p3bDVjdDVIamJnZWhIRmxoTU15ODgw?=
 =?utf-8?B?Z080djh3SVJ0T1FBU1dHaS9sMzNQclBSZWd1WjgvQmVNMzJ0TnVjdVQ3QWI3?=
 =?utf-8?B?QmsyMWs5NUZmUFN6ZkxCbmVacHhnUVBaaHNSaUlSck5iWDVlWEVBK1V2TGhR?=
 =?utf-8?B?YWgvdEhpTnFnRVpRQ3Z4U2JyelVST0wwVlhXREFjNnlNUmdJUXQxVXh6ZERl?=
 =?utf-8?B?OEVnL3ZFNHhVMUFST1NJU0ZiN1BhQnFGaVlXUnQxcnh2aVVzN2ZmdWVTWmt6?=
 =?utf-8?B?UXZTMEpYdUE1M2V3LzVxL3hteEVkbmJhYzYvTytDbjlET0h5RjIwbWh1dDNW?=
 =?utf-8?B?TzYwbUR0WC9KZjBBejNiN25vVDBOQ0xmL0pQVnJiazJkVXd6Q2h6TTFVYTlK?=
 =?utf-8?B?NnY1d3FTUFkrYWlTVFVDcWIvTU0ycnBycFdYK00vcW1wZ2RhOWVkZ3JGRU1S?=
 =?utf-8?B?Q0NjRGgycGZvb0J2UVVGWTJnQmM2blVPcVhsNDkyY2haSkliNlBkWml4NWli?=
 =?utf-8?B?WTF0NDAxb1Vjem9uYTc1OXo0dWJwVHJ3QjkyOGhBWnZDSThvNENzYTRGNjFE?=
 =?utf-8?B?YU9oSjg0K0NZZlpJT3FZblJDb1A5bFJoaTBBRXBtVjRLTUk5T1FJbEJyNERl?=
 =?utf-8?B?TzNkR203aTcwbExIRUtJT1JLaUJueVc3eXdGYnJhdDUwSDZrZTh2elF0SXVG?=
 =?utf-8?B?SkNSNEdCWExoU3VPb1JvS1BYcWJwMzNGNHlGa1grUFJRU1BXS1BkeXNuYjlo?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f167069-e484-4c1e-fbaa-08db87b8e579
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 18:00:39.8409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QNLNSsriSTlTWVKYkGBGJwh7UEa7akK8NYbd1vHBMupI2uRneMRj8Lp/aOpcwDk5h0W0RCGopmg8m2dOOOF+UZPOdi3aqrE0L28hFGGIlQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8097
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v2 i-g-t] i915_pm_freq_api: Add
 some debug to tests
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


On 7/17/2023 9:26 PM, Dixit, Ashutosh wrote:
> On Mon, 17 Jul 2023 21:19:13 -0700, Belgaumkar, Vinay wrote:
>>
>> On 7/17/2023 6:50 PM, Dixit, Ashutosh wrote:
>>> On Mon, 17 Jul 2023 11:42:13 -0700, Vinay Belgaumkar wrote:
>>>> Some subtests seem to be failing in CI, use igt_assert_(lt/eq) which
>>>> print the values being compared and some additional debug as well.
>>>>
>>>> v2: Print GT as well (Ashutosh)
>>>>
>>>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>>> ---
>>>>    tests/i915/i915_pm_freq_api.c | 18 ++++++++----------
>>>>    1 file changed, 8 insertions(+), 10 deletions(-)
>>>>
>>>> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
>>>> index 522abee35..a7bbd4896 100644
>>>> --- a/tests/i915/i915_pm_freq_api.c
>>>> +++ b/tests/i915/i915_pm_freq_api.c
>>>> @@ -55,6 +55,7 @@ static void test_freq_basic_api(int dirfd, int gt)
>>>> 	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>>>> 	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>>>> 	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
>>>> +	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d", gt, rpn, rpe, rp0);
>>>>
>>>> 	/*
>>>> 	 * Negative bound tests
>>>> @@ -90,21 +91,18 @@ static void test_reset(int i915, int dirfd, int gt, int count)
>>>> 	int fd;
>>>>
>>>> 	for (int i = 0; i < count; i++) {
>>>> -		igt_assert_f(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0,
>>>> -			     "Failed after %d good cycles\n", i);
>>>> -		igt_assert_f(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0,
>>>> -			     "Failed after %d good cycles\n", i);
>>>> +		igt_debug("Running cycle: %d", i);
>>>> +		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>>> +		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>> I am R-b'ing this but stuff like this should be using igt_assert_lt()
>>> according to the commit message?
>>>
>>> This _lt stuff has to be fixed all over the file, not just this patch, if
>>> it brings any value (again according to the commit message).
>>>
>>> Let me know if you want to fix this now or in a later patch. I'll wait
>>> before merging.
>> Yup, I will send out another version with the corrected commit message.
> Hmm, I thought the code needs to be fixed not the commit message :)

Ok, I meant this specific patch will address just the area where we 
check for the requested frequency. I will change the remaining in a 
separate patch.

Thanks,

Vinay.

>
>> Thanks,
>>
>> Vinay.
>>
>>> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>
>>>> 		usleep(ACT_FREQ_LATENCY_US);
>>>> -		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
>>>> -			     "Failed after %d good cycles\n", i);
>>>> +		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>>>
>>>> 		/* Manually trigger a GT reset */
>>>> 		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>>>> 		igt_require(fd >= 0);
>>>> 		igt_ignore_warn(write(fd, "1\n", 2));
>>>>
>>>> -		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
>>>> -			     "Failed after %d good cycles\n", i);
>>>> +		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>>> 	}
>>>> 	close(fd);
>>>>    }
>>>> @@ -116,13 +114,13 @@ static void test_suspend(int i915, int dirfd, int gt)
>>>> 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>>> 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>>> 	usleep(ACT_FREQ_LATENCY_US);
>>>> -	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>>>> +	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>>>
>>>> 	/* Manually trigger a suspend */
>>>> 	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>>>> 				      SUSPEND_TEST_NONE);
>>>>
>>>> -	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>>>> +	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>>>    }
>>>>
>>>>    int i915 = -1;
>>>> --
>>>> 2.38.1
>>>>
