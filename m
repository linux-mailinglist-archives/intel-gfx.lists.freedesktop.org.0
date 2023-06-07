Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFAE725240
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 04:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A97810E416;
	Wed,  7 Jun 2023 02:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E466F10E412;
 Wed,  7 Jun 2023 02:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686106530; x=1717642530;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AOb1RTYrqXQeG2K+V8Y/uU6YFFmBvkJflhtvm/UzlLE=;
 b=geTBkD/Y+vL1aoMpp19iUq30+Gu7VSF7mkjuWq3P7bxpQwWY0WuR2NhY
 m6K0Rz319OmO9AL7JTeHc0tQ5X6RbYVE7b/Z9D2X88hexQljSDV7tXRwV
 E83JJBosy3UpOdFXVrKf3N3BhWDAjUibqOLlkfVshYEUUn1g9RBwLjH3s
 Mp2or2zidDqqA2l8i9sHFSkyJwjEqAz75UNI7sloTQV0dB+T3yj//HYm8
 ZsAZOOB3Gnb7twOVht4NnkLaswARYQhNB1sQZ97cwNlGaBHPMH+3qVza/
 K/voVW128v8pyaA2LXNl9GcMXZ3x8NeY9b4a/oJHY67L0U14Fc3qEKBSf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="341513674"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; d="scan'208";a="341513674"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 19:55:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="703433747"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; d="scan'208";a="703433747"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 06 Jun 2023 19:55:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 19:55:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 19:55:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 19:55:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5LHt5Wq4FtLgK4luEj8SUT0LQDfm/+gI0pFHDJ0p7D9HwCwcg46VGT7vEiKikYmpFNUyOd4vmbjsH0PGYBmWpEHFZ5rdkm1VXZQne9zTamRo6LhdsiqzBVFh/aeTW72qAu6/VInzF3Rlo5bvfL640ABWpe5NYtzfj65dfEHF7H6fdjaF2kVlWh38mK3PS+yNiMC7YkeIYW5N6388OGJdozDUmZcZRVmgjLoxqhfHdN6FV6sJdBzcY0hU828Isqy5IaX3Ha7s3OBuYO0ZoCQHRnE6uiHFpKdg3HD/mQWrwsjYcu9qepnhr46vLslIsNJpo9RKcBUbMAHbkESly5uLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uOWimT1ROemzy5nEoM6yfP/nZeOcSU0JwAWLu+6WITU=;
 b=n8GgYPKN+JRq1RmdQPCv+dRFxWpw7ASstXIvWqrY++5tP89tv8dy/cTPOhg8cPomr+FbR7H8FkU8RVwdph/bbGzyKiQuiUAEXfhqpjXt4EYWvJZXlB2tmIKh1BvdEEDUu03cFgOPP7PqonuvlC4dqt5gXy3gSy0UCgeIDBsW3jax4tA/VoC2IiJuDUSzTx9VJVtf41inKJqWcJg6dTXTrmwu/B6UE8Nknwk21LBF0B47K0fy2Y9zWqjO9sS3PoW4mV1k/1GP0El6GdZvsBZE663Q+gEkfskWDptM34NZn/Rs9BcFn2J1N643PKnj3w5/IoLtWHmJt2jo23wSNlYDIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by IA1PR11MB6346.namprd11.prod.outlook.com (2603:10b6:208:38a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Wed, 7 Jun
 2023 02:55:22 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a%5]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 02:55:22 +0000
Message-ID: <e350860d-c5da-8650-2582-c9a18192a32d@intel.com>
Date: Tue, 6 Jun 2023 19:55:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20230524191906.2160802-1-vinay.belgaumkar@intel.com>
 <eea7a840-d1e9-5f7c-e164-46358720bf82@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <eea7a840-d1e9-5f7c-e164-46358720bf82@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::39) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|IA1PR11MB6346:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d55280c-133a-48a9-bc1f-08db6702a295
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9p3U+4yN6hhiNpuNonZIMD7a/yzQOoTXIMuSrf21fo5uzc/6NXLpbsnivTI/AnOJ4+q3kKtteM3ptlgrrvjeCCxnpOopEuvpOBpYlGjoHbOhU+t/f0v7HJrQ9a9xBEnGea0wcBpieZOroAiDiCMtyhGHCnHuVePEG+m1K7gIPycNc5xk0M0MsknvnQqVclKt8bFl2ernPWFE9/8rplj2cJJnKNvzIX9GJHd924GrFvPS1Rbqd5YoCdWQjfpQe7a0QJYBlO8qXTpdTk2Abi7DTn/BABxucO2SrRENG692mc6ZFvVHgyC+1YSLeLhPWXjVmflx+Y2qRDLXNKhgbSX++VHI2j2unnUMnK7Rjdgy4VRrIvbsWTLhUSAcglsV6Uhamu4B77D8WWE4GocdO6otu6fSFm1mNKuSgrSvn5VBcYTFOIR2fRnwm3pXVxXu2A+Du68WA3c9QBuFocqoaFxOclTHVOF9ZwSPuo6zgJ1wjpdLaWD5CAAF9PNkwnq3itoIQ6s+DiSQNglDikZuTf8QgyUjqqB+SfTzrjAr+WoYb4uAnFZMqw6JFEr19xbgtphLEYOI0ovd9YvF1chsilAckgH3NyQWkkuoNaT0Z8B/eF8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(376002)(396003)(136003)(451199021)(31696002)(2906002)(83380400001)(2616005)(36756003)(86362001)(82960400001)(38100700002)(6486002)(41300700001)(6666004)(5660300002)(316002)(8676002)(8936002)(478600001)(966005)(66556008)(66946007)(450100002)(31686004)(66476007)(6512007)(53546011)(6506007)(26005)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGdZcTVmRjN3OEZ1U0F5OTNzV0NJM2tQaFhSd2VIVGlkSHBIblgzSjhrYTNS?=
 =?utf-8?B?Vkt4dmhid052WGY1UEtsbDlubW04VmZldEZsYVBFUW1hVXRkdGhaSVlWVTg4?=
 =?utf-8?B?RVpnVWVZME83S2NyRWZsbGdRMi9TN3JGYW52QXY5Vi9vc29aRFd3Uk9zV0Rz?=
 =?utf-8?B?a1FlQmlGZ0hmRmtOKzlOMHBGUG9zVHRhMm9MNmZDUWJYUVlKb3JJQUV1dFEx?=
 =?utf-8?B?Q21NTWwvODc2OFEweGZyTWt2RXRuK1BBRkU3RDAyeXAxQ29Qell0a1FZY0dx?=
 =?utf-8?B?QVgyOVprY1Jnc0M0UUhMYWRUeStFN2ZjaGRPUkU2M0R3SitnYitKSTlCMnA2?=
 =?utf-8?B?eHo1dDhLUGlCZ2RDN0lRd09Gd3N6bCtxTjlwQnZNd3JEbTlGRUJ3UTVQanBL?=
 =?utf-8?B?cDNtWnF1VjVxbENpaDBlOWw2ZTJvOWhLVWtHL0JuOWN3TUhnM2xXZE9SWDdi?=
 =?utf-8?B?L2hvOGYyUFBIR250cURYcExaaGRyLysyaXRHRmxzb25FRGdWVEZUSWFqSlZK?=
 =?utf-8?B?YlVYNTJKR1BYa2hORTIrUk9ScHBybmlWZkdsUEFIT3RXM0pEaVNRV3M2d0JW?=
 =?utf-8?B?V2RzMXpuYzUrLzNBaWFVejBYSHlZbzcrSE13K1NXR29JZzZuSjB5Qld0ZE9L?=
 =?utf-8?B?MUVYSVdnN3l4Tzltbmo5bzhDaVZZdk10ZkNhOUFrcFFrUVgxVFFTK2lXaTBU?=
 =?utf-8?B?UnZQcUIyZFQ2bVVPamo2cDRtTHcyWlRXblc0VXo4bVArMGg2MlR5YVptZWR1?=
 =?utf-8?B?NXYvUUh1RnZsYWI1eW5IdUR3WDFPTGVzczBVb1g2OFlRN0Nhd2NUZ3FpWGJS?=
 =?utf-8?B?RURVb3F6RVVpOHo3R0E2Uit2cGhJTWVaN0FWQ256d1QxcE81bjIyLzRJSHRm?=
 =?utf-8?B?SXlFZXFsZENzRVd1WGNiUXRsY3BOMWdhNVhqVTM2bGdPcnErUWM2WTYrU0E4?=
 =?utf-8?B?cEh2aEFhZmNXL0hDU091S1I3Y0JYQjFUc0Y4ZUJUTU1rUWZuTUp3YlpSVmdM?=
 =?utf-8?B?d2VoVkgxTVNYbXM1azZBcncvUzBMVElsMEZtZHh5NDgvbXgyL083ZWpXWGJt?=
 =?utf-8?B?Y2tPRmovS2ZYMXpTRnN2WGJIRWVMTys3ejY3VC9zR1dFWXJJLzlrNFlhK1JQ?=
 =?utf-8?B?MjBHbGllQ3Q5aVRoZVR2RWJJOFNabjVYOHNvbFVLMVU1L1pnckE1S3lJSEZU?=
 =?utf-8?B?QTVrdmE0WEU1RjQ4VjBJWGczdUlTMEVCdUZ0VGY2aWR3eGlIaS9sVjRSZjFo?=
 =?utf-8?B?UFRCbnRSM1c0ZFFEUE5LUXNlU003TVRMZFFINExCWGh1eFpxQTZTYmJmVGNr?=
 =?utf-8?B?T1BrOGtmaXJsdFR6UE5mRkowL3VoUER0MzYzYnBTd2UxUUNUMk1vOWlFL3ZQ?=
 =?utf-8?B?akRveTNsaWY0OGlWLzRYK1cvRHF1QUl0OTJhUGk1Y2JYK3JPU3BKcmlUZ2lH?=
 =?utf-8?B?dS95Tk5nUnhoMjRNd2RBcXpFbVZUSU9tK1VleDY5cEdKMWo5K21KZDhoRTBn?=
 =?utf-8?B?TWFEaGdpMXFzbUFwenJNdE56N3hOc0REUm5TMDRZUjdYQ2xpVmdIUGFnWkpn?=
 =?utf-8?B?WUNRR21tZW02cC9jZjZQVlVZN21nbmRCWGlzV29FYS9nekJ0ZFdPUFc3R0Vm?=
 =?utf-8?B?QXFrZUdPQnRObThrNXh3QVY2TEF3aUpiNFdpOWc0dTFaY04wSmJLSE1KVmhq?=
 =?utf-8?B?bUtwam42R1JzQkFaUlZuZURFeTh1MkQyUDBrZEhBcWFhT3lJZDAxQnUrYng5?=
 =?utf-8?B?SWdPWXU3UVM1T05hSTBheGVNWGs5T1FUa3U2bnhZSGJxZjlkSlBaQ3FDWG5j?=
 =?utf-8?B?ZlducFdjcHZWeld2Mjdsdm5zenlVQTFnUXFUenBkNXNOeldteDM1ZmQ0VllQ?=
 =?utf-8?B?VklaTUxZZ2YwOTZsdTdkbWl4Wm1vU0F1eU1hdDBuOHBSSGtOKzFmTjNWRlBC?=
 =?utf-8?B?cDljaGlZOFdwTTdQZmpUeFpVdk1VWnJGemswZEJYeUJrTEMvNGZWdjZ5MmIr?=
 =?utf-8?B?Z2k3UWlHWjBFaUNhbWhPeTBVejRyZUZIc0xwRzdyZTY4bEpvZWRJU0tYWnB5?=
 =?utf-8?B?bUF4eTQxbWZBQ3lEYzQydzZpTkZJOEIyQ3F1eTJKSjFWbVUxdHlvbDB2d2xk?=
 =?utf-8?B?VXVOVTRLYi9RbGxyL1lpSjFidFB3azYzM1dObTd2WGxibC80YTNhT1g4emQ0?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d55280c-133a-48a9-bc1f-08db6702a295
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 02:55:22.0140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +rGGjvVM1bS6DYyppEQ0mxGpz3GqLtthh0uxedSGecUOwdKbTryeyru5vzqLZcqkV0ZrlbY+3zvI7vU+3FSdBxp9ba3EzLd7flYvt1ycCS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6346
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t]
 tests/i915/gem_ctx_persistence: Skip some subtests
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


On 6/1/2023 12:55 PM, Andrzej Hajda wrote:
>
>
> On 24.05.2023 21:19, Vinay Belgaumkar wrote:
>> Hang and heartbeat subtests are not supported with GuC submission
>> enabled.
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/i915/gem_ctx_persistence.c | 32 +++++++++++++++++++-------------
>>   1 file changed, 19 insertions(+), 13 deletions(-)
>>
>> diff --git a/tests/i915/gem_ctx_persistence.c 
>> b/tests/i915/gem_ctx_persistence.c
>> index 42cf96329..1e122535e 100644
>> --- a/tests/i915/gem_ctx_persistence.c
>> +++ b/tests/i915/gem_ctx_persistence.c
>> @@ -1366,19 +1366,25 @@ igt_main
>>         igt_subtest("hostile")
>>           test_nohangcheck_hostile(i915, &empty_cfg);
>> -    igt_subtest("hang")
>> -        test_nohangcheck_hang(i915, &empty_cfg);
>> -
>> -    igt_subtest("heartbeat-stop")
>> -        test_noheartbeat_many(i915, 1, 0);
>> -    igt_subtest("heartbeat-hang")
>> -        test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
>> -    igt_subtest("heartbeat-many")
>> -        test_noheartbeat_many(i915, 16, 0);
>> -    igt_subtest("heartbeat-close")
>> -        test_noheartbeat_close(i915, 0);
>> -    igt_subtest("heartbeat-hostile")
>> -        test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
>> +
>> +    igt_subtest_group {
>> +        igt_fixture
>> +            igt_skip_on(gem_using_guc_submission(i915));
>
> As Kamil said this should be put into test function.
> Otherwise you will have misleading errors in other tests - fixture 
> will be called always regardless of running test.
>
>> +
>> +        igt_subtest("hang")
>> +            test_nohangcheck_hang(i915, &empty_cfg);
>
> What is 'missing' in GuC in case of this test? CI is happy :)

For now. I have seen this  fail before, so better to skip. I have sent 
out a patch with a skip for just this one since all others have been 
taken care of.

https://patchwork.freedesktop.org/patch/541407/

Thanks,

Vinay.

>
>
>> +
>> +        igt_subtest("heartbeat-stop")
>> +            test_noheartbeat_many(i915, 1, 0);
>> +        igt_subtest("heartbeat-hang")
>> +            test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
>> +        igt_subtest("heartbeat-many")
>> +            test_noheartbeat_many(i915, 16, 0);
>> +        igt_subtest("heartbeat-close")
>> +            test_noheartbeat_close(i915, 0);
>> +        igt_subtest("heartbeat-hostile")
>> +            test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
>
> These tests are handled already by recently merged:
> https://patchwork.freedesktop.org/patch/539647/?series=118423&rev=3
>
> Regards
> Andrzej
>
>
>> +    }
>>         igt_subtest_group {
>>           igt_fixture
>
