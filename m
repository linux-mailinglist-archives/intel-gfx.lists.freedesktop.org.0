Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 653EE72F13F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 03:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E407E10E00E;
	Wed, 14 Jun 2023 01:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D2710E00E;
 Wed, 14 Jun 2023 01:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686704498; x=1718240498;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LLhodlJQyAAbzmb7cLOIEYPd7OetIVP5ylpT34U3P8E=;
 b=ZITcEA1AGjZ5K30SRhsBoLzoc90pH/66pHRVmIRMKToT3MXsn9YwshLF
 uP+c8nu9Dtczr9DoK48u+MT1ovFB++CjWvtJiDZUZ2U2qB9BpcFQk+STv
 dSBaNI1qba4H9KbagVyncZe4xepN22OFXUew6TCI7nVq8gfl/nYZ8KZIZ
 wXrnJnwLK4od2WxWuh9IGH/z32BucaDaFfLRI/84KwvFivbC8GeSE8hWf
 JM3VSn4cs2dtVBqxzbLzlxTHoT31J8V34KUIo4qiQhDixrGL36ra0Ypv3
 oJ6juJE5N7o6AqOMFBYiIMJHaBolGpMt0fIzWxiy3eONC5RK+dFcxAwAC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="386892611"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="386892611"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 18:01:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="856314703"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="856314703"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2023 18:01:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 18:01:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 18:01:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 18:01:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 18:01:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OwVb+EggHHJAuRUnJcwrI8vOgWJ4b+qBSX/i5bevBMUufXsgJu0DTNUcRdqxluEK+DUGbOjm16c3ny5No0QEiKKgN4uX9BjUg2Q71Nz/lzFcfbOq+Raz9V/LJR85hEfQHfVa7bYL2iNNCpwmwfOPWZ94vhdgRZf/m06Gc0QmolSTLrCri0V/OY34ubHWxjCxqa1M6zVLgB+yQD+U3rUIrVvu+h4Zhx8dTvm+CmsTEfsW8fFoBpa2JbHr7ZWHavtMtGeqWxxTf5LF3ycbVsRWHX0q8IRWfN/18Bu8/QNMCXF2y63d60qoWBtQ26H9Zhz5B1am2SUpk80sdW3L1Bm9gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/fjOlhjRRWMvIWiLD4kexyEYaDVmLrBaWLLFljexvM=;
 b=I+Jq2xIaQVcvMMu2YrSVT/B5X5RZtsO/BV6ryxP5ryuHe4tW4BUdlO3yBevL94EiKgKYCsSMEGjixmvLjd0Wr/TgT+fIc9d+LClDrbw/YT2UiDSPwazRc5gTLnL164fv4eWzSUvD+J8T0zlWmkRPT8tVy7Y9/EYaNbO6rwNssNaPr3PwREQIDFzk4YYUGt2IUtnbAPZ+M8+qusQhf+TReHCLQF4KeHnyhNt0fOwPN3InTz9WNxs1ENGYBDY7hJeTSPA+ZysSDKW5wa3WGeJCZybqzle2/quaC93t4wXb2FmQ0EO9Km3/Ijkx1JbjEuzDlAxz+jh1P9DoIl+DDgx7/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by PH8PR11MB6902.namprd11.prod.outlook.com (2603:10b6:510:229::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.46; Wed, 14 Jun
 2023 01:01:29 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a%5]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 01:01:29 +0000
Message-ID: <3f62360e-ed2c-240d-c9c9-f984bf77f3e0@intel.com>
Date: Tue, 13 Jun 2023 18:01:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230612194213.528058-1-vinay.belgaumkar@intel.com>
 <874jnbyrz7.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <874jnbyrz7.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0069.namprd11.prod.outlook.com
 (2603:10b6:a03:80::46) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|PH8PR11MB6902:EE_
X-MS-Office365-Filtering-Correlation-Id: ec3bd0dd-e85d-41a3-da0c-08db6c72e31f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eqbKl+x3QiCgPkas9WhZxPJvQFp6T0KLyw1xjPMiUwJtp3n4CQ58YhGrqZ6MB4KPck0zSNoVzQyQ5sVOAFkpcCsLEytbuj9DyoF8k8nnNy3aDIetW3nXu5RL3Dud74dKxbKPlQlsHnQ51HuW1DALR8Olo55vbGA1/qt9We/aAHMQEJpYIeAlepmiLgadvQc1Q+/PLOzVUyiu7BRX2KfuO8Jf/Dqo//209kGXgroIMIemEjhJbEYcF1zJDAg6IXZltvz9ch27vy9LEtL3clLDw7/R8P5XLs0L/ZG/MLiaIA4NPsBxRuUEcsPec2Ng+f8xA5qjH+UJb5zK5IWSYkaoSbPU9O+9tOaeSPWmqyYU0+NhzKJwCl5TN4lVomoHtqTaSob0W9FupehB3UlP8ZxIQrh5FsvMmSyVFtsg/KQsKA5jER7u9yvXZafK7ICCcxRIA9cDqUoaxJDcqotD9jXzeELBXkKcvFmwo2KCHPlFSBlKczKnjcF2mwT3KJiVVcUV8M0ZiTASIM6HeRtcrvOoGPXtJpqIKV2T9JLqfBG9PqB/wLWgwT/TCmdQjKyyYBgvSrnEFR/MUpWneqyvDOQ+Fa78RDUTftZy8mg+8cpGMbhEWW70YxdHS+R+gCZQfi2M7xYWjh3eAegp0/vQKBBAsQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(346002)(136003)(396003)(451199021)(2616005)(83380400001)(82960400001)(31696002)(86362001)(38100700002)(36756003)(478600001)(37006003)(450100002)(6486002)(4326008)(8936002)(8676002)(15650500001)(6862004)(2906002)(5660300002)(66946007)(66556008)(66476007)(31686004)(6636002)(316002)(53546011)(186003)(6506007)(6512007)(41300700001)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WCtoazNycWV1NDBLUEJJS3RUZEhlVElPNGwrYlEyelVHN01TZXZ4OUNqMkhE?=
 =?utf-8?B?TTg2OGZ3YS9ndUF5R3I5enNadW5pVys5OVM1em1ldjJtTjMrRmE3WWlqd2xS?=
 =?utf-8?B?SytveUQrLytKZzFQTXJhS3RnWWJMWk1LQm4zRUI1d0ZmN3A0dTY1ZEdzbDU0?=
 =?utf-8?B?WVdCdytFbDlTQ3dlSWtBdXlTVFowVkY3UjRMd24zM3pBU29nNi9uQ2Y2bnpX?=
 =?utf-8?B?c0dZT3BXYUh2cVQ5eThBZFlRU0JuWFdJUUtWZkFvdnJybUFGMVdFYXZNTE9z?=
 =?utf-8?B?RGllNjJhTmRKU1AzWWhTZllSQ1lHY0RnMWQ4SUtVU3RESGtmSXRuSGZpaUVP?=
 =?utf-8?B?V0xKcFBGMGdqU29NdGk4alpUOHorSCtjRjNmQ1hwVlZQQlg0UFlKKzdCdXV1?=
 =?utf-8?B?WG9rcHFjYVdub3RkMENsbXBpOFFsWUdhL0lLNHc4SVlNU1l5WWI1NUkrNjVk?=
 =?utf-8?B?RWxKNFEzOXo0WmxSYVQxRGdjV0lJMDVRMjZIdjE4dEdKeitPMG56L25lUHpy?=
 =?utf-8?B?Mjc3NktKQ2FVL1oyQmxtTkNFRFJaNGwzbTVmQ2xtbkNNMC9lRW5rZEZRZ3Zt?=
 =?utf-8?B?dGV1UEVTSElaN2lmakdtUFJZMVRoSTIzcGxDa1JRT2hhMk1xME5rNEVEUnZD?=
 =?utf-8?B?eUMvOEhDU243ZlA0dGdHWWtEUitlNG1sdFpNVDZDU2pzQzVaRE5OaDBmL0xL?=
 =?utf-8?B?RFFuZzlTcThML0MvdDhsMGkrSVAxbFp2UjFiZ1F4RmxKOVhpY1FFSHFnUmZ4?=
 =?utf-8?B?WGtYK1lORFlRN0lsRldLWjIwMjF3cTdrNXM1NE9MMnlndHRPUXl4STJCK0hH?=
 =?utf-8?B?SmVyTUdyQkY1b1RJcXQyVk9PS0YySlZZV1pieGtwWnhCL0dnK216dmJsUDlo?=
 =?utf-8?B?dDE3WFJrdEtqVHlYUnIvTk5wYUVkbG45T1I2dnM2bTVRbnFFeVVtY0xQNXNO?=
 =?utf-8?B?Z3lKYVVZK0g5Ymh5aE9YL1FuditSU3hYVmhXMkFnUFhWczRTbGtWMFVFdUlL?=
 =?utf-8?B?YlhRVU9RQTdCbUxmMm1pWUQ3RnhObEpmYWJDalFGMjc5VXZTYkhjaGptM1BK?=
 =?utf-8?B?OXRId2NWeVY5QWhVdXRnekhpVXFpa1FzcTFMVmQ4ZEdlaER4V2ltNVpZT1dP?=
 =?utf-8?B?T3BaaTQyOW83Rm43aVNSK1dBa3NHRTg5Slltand2WUNSdzZFRDJrSDQ1LzFp?=
 =?utf-8?B?MjZHRlpsVGdoMGVxRFNBcTVEVENxbGRIRC9zT05WZnp5VGlTTXBxa3BxVUUr?=
 =?utf-8?B?Ukxlek1GTk9oc0NYTDl2bkZtUDhUVUU2eUFzZnY2MGhtdGpSVk9iS3hHdVBZ?=
 =?utf-8?B?TU53NHl3Q28wd3hKcms3QlE0RUFRM0Q1THJMRDVYbnNXak95THN4bXdRS29S?=
 =?utf-8?B?NTYxMmxnankxeU1nL09UZnVic3U4YWZiVU1ycHBMNG9pejM5M2lHdmdYRjRC?=
 =?utf-8?B?U21WSURWNDhUL2J3Z0llZm01Zm45dEh6aEs2U1R6dW9iazAreGJ3T1hqM3hC?=
 =?utf-8?B?WlNGUXc4NXlaU1NzOGFEb2NHZ3pxMG1ubFNRaHBlMWNsUGllY2wzRlovdUJJ?=
 =?utf-8?B?b0JCR0NVQ01oSWRwZXlZYjJtQnFzcWhlZUFZM3ppb1JPUXJUcis4SFFhZEZj?=
 =?utf-8?B?ZFl6ak9vVTBDMnpkY0I0cml4L0x6TTUwWFVBSCt2YzFrdGJ0M3JwUXIxang5?=
 =?utf-8?B?Vnd2SnJXb1dYcjRGZ1hnb29GMFEraisrVmdTemhaQVExQ1dERHM2ZElIR2xa?=
 =?utf-8?B?dVZZQ243NDh0Ky96ZHVyRGNCd2w0OHJHckUwQjFlZ2FHaDRsWjQrVGVUYWtG?=
 =?utf-8?B?RTJsdVlpeDk3T2x6NkN0RkxSdTk5cXVlZFZNTkFWNjZ1dkpsVVYxTG40ejJ3?=
 =?utf-8?B?MlAvT2txWFJPQ01rWHFVZjJhb0l5a3FZVHJ0ai9GdEcwUGRSdG1VSmViMVNN?=
 =?utf-8?B?QlhBZlA2QjYyMTN4U2d2MXE3aTMrSkJleXpXY21Fb1lmLzE2Y1RVQnBMMVhi?=
 =?utf-8?B?MjVRQUcrdzJFN1h6MUJ6UUpGMHNNNG1SeC9oWDNzMi84N3YrbVZhT1ZyaFVC?=
 =?utf-8?B?ZUNiZGNKaFVpcHNIcEZ0MkJnVmQzK3B1QjBNaEU0RkxGcGJrWHl1RjRSWjdn?=
 =?utf-8?B?WFNjcnk3MmV2M3hEczJuaWhIbWIzaFhvOHJBNkpPdFRKZ1ZaVXYrQm9PRWVt?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec3bd0dd-e85d-41a3-da0c-08db6c72e31f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 01:01:29.6796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EdwMttkMeoaVY3FXs4Dg2gEaql+yHv6ATj2nInWbmKiXqoUCEV02scJ7nrIC+sQyOvc2EUE6V0e9EQiRNzySL8MPC4olw09kGCW07ENnKHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6902
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 i-g-t] tests/i915_pm_freq_api: Add a
 suspend subtest
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


On 6/13/2023 2:25 PM, Dixit, Ashutosh wrote:
> On Mon, 12 Jun 2023 12:42:13 -0700, Vinay Belgaumkar wrote:
> Hi Vinay,
>
>> Verify that SLPC API works as expected after a suspend. Added
>> another subtest that does multiple GT resets and checks freq api
>> works as expected after each one.
>>
>> We now check requested frequency instead of soft min/max after a
>> reset or suspend. That ensures the soft limits got applied
>> correctly at init. Also, disable efficient freq before starting the
>> test which allows current freq to be consistent with SLPC min freq.
>>
>> v2: Restore freq in exit handler (Ashutosh)
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/i915/i915_pm_freq_api.c | 89 +++++++++++++++++++++++++++--------
>>   1 file changed, 69 insertions(+), 20 deletions(-)
>>
>> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
>> index 9005cd220..4e1d4edca 100644
>> --- a/tests/i915/i915_pm_freq_api.c
>> +++ b/tests/i915/i915_pm_freq_api.c
>> @@ -18,6 +18,12 @@
>>    *
>>    * SUBTEST: freq-reset
>>    * Description: Test basic freq API works after a reset
>> + *
>> + * SUBTEST: freq-reset-multiple
>> + * Description: Test basic freq API works after multiple resets
>> + *
>> + * SUBTEST: freq-suspend
>> + * Description: Test basic freq API works after a runtime suspend
>>    */
>>
>>   IGT_TEST_DESCRIPTION("Test SLPC freq API");
>> @@ -79,31 +85,64 @@ static void test_freq_basic_api(int dirfd, int gt)
>>
>>   }
>>
>> -static void test_reset(int i915, int dirfd, int gt)
>> +static void test_reset(int i915, int dirfd, int gt, int count)
>>   {
>> 	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> 	int fd;
>>
>> +	for (int i = 0; i < count; i++) {
>> +		igt_assert_f(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0,
>> +			     "Failed after %d good cycles\n", i);
>> +		igt_assert_f(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0,
>> +			     "Failed after %d good cycles\n", i);
>> +		usleep(ACT_FREQ_LATENCY_US);
>> +		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
>> +			     "Failed after %d good cycles\n", i);
>> +
>> +		/* Manually trigger a GT reset */
>> +		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>> +		igt_require(fd >= 0);
>> +		igt_ignore_warn(write(fd, "1\n", 2));
> No need for 'usleep(ACT_FREQ_LATENCY_US)' here?
Don't think we need it. The delay is specifically for H2G calls. I 
haven't seen the need for a delay here in the limited testing I have done.
>
>> +
>> +		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
>> +			     "Failed after %d good cycles\n", i);
>> +	}
>> +	close(fd);
>> +}
>> +
>> +static void test_suspend(int i915, int dirfd, int gt)
>> +{
>> +	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> +
>> 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>> 	usleep(ACT_FREQ_LATENCY_US);
>> -	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>> +	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>>
>> -	/* Manually trigger a GT reset */
>> -	fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>> -	igt_require(fd >= 0);
>> -	igt_ignore_warn(write(fd, "1\n", 2));
>> -	close(fd);
>> +	/* Manually trigger a suspend */
>> +	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>> +				      SUSPEND_TEST_NONE);
> No need for 'usleep(ACT_FREQ_LATENCY_US)' here?
I believe this is a blocking call and will only return after resume 
completes (when console comes back), so delay is not needed.
>> -	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>> -	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>> +	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>>   }
>>
>> -igt_main
>> +int i915 = -1;
>> +uint32_t *stash_min, *stash_max;
> nit: could we maybe make these fixed size array's (2 or 4 entries) and drop
> the malloc's for these, malloc's seem excessive in this case.
What if this is a multi-card device? Though, one thing missing here is 
the 'free' for the allocations. Will add that.
>
>> +
>> +static void restore_sysfs_freq(int sig)
>>   {
>> -	int i915 = -1;
>> -	uint32_t *stash_min, *stash_max;
>> +	int dirfd, gt;
>> +	/* Restore frequencies */
>> +	for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>> +		igt_pm_ignore_slpc_efficient_freq(i915, dirfd, false);
>> +		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
>> +		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
> nit: I would remove the igt_assert's from here, it's basically a best
> effort restore so we try to restore everything even if we fail.
If we fail, it means the api is not working, so we should flag an error.
>
>> +	}
>> +	close(i915);
>> +}
>>
>> +igt_main
>> +{
>> 	igt_fixture {
>> 		int num_gts, dirfd, gt;
>>
>> @@ -122,7 +161,9 @@ igt_main
>> 		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>> 			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
>> 			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
>> +			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
>> 		}
>> +		igt_install_exit_handler(restore_sysfs_freq);
>> 	}
>>
>> 	igt_describe("Test basic API for controlling min/max GT frequency");
>> @@ -140,16 +181,24 @@ igt_main
>>
>> 		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>> 			igt_dynamic_f("gt%u", gt)
>> -				test_reset(i915, dirfd, gt);
>> +				test_reset(i915, dirfd, gt, 1);
>> 	}
>>
>> -	igt_fixture {
>> +	igt_describe("Test basic freq API works after multiple resets");
>> +	igt_subtest_with_dynamic_f("freq-reset-multiple") {
>> 		int dirfd, gt;
>> -		/* Restore frequencies */
>> -		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>> -			igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
>> -			igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
>> -		}
>> -		close(i915);
>> +
>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>> +			igt_dynamic_f("gt%u", gt)
>> +				test_reset(i915, dirfd, gt, 50);
>> +	}
> Do we need both "freq-reset" and "freq-reset-multiple"? Since
> "freq-reset" is a subset of "freq-reset-multiple"? Or we want "freq-reset"
> to run as part of BAT and "freq-reset-multiple" as part of shards e.g.?

yes, something like that. We don't want to run 50 resets every time BAT 
runs.

Thanks,

Vinay.

>
>> +
>> +	igt_describe("Test basic freq API works after suspend");
>> +	igt_subtest_with_dynamic_f("freq-suspend") {
>> +		int dirfd, gt;
>> +
>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>> +			igt_dynamic_f("gt%u", gt)
>> +				test_suspend(i915, dirfd, gt);
>> 	}
>>   }
>> --
>> 2.38.1
>>
> Thanks.
> --
> Ashutosh
