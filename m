Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A816E2A87
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 21:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069FC10EE63;
	Fri, 14 Apr 2023 19:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F03E10E208;
 Fri, 14 Apr 2023 19:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681499721; x=1713035721;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E1MPe8Qh4e8soxkz4L0tvEjd+NX8HDsAMPn1M3wuKvI=;
 b=j2v/DDTajRUmZXtoFDuPZXypX5iHTNaOTpzXCT/rIi3XLRObY/gCJ0Bc
 t3aYQmgwVpjhcqtHwvHC6RaAyyRfmIxhraekgWniLSKF6PiueU1ByiJgD
 0gENRKYK1BEmB/QoYh4V6Fo2OC5n7sOPWdGflOhD0BvTEKBLvKR7JKn2T
 EGmXwQAOOIrT7BRuG3puZDqTGQuz3py3G9gI8fydWHXLh4uy1gQbAJeMC
 kpiEcqpUhjz8kyoB0b9JxC+21fySpcwwhnACmSCYkBapB02bgGC0Of9v3
 aL/nUrbBckOI0j25hltCIvO6ecr05uFPecghCXvnHwPJxa2n+6koaTbly Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="372419648"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="372419648"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 12:15:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="759211466"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="759211466"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 14 Apr 2023 12:15:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 12:15:20 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 12:15:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 12:15:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 12:15:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QoSYoT/dA1PdbFE7DehoF1/EqUmLvnVTHy06P2dMgW52faHubgVR3790ERiLfhfI3EskJZEyFBtFL9Sq5vgfLx3MosTXhZ4xOmEN+nYT2LFNAw8xvgO3QiFCyrd0JXCLHwjnC4AELv2LiboNve0260Vc32hcX8CLvm3tQlmZza4OJcNxQy3/UDvHghei/+2u6qut8g7Gmk1LfkG2FS41vn1ttldEM+dZFLJwZ/IgEyXrR8VnW3rATL1Gn850xAg7q6QjU//5daWDskYBVjuCZ91Ph3Xt/mIOeiU5zpwFF3DwThyTpHd9p6YxnJ1ZlJtbdAQGMBQG9fRsa4gStrVI5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yOvE5XuHUqVj52bIXU8evxz+MsgbL0Hw8Vzo4Rypt5s=;
 b=PRRlHZt2Num5l9724Wo/qGoYLgjLc+nOmMUZaKRqMsppuboN5ECO+aMPgvN4NcMWCOap06I6riciIh0hHUogXFI3RSWUQ94IwCRtgAwVjBwlAjBCKJuNXIrHSwXdWp1tHe0KB8uS4zOAYssEW/telnkkf6r3JrxSyTWWQRyN6z0jQSLU19apJZsbR4HglcCEVTfIntnhzdoaEZyO3dhk3Jx8A2+b2rwq2vnuFMgdzl5SpRXGtCTukLy7Y2Bbu1/V06OS1nfp8mk1EBWFL9IFE5lDLaHIBNrraZW1Pqo+8/WVGVczoWl80DulT/zySA5IxmK/5q4spdKvpblq2+wa5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by IA1PR11MB6291.namprd11.prod.outlook.com (2603:10b6:208:3e5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 19:15:17 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::2988:48c2:4dd7:decd]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::2988:48c2:4dd7:decd%7]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 19:15:17 +0000
Message-ID: <cc343cda-29eb-3364-9eca-237be2cb5110@intel.com>
Date: Fri, 14 Apr 2023 12:15:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230413224414.2313507-1-vinay.belgaumkar@intel.com>
 <20230413224414.2313507-3-vinay.belgaumkar@intel.com>
 <87jzyeqqqo.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87jzyeqqqo.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0251.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::16) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|IA1PR11MB6291:EE_
X-MS-Office365-Filtering-Correlation-Id: f7a03fa1-a1d7-4ba3-b32b-08db3d1c94b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kHKP190XtOZ5bFzHgw7p0Uoi5YjxKmXmf1mjhgFQ//lUxPpr/QJdwob+VWDoWUafXpj/bBHDktubEZ5JgG1ajrqVoYMkqIS8dlO72NtGZno3E2qGRdDoUD0tSJs6FhivAXtLGD7uBXIVgJM5oFlFVqjnup9BskOSL+qXTMj1GIixCGo2Cc2C2aY4EzLnbpyozTfSs2VqKms946unGTdM6GeKQMyJ7cpUvy/K9pQz+Xpue/ioeny8L1ZCL49+wb2U0R+DmB+nj/hD5/dWWOuVX0TWlaH6/zyd1qM90PPh6DSYfpHiwm2Xukif3OEsQ0ogCqk4436JBuHhVYoMNEaNnLyVqvpkHZXcurjZ6r0YyL/EReUJ7r53MAq/FKRzdBtBmomrulATfAUeTCKQwk1gSmhL3z9iBfoU+5SC7+Fng+c0SsoZ5TSWZKJlq6pepIkN270mjFkRaDgHYkj5CY66M6O/zRfD39EKPfJzYZGKWxKaA2FmAfuQtWiVOVKuHzt3wjhr1eJHrXwWrgxmt3aScY4Ou0AaLVrfaFN6TD0YKqdrA/6Jhg1jGz2/4orgtGebHZ8MR7crR8A7agzV9JZxXA6RtJxQS7FfuAwKCzOQzluxc3H1Ez73a+0OPbb4536KYIp4uvgT6+cLFBiIpJClMQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(376002)(366004)(39860400002)(451199021)(6666004)(37006003)(5660300002)(6486002)(66556008)(2906002)(66476007)(36756003)(4326008)(450100002)(66946007)(86362001)(38100700002)(82960400001)(41300700001)(6862004)(8676002)(316002)(8936002)(31696002)(478600001)(6636002)(53546011)(26005)(6512007)(6506007)(31686004)(2616005)(186003)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3hkdXVwNjVRQVVmVFZOcDdRc05hVFU3UXFsWTNINlRjcDdaVEoxbHN2bHRE?=
 =?utf-8?B?QUdmT0tNTGtvMkdhMTlrNmtUSDRGdkJldjZQYlkxMkMyWFF4MzQzLzFNNno0?=
 =?utf-8?B?V1Bzb1I1czdzOE85RFdpNllNdFhOamZjdEUySlBwYjZwSjVYWUQ5SlpwRnZu?=
 =?utf-8?B?MTlqZjhSRUszTjMxQ3NWdEFDTjcwNk52bi85WTA5QTEyb2o2VXhHRlU3Mndx?=
 =?utf-8?B?d2ZmTjBMN3BEemcyR0dIa0F1eHlnZ0MyVzFWVWtiTjFpejE2S05RZEw0cmtE?=
 =?utf-8?B?em1aaE1MRFBONnJGOXV5aU13a1VVRmFBejhCWGtWQ0Nkb3JmQkkzTTRMQ29s?=
 =?utf-8?B?OSt0Y1k4WFpRK004ZlIyOUc0b3Fka2JXTnpjVE9WS3p4ektXc1pyRm54OWk0?=
 =?utf-8?B?TTg3U1UvUU85RXVFMlllalpVZEN0SjF1U2VvNXRkc3hJQjJML2tZN1E3bHZY?=
 =?utf-8?B?SU9idlpBTFdTcFNSMXg3dThRVkhaRVQrTXpORnBlMmJVZlZmRkhGYkp0cVVs?=
 =?utf-8?B?RHo3U3gxUlk4bTVQdVZkekh5M01nTHcrTFNuaTdVZytLd0l1RTZmNzhCSlpU?=
 =?utf-8?B?QVFLWGR2QW1JZ3l2TWdTMUFCZWtwaTlwcWdUODlwMy9IbnRRT1NsUmUvN1lj?=
 =?utf-8?B?alhwYyt4amROZS9kVUZvWTV4UDZpcnUxamJRRGQxR1V3NEFJUGJiczFOalMz?=
 =?utf-8?B?elB1MlN3UU5qeEJZOTFGY01RcUZvNjl6WkdqMzlxRzBWRHpzV0QyTWJTNzhu?=
 =?utf-8?B?NDJpejZ1VHZlZTUvWG0zSW9ScFU1d1NKdjJ3WGk1OG5ibXJGQjB1UE1UMXlo?=
 =?utf-8?B?YmhFVklYandIaXBndSsvNEU3Mmc4b3g5VGhQdTlWSVdSUzAwWlRrY2Jsbytm?=
 =?utf-8?B?S2p1VTlFd1hiY05tZnczVXNTMjRuNmM5QkJveGM3S0dRL2tLc1dnTEdySW8v?=
 =?utf-8?B?ZFRodUtaMVV1ODRyQ0lQZFBHd2UyZ0t0K1FnRlJuUEk4ejNXMENoUGlIaGpC?=
 =?utf-8?B?S2x6Z09oSFJ6WVlCU3F5N3IxVERvTS9NWGJ6VVcwdkRsakVaUnRFY29pcUFW?=
 =?utf-8?B?NDgxb2VOLzMwRC9qTDVGMW1rSTdsOHJOUHQrMjRjMEhRS0FXV2JydXRCdzNz?=
 =?utf-8?B?bndyMmhJcTRpLzhTRVVQditSbmR4NHVWV2RTUHBIaFdGcU9aNC84VlljTERh?=
 =?utf-8?B?bDVkOXRiRXhsMTU1ZmRmWndKVDJ3QlE5V0NZenFGVDdhbEEzRm5JbDZoQnBE?=
 =?utf-8?B?OElGQkZKNmJxZStFdENNK3czMkNjNTVsWEZ5SGFCVFpTVjRWR2dRYmMyb0Iw?=
 =?utf-8?B?aDloV3JVN3lJK1drc1VLV3N5bEd5aCtJWFYwbGZQc0lqVHF2dm5KQzZQNDlJ?=
 =?utf-8?B?akFscTQ5WTU3bHJTYVBwMG9hdnRSd3g1OXltTVR2Zld3aUxFcTkzdlRkcGow?=
 =?utf-8?B?NFVlbHhLN3RUOHpnQ1VBOW5OalV3MFYvZlo3L3BmcGlkeVl4UWt3VFNpb1Bx?=
 =?utf-8?B?bkJIR2wrNVJxYmtqeG1sdkNGaTB6NlJDRXBmRkU4L1FpTEJLZmNRQ1VIQkE2?=
 =?utf-8?B?YjBmR2FXS0Rsc1B0WXlWampNTDFTbXFkM0l0ZEY3VS96RU5tWXl1Q2V2UXF1?=
 =?utf-8?B?YlFDNHpCbFNmektWSUtMclZUSCt0ZU9ZeE9weThQY1ZBcnRwY3NXeXNHbWcz?=
 =?utf-8?B?RWIyNDNiYktsbEE5cjluYjBIMklMZkdIbFk4NktBRVluVTNSeDBYS1lrL3VZ?=
 =?utf-8?B?eDhRQnpCaXVqTnBuQ1BxNmFWamZ1TGtNTEtOY01kMFJsQ295cTFzU3R5NlRi?=
 =?utf-8?B?aWlpd24yTTdqeEF4MktkdkJPWkl1K3M0VHdyRC9JVkNKRUZrSEZLRVpoSHN5?=
 =?utf-8?B?NTdYN2orSkFvcWwwMzBnbXdHTElvdEpRRjc4bXZpek5YZ3NNcXgxdGNYaEdT?=
 =?utf-8?B?cDE0eEQ0WTlMT0RmZnd1SGVFd0JwWG9LUFNpMEVzZjNUY2JGSzYxY0lrKzdI?=
 =?utf-8?B?alpiSkxGYUJTSml4WGpQbFFWQXpSaXcvR0JKK1U5SHVVRS9CUEZ4ZWlNQVgx?=
 =?utf-8?B?RmJuNWQvbUV3Q0FDcEVrYTJudFBJNlQ1b2lKUGFKb2RaenZIVk5BMC9vY1Fw?=
 =?utf-8?B?ang3blRzUEdSSnFXVEpUakR5UTB0KytzNzFPZ3dWajdHTHJCTVRPdHBoUCtH?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7a03fa1-a1d7-4ba3-b32b-08db3d1c94b8
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2023 19:15:17.0371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /GBbeiWVWAnl+r0XXRRMHB7OoqfoDzaInlmUtMPKPFwE1SvPCZDVwuf0f0MAaUMFTTkZTjPLvPxOSjMmjv8NgZB4KQ9fA1zA47xKeZUB6D8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6291
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] lib: Make SLPC helper
 function per GT
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


On 4/14/2023 11:10 AM, Dixit, Ashutosh wrote:
> On Thu, 13 Apr 2023 15:44:12 -0700, Vinay Belgaumkar wrote:
>> Use default of 0 where GT id is not being used.
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   lib/igt_pm.c             | 20 ++++++++++----------
>>   lib/igt_pm.h             |  2 +-
>>   tests/i915/i915_pm_rps.c |  6 +++---
>>   3 files changed, 14 insertions(+), 14 deletions(-)
>>
>> diff --git a/lib/igt_pm.c b/lib/igt_pm.c
>> index 704acf7d..8ca7c181 100644
>> --- a/lib/igt_pm.c
>> +++ b/lib/igt_pm.c
>> @@ -1329,21 +1329,21 @@ void igt_pm_print_pci_card_runtime_status(void)
>> 	}
>>   }
>>
>> -bool i915_is_slpc_enabled(int fd)
>> +bool i915_is_slpc_enabled(int drm_fd, int gt)
> OK, we understand that the debugfs dir path is per gt, but I am wondering
> if we need to expose this as a function argument? Since, in all instances,
> we are always passing gt as 0.
>
> Maybe the caller is only interested in knowing if slpc is enabled. Can SLPC
> be enabled for gt 0 and disabled for gt 1? In the case the caller should
> really call something like:
>
> 	for_each_gt()
> 		i915_is_slpc_enabled(fd, gt)
>
> and return false if slpc is disabled for any gt.
>
> I think what we should do is write two functions:
>
> 1. Rename the function above with the gt argument to something like:
>
> 	i915_is_slpc_enabled_gt()
>
> 2. Have another function without the gt argument:
>
> 	i915_is_slpc_enabled() which will do:
>
> 	for_each_gt()
> 		i915_is_slpc_enabled_gt(fd, gt)
>
> and return false if slpc is disabled for any gt.
>
> And then have the tests call this second function without the gt argument.
>
> I think this will be cleaner than passing 0 as the gt from the tests.

ok, created a helper for the helper :) This will hard code GT 0 instead 
of the tests doing it, when necessary.

Thanks,

Vinay.

>
> Thanks.
> --
> Ashutosh
>
>
>>   {
>> -	int debugfs_fd = igt_debugfs_dir(fd);
>> -	char buf[4096] = {};
>> -	int len;
>> +	int debugfs_fd;
>> +	char buf[256] = {};
>> +
>> +	debugfs_fd = igt_debugfs_gt_open(drm_fd, gt, "uc/guc_slpc_info", O_RDONLY);
>>
>> -	igt_require(debugfs_fd != -1);
>> +	/* if guc_slpc_info not present then return false */
>> +	if (debugfs_fd < 0)
>> +		return false;
>> +	read(debugfs_fd, buf, sizeof(buf)-1);
>>
>> -	len = igt_debugfs_simple_read(debugfs_fd, "gt/uc/guc_slpc_info", buf, sizeof(buf));
>> 	close(debugfs_fd);
>>
>> -	if (len < 0)
>> -		return false;
>> -	else
>> -		return strstr(buf, "SLPC state: running");
>> +	return strstr(buf, "SLPC state: running");
>>   }
>>
>>   int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev)
>> diff --git a/lib/igt_pm.h b/lib/igt_pm.h
>> index d0d6d673..1b054dce 100644
>> --- a/lib/igt_pm.h
>> +++ b/lib/igt_pm.h
>> @@ -84,7 +84,7 @@ void igt_pm_set_d3cold_allowed(struct igt_device_card *card, const char *val);
>>   void igt_pm_setup_pci_card_runtime_pm(struct pci_device *pci_dev);
>>   void igt_pm_restore_pci_card_runtime_pm(void);
>>   void igt_pm_print_pci_card_runtime_status(void);
>> -bool i915_is_slpc_enabled(int fd);
>> +bool i915_is_slpc_enabled(int fd, int gt);
>>   int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev);
>>   int igt_pm_get_runtime_usage(struct pci_device *pci_dev);
>>
>> diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
>> index d4ee2d58..85dae449 100644
>> --- a/tests/i915/i915_pm_rps.c
>> +++ b/tests/i915/i915_pm_rps.c
>> @@ -916,21 +916,21 @@ igt_main
>> 	}
>>
>> 	igt_subtest("basic-api") {
>> -		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
>> +		igt_skip_on_f(i915_is_slpc_enabled(drm_fd, 0),
>> 			      "This subtest is not supported when SLPC is enabled\n");
>> 		min_max_config(basic_check, false);
>> 	}
>>
>> 	/* Verify the constraints, check if we can reach idle */
>> 	igt_subtest("min-max-config-idle") {
>> -		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
>> +		igt_skip_on_f(i915_is_slpc_enabled(drm_fd, 0),
>> 			      "This subtest is not supported when SLPC is enabled\n");
>> 		min_max_config(idle_check, true);
>> 	}
>>
>> 	/* Verify the constraints with high load, check if we can reach max */
>> 	igt_subtest("min-max-config-loaded") {
>> -		igt_skip_on_f(i915_is_slpc_enabled(drm_fd),
>> +		igt_skip_on_f(i915_is_slpc_enabled(drm_fd, 0),
>> 			      "This subtest is not supported when SLPC is enabled\n");
>> 		load_helper_run(HIGH);
>> 		min_max_config(loaded_check, false);
>> --
>> 2.38.1
>>
