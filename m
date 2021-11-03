Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167EE444881
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:46:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A5273FF6;
	Wed,  3 Nov 2021 18:46:17 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3FB73FF6;
 Wed,  3 Nov 2021 18:46:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="212316862"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="212316862"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:36:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="585288689"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 03 Nov 2021 11:36:16 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 11:36:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 3 Nov 2021 11:36:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 3 Nov 2021 11:36:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 3 Nov 2021 11:36:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i3Yuvheq9gJsa5nFqRqNTlPorAFTmG/gAvXiJfA2mtDfU8csDcaId0K4rfjk6XxoZ5IvV556QNSN4sCdI2Q5ihx+yQQc0XjlXVT/dMZUPGOyFKxUGhgpAk6yEXLgGYanPlUFn7ieGbSvGANI0cX9dHFJIbVQ9ngr80sUfrMmBdfRfqabYWj3u9wY7Z+t9V9t8yfDCXwfBPKa5i1EnZyNPiBglGFJXjuvBsfpEVJVUInsJNy0036bjHd3NQoTmkKG206f1Lbmbg8wrFgYDafYHiSS+0E7VcJnaLay9dkVzHzzxZdoQtsF4bE0z1cI+Tbz2/LWZjcymryQ7icEvbphzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LTtBACThOTy67zqcGRAMrgFG5g/F6OFZtMsf17c6JgE=;
 b=COtbJbs13SFdjxrCN7wZOikOfIok7IK/rvq9Dc53Mu+vjZfqQ6pDbGClY+u8C8z+oJerExvdD2zz/YIVs5yBoEhj2dCa2uv8HUYECYvSOWKkak5TiuLCJTBs8RVqWuXNAZL83lennXqomCLn5sCq0WagOS7fRz8KcuZatxmL7m45acDD1FfhF32B+OKsZ8bUIiaVFXp+P0ewhCKYpyNgrW2wuvEsgRdKESLP34GrKNfhfHiXeczy1drHoxjFffQ4cX6aaDVkQJolxR65EwYTRUp6Wn7jyzlbrA8+kCWDhuUUPW+/p5zPQRlcXhQtaPU3EfltYxzoaN75dNHUgC/yTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LTtBACThOTy67zqcGRAMrgFG5g/F6OFZtMsf17c6JgE=;
 b=CCU7zVpDlOGAe2Vgh7hihbsmPh4tPdxrl/ZIoe1DzATA7lpgbLGEXH0FrwvN/GES1K2pEGJcIOucHNCUikP2Aan7GiAkFy7GELVgcnTgLcWecK+jivCRt15S21mubiXHbXgPKbk6oe3FeBnA2LodvB63BS2bQvl0A5pnRFNfUKU=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5610.namprd11.prod.outlook.com (2603:10b6:510:e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 3 Nov
 2021 18:36:14 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::ad26:6540:dce1:9f81%3]) with mapi id 15.20.4649.019; Wed, 3 Nov 2021
 18:36:13 +0000
Message-ID: <dac6e857-1a8d-3140-c07c-2f6f7a06eb87@intel.com>
Date: Wed, 3 Nov 2021 11:36:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.1
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <IGT-Dev@Lists.FreeDesktop.Org>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-6-John.C.Harrison@Intel.com>
 <9f929931-a782-7cfa-dbe0-1e7080eb75c8@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <9f929931-a782-7cfa-dbe0-1e7080eb75c8@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR10CA0011.namprd10.prod.outlook.com (2603:10b6:301::21)
 To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 MWHPR10CA0011.namprd10.prod.outlook.com (2603:10b6:301::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.10 via Frontend Transport; Wed, 3 Nov 2021 18:36:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d36c9ce3-4a60-4754-c5fe-08d99ef8d079
X-MS-TrafficTypeDiagnostic: PH0PR11MB5610:
X-Microsoft-Antispam-PRVS: <PH0PR11MB56108A82BBD7D9078AD3677DBD8C9@PH0PR11MB5610.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iCCBNQ7Tq0PFKJioCuqslF6tQnSCixjvon3vI4gBsRIAGOlvs/0VjVxW2BPmV5WV69JGea4rROiMdsso+6KqyPyhln/KcNhF1IMP6l2GmyPxtaqj9b7ZTFZg+cnI0PmuOWRKNPWSQnzbs2M5l1KfrVpljBSLDJ2uwr3Vqh6jssA3yN+o13L48ks4MXRLdJWReMYQyQar1vsQNKmZ25615hQvPrgSzJVxkqRWg4XXqGhCy6VAsoaDnMH8JTHzpqFk4+ngkcwTCxFTP0p+P8D+BVMCy2gFS3rbVsbqoKal0giZgIclhPxYlQPfDUmDn+mt9fWVWVMtmx6uay+1iJW1ZpZRQBmMuXGnLMGQBfgswaML54Js3fhqDBglw3fwr4PA6GaBYuhXVep23kwbw80QbovLMtO0zFrM4FLx0QWhEFMfAhN8Q16C9hpHu3kRcSjeH2prR/mtl/Bl1wVLaddeI1utt0b6hjZ20NsRTXSaERjtzGGAwkE0Nc0vfFFfATg075cBr/RbjfLMtK/PKlHg7erijJTLsfagGI2z4XZVghcgCs3BRE+m4DWb/OXdlpM96TEAlldXnfTks9v+Yfx+LnoLi/NG2iYouXnF/3PQUmRTsnJ/MX50tHLIyANjyV/AVXo34J3zxNnPwsL9zDGaOPGZwqgvdYLgBSjnG4FAUYOesgdUENUJnS7Y7xhhrxlMmwbGVbLnCGCuFo/R18IhpeUP6CJLcn5ftio3wX7KH4D2zq6BcVzwZvu2try7nQSr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(53546011)(186003)(956004)(83380400001)(26005)(66946007)(86362001)(8676002)(5660300002)(66556008)(66476007)(2616005)(36756003)(82960400001)(316002)(508600001)(31686004)(16576012)(2906002)(6486002)(38100700002)(31696002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVZqTGpkMjBwYy94eUowR1djMEdkeWs0QzREdFcrU1JnNW9IM0VqSGFVNTBI?=
 =?utf-8?B?bld4ZnZGbW1mZ04vYVluai9IUnRGbVA2SXRobVp5cUVjRmpJbUhJcFlsU1Qr?=
 =?utf-8?B?MUcyQkNuT1pGKzhtSXlJUlc5RzdrZTdWY1NkaWI1eEwyN1dpK1pYSTZVcWNl?=
 =?utf-8?B?VENlVXh6Q1hRR0d4RHlaemlBTVNGOGRaemkxL1U2eSs0SGlRK3d6K3VPYzNs?=
 =?utf-8?B?K2FYd1lQNVZiZGVadUxWQ1hnQ0Q3MFZ2dUREY2JXMTYxT1E1L1dQb3ZnRy95?=
 =?utf-8?B?aUZ5cXVwZC9EZEZ3SjI2YWQ2aWQxMVRjVmJvVEVYRUhnZ0RDSzBwYnVpRWtT?=
 =?utf-8?B?L0t5aFJRWEs4Y3ZiNGJhMkhrR2RVM0FJWDFxZjRKN1lBdms5Q3JmaXN5d1BI?=
 =?utf-8?B?UjdYTlFRYnFLMkUvZ0hBZVVVc3VWREhoNFRsTnVWY3IyR3BXcXduZmlLZE43?=
 =?utf-8?B?VXVVSlRSekRXQXJLVFB3RnJpNzJKZnd3SkpmQlY0bVJPeFRBTXk4UjFkbSs1?=
 =?utf-8?B?SGFva1dGQVZnNHZMUnBiT1RCeHF5YWZkd0xHbHQxbm15NC9YbDBRK1dXaE1k?=
 =?utf-8?B?dHdLZldkT05SQVNHUkljb29PU3lyNzFEZXNLR1Q0UW1OV1huNjRtYVZnWWlL?=
 =?utf-8?B?cTFVWEJBU2dwcEFvVi9LRXM0SzdKSmxMamtLSEhmTW9qNUgvMHJCdFk0cUdL?=
 =?utf-8?B?aDFjcTVTY1VpakltbmJiVzY5YkRZSTAzZTRGRk1yMExFdnFXZ0FPVWpPOGh2?=
 =?utf-8?B?a2YwZEtqRUlTdUozbFpid3dlb3dEb2JXenkyZWNRZ1NCMmZUUnZuOHQ2YTlR?=
 =?utf-8?B?VVZrdlVWMXB3RDR4Q090cTRNbTFSc2lsbTFqNFYzUmkyZGlNaUZYdXdldldM?=
 =?utf-8?B?OThIVWQxU3dXd0NJdndsSE5YTTdoY1QzUHpjNEJCSnc1aWNEdHptZzRwakFV?=
 =?utf-8?B?MjJlSjNiSnVWdXphbElnMWFYU0xtbmFVMlU5NDZ0UktZSW5PeEFiK3V4eFpq?=
 =?utf-8?B?VnMrZi9lZkQvVEVVSTNodmhUTzlxdnRCWEdua0R4b0c5TE5MZXFSNXJWZGRW?=
 =?utf-8?B?U0FLdnFxWW85OVBnSElXNzY1SGZpMjNkRDNIcU13OUdIbytKUE4vUXZMTTQv?=
 =?utf-8?B?UnIvbmE5TkdTdXpZc3hlTUcxdzArWUVmYThmZ3pyQ1daS3cxSE5Kb1FsanBr?=
 =?utf-8?B?THl3NDk0K3E3RkVxQUVJUkI2OFMvZXZMcEdvK3pZRHMvaE4vbUN5TkJNQmJC?=
 =?utf-8?B?RUNnb2tkTHRxYVN1VWpRUUwzOTdva3g1MXQwYXY2d1hNLzVGQXRDSWYvSnJJ?=
 =?utf-8?B?YklES1FoVENqL1p5WVk2c2ZCS0dyZkRoN1RLaUlzS3BHQkFtclBmVGVhQWxr?=
 =?utf-8?B?S2RhOGRMcHlFRldiNUpubUM4aXNDM0hJNUdObkY0RGVwZC90Zmk0d29KUnpX?=
 =?utf-8?B?WE5YNzBRYURBcCtKd2wwbDB4OHkrQW4wWXhJTk9udVB6Q1MyT1BZM1kyclVS?=
 =?utf-8?B?YUk0YkNWSGo2dkRtSkRra2ZTcllIZmR2NUlsTjRpbHppQXcyS2ljZHE3VUE4?=
 =?utf-8?B?b3RaeE9BQ2V6U00wWmV5MkVrK2FFNkFmN1JNa0x5YTc4c1NVUEorYUJvSng3?=
 =?utf-8?B?Wk03ak9qbUhIQ2tDaG50YmFqZEE3SEFiOElMLzhkRnNtWDN1bTU2UnY2bUUr?=
 =?utf-8?B?STNKSUlKV21zUFA1RHpyMkVJSmZDdjVXNWtySS9YTnh4eGtleWsxVENEZS91?=
 =?utf-8?B?T0IvbXNCYmxuaW1xZnhTWW9JUHg4QmxYVytpVDk0Kzh0a1VKcGdFZmZ6SjF1?=
 =?utf-8?B?TWgwZVh4Z21Jd2NUejlsMWk3S1g1OENVYk5PUEU1aHBXdXFXN2xIb0M2Nzlp?=
 =?utf-8?B?REgxeXR4S1h5clhxbzlRUW11ZkpTTFNZZHNMd1pmM25VZ1AwYWxHK0FOUEww?=
 =?utf-8?B?STFoUkxBQktLMFBTcVoxOEFFUWRiNE9oa3RMeUtWbm05andtMDJQcjdwbERl?=
 =?utf-8?B?dVRaanNMeW9qOERNTG5ldG5ucGhtbmNOQzlYZWhoZ1RIaDRDSVA2bXpUanZL?=
 =?utf-8?B?NzlwRnk4ODQ1REJyemhSeGJXNVE4Z1ozU254ZmI4aHRzaEg2djRUWGh0eXUv?=
 =?utf-8?B?UGFqSUVpd1RBM09YWmdKZUZSMGczbWZlQzNFblJ4YkF6Z3c1dFk2dGV5QWRG?=
 =?utf-8?B?RU50c3JlQU1ZZkdZOGtIZW1DYk5hajZHa2xIdWlOQ2tDQ1d6VkQzWkRHT1FR?=
 =?utf-8?Q?tTByn/sVROUYgFvNs7Ro2sz9lQSFRon5B1l3PCcnyQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d36c9ce3-4a60-4754-c5fe-08d99ef8d079
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2021 18:36:13.9252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XQ1XeTQtfCF1+Nn6U50m+qHbk4wzhsh9fFXj2COAFZwF0tr5ajM0Vubs5yedYQLehxJ1K3lYzCHlx7oP6t9PtByOjDBjJHuzF/GGQaW5OyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5610
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/8] tests/i915/gem_exec_capture:
 Check for memory allocation failure
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/3/2021 07:00, Tvrtko Ursulin wrote:
> On 22/10/2021 00:40, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> The sysfs file read helper does not actually report any errors if a
>> realloc fails. It just silently returns a 'valid' but truncated
>> buffer. This then leads to the decode of the buffer failing in random
>> ways. So, add a check for ENOMEM being generated during the read.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/gem_exec_capture.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/tests/i915/gem_exec_capture.c 
>> b/tests/i915/gem_exec_capture.c
>> index e373d24ed..8997125ee 100644
>> --- a/tests/i915/gem_exec_capture.c
>> +++ b/tests/i915/gem_exec_capture.c
>> @@ -131,9 +131,11 @@ static int check_error_state(int dir, struct 
>> offset *obj_offsets, int obj_count,
>>       char *error, *str;
>>       int blobs = 0;
>>   +    errno = 0;
>>       error = igt_sysfs_get(dir, "error");
>>       igt_sysfs_set(dir, "error", "Begone!");
>>       igt_assert(error);
>> +    igt_assert(errno != ENOMEM);
>
> igt_sysfs_get:
>
>     len = 64;
> ...
>                 newbuf = realloc(buf, 2*len);
>
> Maybe the problem is doubling goes out of hand. How big are your 
> buffers? Perhaps you could improve the library function instead to 
> grow less aggressively.
The buffers are generally ending at 2GB in size with the capture being 
about 1.8GB (on the particular system I happen to be testing on).

I considered various options such as doubling until a given size and 
then just incrementing by fixed amounts. But where do you draw the line? 
1MB, 128MB, 1GB, 128GB? If the final result needs to be 128GB (which you 
cannot know until you have finished reading and resizing) and you are 
allocating in 1MB chunks then it is going to take a very long time to 
get there. I ended up leaving it as a straight double on the grounds 
that it is the best compromise between overallocation and taking 
ridiculous numbers of steps.



>
> And at the same time perhaps the bug is this:
>
>                 if (igt_debug_on(!newbuf))
>                         break;
> ...
>         return buf;
>
> So failures to grow the buffer are ignored, while failure to allocate 
> the initial one are not. Perhaps both should return NULL and then 
> callers would not be surprised.
>
> Or you think someone relies on this current odd behaviour?
>
As per the commit description, this is exactly the problem. However, I 
do not know for certain this is not intentional behaviour and something 
somewhere is relying on it. And I really do not have the time to audit 
this. The vast majority of uses are reading teeny tiny files and don't 
care but who knows what might not be in some particular 
test/config/platform/etc. The fact that it is explicitly saying 
'igt_debug_on' means that someone must have made a conscious decision to 
not assert. It's not like they just forgot to check for null being 
returned. Which implies it is intentional and required.

John.


> Regards,
>
> Tvrtko
>
>>       igt_debug("%s\n", error);
>>         /* render ring --- user = 0x00000000 ffffd000 */
>>

