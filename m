Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A31BD77DB27
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 09:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFBA10E28D;
	Wed, 16 Aug 2023 07:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C187010E047;
 Wed, 16 Aug 2023 07:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692171122; x=1723707122;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UoeY7+23JFSIw0LovdXdQzX7/SD/JZE4XH2y2thwxAE=;
 b=DXzxwvRG1+i5TUbHz3afNdSwJ6IUB6eS9HjQrSU51fKir1x3a6Ixjqws
 ktMdNXO5sJIhkTeIgQ1lED+iNBJrauexnVfgRkTE4zvLC218vVlGbiaLV
 ZbWYeMi3Q6c/tKsoEfjFsS1TCFmhcvoRPaoPoHbOkNC9fDSGHIBjqnJ/Q
 Jzqr/7tomWYLBeAWHQETrsLFweIxxrH0fVbLWXELaPjTONhwdutfvtwZ3
 +88jXSAy/bOUSy7M/eIFHtsqBjVYisfak5evrxO1qXq4yMEkw6QtFgBD5
 RS/giQsENS86fMY8Y+yaTVx3ZohMJD2gDdrmr7gWJsaAtR9cU8sB6P29U w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="438810943"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="438810943"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 00:31:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="683961271"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="683961271"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 16 Aug 2023 00:31:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 00:31:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 00:31:25 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 00:31:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OojpxyjypUBVUeVSqkkFdRgsEMRU8DZ7/sd4KLOgFFRqo+/lJ23ZahoNYD0MMye5jXK2wGUdcUqNGgXHyoJZcVok/0LuDF7AdhXVkjLSq2u3+rvhpxoPtKLM7NdIlCz4/aew+klUt7yD6/5c8pGEtWgISomvCTtMSk2jwPvyCedPU4pLwNvQMEQ3lDFINCFzktKFWFFq0PDRdiEoJMHyk7WVcU2F7skabHdr966veur5v9YPs0BvHfo7TkqKq/ZaKpfB3g8vkCnMs9cthlLdKgGPGOC2MqFJfhCSpJaKYW6bOwoKd0jk6YKhSQMy2OeVN9Ke3h6JSIlVIr4M4pnKJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3y2w1Y9HLUbwkbPLGv1ERGR9Wvt5izg8hw9+VeOOHiw=;
 b=dlzHgtoJws9UEniliDaDiQ8JntQ2soU6C/lL4/PLeJPuKlxcfH/9c1LX/J8PWdoq/QvElog7EEvLsqIe3Z/pbiV+zOTrqg/02AYqHdT/Di1MNhRI4L7xlwQ/CaOiMGS59b8lfU/lZTHOLCqWpesNnTqidVp7kpB83jFlv9Ueu/+pB+waNPUVVH2vcEb4z51Sd1mXllpxrzjdmADmIq3oQfCuNfUlusSTUOeGbp9XpJPa80BrQ+qmCKkAJRvro4AInb9imv1r3KFDStXkfVSLsWxDH/1C7tG18itYhd8HzAfUfReUhvsp5xNzDCjfHKmkPb4MDhnJA+EWeuGYd9ElkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 PH7PR11MB6425.namprd11.prod.outlook.com (2603:10b6:510:1f7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 07:31:22 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::6b9:384:8202:b294]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::6b9:384:8202:b294%7]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 07:31:22 +0000
Message-ID: <aeeaa6f1-f194-5cd1-4327-f44959bf0de7@intel.com>
Date: Wed, 16 Aug 2023 13:01:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
From: Riana Tauro <riana.tauro@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20230809005014.3451790-1-vinay.belgaumkar@intel.com>
 <b5e574a1-7aa4-d233-3b02-f0acbac517bc@intel.com>
Content-Language: en-US
In-Reply-To: <b5e574a1-7aa4-d233-3b02-f0acbac517bc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0193.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::16) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|PH7PR11MB6425:EE_
X-MS-Office365-Filtering-Correlation-Id: a20b546f-50cc-4760-b1cb-08db9e2aca54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 65BcyjOrZuZ9oQaw6gQxpvC93t6Lw71UMURDC5ZrYqviksOLwar7s/zV51bzGKgCxWSXUF49Z6HS43+xLCiDu8/xJGIVpTavPWUj+SSj5gu9fxJrI54bUdLIFrZTA60QvUfgqnbVRL5fLZ1BvL0tGiQ+6QhC77gbkMuvqdyVn+5/gXxC883jtL3BnEMpnOCz74uuYMllQfSkHIJjk/1hxLqKkALaamvUC+T/4fR3jJ9QbzhYgYfo95B2vxnsB7R/YNVR0gqN+AyzYHt2p7kohBsibcCaLWi8KhEzEnHWct7wnY9IXRxJmX4eMoXExZWQIW8wCr+Y+a4Bfbp3SMoHIbnxyMNyqIqw0vcJnennE33SQOm+1mIjiuaWDDzPFXRuaoZtDIy+zZ7JC8sJ3VpPFCIprbCcPB3uuYgclfGCNyXRxsV0pqnQHdtgCXpwuATTYonHch39zPfZD4zyPFamOR6N6gccKYJZ7KdjT6aTK1jwaI39yWyH2pN6uKuTUO2C4tNJzec7c85tSQcBfMlG6xj/akhRtGAqMqr49Qfliguf3BqhIxyy2hD0b7pMky7jTNnOsijTcotyjWVoz1Lb3DpavC/oPXCMv/ki+AIP42fkiBKEe9cROj3whqtpB3E77PDNnyKd97Skw7ovkuUmSFyygY7/mjwoLBtv+p6n9hw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(6666004)(31686004)(66476007)(66556008)(66946007)(6512007)(6486002)(6506007)(2906002)(478600001)(966005)(26005)(5660300002)(2616005)(83380400001)(41300700001)(316002)(44832011)(53546011)(8936002)(8676002)(38100700002)(82960400001)(450100002)(36756003)(86362001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnBOeUMwSnpYM05mb2NqbldDSkoxbXdaUDVSMTFnSmEyYWpqeVVzYU1TLy9k?=
 =?utf-8?B?eTVZNkJsaTdmam9CclV1bkRhK1FnalRzaWFjQWdid3FudnptOXVId0JRck44?=
 =?utf-8?B?dkxpMUwrQkVjcUt0VElmVEkwUmdLYTRGRGhZZFJ4NzZsQmlYMVRhczVsRk9s?=
 =?utf-8?B?RkpMcm1xeXNTa3Y4c1NzbkxzQ1JwM1MxUEE5WWRBWXYxdjB3eTZZRVRidGkr?=
 =?utf-8?B?RXVmYkVxcHVDL2VzaE0yT0VzS2hxOG9GbVFtTUUvZVUyZ1R6b3lXV2FuTHZr?=
 =?utf-8?B?L0ZPOUhubWY4Z1g4SVd3ZnJMdndadzAzQWJZTUlET0ZBeGRHdDRqY01CNjlH?=
 =?utf-8?B?QXlhTkJlcjRxTGJDZFNaMjlrVERQUUpKbmR4dmc5aEUrL2JUaU43RUxSY3F4?=
 =?utf-8?B?MlRkalFkQjJWUktlSjhEekNSR3JMeVFER2FVQjNZOEJJOTJvTm42U3owL0tx?=
 =?utf-8?B?RjZqcmtVVUZySWs3YjlRby9xRFhRZTNGaDcxcTUzOXBzMVcxdlIvMGdQeUtz?=
 =?utf-8?B?OEdwMEQ3NzIxZjhnaTkxVFZlemZOWTk3aHAwTUpWU2VuQTY1ZWV2UnIrZ2RP?=
 =?utf-8?B?bm8xL1BVbWJoNERkYXhpbVRpYURXd0drRjdkR1F5VWJrNkpWekJhMHBoYUpz?=
 =?utf-8?B?QzFrQTY5UHNxTXFzMGU0bDlvRkJWbWJqeUJUYkFSd2FGbjdrb0NHLzZWcmcr?=
 =?utf-8?B?OVNOc2RNNEFUMjgvK2t6ckROc2l3Q05hWEpqcGhHcjl6ZUQzRDFWWTRxRmV2?=
 =?utf-8?B?amZUdzFSdTFrdUJtR1krWW5KQzJnWis0bnJkUnFYOFNKTlFNSXM2b2JmcVZJ?=
 =?utf-8?B?K0ZQRTN3aTMwM0Rybk5rSG1aZW5JSHF3ZDZOZWZvYXdRKzJibmo5d3FFM0Uz?=
 =?utf-8?B?YXZmcWZFb2F6NmxXQnhLR3lEWDBhVWphRWJFZGFZWnQ4UjJGek5IVE1vaTNQ?=
 =?utf-8?B?ZGFHSWZ4VGYvVE1MM3BaZFRydDZqbjdJb1pRd1BpeVpoeENpT1V0SUFqaEFG?=
 =?utf-8?B?WHlWN1hnZnlMZG8rbzMwMnBpOUdNY2dDTjFhL2E2S1l5bnZJVnorenRLbHly?=
 =?utf-8?B?bk5HMXRNWWZ0elJnODMwc2hDSTdXalRaWFYrRjRTRHVLa3Q0ZUxSaXVWSm1J?=
 =?utf-8?B?N1Mxb05LTTN1azFnbU04TkFrU0RtWGxKK0IzVVRDclJLNVRTZHNtVTU3UkZO?=
 =?utf-8?B?R3dCQ2VmMnk5UDZaNm9neGhzTGFvT1JDTVF6QzVJam5uYjJTanlmSCtyZUNt?=
 =?utf-8?B?T0NsM1FnbUk3WXdCUmluMy9OZVVFMDE0TCt1cDRHRVRKdStFL1hYaXBlbEt4?=
 =?utf-8?B?aExoNU9rR3FBMFkrNEdEWlZzTkhkM0xXVzRpL0huaWhlWVY3RlNBeDNJZXQr?=
 =?utf-8?B?UUcyWmR3WlNjR0hqREQ2M0k3MTI4emFsNldOQXRtTTQxNTZwYTBHVWFYWlBv?=
 =?utf-8?B?RW44bVZFU2d4NzQ2bXZQbWpVVVY3ZkNGN0M0cXY5RkExcmlZVDh5Tmh4bW51?=
 =?utf-8?B?cGJ1MW5Dd1JMY2Z2Zis0U3JheU5QczNuWXQ0UWNGc01WMzcyVkZaTE5rbFNi?=
 =?utf-8?B?eHZGZ2Q0SVJpMGg1eER1eXhPcmVhMFhReHZWMUYrelgvNzh1eVBpYkdjTElG?=
 =?utf-8?B?cFhHSlN5R1pBOGk1bzFmQkJid3l2T3F5emZ1MStrUEhUa05IOWlXQm83MEFn?=
 =?utf-8?B?aTdiZi9oc1BBdEJvd25MRzJsdHRkN3llQ2dXaXQ5cnJ5Z3FEZGpuK3RDRmxL?=
 =?utf-8?B?b1oxMnd4MmpZODZ3d3RUOC9aTXZCTWx5LzNxL1hGaDVGR0VaME9lVjc3TS92?=
 =?utf-8?B?djB1Rm1rMjdFWUs0RmUvZDczbHdBUC9EVDEvMTNFQjhRZUdwRk1QL3hKRzJP?=
 =?utf-8?B?c3NCOTBPR3dkT1J3VXo4cVhxQWJ0cXUxelNYMGwvRVdjdGNKSWVnTEhsbTd6?=
 =?utf-8?B?WFBVMTJUTlBqb0d4Zk15TFV0RklBRXhnYVlBMHlKdzRRc01YUk8zcnQzS3VK?=
 =?utf-8?B?UXVGL3d3K0w3RU0vMXZCeUJpbFAxRndJNjdRWStnYXJ6bkJ2TVQwVDdhYUhp?=
 =?utf-8?B?RTlIWkhQU3dHQzNXNzFPMkFCZGZyWWsxN3lpWlVzV3FWUzdCQnNmc2hqYnox?=
 =?utf-8?Q?NnO9JEUhBKLCi/9qUYrd2Wdn4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a20b546f-50cc-4760-b1cb-08db9e2aca54
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 07:31:22.7104 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yLmiZT5eNUn4scFtos4hx34qsb516NXJvJ1x5lfftO+mOdoR7zmIbaK2L4K9amB873PT3Ausbu/yn57WNyI+rA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6425
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915_pm_freq_api:
 Ignore zero register value
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



On 8/14/2023 12:54 PM, Riana Tauro wrote:
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
>>       for (int i = 0; i < count; i++) {
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
> 

Hi Vinay

using  igt_get_runtime_pm_status doesn't work. There seems to be a delay 
in setting the status to suspended.

Freq is 0 [due to wakeref not in use] and status remains active.

We can retain this patch. Sorry for the confusion.

Reviewed-by: Riana Tauro <riana.tauro@intel.com>

Thanks
Riana Tauro
> 
> Thanks
> Riana Tauro
>>           /* Manually trigger a GT reset */
>>           fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>>           igt_require(fd >= 0);
>>           igt_ignore_warn(write(fd, "1\n", 2));
>> -        igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
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
>>       igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>>       igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>> -    igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>> +    req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
>> +    if (req_freq)
>> +        igt_assert_eq(req_freq, rpn);
>>       /* Manually trigger a suspend */
>>       igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>>                         SUSPEND_TEST_NONE);
>> -    igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>> +    req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
>> +    if (req_freq)
>> +        igt_assert_eq(req_freq, rpn);
>>   }
>>   int i915 = -1;
