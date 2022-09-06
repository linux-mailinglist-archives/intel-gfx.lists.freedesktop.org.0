Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 195CF5AF61A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 22:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A966E10EAC1;
	Tue,  6 Sep 2022 20:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5060610EAA0
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 20:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662496314; x=1694032314;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FdU4KkPr9GZlD6MVhWr7MFBpK08YAbtHzeis2Wk1DK4=;
 b=EU2Auq9+SR5tBzb7GdkYF1dHxPpIbQ+57kvDz8codJ66pqpYtVHPj2E2
 iM/tzmXOUA1w0dzipYXm/F/D3ziuVtpQy2ZOH+9a/HWInd34+oSRQNwoX
 Pc75Bh2xpfOYCBj10zmK30NHy2xME/oI2ueVWDhBe+99+pZIpFQiQwpix
 T2VnZRum+KeEj+bQfqby6wngQ0a7i7hI8cspn92df+sbgn4M2OmlI9g+i
 R3LIH1xiFYmKDYhmftPHWMfNwNqUoDtehHPqxyQZ/mO0e/S4IGMqxTR3s
 kAc6HRhl7JNKA5e/DjEYY760bjrD6HbvIYJDHfkP1r68jmNkmA69xzMS6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="322878909"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="322878909"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 13:31:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="859387747"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2022 13:31:36 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 13:31:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 13:31:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 13:31:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 13:31:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I2g7cczk3Puz5Kcwoy0QA30myLCj+Apw3HgNfQp2JY6+whl6mJ4+fW9KSLF0X0mXqrW7ImUav1eeMOncnyj/3vIOIpOOwQs/fytqA3hXJ3Xvn9FZEFJV75VAZ4RDacbLvTzJP69mgNq6MRIzU9Ts0qCUuTYeMPEtFobtBtZke9+VBF0rMhBM6rfv1Y239RPnw9svgk3+zwwcQieQaP9nFahKsparKArVqJkk4cgA9XGZhiRo/JgxON/j4Ci9m0wmRkRPdgQsw5otGwLGE+oYXEHQ4AL1TMjVCQlj7ZUJyz1ve4CUtoeOf48cqMILPk39OyeUcJMgg6WEL759bQ8sEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ZbFNWz3hVsPuaVkU1lE+JKMQbdXw0CBBlO3u5mBpqM=;
 b=iVVhBzH/JJlQqCJYY9h7V2sb3jz16y935FyKEZG5v/+yywOlHWCbkmLrQNBF7XCoyHqtbcMiKUzDu5IbktGtiG/b3UeN+T353gpqzanQmPE8zKC9iHjfhFBhKZ2BU86TdOJD8K9XUhVA9ns9sY6EWDSJbcDVo6yzvyX+GWBPG0Ofwj0laZaiuKtTZLAu0Synx87CrgFKWDQZpXPzQCAzhOmU2JLG0QwFKxw2BZvG/b6/QETlBZX6z1GQbji24qqKGppsc8fXVu2W72USGFAGyQfzUKtaOCVLzrmlT1FoPnUv2uS3h9IeXmx0087puRMYVa049zr7fyLaMeHq9zjVQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BN6PR11MB1891.namprd11.prod.outlook.com (2603:10b6:404:107::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 20:31:34 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 20:31:34 +0000
Message-ID: <83d0bbca-8360-5da1-4c0c-43c72d1b9e30@intel.com>
Date: Tue, 6 Sep 2022 23:31:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-11-umesh.nerlige.ramappa@intel.com>
 <5cce8605-5e1a-2f05-2cf2-004da3d4a64e@intel.com>
 <YxetXr0U+4kNADPr@unerlige-ril>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <YxetXr0U+4kNADPr@unerlige-ril>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM6P191CA0065.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:209:7f::42) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7999afed-c206-4514-f5cf-08da9046ca37
X-MS-TrafficTypeDiagnostic: BN6PR11MB1891:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jkk/8vyZPR015cnKWLI/YHvCDOiHqHlopNgkHqTGgSn5ZYLUslJZ/ReoUOAKthJIdKBnQgwTroCi6TfXwiMVKeIiUVslFQhyi+CWupVgNNrvhFoaUtfs9UdaYQzaGnXe8iXAAoD9R0j7gX7htormfTcG3AoIpNudIqQPXCSUgJduFOZ1xjLVeGkDPICLYvZ5UJOvIAoCUJres7xUEqOyNzuux2M4dIJwubo+enXYas7Q1B3yZ7IC0NymeO8+lba358Uw3Vg3RIJeW+w2UIAl5FdEu5C8PqCUX2v4UhWT2sYAPg2CSQ4w8D8Slc+jQrNmoZqYDifGY1Jvf0LE2z2cGbzmj+vddyqB5nNK8ctZ4CCVKYOvXPvURZjHEGDVFAQSvf5jm3ni8k6s9zwq2Nk6827adXzRxtjoCxvLruU+I4vK4Thgtq/52laV+8yx5z5kY6hVwZzrMfURqri41UB1gbxM5fxxBf4vVPNu4aq/bNb6KFXK9mbicm553q9yuz3XzwPtVbXjqpa5nAl79S9nCKcDwNy0z4J812aQDpNS55DwwP+yF3VNh1EPI0g9go5Jqnjjo/1pUyy71NewiIVbRnvzXjHdDmH2ZeLJc6rLvSVT9EahTJfen+PMrgJqxPOEplFOuBhbJEbvDtt8MWzSAH22mI21PnZkThlw6ztW/5tZj/ghTFw4n3NDszqmb0W8G5IJeCJvC+OsaB91lAWU2Mx4r3n4OoWidktwoj91RNJC1Y+gSQDyydtOO+OZNlQznvrzacA1MqCnE9D4ZqDfhqav7pHa8VWeazUmoZixFPU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(376002)(396003)(346002)(4326008)(6486002)(66556008)(66476007)(38100700002)(2616005)(8676002)(66946007)(186003)(8936002)(82960400001)(36756003)(31686004)(6862004)(83380400001)(478600001)(31696002)(6666004)(5660300002)(41300700001)(107886003)(37006003)(26005)(6506007)(86362001)(6636002)(6512007)(2906002)(53546011)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3lDR3RYeU9nL0NwcWJRVk15Y3Z0cVRmazhTL3g1V2wzbEFCcW1IN2p4cTRS?=
 =?utf-8?B?ZTIrbEpVeGhHVVA0OWFPMWVNTkRhdnRnRDBlclpqTE82a2g5eTNmRnZTSVhp?=
 =?utf-8?B?SVFKTVVPMEZaNWVaTTgyVDk0aU5ZaVhOK2tyU05uNENVU3ZicEpoK2RIckNo?=
 =?utf-8?B?cEJBcUVCM1NDdVVqbTBid25BS08wbkhSUE9iOUJYdmxmK0VoS3lRTFZoclRQ?=
 =?utf-8?B?SW50blMrV1EwTFcyemRrVlk5NU13TzlCZ1pkc0JkSUlaQU55eWU2MnkvOGVV?=
 =?utf-8?B?ajkzWFpKSlFYajcxdjNmekhuSElidUxkTVI0TzI1Z2pnem1oTkpVczZPQlA4?=
 =?utf-8?B?TjN0ZWxhd2txb0x5c0VZcFpiejdNcWpBZFhsSnBUb0xIdWZPRG90UXBIdXVp?=
 =?utf-8?B?bURNalV5anVjRnI5aU42Q25Dd0ZQSGlqL1BrQzE4d3RqZE5LMms4WHZ3bm83?=
 =?utf-8?B?WkNXQTJGQUVnS0QwTTdGZVpOenFtaG1ZMjljQnRxRUpkVS91Q3dLQ2VIdjU0?=
 =?utf-8?B?bGlZNlBYZEtDL2NRb3kyNzFvemdTUjRHNXNmbllUMDVsNUtxOVhnRVFxaEJn?=
 =?utf-8?B?elJMZUZ2M0pLVnA1Rm5tY2NtY2VOYVJuWkt4UnJYUFE1WTcrdnJYdDhpZDQw?=
 =?utf-8?B?VUoyVHZsOEY0SStDT2tLNGdTc2ZGcTNhcVFyUXRrRFVBbXFsWHV4U2NmOUZX?=
 =?utf-8?B?ald2SWxKWDN4RndlcjN6SlpKTVlwU2RtcHMwTlFvOU5BNTF3K1o5M05USmNp?=
 =?utf-8?B?dzVEbE5HZDRnaE9LT1NVMmlzR2JsdFN2TXVTb1JYMW81TCthL3Y0MWFzRk8w?=
 =?utf-8?B?RlNXQXRxcmdNbUltK1lTbm1ZdExKbUpxNUE5K0dRQTFSeUFVSzIydnpyYmtx?=
 =?utf-8?B?QmRYV3JhMHVsTFNxVzlrYzcwUHBuVmYrQzQxQzBnbzQ2RkZrUzVJYmMxUXoy?=
 =?utf-8?B?YjJPKzBlbmgraUt0bHAxMTRwd013YVdoTW1NdlFFdzRYdlhxU2I0Mk9YaEtN?=
 =?utf-8?B?Mlh6dVBqUG41RGFtRXhsMWY0S1dRYmJEY3JMQ1NrTUN6dmFiSmxoV3V1ZDJS?=
 =?utf-8?B?R0hpTGZBY25DM0N6ZEdZRWxLVmNzVkt0L2IvV0RvdXprU01jZXpuc0xwMWtC?=
 =?utf-8?B?eVEyNWJxejhRK210eVJySm53MXRSU3I0bk5nUnhsRmVvMzRrSmRqcU84TFZ4?=
 =?utf-8?B?V1VwUzI3Vkl2bklja3VLSmRBaGM4K2V3ZzNsUGpRbndtc1Q1WEt4blA0Sjls?=
 =?utf-8?B?Rk1kYmkvK1pGMGZJUkRwbVZTUFBjRUhFRFU0RVBUSFNtUFZYbG5ablIycEgy?=
 =?utf-8?B?aXBYNWlUNndoQ0R3dWJ5NHJYdU1XQ3V6OWFoRGNhV1NpRkxIU2c1c2FYdG1x?=
 =?utf-8?B?WWdVVUNVS2FmY21FYTBPYkhzZlZBbzFTWWlrdmpCUFFralFjMzNNN2R5dXpa?=
 =?utf-8?B?a3dyb2JaOVdIbE9KdkdJdXVNbU4zLzhNVVF3STJNNkVBdkhhYlFwMWxheERP?=
 =?utf-8?B?SGpmQmhRSHlLR3NDK24yY2wwOXF3UHgybWxuSVREYXBGQmtaMi9PYWtGdW1J?=
 =?utf-8?B?TXdoRUJBSFNGNEtJMHllNFhhdExZenIxUVdGUm5PcUYzTVVuTUVVWDFNMjlI?=
 =?utf-8?B?NTBjZkZabkZ3V0Rta0hKbWFKd2RlNTQ5bWhVc2ZqTjJxSCt0bHVHbUZYdENs?=
 =?utf-8?B?TjhuK2tJaUFzZGp5MUxxN0pndWxJMDRQV1lRbTdNVU5NaFRsUUFxRHJZOXla?=
 =?utf-8?B?MjJ5RGt0UzRqVGZ4T0hkZmNsYkJDRDhtUElUQ2Q4MndFZXlvRHBvWVU2Z1Fq?=
 =?utf-8?B?Sm1ySXRhTjUwc2tVdC9McVJ6dExlcjNiTGlLWDU4RXc5djhyS2Fjd3VxZ1pK?=
 =?utf-8?B?eFFvNldRM1hJV0MvVm1wOWZlRzR1NlcwdU5QcDN6YndvSXNHTzJCRmhqQ0Jl?=
 =?utf-8?B?Qk5hRDZ3bkpBekpGd3JjeTk3TTExV01XVEcwRlI5ajlmTXRzVzZURngxNkJQ?=
 =?utf-8?B?NjV6djdIcWRDbFkwZVk3OVhQQlNrVWNvZEVlZVFqaVg5bkVCZjQ2WjViSWVW?=
 =?utf-8?B?SVhxcktvOEZybU9wVmdCT1hLTUg3Nk01aVFDTFRuMUtJUmVyMDVhUzdTNVhh?=
 =?utf-8?B?SVcyZ3YrdUk0MWlYMUF1YWI2VGprTTFmQWJxQmp3cDc2U1BCZDZacUxMUjFW?=
 =?utf-8?Q?j5FlvZrReG9xvYwqRkIkvp4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7999afed-c206-4514-f5cf-08da9046ca37
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 20:31:34.2059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fvPZLeVK8smjSdSz1Jzj5dz8WCJFZUR4JO065o8KoVjuWDlau2OH/+SmcG/fRQYHyoaOozySYPX7D8J0PX8PPstpSetPTD9VLqvwDVsF00c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1891
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/19] drm/i915/perf: Use gt-specific ggtt
 for OA and noa-wait buffers
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 06/09/2022 23:28, Umesh Nerlige Ramappa wrote:
> On Tue, Sep 06, 2022 at 10:56:13PM +0300, Lionel Landwerlin wrote:
>> On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>> User passes uabi engine class and instance to the perf OA interface. 
>>> Use
>>> gt corresponding to the engine to pin the buffers to the right ggtt.
>>>
>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>
>> I didn't know there was a GGTT per engine.
>>
>> Do I understand this correct?
>
> No, GGTT is still per-gt. We just derive the gt from engine class 
> instance passed (as in engine->gt).


Oh thanks I understand now.


Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


>
>>
>>
>> Thanks,
>>
>> -Lionel
>>
>>
>>> ---
>>>  drivers/gpu/drm/i915/i915_perf.c | 21 +++++++++++++++++++--
>>>  1 file changed, 19 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>>> b/drivers/gpu/drm/i915/i915_perf.c
>>> index 87b92d2946f4..f7621b45966c 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>> @@ -1765,6 +1765,7 @@ static void gen12_init_oa_buffer(struct 
>>> i915_perf_stream *stream)
>>>  static int alloc_oa_buffer(struct i915_perf_stream *stream)
>>>  {
>>>      struct drm_i915_private *i915 = stream->perf->i915;
>>> +    struct intel_gt *gt = stream->engine->gt;
>>>      struct drm_i915_gem_object *bo;
>>>      struct i915_vma *vma;
>>>      int ret;
>>> @@ -1784,11 +1785,22 @@ static int alloc_oa_buffer(struct 
>>> i915_perf_stream *stream)
>>>      i915_gem_object_set_cache_coherency(bo, I915_CACHE_LLC);
>>>      /* PreHSW required 512K alignment, HSW requires 16M */
>>> -    vma = i915_gem_object_ggtt_pin(bo, NULL, 0, SZ_16M, 0);
>>> +    vma = i915_vma_instance(bo, &gt->ggtt->vm, NULL);
>>>      if (IS_ERR(vma)) {
>>>          ret = PTR_ERR(vma);
>>>          goto err_unref;
>>>      }
>>> +
>>> +    /*
>>> +     * PreHSW required 512K alignment.
>>> +     * HSW and onwards, align to requested size of OA buffer.
>>> +     */
>>> +    ret = i915_vma_pin(vma, 0, SZ_16M, PIN_GLOBAL | PIN_HIGH);
>>> +    if (ret) {
>>> +        drm_err(&gt->i915->drm, "Failed to pin OA buffer %d\n", ret);
>>> +        goto err_unref;
>>> +    }
>>> +
>>>      stream->oa_buffer.vma = vma;
>>>      stream->oa_buffer.vaddr =
>>> @@ -1838,6 +1850,7 @@ static u32 *save_restore_register(struct 
>>> i915_perf_stream *stream, u32 *cs,
>>>  static int alloc_noa_wait(struct i915_perf_stream *stream)
>>>  {
>>>      struct drm_i915_private *i915 = stream->perf->i915;
>>> +    struct intel_gt *gt = stream->engine->gt;
>>>      struct drm_i915_gem_object *bo;
>>>      struct i915_vma *vma;
>>>      const u64 delay_ticks = 0xffffffffffffffff -
>>> @@ -1878,12 +1891,16 @@ static int alloc_noa_wait(struct 
>>> i915_perf_stream *stream)
>>>       * multiple OA config BOs will have a jump to this address and it
>>>       * needs to be fixed during the lifetime of the i915/perf stream.
>>>       */
>>> -    vma = i915_gem_object_ggtt_pin_ww(bo, &ww, NULL, 0, 0, PIN_HIGH);
>>> +    vma = i915_vma_instance(bo, &gt->ggtt->vm, NULL);
>>>      if (IS_ERR(vma)) {
>>>          ret = PTR_ERR(vma);
>>>          goto out_ww;
>>>      }
>>> +    ret = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_GLOBAL | PIN_HIGH);
>>> +    if (ret)
>>> +        goto out_ww;
>>> +
>>>      batch = cs = i915_gem_object_pin_map(bo, I915_MAP_WB);
>>>      if (IS_ERR(batch)) {
>>>          ret = PTR_ERR(batch);
>>
>>

