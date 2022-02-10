Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FFE4B16C6
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 21:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47BEC10E955;
	Thu, 10 Feb 2022 20:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8171810E955
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 20:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644523962; x=1676059962;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0/514bfpfyawR6cf2RFW6a4x8Omaw7JVpzkeHLJqDvo=;
 b=awX1wAnVsAUt/FAJEMCNrWSLzDgjqraK2oPnz8TIjYg3/36YGvN4GS+/
 tHmEPz3QEB/cyCAxM1p/uhxDXQLzzwRMJFabRGe68sJWdUXgvmgMk+0GE
 Jkti2OUzzT7Mr9AWxPAOWT6lMZgdxGOE8xa3uDxBnLmp9k5NRTIpl8O66
 5nL+8BkGDxkrOwFoYYTdA1WkXsSZdreLYQNlGRnJoWL0CvCF6DfRJiIur
 j0ampUQGeBW6C/DeOqNrdkw9shI+WVB+MSQjcWGHIdItJYf4tlsjLH0S9
 38XiQrspVmp8e5F4V1Y+3DNO1x8Ag/f0hKtpl9aCOqv6JxME8/boq84FC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="247171000"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="247171000"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 12:12:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="679269733"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2022 12:12:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 12:12:41 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 12:12:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 10 Feb 2022 12:12:41 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 10 Feb 2022 12:12:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fgK3Kut+LmhNjI0b+nH+QeEF6ecwZ4ag+OrLS1WsQKpON++gL412eXUNL29wAUJmjfC8AUZDPnzmjn5vZppkkPXZYhhOOGIFIk5NYoDmht8ogaFBuqDmSXtU+WOvNHwfk1SiH6FbWwFc4rD4UF5rSPJcJV+2XsRVS/oPVn7C6tFYFCFiR6NMwZQ4Xfbl8kCkjoFh4T9NaUZyTczNwX5cAFey18v0WnEHw+9Nez8TvwKGgsFe4DeUtGr5FvsB1PomPkVHD+putd/UiAqm+RfFD9U/ql3HJ7pRsM1YilBQL7Bto19wL3uiWzp4vBlYb+eB7pkTWwoQGd6B4qp/fEnKrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6zsXlvGnWIj6VK47kIH+7J4l3ZEQnmfsirlEPNLIufM=;
 b=IihowDSwyXhHGr+fo5bHSu4N8IaHE9MxWo5Vy5G7qd6M6MmSWppbGyXnbS2/nflJmysl0YxZcMgmqWHgzEmWmVUCxs/wXBGFeQRWVLZFQ/hB8yNRdrvPAjzmAd483g5ptBI86oZYvoeY5IIF4YCt1WePWNIgZmTHSULwxbb7yc10OKCeo+8BNw50pfD7IOS3xzyQ/mQzAa++XkQpppgHhR9nTi53+UCGcdpPgSYdz/vGalhQmMp4SMDfDiQGHmbs7VHON2y2r/fuAisX4tFUZ5XHZyVdBiDfgzs9jtTOtPPiebk4J2Dsz/88dHN6ZLl5LqIHEV3+p3npAlnl92kwGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by BN9PR11MB5467.namprd11.prod.outlook.com (2603:10b6:408:100::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Thu, 10 Feb
 2022 20:12:38 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b17c:48f8:6fba:4a9]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b17c:48f8:6fba:4a9%5]) with mapi id 15.20.4951.019; Thu, 10 Feb 2022
 20:12:38 +0000
Message-ID: <1a0f5da3-afe6-7ddd-8d5e-4b6d30a9ed65@intel.com>
Date: Thu, 10 Feb 2022 12:12:36 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
 <e72a6679-2fe6-9390-2e7b-9c59cdd4cda8@linux.intel.com>
 <f4f83f4f-4a13-5b44-4ff5-4d32a1e850be@intel.com>
 <e9824e03-1223-52a1-ccca-fc2a521ad48e@linux.intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <e9824e03-1223-52a1-ccca-fc2a521ad48e@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0048.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::23) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfe629b2-f3ee-4c89-d0df-08d9ecd1af4f
X-MS-TrafficTypeDiagnostic: BN9PR11MB5467:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN9PR11MB5467A9F1BF4BF4F2C7E24B02DD2F9@BN9PR11MB5467.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZupLZ7wROZVzwSwk/x2/l6lqZ9UbY5eTbtU+8RzrBzvpkpD4osdlqvU+UdikYss1o23M0kH+VX/DFkOzscazL/9n2ot4293HH397TZyOedRx1LPgW4aktYwCPwAUybU9w6nx3FMLQkxtzXDyRR0/x/D3RtGtgEDx7GbSoXlEo64GDcUm15pbnWhUUN9Ev1eu57SY8DZ6d83SiGdWVfOCv3gVLk+AlgY5BqVmaMufAJuduyiDxXAqJ78e/XFPLFwcgE6JGGTn2Lcttu1nDPFz69YMexyKJbs3ncIkHYqfA9ykhDV4mHCY1x8Z18WoD8rLkFqFtvFBrqN4n8uTAYLP7vvAoVafOY05ICh1RCJBrDr2Rq386M9vWGV/4h1eFhDTuEnGuE9AWvYch0r0tIH9ARTsEMrQzewzrgNhMfwNE+rTgTglSZGxmCSun3GsiBmo4hj7Bc1QwMCplts/26SHNK5byFu/VQhUgk4DaOzhKcDNq7K8qK0IxWoWTUe2ifZ/Oe8DwgjICT1USEjri2FIm5YsC9VG2xVhGRQsmqEiweFIpihHoxl1kH4iGIQICtjKvJKcIrGPEzw2D3k6hexnu5/t8I8PwiGTH1XaLjbHTH91xZkZH5cSMl9gI3l6QADxQN72mRrqQfM1DdOaVumNxv8focDRmOpKjM5vyYSHmuQ6YHSGfHb9bkGOXnXqSPPleYkaz0dt+gpaagexfzpXennJ7laXQKobeQ9Au8B/z34=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(4326008)(66946007)(66476007)(83380400001)(53546011)(8936002)(2906002)(66556008)(6506007)(316002)(6512007)(6486002)(31686004)(508600001)(36756003)(2616005)(26005)(186003)(86362001)(31696002)(5660300002)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0dUbW5wb2hPVnJzckdxSzE4OFJPMEZnRWpqb1YwWk1DQWkwVEllOEttWWlv?=
 =?utf-8?B?aW1tTko2UXhFL285YkRpdDlqTVRUL1pmVmZicGJJUStvVzlkOS9xbW9yWU9u?=
 =?utf-8?B?aklsTXZDenRIUHoyUTBtaHI4OEkwbGgzYmRJdmpMSWdsYXlweFR3SE94ZTdQ?=
 =?utf-8?B?S3dhdHY1QkdWbm5MN0N2NTRuc0gxUGxWK3BDYTVzTDZNRFJEZ0ZnK3RZRlQ1?=
 =?utf-8?B?QWxKeTdpTG01NHNSRERHYVZaT2Z6dlZ3MzBKa00zUUlXVUk0aXp3QUc2cDdH?=
 =?utf-8?B?SC8vSkZsOVlvQkhVbU41TjNKY1pLS3BJc1U3L2JrakMzajFDOUxFN0hhOSsv?=
 =?utf-8?B?V0NXbE9xV3F5ZG10bVRqc2ZoWFB4bENpYzNLZURHYkRjOVF2SndDUlc2a3U5?=
 =?utf-8?B?TnlHc3hHeEZ3RVR3bHBETkJoa0Q0cXp4RUx1cVZ5ajRQN0RFdUhjR1FhL1Br?=
 =?utf-8?B?N2RWc3diZU5WRzY0bTZEY2lRUmVMNFJqbzZTanl3OTROZU9Ec0hITEtPZXpF?=
 =?utf-8?B?U1NrakNLZW81VkFCcExOQTBUZUZPTkR2SkVnd2NxOTRzTVV4NzgweWxOVjhL?=
 =?utf-8?B?RGNHZkpHT3JDdmxjaEkrTGxnRVNvdll5Sk1aVlkxb0ViUVM5eWNDRGhaODN3?=
 =?utf-8?B?a25vd0ZFWXB2dmZaWmZzYi94ZXlsMlZWVXJNbk41by9ubEY5TC85VGRDYmRD?=
 =?utf-8?B?aW9WeHdKZ3ZhWlR1TU0yRGRCdXlSNHQzN3JQRks0ZmZvdGdXWDBuNEpaS2Q1?=
 =?utf-8?B?UElMWGdlMWEyN01JZWpPSUxPN01SRlc5dXhYUEszLyt2QTNzNTlVTzZhSnlZ?=
 =?utf-8?B?MHRGcGVkN0JvbEZSQU40YlNWdUlKcFpTb0JhbWpTSHI0MzhtdGtCY0NhUmNw?=
 =?utf-8?B?UFdCaklVM0dDM01HS2Z3Zm9jbjJDMEkyUmlibDhTWmpPUkFDKytwZlNldkVD?=
 =?utf-8?B?dTgzZG5jTUFDQnlyN2JhM0M5SVpGYlRLZUNkUm5wdWVDZjhzcDROL0RUckxz?=
 =?utf-8?B?MFUxMWNWS1pBTjVXMmpsWW8vTkJydWVmb3UycEFnUXNNUHh2S2hkbG5mTmZJ?=
 =?utf-8?B?OWU3OVQ5TEFNN0x1d05OL3lKT05GVm4wNHQyR1crOVRDNkJqWUVkenh0a2R4?=
 =?utf-8?B?TnpPaldwQTJLMllZYmVCdlFVVWxGVUxJWUFzNTFyWHJRNnUxNFJSOEdhUlh3?=
 =?utf-8?B?SUZYYjhmK3NLN3VIbCtlbjFYRkdqakwwQUQzOEkvOGxOenZ6c0FzYm94aytw?=
 =?utf-8?B?bHFMVVQwQ0trSlhRQy9NN0JNR1ltWjU1dnpqTnR5ZTcxQk1DU3FPTnh3ZDlB?=
 =?utf-8?B?RlcrUUdjZnZBTFdsNGlFeElkREZFWi9uSU5LNGUwenhlcHhhTUFOa09TUFNh?=
 =?utf-8?B?dnJLc3FlUHRSRmFKd0tSb0FiZnZoUmVSZEJOTVE3N1JMTzVLRzdOVi9lV1ov?=
 =?utf-8?B?bnpjUFpDQVJUVnZxVnFhMjhQeVVkUmtRMTR2aWVLZE4vWHdhcWV1MVV4ZHQr?=
 =?utf-8?B?THBvOUZjRVpPR01RVEQ2b1paUGxEVis1YzdWMlI3YkVRZHE4d0FFT2JKS1BY?=
 =?utf-8?B?QkVPd3h2T1lwZ0JOODJhNUZjeFFkRTdZRUYwRkRndTFiLzRNdTB5YTlHLzJp?=
 =?utf-8?B?cDZidC9oejJOMlVBa3VKT0lzTmNaclRBOFlpWkJrdlU2bzFmTUxwYUR6SGN6?=
 =?utf-8?B?T3M5TnMyT1JId0R6V0xWN1JscHVZRGJ2S1Nab2FockZVZUVmQkFaanlTYkk2?=
 =?utf-8?B?VWt6L2hGamwwd2tTY3VLQ2pJRUtOcEpIbHB4Vk1PYmNXdlozS0t4V2xWZmp3?=
 =?utf-8?B?UEpYeW4rSHg5U1V4RXdGSGUwMXBsTlBCZGVPK09yMDd5Q0ZXclBQUVpLYTAy?=
 =?utf-8?B?QXhlaThiOWM5V215ZlNGam1PN0c0Z05PWW1ZRXhCSW5zeDJWcFE1Mk5Na2FQ?=
 =?utf-8?B?TGxMOGVNRUtsNEI2bkh2SnFMdG0zd01iUmdDOVpia3Z2Yi94bmxkYmYweEFv?=
 =?utf-8?B?TUJnNkNMY0tqUVNCSWtDQ29OeUZaZDBiZVZMUy9qVjU2clJOZ3Riem40ak03?=
 =?utf-8?B?SlhsdWp2bXFOZkNQblFQaFVBblVBQTcyb1BpUXNSWGVaVzI1c0RwL0FSU0k0?=
 =?utf-8?B?eEtNdU5aM2FWVmc2UGVRRnJZdlJnSkc2UkJBbGsyZ3BkOWlIbUFOMExBeEhr?=
 =?utf-8?B?a1p4aExjbHM3T0RHR1ZrTldQUk5HS3dDVmM3UDRwZ2FORGZZUXBzSVFCeFFV?=
 =?utf-8?B?STBmSkY3V2VETHBhQU44akdHZnVnPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfe629b2-f3ee-4c89-d0df-08d9ecd1af4f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2022 20:12:38.5543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a60blJmsvjSpBait4EI8Tf7wk+xlRR1iftLlSoefeWQKVHtnWTIS87J577NYo5q9ecOM4yUWDyqXN8r7m6Kb3DxFx5Q14E3bzxz7ZZIwM68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5467
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH 0/1] Splitting up platform-specific calls
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
Cc: michael.cheng@intel.com, jani.nikula@intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/10/22 03:10, Tvrtko Ursulin wrote:
>
> On 09/02/2022 05:25, Casey Bowman wrote:
>>
>> On 2/7/22 07:36, Tvrtko Ursulin wrote:
>>>
>>> On 20/01/2022 22:16, Casey Bowman wrote:
>>>> In this RFC I would like to ask the community their thoughts
>>>> on how we can best handle splitting architecture-specific
>>>> calls.
>>>>
>>>> I would like to address the following:
>>>>
>>>> 1. How do we want to split architecture calls? Different object files
>>>> per platform? Separate function calls within the same object file?
>>>
>>> If we are talking about per-platform divergence of significant 
>>> functions (not necessarily in size but their height position in the 
>>> i915 stack) I agree with Jani that top-level per platform 
>>> organisation is not the best choice.
>>>
>>> On the other hand I doubt that there should be many, if any, such 
>>> functions. In practice I think it should be only low level stuff 
>>> which diverges.
>> I agree, as said with my reply to Jani, I think maybe going forward 
>> for arch-specific code, #if IS_ENABLED calls should be used 
>> sparingly, only in the cases where we do have that arch-specific 
>> implementation (like low level calls), instead of just a 'return 
>> null', as in my case.
>>>
>>> On a concrete example..
>>>
>>>> 2. How do we address dummy functions? If we have a function call 
>>>> that is
>>>> used for one or more platforms, but is not used in another, what 
>>>> should
>>>> we do for this case?
>>>
>>> ... depends on the situation. Sometimes a flavour of "warn on once" 
>>> can be okay I guess, but also why not build bug on? Because..
>> True, with Jani's and your comments, I'm thinking that in the case of 
>> when we look at a potential arch-specific function where we're just 
>> returning null or something similar, we should be re-evaluating the 
>> function and seeing if we should make a different change there.
>>>
>>>>
>>>> I've given an example of splitting an architecture call
>>>> in my patch with run_as_guest() being split into different
>>>> implementations for x86 and arm64 in separate object files, sharing
>>>> a single header.
>>>
>>> ... run_as_guest may be a very tricky example, given it is called 
>>> from intel_vtd_active which has a number of callers.
>>>
>>> What is correct behaviour on Arm in this example? None of these call 
>>> sites will run on Arm? Or that you expect the warn on added in this 
>>> patch to trigger as a demonstration? If so, what is the plan going 
>>> forward? We can take one example and talk about it hypothetically:
>>>
>>> ./i915_driver.c:        drm_printf(p, "iommu: %s\n", 
>>> enableddisabled(intel_vtd_active(i915)));
>>>
>>> What is the "fix" (refactor) for Arm here? Looks like a new 
>>> top-level function is needed which does not carry the intel_vtd_ 
>>> prefix but something more generic. That one could then legitimately 
>>> "warn on once", while for intel_vtd_active it would be wrong to do so.
>>
>> Good point, run_as_guest might be a bit more challenging of an example.
>>
>> In my mind, I was thinking of just simply returning null for arm64 
>> here as I don't believe arm64 would be making use of iommu for our 
>> cases (at least, in the short term).
>> I think this example function specifically needs to get reworked, as 
>> you mentioned, in some way, possibly refactoring intel_vtd_active or 
>> something along those lines.
>>
>>>
>>> And when I say it is needed.. well perhaps it is not strictly needed 
>>> in this case, but in some other cases I think we go back to the 
>>> problem I stated some months ago and that is that I suspect use of 
>>> intel_vtd_active is overloaded. I think it is currently used to 
>>> answer all these questions: 1. Is the IOMMU active, just for 
>>> information.; 2. Is the IOMMU active and we want to counteract the 
>>> performance hit by say using huge pages, adjusting the display 
>>> bandwidth calculations or whatever. (In which case we also may want 
>>> to distinguish between pass-through and translation modes.); 3. Is a 
>>> potentially buggy IOMMU active and we need to work around it. All 
>>> these under one kind of worked with one iommu implementation but 
>>> does it with a different IOMMU?
>>>
>>> Which I mean leads to end conclusion that this particular function 
>>> is a tricky example to answer the questions asked. :)
>>>
>>>>
>>>> Another suggestion from Michael (michael.cheng@intel.com) involved
>>>> using a single object file, a single header, and splitting various
>>>> functions calls via ifdefs in the header file.
>>>
>>> In principle, mostly what you have outlined sounds acceptable to me, 
>>> with the difference that I would not use i915_platform, but for this 
>>> particular example something like i915_hypervisor prefix.
>>>
>>> Then I would prepare i915 with the same scheme kernel uses, not just 
>>> for source file divergence, but header file as well. That is:
>>>
>>> some_source.c:
>>>
>>> #include "i915_hypervisor.h"
>>>
>>> i915_hypervisor.h:
>>>
>>> #include "platform/i915_hypervisor.h"
>>>
>>> Then in i915 root you could have:
>>>
>>> platforms/x86/include/platform/i915_hypervisor.h
>>> platforms/arm/include/platform/i915_hypervisor.h
>>>
>>> And some kbuild stuff to make that work. Is this doable and does it 
>>> make sense? Per-platform source files could live in there as well.
>>>
>>> Same scheme for i915_clflush would work as well.
>>
>> I like the idea of getting more specific for the calls here, but I'm 
>> somewhat afraid of obfuscating these functions to their own files in 
>> addition to scaling issues if we do have more and more arch-specific 
>> calls, along with more architectures in the future.
>>
>> This just seems like it could blow up the driver in what could 
>> ultimately be unnecessary organization for a fewer number of calls if 
>> we just add a few platforms and different calls.
>> What do you think?
>
> I don't have a good crystal ball to see how many of these you would 
> end up during the Arm porting effort, just my gut feeling that it 
> shouldn't be a problem to add a few files.
>
> And I don't think it would be obfuscating anything, on the contrary it 
> makes things very clear in respect where the platform dependent 
> boundary is and what are all the bits that diverge per platforms.

Fair enough, I'll look into writing up something as an update for 
further review.

>
> Personally I would just do this all as part of your other series which 
> touches clflush and in that way establish a pattern from the start. 
> Plus that way I sleep easy not thinking how we started penalizing old 
> platforms with needless new function calls on hot paths. But it is my 
> opinion only and other people may think differently.

I believe that series is authored by Michael, not myself :P
But I do agree with trying to establishing a precedent here for future, 
similar calls.
It would definitely be helpful to get more opinions for consensus on 
this, as we know there's many ways to go about this.

In the meantime, to form a basic guideline that others can help mold, I 
believe the precedent as of the moment for porting i915 functionality 
for other architectures is:
- If the functionality has low-level code that must be ported to another 
arch, use #if IS_ENABLED to split out the function calls by arch config 
(this should be sparingly used).
- If the functionality is specific to x86 architecture (has library 
calls that only pertain to x86), split out the call to a platform 
dependent area (so long as there isn't an already-existing generic call 
available that can be used in a refactor).

Does this sort of guideline make sense/sound correct? I want to make 
something we can reference when porting various pieces of functionality 
throughout the driver.

Regards,
Casey

