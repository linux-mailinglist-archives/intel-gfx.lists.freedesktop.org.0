Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3103777BE70
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 18:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 464E010E21B;
	Mon, 14 Aug 2023 16:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3448610E093;
 Mon, 14 Aug 2023 16:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692032046; x=1723568046;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/HOfKYZ6JCadK8WHO4fwv2QIzKfe2+rJaOHCWThM0KM=;
 b=gnf/vLi7l5IHw6XuDQpiy4PhP4M2myMVkLJAyKqk5chIk74TWwvVMU8j
 H+QwTTvlJBvUYotIcaYO76Drf86hG0nWhxZ3629GRlIOG7UJ+PS3Xuauf
 kNRxTKOxTgwvD6w5QvEbsnzkDFmVcQcWRo0/b9xCO7tMzZjChcfaZ3SaA
 Au5QAXX2Jf/2AHrxIuLchrPCN8RjbT6EJOtRrzaBCCPeJhbmE4Rl4UdfU
 dzo/PSuj2XOakLhUYRKjljbZebtyQHdRghUu4lrRTHJ0PLXnE42KA31sH
 8xBVTMvh/fTk7h74rrzFCzVO5Tfi7OqMEC2KSwYWhvxcs/wkK1wSK4nlR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="375805804"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="375805804"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 09:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="907287900"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="907287900"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2023 09:48:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 09:48:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 09:48:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 09:48:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 09:48:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S1kyVtjgDXSfi2NZeSkjtdTlks6SthpR3KaG45Zj7VLLkGzSflTlXOLnFpMBDjfXi4nVCzM4yMjB3gytikW+fgqFlrn9kIMZpudiBnviAAxQx7BjaMlL+BgqOs4DRWEbeZueNpgctddVk4c1qlR9Yw7QIt7z9xoKUDtXdCaEkWUCHbQs+B4beH2p9Wyy/YNVXe3pkUMpQpE5xkkYYMctbG47eWX4NvA0STVfXou032uNUqKUtL6U6B4Nspe3S+dGqJbWdqdjZEfsqm494AVq1S+YN94XEyCT4oU0b7Y54WSRx38YMMi55K/U48HRqcMElHbjJy1Mg8StHSGztc+3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmIAObEDWo3OCJy5azEXY8BXe0uFSt0nHcSZ90/UL4U=;
 b=nd89bC+25tkMhaCLH5TFpDnesc8XgZeqz+ZpsDqpUwNH+iYmoj2IeiqFENni7+b9aly28FmzrxQO6Qstxn+6XByeaK1U8ONsJcHX9rJzNAmlKCdzBq5G4wnYIw1jP70b8bdw5DpVf+ArLTTnJHMGyxmfhnDfHOYY4MTtnMWXdxJ0ps6B02y0gBr95Jlo0GeSKOLVNa23domCkF0dTtxkSascvT2pwkuUQHCS5c/O88JpEanrpdNCaG7ToZzkne2NKCiu9rtc9pSRipo3d2EJKAtcLwrRzB6pYl33GHxK0vBXlfxwFhlmFiUf577BDWYb/MpZQObOCS1Z9vNiI3nnHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SN7PR11MB7489.namprd11.prod.outlook.com (2603:10b6:806:342::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 16:48:51 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::6b70:5707:3725:f557]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::6b70:5707:3725:f557%7]) with mapi id 15.20.6678.025; Mon, 14 Aug 2023
 16:48:51 +0000
Message-ID: <46a09df0-ffb5-a8ea-e90d-dca65f5d92f0@intel.com>
Date: Mon, 14 Aug 2023 09:48:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <igt-dev@lists.freedesktop.org>
References: <20230809005014.3451790-1-vinay.belgaumkar@intel.com>
 <b5e574a1-7aa4-d233-3b02-f0acbac517bc@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <b5e574a1-7aa4-d233-3b02-f0acbac517bc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR10CA0008.namprd10.prod.outlook.com
 (2603:10b6:a03:255::13) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SN7PR11MB7489:EE_
X-MS-Office365-Filtering-Correlation-Id: 748feb30-ff2b-4349-7fcf-08db9ce65679
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FCgs0+YOo2SHjbOu6zvnfvAwyeOHu1c4ozFIBBzymBaNPsVDpU/sa69qEpbqyT+r2b4RJtS0AV4VpOGZOvQLhDG0lGow0bCPm9TP7zp5A8Aja2BTzDgpz+CQb6ohWyBR1XfNIJd0QHnIbA6NtCXhEnJ2+U7wroc5mM/UsEcfDzvX1qj4X8SMfojqiaCdOSR7mYkABEeB1NQ9/3qKnB5bAjpGVUz9jMY1SwW6QlAjeDgpOpGL85+MHjMbNd/SxWTyUrj89HX7nLW3ucBI9lG5pdzTEUiCOXiZYxM6xXqGswH8im5XoLfcqOLx5Ub1nLI70ccm4YPuZooT+C1jReP0luOH8tu6ojQXKcp6jyZfzdqav/335ozoKO4To1OJVs+MmfkjeWQzU5U/N66Fiz0bieOYjMnLHNRgJYzUEJaL6kEDCSu6LWjnexox1g6mMWSp5qtxKTzvlF9Y5kNopBEsdseomlkUNHdMsCLs5vSbisJEONilNTidYno2xz3ixGM85XnncEfjnHdgoS6P5iW+TibVUv+ORNhf7ExksQRm7UrHC8o1tzItNTHguouZJPNxF8iCxuS6oI53Xb0mebhC0y7/amSXJ649ZNtWP7/2kXeL5pLuTNCbNf1AIpi1H4h85YlZ53kKUOlK7yt81NZxvghcwzq20tOvFTyGZzJdoNw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(39860400002)(346002)(376002)(451199021)(186006)(1800799006)(86362001)(2906002)(6666004)(6486002)(53546011)(6506007)(2616005)(26005)(31696002)(966005)(6512007)(316002)(66476007)(66556008)(478600001)(38100700002)(41300700001)(66946007)(5660300002)(82960400001)(450100002)(8676002)(8936002)(36756003)(83380400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEFFRHg5cis4RXUrQlFFcThGWmNNUDhzR3d1OUkrVy9DN0pjRG83U3p0bWFn?=
 =?utf-8?B?bTRhUXdWZjhoQmQ3NGFFazNHbC9Benh5SjRoRVFQSThvVFdYVk5nOUIvSEZG?=
 =?utf-8?B?WHduOWVuZDFESFIrU0o4NEhoWmZqc1JudUl2TTlPQ3pVR0x4TlZsNmZXU2tV?=
 =?utf-8?B?WUdLa1ZEcDhrV3dsYjcxelg0czZJVDRjVjJvQWpOZnNYSzhFcUR5WURsKzFH?=
 =?utf-8?B?VGNLcWxZcnozYzVhenkvV3ZaejgxWDhtQjRwWnNCZ2IvRXcydGxKdmtKbXdB?=
 =?utf-8?B?UEZBRUZnSkxROG5KNHFPMUJ3clp2b3NEbUdLS0NtS3VZVDU1Tnl2UmZWb21n?=
 =?utf-8?B?dEQ0eFYvVXZUelcydlhkZmphckQzcWpMUmYzSkpJUjNBRjRTZUFtZ1dZcHZv?=
 =?utf-8?B?djFIdVp5TEl3REpzLzJxMG5VNlBUYm5Zc3gzRWl4MkFjOGNTOWlFbkZMdzBp?=
 =?utf-8?B?eTNtSnpLNlNsb2hhQWROOVdnZUxrQWMrWDJqZC9VR2pIemNmVUpkdERJeXh1?=
 =?utf-8?B?eHdDRGs1d0lGQnhXYjdMV1cwZ1plWVBvVFAwUHpQYXNTQURkeCtySE42dnNv?=
 =?utf-8?B?alk2YlNRWE1HeVVlV0hvTzlEOHFwTGhQSk4wdmJZdWQxamdBUTluS3pwUTNX?=
 =?utf-8?B?ZWtWZ2wxMWVHQU1ESTQzWGVwU21QN0xGcnZuckdYNWhoNm52dEF5czh0U2xi?=
 =?utf-8?B?akdnb1BVTHVKei9ZSUprWEh2d2ZyREhhUzJLTFFlZFNXRTFPZ0d2S0FQdnJp?=
 =?utf-8?B?RmJta3AxaC80bWlFNUlaN0JDY3pmWDhCSnliQ1hFNmZQdWxCTlVEM3lyeDgz?=
 =?utf-8?B?SHcwOS9xVXNjMGp3dE9rT3duSTdkUzdRamxVTHlORXFZQUp2SVREeStwcEtw?=
 =?utf-8?B?NGovN1RoM1cwaE1abjZNaUJCcHppVkdtV0t4ODFEeVBWbG1FQkxjcEJlYW1q?=
 =?utf-8?B?TGs1OXpJQmF2N0FLdDJ3VUFWQ2ZMbUorajFCTndldEVyRnhramxRS0JMTGd0?=
 =?utf-8?B?eG9HRVlGYzZYbG1XR0ExUjNLelBrRStpT3U1Y09lajU4SUhvdVIzMGUvVlda?=
 =?utf-8?B?K29pb0w2bDdqRFhsdExDek4zNXRHakpRREhDOG84Vzg5Qm1rRVVqb2huYTRK?=
 =?utf-8?B?anZqeFI5ZzZaNWdlNVJuOGplMHVnWlRFQWVQbHNBMlJVKzFlbjAzcWNqSzFy?=
 =?utf-8?B?a3FyTHNMbWJKRXEyMFdBeTJyS3o1UjJYdXQzQWxqd1hHc1hOYmhaYXNzellC?=
 =?utf-8?B?MXRzNUdBR2tVOVpZcG45ZHlsNG43cW95OVFsaDZGNnpCNEVPT29RdGdwdlF0?=
 =?utf-8?B?aXI1NmVTNFJyWjVKcS9IU0hUQWJpejVsOTRieWxNTVRkVTZRT29Tc0xaSTBk?=
 =?utf-8?B?VjJHVXhieE5PM2lKY1hKbkxydEVuMHRoUnJsZXorbXVtSDdNMnVzRXVOM1lY?=
 =?utf-8?B?bUJlRlc3MVBOazVoWkQrUnJyN3crYzFlTU12ZHJHMEMyUzNwa2RBNGpCdjVx?=
 =?utf-8?B?TUhBb001MXNzNklaNjJSOEVqMENkWUVrSklkSUNXRlpWMWZ2VlBXQnJRdU4v?=
 =?utf-8?B?MVhNYWNRVnNVSEN6NXBmWmV3cnNFZC82YTdQcWJFN05TcTBhNnNlVEVLNmdQ?=
 =?utf-8?B?aVI0V0hOWFJjM2ZoUjd5K3NsMmpxTkNRME9mQjF6cHV3dmxnZ1NQN1E0SVpC?=
 =?utf-8?B?RXI4SHdJd1dyYWdkRVJvTFFzSlM5VVFHODVkeVE2dTBBMUN1WXdxcjhyUFVn?=
 =?utf-8?B?bHQzRnBaaDBMQk5ZaUpxNkNLaUJEdGp1elhHblYyd2l0K252c3pjY2t1WWdP?=
 =?utf-8?B?QzNyWjM4VGJmRVNxMlJ5enhvTzdsS3AxZW4wTDUzNXJrbEFpQ0lHS1ozQkti?=
 =?utf-8?B?UW5IZnczaUY5S3lZbWExMVVSSi9yb2gyWjdaTEIrZ29QMXVoamg5QjY5c2d5?=
 =?utf-8?B?cWJFNEJBNFRvN2Q3Z1ovQVYvckI3QW1RK3pqUFltVFNjRkRXKzJnYjNiYThp?=
 =?utf-8?B?VlpoRjNZSHdiamloZ0RrTVVBOSszdURBU3czZ0U3SFFsb1VJUCt0YWZqcDQx?=
 =?utf-8?B?NnpNSENRdmtuTWpuTlNvdDZDdnhVTFVDMFFGMnR3dDhucm1weDloUUlobklx?=
 =?utf-8?B?bjFQYW5WcmRFSldkMEZPNFB1RTBCb091RTllc1h4MGVDWHFIa3JLbU1aZmZ3?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 748feb30-ff2b-4349-7fcf-08db9ce65679
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 16:48:51.1719 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ALQx+RUARjZcGZlFX1bIQLI8DBffbR+eL0KYSLYwzxSbX9WTF1elZu5UKZfbqMSJvqGwsx/423k3VAeQxl53sZ5HonqRzqntVJHGikN/VNk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7489
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Ignore zero
 register value
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


On 8/14/2023 12:24 AM, Riana Tauro wrote:
> Hi Vinay
>
> On 8/9/2023 6:20 AM, Vinay Belgaumkar wrote:
>> Register read for requested_freq can return 0 when system is
>> in runtime_pm. Make allowance for this case.
>>
>> Link: https://gitlab.freedesktop.org/drm/intel/issues/8736
>> Link: https://gitlab.freedesktop.org/drm/intel/issues/8989
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/i915/i915_pm_freq_api.c | 18 ++++++++++++++----
>>   1 file changed, 14 insertions(+), 4 deletions(-)
>>
>> diff --git a/tests/i915/i915_pm_freq_api.c 
>> b/tests/i915/i915_pm_freq_api.c
>> index cf21cc936..9c71411ee 100644
>> --- a/tests/i915/i915_pm_freq_api.c
>> +++ b/tests/i915/i915_pm_freq_api.c
>> @@ -88,6 +88,7 @@ static void test_freq_basic_api(int dirfd, int gt)
>>   static void test_reset(int i915, int dirfd, int gt, int count)
>>   {
>>       uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> +    uint32_t req_freq;
>>       int fd;
>>         for (int i = 0; i < count; i++) {
>> @@ -95,14 +96,18 @@ static void test_reset(int i915, int dirfd, int 
>> gt, int count)
>>           igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>           igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>           usleep(ACT_FREQ_LATENCY_US);
>> -        igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>> +        req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
>> +        if (req_freq)
>> +            igt_assert_eq(req_freq, rpn);
>
> Is there anything else that can cause req_freq to be zero?
>
> To differentiate can we assert only when runtime_status is active 
> (igt_get_runtime_pm_status() == IGT_RUNTIME_PM_STATUS_ACTIVE) ?

Makes sense, re-sending.

Thanks,

Vinay.

>
>
> Thanks
> Riana Tauro
>>             /* Manually trigger a GT reset */
>>           fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>>           igt_require(fd >= 0);
>>           igt_ignore_warn(write(fd, "1\n", 2));
>>   -        igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>> +        req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
>> +        if (req_freq)
>> +            igt_assert_eq(req_freq, rpn);
>>       }
>>       close(fd);
>>   }
>> @@ -110,17 +115,22 @@ static void test_reset(int i915, int dirfd, int 
>> gt, int count)
>>   static void test_suspend(int i915, int dirfd, int gt)
>>   {
>>       uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> +    uint32_t req_freq;
>>         igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>       igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>> -    igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>> +    req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
>> +    if (req_freq)
>> +        igt_assert_eq(req_freq, rpn);
>>         /* Manually trigger a suspend */
>>       igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>>                         SUSPEND_TEST_NONE);
>>   -    igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>> +    req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
>> +    if (req_freq)
>> +        igt_assert_eq(req_freq, rpn);
>>   }
>>     int i915 = -1;
