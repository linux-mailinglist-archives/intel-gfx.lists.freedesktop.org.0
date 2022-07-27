Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B678582EA9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 19:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 204F710ED7B;
	Wed, 27 Jul 2022 17:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68767892E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 17:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658942135; x=1690478135;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wcSeuSFwjoi6c2Y4zZWkiqyxmpDg95t8aHusVP2qWuo=;
 b=H0LBXmVXIoqnu+N8mpP0bz6C0CUiG7x76RHjXckiR0+JP9jcH5DMzkBK
 XtBSnaQBx+r5Een+7vmdxLzkvfbKsaAVV1/5Xd9V7+v8Embq3dj50u8uS
 1j9DiNOKr6gqMWst2zqjT05BhAJ+aA2iWf7srJHjzLdQAdqD4RpoSdS+8
 4ruCEejPS3YB9+ysjm8dbL1kFrxwhraCJPyAIQ+LL6I/q5v6g5EQED5iq
 HigEbKGF5c4TbXuT5ehkHYXYZ+t5GVVKV33bdqOXxaWe+fLrzGTtoYBMu
 KKw2xEWmdRxMamPR82KVXn9xLC3P25YJgUTOiBhKlX1XW5tSc34+lAhvC w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="268677811"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="268677811"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 10:15:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659289794"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jul 2022 10:15:34 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 10:15:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 10:15:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 10:15:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l51gpsQ/Y4DvDvC+svdXB0NZ6Xfdgv9mgIoanX9+TBxNJpEUMShSZ0auVh35m+EDWPFjpMwJn2CzPBLxuCbuT9eGeDMtyA12WlVVQE1ZpvHb+Y0ng8Su0NrVWlgCtp0lDlj6FGV2IwdR84BYjxRo1I0a4WcrTRu3pTc3CRpURa2Zd+cPGIznM1LnuJdUFOfKMnv9QcUeG5HKAglRWAsVv0hXZv4hfEAD0mRgjEKnTYHNRElgtzVCcTFn4H8C7bPzP7tM21TNn0ZAMXaS5Rot35TO0He409VKJdyZBdqhGKgtptyIBkqI/hKjZFX2CsB8SCay11COlpGSiQXvu72jKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UnL6X6UVbEFrIexv8eDxo1UszhsBs5DQKLgEymSst9Q=;
 b=Roomaq1VPHhOvz5L2Ah9KmFg3MAoQ6qc0GuygJgMzBX7LcMAQIv3Jff10k51G3iIaI9C1giYsTVyfDLD0qRBarlwag0UeBCo/DRabvMyVGHY6szGco9bG0UAg9MxFaascGepzmIEhloPHgeMTIZcc4Ol4Mz7I9/nYPcfibLdCip6NxkkiojjKleXOiUvuNiqvYsQdKNpjlnKXkR83IpjnEEr5TPLvdxJk1PxMf3/ghxP0VI8bq8MH3kogIaTzo43FKqMIpFmQhSZ+Hoj4Pjfau7OA9QCKzMkTDcY5ssslArJiJq91jhUTWJ3hz2OqehL3BS3tAEJFlMn6gKde5aHOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.6; Wed, 27 Jul
 2022 17:15:32 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::3d0f:2102:5483:18e]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::3d0f:2102:5483:18e%5]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 17:15:31 +0000
Message-ID: <bbd1ed7c-e76b-8838-ec78-87b99cf2dfd9@intel.com>
Date: Wed, 27 Jul 2022 19:15:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220726083212.24071-1-nirmoy.das@intel.com>
 <1a2bdeb9-b0a4-e620-f106-b0df7a691241@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <1a2bdeb9-b0a4-e620-f106-b0df7a691241@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0432.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18b::23) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b705aa5e-1db0-4a73-d717-08da6ff39c2d
X-MS-TrafficTypeDiagnostic: PH0PR11MB5642:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1Q0YqMYEBtPwm5k4J9bptHsJskHRkcy4dun/HbrRFcJG7HUGzkoSA8qmQZLboAmIp+8JiwP8vh4n3ZUYf0kx74kCSdQBzFOZL1ycQcUjsCJW+Iw/eeVg33IAKn9Q7LIGcA7VSpYOdNYfHe4myBZ+NXVF/4EJ/ScmnNW3IiJyrYO15PNx0BlZAXpggnGNtEDQqhIySETjqb8YTqkc6lA7JtLhFCDyhpVNQepCfeUrJ+WUfwwr9XNYM1FdHo4ppE9lyfZRLZdvlMzvFv8DGxGJhXN7FiW7s65ptEs8RMhz/PUAh3GxTGF3qJBpfNBVeHX8K7Vs42Iyc8NtKmYVUR6vZ5EBg9FNbHyREC9+kUPNRGixiG73PxuVFmcf2/jLRYLTppP9BxOYJLipawNuC+kZzAXBI+fxFyyzSZQaGNwAs+O598LVUrEbz2m9lvrhjvG+PRjTETLfmXCQ8gQSf87C0PEWaFHamfInKHQ1EoWpCaDmtBrJqBZVqGrHMjjyN1JcJtWfCqtLi5wDa39NPceT/KOxBym7Z4I53Df/yq2K6czR17+D877zmk1kK80TIGhK276tNpnXgA7hrWXujVxparnWzTnR+c+76tE9bp1fCOYS/abAJmXMrWPsImO/5Yec6gOe7yW12RoHAg6Jo1l77hYlFsUV5sqNtOVtQMRVV1xImoN6efD1WTRAGuol5hO/jUOjBWZM3vnkSjtgqzB4jX9Gp69BEkBqWqNlI7dyjDo9Oj1TUrufcMt4Z6i8jD38dyVPLlIV2aa3MiSqseaiE8Jctcr3WC34O1cpzG8f3ZBbmN4i4z7T+3lCjMfQdN1y8SMURH2LjZacVDyDKTmZTA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(396003)(376002)(39860400002)(5660300002)(66476007)(8936002)(66556008)(66946007)(8676002)(186003)(4326008)(2906002)(83380400001)(478600001)(82960400001)(86362001)(31696002)(36756003)(316002)(6486002)(6512007)(2616005)(26005)(107886003)(41300700001)(38100700002)(53546011)(6506007)(6666004)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGJxR3BBT1ZDTnhLQm5YQmR4SWNzaExXVWNxM3k0MTdBYUFsUFFBaEwzZVRZ?=
 =?utf-8?B?b0JOVHRTUStPWENEUm05NDhSSSt6TVpHeHBNRjQrSVBIY1hQUjloYmxtNTBu?=
 =?utf-8?B?dDV4N3JZNnZwN2I0QzVjcGhFdkJNdjFsNkRsb25rREtwK1hEVjhaTkUyU1VP?=
 =?utf-8?B?dzFzbVFqaWgrYmFYY3l4N2RLdmV3enA4ejYwSnRTby8zZDR3WVFWVmJGWUNh?=
 =?utf-8?B?VDFJdzdrU0JhUk96R2syd1dXZjRDVkdLcGpzQy95YVRzbWU2dU13clpmc01V?=
 =?utf-8?B?RjczWUlrNTgzdWY1LzB4YkpuSzFWcVA5Unl0Y1FNUUZ3dkYrYTdYSUNUY2Fa?=
 =?utf-8?B?OGloVTJ5NWM2bzR6V1BIK1R6SHAwaVovdFd5bk8xUWsxaytXaTlWUVpDUWtJ?=
 =?utf-8?B?cFpaZjI5WFFhL1kwV3BqcVZaOHNSV0E3bEM2RnZ1b2ZFOEo4dCtyTmExcnZ3?=
 =?utf-8?B?Wk5xVGs5cjdmNU9kN1drWmVuT251MncxMjRwRnVWYkdiYUhjUFR3b2xKMlho?=
 =?utf-8?B?UlhrejNWT0RhMncvbXRES2dKQ3BFbG52Rk9hZXNDc3d4RmQwOXZOSTIxQ2Vr?=
 =?utf-8?B?dWVianA5a05NbjVyOThBY1ZQTHAwY0YvZFNPTHM0RTRpWFR3cExmUlRsZzlI?=
 =?utf-8?B?WVN6dzhpd0dxekhrMkNaRUFpTnlBTTRCL2RrMzc2ZUZmbWx1R0xoNmFpTndO?=
 =?utf-8?B?UjVTZXNzR3JCK3lKMkdwM3M2WVR6d2JOU2V3dkFyVFYxSHdJUFNSVjlkYndC?=
 =?utf-8?B?N0pMUEU2Z2xIZGpka2h1eDFDYW1paUc4Sjg0cjNZYW5vaDRKL0VxcTZ2SFIv?=
 =?utf-8?B?ZXRmTjdycWVNN3FmUkdmS1lMRmkvakdDNWdialFyRTdzNXlzYVdlS3c5bEto?=
 =?utf-8?B?Z3J6UkRGMy9wdXhCWTdiV0I0UU9aVm82YndXZUtBYmRHbzJ5bk5UalBmMzl6?=
 =?utf-8?B?eXA1RnNwZjA1OTFzM0JYRXdwZGxSOGhKdDRhNTM2MXJ1dTgrR2RxQlJ2ZVBU?=
 =?utf-8?B?YU1SR203MkVlRVVPUnZWY3dqb1BONlpVNUxOVFdDMy9PSGYwL3pNU0h1UEZL?=
 =?utf-8?B?Wllld0xIOVNja29lVmNvb1crQ3ZKV2JIclVWL2JLcEttdFNKZkk1bStxdnhJ?=
 =?utf-8?B?Zmo5S1Z2Mm1Ccy8zS3JGRTVrZnV5SnZvcExENkpFSFc5YmdPZTJmNitGZnBL?=
 =?utf-8?B?NFpzT0hYQlp2RFR5VldMYUt4dk1CNDRha01HWVBDaU1IRGk3MjNjWHpIUUZK?=
 =?utf-8?B?UEYyVnZhN0pnNzNNR1BtcGxSWXJyVjZRTm81TFhDeVByc0dhZ3lDMURDNWxa?=
 =?utf-8?B?VlgybGQ0Vyt6NDJRQS9SSEIzdW1ZRk5WRFM3TnJ3TmJENUp2M2RCYnRqYnFn?=
 =?utf-8?B?TlBSY0I0YzJzTEhmd2diTExhbGhneU9oeTFXU1l6OFBqaDdSZmhOd1dmSjVG?=
 =?utf-8?B?TVhPVytFMWcrdGcwVHE1N3FXTFlzL3ZwcmlhcFRqOXpnOTJLdWRqZlIrUktU?=
 =?utf-8?B?ejhudnorL0M1SUlUa2hRM3IvY1lkMFAwc3I4V1BOVjhJL2Z5OXU4YStuQmVG?=
 =?utf-8?B?V1VDTkU4ZWphOU9kUjdEOU5NWERJcmRtN0xFQkRaM09CS3BlY2wvMmV1dXBi?=
 =?utf-8?B?QnNZS3NPSFM0dnlOTWVmZmlkeVJSbHg1dVlQem5DbGs1NHRDNnRuUW4rUDg5?=
 =?utf-8?B?azhybG0rMFFhTW51SXlWVXRTR0k1Ri9rSUw4N1NpTHEwOHhEelNweVVxQ2Qz?=
 =?utf-8?B?WERGTDRPUVhQejh4RGRsb0g3Q0QrYkNsQjduNXpvQWhDMWdKcTk0bDZtRm9j?=
 =?utf-8?B?VTh3bHNDUjRhZzRiQnEwRUYvVytXK25FSER5RXh5Mm85d0FIc3hxN3ZqVy9Q?=
 =?utf-8?B?QVZoUmFvbVVHcFAwSGVwUHhhWGR3emMyWmFwTURWV1JMemsvR2F1S3E1Szlq?=
 =?utf-8?B?MmlNVGFybEJvclN1WU1sODMxK3VickhiOHkvSnZkUC9CclNkR3d1akRnVmZ4?=
 =?utf-8?B?MSsxMjc0WXJDS05IeVk0QmJNZHk3dkExQ2kxNjlNczNTOEdqYnplZkZyQlFM?=
 =?utf-8?B?YThMNHpRbFdLdnZmdXBtTE1zR2xpY1JtQThYY2tsdTVXUE1XVnF5SkdwRUpG?=
 =?utf-8?Q?aAJGo8AsNrqzaS/aDdokDRmIs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b705aa5e-1db0-4a73-d717-08da6ff39c2d
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 17:15:31.6519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4YYjDC3qQQE623+NHCC+ve+gkV5JdRKgS1GFiCL1MG0i9IJvbITRXpzMBSRpS/nJL3c0xR+jDXsqqctFip8U3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable pci resize on 32-bit
 machine
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
Cc: priyanka.dandamudi@intel.com, naresh.kamboju@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/27/2022 6:58 PM, Matthew Auld wrote:
> On 26/07/2022 09:32, Nirmoy Das wrote:
>> PCI bar resize only works with 64 bit BAR so disable
>> this on 32-bit machine.
>
> Maybe also mention somewhere that this is just to fix a compiler 
> warning with the 0x100000000ull being out-of-range with 
> resource_size_t on 32bit?


Yes, sounds good. I will resend with a comment.


Nirmoy

>
> Acked-by: Matthew Auld <matthew.auld@intel.com>
>
>>
>> Fixes: a91d1a17cd341 ("drm/i915: Add support for LMEM PCIe resizable 
>> bar")
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c 
>> b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> index 6e90032e12e9..aa6aed837194 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> @@ -15,6 +15,7 @@
>>   #include "gt/intel_gt_mcr.h"
>>   #include "gt/intel_gt_regs.h"
>>   +#ifdef CONFIG_64BIT
>>   static void _release_bars(struct pci_dev *pdev)
>>   {
>>       int resno;
>> @@ -111,6 +112,9 @@ static void i915_resize_lmem_bar(struct 
>> drm_i915_private *i915, resource_size_t
>>       pci_assign_unassigned_bus_resources(pdev->bus);
>>       pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
>>   }
>> +#else
>> +static void i915_resize_lmem_bar(struct drm_i915_private *i915, 
>> resource_size_t lmem_size) {}
>> +#endif
>>     static int
>>   region_lmem_release(struct intel_memory_region *mem)
