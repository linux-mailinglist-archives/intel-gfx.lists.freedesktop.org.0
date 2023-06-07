Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5577271BE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 00:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33A210E560;
	Wed,  7 Jun 2023 22:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB71010E560;
 Wed,  7 Jun 2023 22:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686177106; x=1717713106;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BJjIeL3xIMw7VFxGlUaVUjf9OUjyUNwfmvHgfW/EWCk=;
 b=E4rbzaB2/W2I/3zqDx/HepyngLEQEWDFM+Am88UkbOcCpjmxSbK5hZJs
 y0KZNI1SpHUDlME0wD3HMlnsvX49ySdTI71V7X1lHQCWilhcFmT++UTJU
 +ooOjy3q8jhK1tohigWv1QWeETt0kluU7Fosq6Z4CP222DY1XTDd1RB/V
 mIcR/citrAd29CF1f5YELktrMVinq9RllDNfxnmlLasDqqFWvDQWVfn3y
 97esE7ESPDYiNLyh0cDTh9Qg4r9ANT/Zh+LK6xwkGHlTC39xbywrOG7fY
 ty3vHs4Pt3qDlGh69k4bNaTmSigS5lJ7Pj5j5+Inl9CXZ3GHjdxvB7/h7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="354617538"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="354617538"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 15:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="833916059"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="833916059"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 07 Jun 2023 15:31:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 15:31:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 15:31:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 15:31:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8KpDcsu82gp4t9pleKFKA0xzU4F1jqR0as6IvIQghc0cixk7SLiVNVw3k1qpqz9pOuXXCA6ylMdIwjwl3a2oduIoYXX5DY/io40nPf+6UlzUvjqoQCilSOaLT4S5wyeCecZP7bcLedbNUD2cM/Zqq5PYCqoqDXyo4zsCzmIhDRta0ZjP2pCq2JGTlXzqK3qosS7D8iEJnZTj6oM16YcBDKaboqXz+Adbzj/hKHz1mHJ4Iar/3CebUM8DdSa5KKe1JFnpewL0ArQhdG8JJP0c+h7fdcA7wxm1C7+RZi/dk4IHtX/UpgCDgbhZWnoeGJOsVP5gbc1a7YliQspQSfJpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FKRXHOyAEsff4hgmEKwKrO6RYAOMMztHFt4IGXgg3fI=;
 b=C2WqksR6WdPlrQaqHoeb1UIdZ2cEWHac5hvswq0LXWK1CCeUMVZRsncov8SHFlWb4+V5zFWDkonnioV16ZYbmFu8CkGALYZoDLiR0mrnfYWDzCkSERl1MV8hfmglQ/p4WgA2OlqcQmXkA7QU3g5Lb4WtSTaoQ+d38nsWodfty39/Igv8XcQB9R7FX1fN2aw+1yxZQGIF6IA4yT+iterkQu3hQgMJgd3nh07GuCBzrDNzZ1OzPoAs+7ZBunDqwyywUi9+06/xHd6gMPo/DPJ1nKyUbXGUfZvP32P5sax45sID5fIh1jeDO4DP/njuvBdLK4odPUaJyhp4KFgyUEdv1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CH0PR11MB5507.namprd11.prod.outlook.com (2603:10b6:610:d6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Wed, 7 Jun
 2023 22:31:35 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a%5]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 22:31:35 +0000
Message-ID: <c46fbbe8-51b2-bf23-50df-328dd5d9bc21@intel.com>
Date: Wed, 7 Jun 2023 15:31:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230606203535.292739-1-vinay.belgaumkar@intel.com>
 <87bkhrm0xk.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87bkhrm0xk.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0004.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::17) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CH0PR11MB5507:EE_
X-MS-Office365-Filtering-Correlation-Id: 589a745e-1b76-4faf-c1ec-08db67a6f39c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8xaHlzUd85mq3yWNArW+VYC7pHY1MDnwk3oAgzOm8nONedQS1r9sVxPMdNZ7Gho2wrye2WsGay/YWiZ6dfNBjF6RBDg/VU/14FbrXKNmjvaKhzKHT+99ZEPCgFfM3QgS+EOlCmghg9viL+gdzJwziXRE8i+Nghh0XKKV6/4NATzWURr+qPITaXwxOkYawNk4hhP2HwyR3UkRFXeGtYxbtkoiin73MAEsey50mjTBwIAk9HIE2No8075zHwPq4GJfYgb/59mBBBYbOr7PCOOA6XqD2RVJhSFdaac5UmA2DDZncc9G0gJ1OLhf1i1NIaTX/+rJmWuSKBdomaIywRZ29DMi85XxFVkafNkf4g0SPlEc+D2emk+6FMGhk5P/NkXQqhKjnzDGrmuQjXV4ldubtzSvuSX2Zbe500LRHrfL1lO5UU8jkUMhvlXn4EqV8LyKFNXtyf3CebJEJ1ePFUtPj3r+VCq5qIkNm79OmSkelBGO9PmCmfgwKBWFN3GnfdIrawVraFHIEKEiZBAx7C4rzOQc3Ru4d/yUne80XUVVAmL/fmyMyjbHMIHQA/Efg+bMRWBohwcWFa5KkkxtHkhgNxfOZU89ioqpRtCC0t+rsgIgQRY0rhdTD1bsRlO+Qr6Gu/wai+D0WiBYzJbcg8g7lA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(39860400002)(376002)(366004)(451199021)(41300700001)(8676002)(4326008)(66556008)(6636002)(66476007)(450100002)(8936002)(66946007)(6862004)(31686004)(5660300002)(316002)(37006003)(2906002)(15650500001)(478600001)(38100700002)(82960400001)(6512007)(53546011)(186003)(6506007)(86362001)(26005)(31696002)(36756003)(6486002)(83380400001)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0cwYzB4c2Jib2lPbXZzMVBtSTk5eE1aYVh5L1JOVkU1M2l0N1ZNVE52V1Ey?=
 =?utf-8?B?STZqU1MzMVk3QU9yRW9JYzEyYTVTMlJZZ0JJa2VRSUViaXVsU3VGcnd0ZWxr?=
 =?utf-8?B?ckd0Q1pQdUF0MWdMOVJGdVh2MnFBNEk1UWJRL2lwMDY4RGlzT1hTQTBiemFu?=
 =?utf-8?B?N0RMVE5GSStuQlFSbkYwcVBqQTlYSzBnNHhCaStWcWtsYXNKcGI4Wnducnky?=
 =?utf-8?B?UW9xaFhKOXZ4TXRQM1VLQ3c5NUFYMVZiWk5YSnM2TkR4SXU5TnhVREw4eVJn?=
 =?utf-8?B?WVNvdmRmYXcyd0tadnNJL2tWUlRUM25XREpFamN5ZDJCY2xDWUFmamFjYzlK?=
 =?utf-8?B?ZWJtSkFVSWFTQ2hkMUR5RGNaNjN2cEQrcGtkVVkyYmlEQTQ5bVpDQWR5Tkgv?=
 =?utf-8?B?ais1R1lqamFTZ3FSZmZiZnFYMUdFVTdEc2FscHF4dmN6ZUU1VDdHSmdCZXIw?=
 =?utf-8?B?L2MwUFQ1cUkwekJGTStlWUYvaFkrakxoYVFWVzJjcTVVanM5V2xXWm0yK1pD?=
 =?utf-8?B?dzBWY2ZnOVZsZy95MlBaaDRDYjRMbTh4ZUtWQTYrSGc1WU9ORGpKa1JqTVFW?=
 =?utf-8?B?TTFFUjlBdHZTN1VSMEtwNmFodmFmSGwwUVplUHF3TTY3bFF4Q21lK2hmSmhD?=
 =?utf-8?B?VXF5eE5GZk5GLzdPSXhONEIyR1hnbmhJUDA3UTY5QUE0bGlleVlWcEpjdkdX?=
 =?utf-8?B?eWduaFB5NE1aOWpXTWR1dUoyWnRrem1wNEVVZ0lkYlVaVFcxVkFUNExQN0JP?=
 =?utf-8?B?SmZFZ2NnbGVJaGFWS3Z6ejAvVXN4eis3QWZPOEFROVNPMEJHU1pmL21waER3?=
 =?utf-8?B?WGhBd3VMVTdBTkVVNWRKUHA4ME9uaXVkZnNILzNKbGRvS0xmN0ZnNWV6SjQy?=
 =?utf-8?B?UlRWR2F3ZmFWYmJReityOWU3Vmx1QlBlN3BGZUhrQXl1VzlCajZWcGpjOU5P?=
 =?utf-8?B?eTVtbXlEK3FWSUVXT21saURwUllLWXc3TGRMTUthWHQyLytQSXNiSGVyeVRt?=
 =?utf-8?B?UlE3a2l1bU1UcHk5d2pKZ1VyaE1RbG9ab0RQdFV4V1VsOXRvN2lSeUVEazNF?=
 =?utf-8?B?aEZBU2tCcGhKRWdHMnJLZlRUcFpIQi9GVE9ZOGxhOXRWRjViMTgwWCtjN0VO?=
 =?utf-8?B?YlVYcGhlSWk5UEJJN2RFS2IrYWF5SndIak1UQy9IMkZoVGtYSzExMkFLZXpY?=
 =?utf-8?B?NkN1TWFvVXBCb21sZWpFWCtxTUdCcnJJU0FLWjQ3MVlJQk1sSEttNG1aaXFI?=
 =?utf-8?B?OURDNkVmWm9wb1FJWjFvU2lUMC81WGhJQmdQVnhJWnZmOWZ0WDUrRGNNMDBW?=
 =?utf-8?B?NlBvZGNvYnFiUjlMT3hEQitid1N0QVJZbFg5RUJ0RllWU1d2Wkp3U1laaGNp?=
 =?utf-8?B?TVpjSy9BQlcvZXVIbnVsanlJOU1PYWpmRm53OFc0SW1ZckdDcGdpVzhnYUdp?=
 =?utf-8?B?aDU0U3p2OGNHQVR5TGpTZkF5SVc2SGlhS1hLVy9CK3JhQVJKczJzWkR0VHZI?=
 =?utf-8?B?UkxraGg3M3c4RW0wQnFaem90Q1dPcCtlSzlpTElkaDhYL21FOG1uMDdRZnl1?=
 =?utf-8?B?TUxvb3ZUWlorb0hmNzluTE5wcy81WllNOXR5U3dRdU80eFR6RnZEVnllUGd0?=
 =?utf-8?B?ZU5YUFBqdDI0czBHTnNUQWxIcmJ0TGJXT2dBTUM3Wlh1Y3dOZVkrd0w2Yk5B?=
 =?utf-8?B?ck90UXE3UkFLckpxQVN5QVovM0JWcDJpRTFmMnBUTmZHcmx4S3I5ZHA5Zkx1?=
 =?utf-8?B?eVpVa1M1eW4yb2RobXU4THZBelM5TmFqeW43c2FhWXc2eWVON0cvZTdLY1Ft?=
 =?utf-8?B?VlF2cjJzdVRRaXpuWCtLNGNmaHBJbThVTE1hWmkzY0MyNnRoZFRvY0prUk9X?=
 =?utf-8?B?TnpwcWxCUWlzNUN3aGljNjJ0NTBCT2VGYWpyNFhOd2crTm92WDNWTmlDUXhE?=
 =?utf-8?B?Z3QwbFhWVFJpZnNzSm1hVERhcklQVlR1S2sxYUZtOXFDSTBYOHZOV0VHRlps?=
 =?utf-8?B?VjZRTjhKN25Tak5WckRoalF0ZzZSS0pXb2ExcWdQSjkyZTFDeVhQYjVBS0Zw?=
 =?utf-8?B?Qlp6ZnRrelJDWnJ2RkVEUFJqTVNOakpXRmtPZkgwSjJUM1RWL0VrL05WbVNZ?=
 =?utf-8?B?dEwwUUI1ZXBJYlhpNUdITTM5YWJDN1dkcmhxdkZWL0ZDRjZmQzlZYkFhNWVS?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 589a745e-1b76-4faf-c1ec-08db67a6f39c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 22:31:35.4154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SnhpfMujwXVmhx0UnFTGTY1e1dsotUUBKUXIwDipaj4egNxniyXcdCxid5VGpHiOHe5vhPTTQeSUNIEgDW0yPcBrlIEGNBMT6uzP2M9O1ng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5507
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


On 6/7/2023 2:12 PM, Dixit, Ashutosh wrote:
> On Tue, 06 Jun 2023 13:35:35 -0700, Vinay Belgaumkar wrote:
> Hi Vinay,
>
>> Verify that SLPC API works as expected after a suspend.
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/i915/i915_pm_freq_api.c | 30 ++++++++++++++++++++++++++++++
>>   1 file changed, 30 insertions(+)
>>
>> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
>> index 9005cd220..f35f1f8e0 100644
>> --- a/tests/i915/i915_pm_freq_api.c
>> +++ b/tests/i915/i915_pm_freq_api.c
>> @@ -18,6 +18,9 @@
>>    *
>>    * SUBTEST: freq-reset
>>    * Description: Test basic freq API works after a reset
>> + *
>> + * SUBTEST: freq-suspend
>> + * Description: Test basic freq API works after a runtime suspend
>>    */
>>
>>   IGT_TEST_DESCRIPTION("Test SLPC freq API");
>> @@ -99,6 +102,24 @@ static void test_reset(int i915, int dirfd, int gt)
>> 	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>>   }
>>
>> +static void test_suspend(int i915, int dirfd, int gt)
>> +{
>> +	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> +
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>> +	usleep(ACT_FREQ_LATENCY_US);
>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>> +
>> +	/* Manually trigger a suspend */
>> +	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>> +				      SUSPEND_TEST_NONE);
>> +
>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
> I am wondering what the purpose/value of this test (and also "freq-reset")
> is?  How can the "set" min/max set freq (which are just input settings)
> change whether or not there is a suspend/resume or a reset? Especially when
> we just return cached min/max values from i915?

It is mainly checking that we don't smother the softlimit during a reset 
or suspend flow. In addition, it also tests the read/write interface 
works as expected after those events.

Thanks,

Vinay.

>
> Thanks.
> --
> Ashutosh
>
>
>> +}
>> +
>>   igt_main
>>   {
>> 	int i915 = -1;
>> @@ -143,6 +164,15 @@ igt_main
>> 				test_reset(i915, dirfd, gt);
>> 	}
>>
>> +	igt_describe("Test basic freq API works after suspend");
>> +	igt_subtest_with_dynamic_f("freq-suspend") {
>> +		int dirfd, gt;
>> +
>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>> +			igt_dynamic_f("gt%u", gt)
>> +				test_suspend(i915, dirfd, gt);
>> +	}
>> +
>> 	igt_fixture {
>> 		int dirfd, gt;
>> 		/* Restore frequencies */
>> --
>> 2.38.1
>>
