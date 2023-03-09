Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 376FD6B1E1B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 09:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9554410E15A;
	Thu,  9 Mar 2023 08:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B2C10E15A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 08:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678350692; x=1709886692;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L+zLLBUvGj28IM2d1uRCJXuiDFhpMl1Sa4Nq4ff/alg=;
 b=BpmaSPQdSm8owWnbO5VzX9BNpkYtBSOOCu/F3ZNh9inO3RKdpca01XJY
 9txXR0n8DXWZvS2HAhtwRCFN579cAxhfO8GJ5QWVGccXB/jdi1cs7aqXl
 HGjLxHDeh+Ex3BmmRX/MyswLLE06ohdxo33M7aZKH5BS0kex/1PxTn/5O
 kXTJUqI2lDFLxWv5pxFccNR8XZWm9e4W8iBGka5lWoZFk2/Et1m9Lrcez
 H4QoppY0y3wv3ckVFYjuaFLX3TzdYDF1itTr8QU3S7dBMrV69lq6eJKLK
 P+zky7mOT8bIqZZNjiALviQWt3uVoeTkdata9/mBvMTUf6JQbNAC88c05 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="364027939"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="364027939"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 00:31:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="766343960"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="766343960"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2023 00:31:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 00:31:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 00:31:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 00:31:31 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 00:31:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mUSrQLlfp3OM+YHScilPTbMQYk7nWtdtfZPFImtCdV/821T2ZBW1Hcs7l7sq0pcZVsHxcEzAcsz0KnO0wBqagW6WPsUWfDVSMJDjoeIoYvU3vtJ3Ir7NylGBCGSpVKSC1eh/LCYe7nqypl+A8d1IygLHxcWoF4KnIZKbZw/2WW8Z0PunnHQKxvOQKqo5kL4wrqEUTnSP1HH47dSArvMRE9o1KcNQ7KNFmNDtxT8ewTvswThmXlV/M20bZ85eDAcyvnDNs/nBN+fCHb0P5L97CsyLjtTxvfMu+IDluQA8ZCyuka6TnADhKxJGyKr1mlY3a3K62E/CTNIgr30QrA7sRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mNWsSd85pna72MEMWHBefQnGt5okH7cYxYwEfAdp27s=;
 b=gymoybjolx5tnGETzT94lfChS40ha6NHxcIs8rgxvXmKeqeaHp3OCKGlGfM9pb6Q/XiuvdsBDYJWl5OF24A7RJFp2cvAT6Z3JkyQs1Yv1/O1HVKvlLr2Z0e66111y7J7hOmV3trr48H4sVhfG2bj27x1ttoJZAh9F2fJxRX77QqjxBZpRINHhO3DKRqP1L5eXpe5uH6/qrXEKs8X2lLJzSAZTCobkk+mPkir/ce3qsTxb68szpChZukEDdEDbplp3770A/oYji15z6qk5IUElnMrRssbSlhBv67XNNxzMgioH6tBAXye70JLrjA/jWKyCbMC/a3+WkfTG/IpIC99YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA2PR11MB5065.namprd11.prod.outlook.com (2603:10b6:806:115::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Thu, 9 Mar
 2023 08:31:29 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::cc58:aa84:72be:b4fa]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::cc58:aa84:72be:b4fa%7]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 08:31:28 +0000
Message-ID: <e9638e96-a1ad-e5c1-5141-c1457b08326e@intel.com>
Date: Thu, 9 Mar 2023 09:31:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, "Das, Nirmoy"
 <nirmoy.das@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
References: <ZAiKuulQBp0569s/@intel.com>
 <20230308133624.2131582-1-andrzej.hajda@intel.com>
 <c743ac87-27d8-c986-ae2a-874b8381afe5@linux.intel.com>
 <baa52f92-3a17-ce60-9ed1-39e12b396f13@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <baa52f92-3a17-ce60-9ed1-39e12b396f13@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0186.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::20) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA2PR11MB5065:EE_
X-MS-Office365-Filtering-Correlation-Id: b3d2ee8f-0880-48ea-4515-08db2078ad4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fOFGcv+HJDmT8vJl9XafokkBq++IH285Grmk0/sFxbEadB3ukmyatLESiRkAdAqOY7MmF3J7cIG6xtLyJ4K6bewZVHRORAfH8l3tHbB2Cou4fsuriZECrJfhVzCiCLbGFIIBrt7qGehYvKiuw6XwbIHkRZqV+vmc+8MwulhU4AIn4QvL1Lf1Bn8Irb8Z7gw9PdymxoRcuMuU9si2PIsBUx1OLDTi2JJWBYnv92VBkd6Ts2IZIWqMzrAVOnMqP9TuyIC9mKx3vxAKBZE2Q/uyaJywyB7BXFfSgvKz1fTcKxhQ3XRsakMOZhh4ybsg/WSRxXz3/iYZnjPBG8qudfXuLTNsZjwYNmYdCXSKUG47IMEs57YG4ZFZQyaMIQnwqiNJ5165ciFhIenp5bb/2x1XynyufXRLI11+84PBEu0HjdDqmgCGR0sF2gACS0LbrCOq+6jdXcQgxuRIt8bcxj7lK6oaZEdZV095j4kFoFdynYJ6QFfvo3vOn6A1QhYgbeXUN0om5+2eEc2aunbsOHib/PPcULDYtiH1838J5Pp92q11dELnMRyacrm9VZl1VMR7PwCiaeYQkTUyDDs58GcBtZ+shYzjHCFdFaX4FyxTwSmjztfveJUQHv8R/Vc9djFwPiVnSaSADBgqNL0DRLpS6EDT/HqxC+a36V0jUqXD49xzpsYgBKhxnz2S+LrsgRgT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199018)(31686004)(5660300002)(36756003)(4326008)(6666004)(8936002)(41300700001)(6506007)(66946007)(8676002)(2906002)(86362001)(82960400001)(38100700002)(66476007)(66556008)(31696002)(6486002)(966005)(54906003)(110136005)(6512007)(26005)(478600001)(316002)(83380400001)(53546011)(186003)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmQ1ZWI0c2E1Zlc4ZjN5SEpZTFg5dG5wQkJscFU1MXZKZnc1VW12VG40dzhV?=
 =?utf-8?B?RU5xZ2luZWx4VFlMMHdSS0swNXNZZHdrZE9vb2tHa0ZOUVJiaHk1M1Z0Y05r?=
 =?utf-8?B?MjFuYlo3bk9sSWt1ajBSQ1lSbWxZQTk0Y0FzS2twVlk1UmFBTkdPOXNiN3hn?=
 =?utf-8?B?THRFaEozaW9VYWpmWnF1WTJLZG1EZE95c0pLeTZ5S09JVkk0bUt0K0lUdGoz?=
 =?utf-8?B?TnlIWFFxTXBWWjlhWTQzSlpNUlFQSmRrQ0dOUThaNi9wRThlQ0w3Nng3ZkNl?=
 =?utf-8?B?R3F0cktJNzFrV0Z2TnlPMzQ0c2Rnc0h3K2YzSFYvcEl6aE40VzN3YmNlNkQ3?=
 =?utf-8?B?WGZSTW1XUnBkcS9KUndiR3J0OHZ5Si9iaEkwQkQ4Q0ZkR05lVFpzS1YvL003?=
 =?utf-8?B?aWl3ZVpXclBickRURU9EbDZHdTEwcEVZdW1Db2d5S0J0UkZudXlOWnA0ZXdO?=
 =?utf-8?B?SDVtd3BUbHFRSGlvSHBlM2txVnZrbDJacWt5TkZiOWxrbFVLOERzTURpQ3hw?=
 =?utf-8?B?R1FCL3lZMUNHK05NK3J3WVdma3Mrci95UzVmOHpxelE1TnJudmFHRHB5NzlX?=
 =?utf-8?B?QURRY243ZXlaODNybEo2V3Q4a2tnYmJCRUphV2ZmdUk4K0xHaTFyVEg5MUhI?=
 =?utf-8?B?SXp1SGNHL2RoeXBZdkQyUExWTlRySCtvendsam14UDhCWDV2YmdmK1VNc3V4?=
 =?utf-8?B?NTVDYld5dWxHcEM1ei8wWWtQTVJSWnhURFhHdUFTdmJQdmIxOVB5b0YrODdE?=
 =?utf-8?B?eWxSWk9pcWxSYXY0ek9oNzBtbjVsaHA2R0FDUTd4TmlwY1lQYzAxZ1htWnRL?=
 =?utf-8?B?cFpPRWlNeGo5dmt0TEhSSzFTSmNmeXRSZURYSE9jUFJ1QUhGZFlENUt1dGpz?=
 =?utf-8?B?T1pQblE5bVJKV2xoMlNwYlROR2JzdmtkZXJFSkxybW9vdHp6NmtNTUtSWENa?=
 =?utf-8?B?R21hM0VHM1l4WUxSNFloa3BESmo1QzV6T3F6Q0tBYU1rUEVvSEI1TmNZN29N?=
 =?utf-8?B?eXNZVll4dGJiQmFBLysvUGFZVWF1VUNIZEorM0Qxb1JTM3BPc3pzKzMxY1Av?=
 =?utf-8?B?OG8wNklrS2szR3p2OWEwNTFGOTMwcG8vUEp6QmV6V3EvTzBIWWJxRVNzeUJv?=
 =?utf-8?B?eTNybXo5UDh3dFRwRVpiTU44cHZzdWhiY1RGUTdZclJJUHpIV1JEdFNoWGFa?=
 =?utf-8?B?T3dwcXFuUmt3cnNYajBEL1cvcjc3S0RSNjR4aUNOZTc0aHVublRRTFRmMXFq?=
 =?utf-8?B?dTJvRmZ4bHp6R2t0VjZKc1VEMHZzUU1xWTFBc2dVLy9QZkVXOFgrYlo4S2pH?=
 =?utf-8?B?ait4UG0vSzh0UVgxNEJSc1M0d3lUWUt0OTA0dlBhWGNkbXZaaGFhTHppbkY2?=
 =?utf-8?B?OUY3dXVSOGFpekg3MXBLMlkzb1hQWDg1N3JWRnJTOVRUYjMvajBJaTlxWkxZ?=
 =?utf-8?B?bXVwN2VmTlpBYS9xSnRkbDQ4Y0UwYitFcmhYbjd6bE44WndTb1MzWkJRSTMw?=
 =?utf-8?B?RjdoSWdYY2FCbndLSEFSYnFUTmlxSjRXZUpPcmk4OXVsS2Q0Qk54Mmo1YVI3?=
 =?utf-8?B?YkZKdDhKM3RuUVg1Y0tDQmJmcVEwTlZyRG5IZHp0bTVQdGpEakVKUm94RTly?=
 =?utf-8?B?VGNZTlBIT21hZ2F4M2syTjZmZzV5cVV3VTd0RGRtQ1d0REd4ZC81WGorSVU3?=
 =?utf-8?B?dTZvVXdyOFNXSjdVSStXMU5OS2hOeDJIZllNUzNDQnpnR1hJMzVJU1J1YUdy?=
 =?utf-8?B?K1p4VmpQQUhkbjJwNllmZmkvNXppQkQrRFBHTTBMdXlMQVQ3UndrcEJPTzBQ?=
 =?utf-8?B?MkJQenJhcWRqcnN1VC9xa1JkRC93NlYwR2tXUnExY01zTlVWUU8xZUFDam9m?=
 =?utf-8?B?Ukk4MUNIenp5cU5kMXZsM2tVZ2FybGlhNERKd1loTW44bHBWWThpK3RCaWVK?=
 =?utf-8?B?ak9zQ24wcVJmY3NpTEdxMk53Q1p4SWRNa1dQbDJXeDRUalR0Qk5CTi9lL2Fp?=
 =?utf-8?B?NTI2SkVGcmErdm0vVEFES1dXWCtoRlgwQjd1RTVjZ05lNjd6aGlTYXZJT1ZI?=
 =?utf-8?B?S09ENzY0YjR0Z2xYL1pnNHZORlEwNGFvRS9RQ09wZmxjNm9Zc1JqK0s3OWVO?=
 =?utf-8?Q?IOExehQNkDVXMn6hUrx3G6/A/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3d2ee8f-0880-48ea-4515-08db2078ad4b
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 08:31:28.1425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jw8zxCe9BJ0noiwGh5pgPJyFJd7w0xxTR7SRbm5uDbRYFVgXSPpeyK774yf/lrI2YHSs97Hhc65xZaPEozImyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: prevent forcewake releases
 during BAR resize
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
Cc: chris.p.wilson@linux.intel.com, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/9/2023 8:54 AM, Andrzej Hajda wrote:
> On 08.03.2023 18:29, Das, Nirmoy wrote:
>>
>> On 3/8/2023 2:36 PM, Andrzej Hajda wrote:
>>> Tests on DG2 machines show that releasing forcewakes during BAR resize
>>> results later in forcewake ack timeouts.
>> Do we have a fdo/issues url for that? Having that as References would 
>> be nice.
>
> The patch is result of issue reported internally, but...grepping 
> bugtracker I've found potential candidates:
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6530
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7853
>
> Maybe it would be good to add them on merge.

Works for me.


Thanks,

Nirmoy

> Anyway thx for a-b.
>
> Regards
> Andrzej
>
>>>   Since forcewakes can be realeased
>>> asynchronously the simplest way to prevent it is to get all forcewakes
>>> for duration of BAR resizing.
>>>
>>> v2: hold rpm as well during resizing (Rodrigo)
>>>
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>
>>
>> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
>>
>>
>>> ---
>>> Please ignore resend of v1, my mistake.
>>>
>>> Regards
>>> Andrzej
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 25 
>>> +++++++++++++++------
>>>   1 file changed, 18 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c 
>>> b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>>> index 89fdfc67f8d1e0..2a3217e2890fc7 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>>> @@ -54,6 +54,7 @@ static void i915_resize_lmem_bar(struct 
>>> drm_i915_private *i915, resource_size_t
>>>       struct resource *root_res;
>>>       resource_size_t rebar_size;
>>>       resource_size_t current_size;
>>> +    intel_wakeref_t wakeref;
>>>       u32 pci_cmd;
>>>       int i;
>>> @@ -102,15 +103,25 @@ static void i915_resize_lmem_bar(struct 
>>> drm_i915_private *i915, resource_size_t
>>>           return;
>>>       }
>>> -    /* First disable PCI memory decoding references */
>>> -    pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
>>> -    pci_write_config_dword(pdev, PCI_COMMAND,
>>> -                   pci_cmd & ~PCI_COMMAND_MEMORY);
>>> +    /*
>>> +     * Releasing forcewake during BAR resizing results in later 
>>> forcewake
>>> +     * ack timeouts and former can happen any time - it is 
>>> asynchronous.
>>> +     * Grabbing all forcewakes prevents it.
>>> +     */
>>> +    with_intel_runtime_pm(i915->uncore.rpm, wakeref) {
>>> +        intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
>>> -    _resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
>>> +        /* First disable PCI memory decoding references */
>>> +        pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
>>> +        pci_write_config_dword(pdev, PCI_COMMAND,
>>> +                       pci_cmd & ~PCI_COMMAND_MEMORY);
>>> -    pci_assign_unassigned_bus_resources(pdev->bus);
>>> -    pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
>>> +        _resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
>>> +
>>> +        pci_assign_unassigned_bus_resources(pdev->bus);
>>> +        pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
>>> +        intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
>>> +    }
>>>   }
>>>   #else
>>>   static void i915_resize_lmem_bar(struct drm_i915_private *i915, 
>>> resource_size_t lmem_size) {}
>
