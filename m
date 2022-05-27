Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0367535E1D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 12:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E458D10E0B1;
	Fri, 27 May 2022 10:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1A1E10E16D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 10:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653647077; x=1685183077;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qCl4yFfF2xzA1+vHPV7UgOCUehErSzPXLGnxbHHchVk=;
 b=fWVVqBLzciN/EqCXbLLdRQi0NLnlNBqG+m+8PJl+PGBjA7yHGgRizkNR
 lL/uq6vpkVkL91BqBMcnFvloHwBm6mwNfAosuB/pTDQl8zXCS7g4qeRSH
 zvjAc7yJo/JitLaYnAtsu4NRdMpeROsP2kgUnym1VBBmjTsCoExL/s/yw
 JGiFh+6/TIj8yngHtVvvVmis4xTeGRdbpEnGhwBYp1ETtHhjuUC6fQ3Ew
 l0WIbE/StGL0+20Vqjesw2BubMBF34MYajgT7qDFTJrbvq4FjJLZsallD
 X7L4JdjRiYHIZdbu7bUvg/8Eg5H5QShfxMJoFtgiJl9CHyBvft9lcHwxE g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="272014531"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="272014531"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 03:24:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="631522575"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 27 May 2022 03:24:37 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 03:24:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 03:24:36 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 03:24:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jTmzkJCWodtweU3vydIjSU6coI9umga/y2Rr8hoF0Os7Pu0UXJ8SPdN5rocEYq9V/xs+oP3uBGmb18F5ffM3RVsw+Rnjldd4sMAEbMhbvOS05YJCo7GmEthyp4W+szpSpoLbrlUhRdZYrisoBOuqzzbwY3RiDGlk1LsEfQKgqYzhXcd6p6KPQZZaTi1T5FIEhty0Rhir+YxXoxPS710hbGHfFFD2/lfmFN3/8+HyB8HXKtGuI4l7JvPYVd7j/mVUFAZNUwFl58N5DBNxkhQE0e6ozxt1/NHy41aEh1SyCCEf/y/hqKanqZy6lZNOxcLeja0fFppb+sg/47A3Wj6eAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iYN+JMDILQBSbdKCDcv4FnKyUqgge9DNfC8dr7aNv5U=;
 b=a2g6mZTg3dqzdmZjl7rKRGH/marXrgdIzB+hbxy5iAZXtEp58ojW3ngkIq4+NtLmHB19LIw8NY3XGDfJLX+Jzi+YdpcHLWEsm8HVohPje5oHGmj+XgEiUt5aydAdgz4VY5NUvb962U/Bn/1OHRntg8ALo1O4d0Zz+yCDMnXX2LDiJosZyGDxJaHisJ5zK0aSqzDFwVn1aHzsb+lN2emEftPrBu4GEybluLn36hQNFEmkXYJBxLQdidi9e94PDbXYQCFaTHOi4e98R5isrDgm0I2jCSXzomU2woF54D2e455GdxvUPngniqHoVBqMNK8nr3VGczgSnW246HBcLWoycw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by BN6PR11MB1346.namprd11.prod.outlook.com (2603:10b6:404:4a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Fri, 27 May
 2022 10:24:34 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5293.015; Fri, 27 May 2022
 10:24:34 +0000
Message-ID: <4c0e1483-607c-5f0c-6085-1d94fcf60736@intel.com>
Date: Fri, 27 May 2022 12:24:30 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220525095955.15371-1-nirmoy.das@intel.com>
 <2c138486-fa2e-867c-33ac-3e7837a8481a@intel.com>
 <2c1400c1-d255-5485-f3c4-e85e9a20d63c@intel.com>
 <b51cdb8a-d521-206c-3ac6-4ecbf7621caf@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <b51cdb8a-d521-206c-3ac6-4ecbf7621caf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM6PR0202CA0038.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::15) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a2086382-fae6-42e2-3370-08da3fcb1822
X-MS-TrafficTypeDiagnostic: BN6PR11MB1346:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR11MB13463520B69AB16564A93DD599D89@BN6PR11MB1346.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H2YJD4EM58mDn13imr2xYfM5pPUtfJD3ix0K+0aXxreaIvXyX/qTscOvyufYnDHoI1dKRRSNB9pD0z2FQRXUl7Hl3MM0NoY53+WtqiKb5YOWt4ZWWDECnC8QVVvSCpZ/TmOtuinxrxzrz04YlgJGBjZ4SBw52SIiGpNpdq3j8QfuZ4VOZx1jB9KyMW8C9iek46uq7gRq9/m7GWhSe+vFcJWv8vMbqX81l+96fydkEWiOHGeLTLBIFwU7GAj/xqdFJA+ENj6ArzP/OiaOcz2KQ7snwnld0jWS2m6gFKKO0GKT1kosMPSOXqSI2dSPXPmt3RVBE/kbwAfht86dhB5C5tCGdRfw8+SlZPxGQ0B0u257YRzNHI6FHaipSzswCB9SYfFKhNjCShSs+sMBfHJTjaFKwI3dU+sL68tQXa5ic/smD9Ahlz0MFKFP5QBSKJdRgHg8dcHWH47715tYFWNqNSRvkPTpmDz+G9HnMayyflqOe+IM/m7/x5a88hD0iVYcrpy2H/yT7xq52Xcn891gTFblOuwVdCR/VdA7XgjyR+ZIGkP+RqL8rWpSm3GrEt/zL2cxJevV2CZsUHDbE4UZpp+0a5cUXs29vNH+b5KFBQw+Oa545rlrL6LxNeWgxzoMtWWnCI8MOI0gucme16xVLVPmKFwgpzdwSA0QVI0p9e5XyC3GfQCxdlJXlQ2V5eLPr5Lj3eSsQws/AwYAaeP2whz3Q+ITrkbshTHyRSNC7KQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(2906002)(6666004)(316002)(82960400001)(107886003)(4326008)(8676002)(508600001)(83380400001)(186003)(36756003)(5660300002)(31686004)(6512007)(2616005)(26005)(6506007)(8936002)(966005)(6486002)(66476007)(66556008)(38100700002)(31696002)(66946007)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0RzKzFoZk1JOWk3VnM4NGpiWm4wUlpwZEQxS1FDalJCYWFLOCtJTExOcWc2?=
 =?utf-8?B?MER3VkM5UjJkOTNtbk12VnVoVjlvQ0dlM2hGanR0YlVFMWI5cSt6Y1B5Zytx?=
 =?utf-8?B?TXZpT0FtRjEyZTE4RFJQdU45YngzY213RlNPMnQyRFIweE5QampGS2pGcWZv?=
 =?utf-8?B?UkFaOFBhWDdHN2M3YTlEcGM3YkJzbG9oTUZOQUg2TzNsbGRoYldlZGhIV0tW?=
 =?utf-8?B?c2ZVUVhVTmZjVlp3Mk45QjEwa2hNZE0wZU5ZRFN0cER6QjVhYUFuUEh3S3ly?=
 =?utf-8?B?YjAwTVEwS3ZSdFpqSko3WnZZaldxbFhxVVVPV0hEUFh1bVNPQk1Qa1JSckNv?=
 =?utf-8?B?WWpUWVhMVjQxZWMwQ3BWVlhYY0x0a3IwbGpTL0pTaDRpRHFsbEd1Z3ZlbzJ5?=
 =?utf-8?B?Y3dFOW5mekF2L1pVWmtIVGtEdTVMZ2NCTjRJc0M0SWowZ1lGbWNqeVRVZXNq?=
 =?utf-8?B?M0tNNTdueXB3UXIxSE9VWGhZM3hINWE4cjFiMzcvZjRHdk9ET3ZlMFprcWdG?=
 =?utf-8?B?RWhQNm8rVTlPZWVkUzcyeHgyQ3QvMzJUYU9GL3MxdTdLSmVEcnhlRUY2VSt0?=
 =?utf-8?B?bVRUQTRyYzhhYVVQM3RCKzg5aTgrZEtoUUV5Zlh4VHpyODgzTHY2aDVPMi9K?=
 =?utf-8?B?R1pGWi82Tmx0UWJrTjhVT05TQVNzQXdHS1Z5YnJaMWJBckVHUnZEVk1aU1c2?=
 =?utf-8?B?a21Ma0x0dFJGektxZGw2cDRkMHNmWlFiNU5NWExwTDhJWE9TWDRlZTFvUTVO?=
 =?utf-8?B?WXVVeFBGbERUZlZ0WmpobjQ2YmZTRkg4d0VwTlEraWxVWTBvWDJjdHM1Vi9x?=
 =?utf-8?B?MUNSRlZHcXdSZUJqZEhQMURGOWk3YlRYQS9DVUR5VFBaaC9TV1AyZThqVFl1?=
 =?utf-8?B?N3BPK0NhY2JnTG9QQU4rTEZ3dUp3M3JibFk2VzNUZ2tWellydnNUa010cUUx?=
 =?utf-8?B?NHRZcFk0dU5TL1hPcDhKbmRNTE1GM0ZJUFRzN0ExK2crNjY4Y01GZDQ1TFhX?=
 =?utf-8?B?WS9UVkNKOHFmWFpGVkkvQVhNNk11a3NHZWYrQVU5bzBNVUdrNEp5V2I1SVZN?=
 =?utf-8?B?ZFhtVHFmRjhaNEpEa0w4dll6ZlZEckFuZGJZQlk2WDkxVVZ0SWM5SnYwQm1V?=
 =?utf-8?B?VDVBREJwMFJhUFovR21YdXB1TFVHUmFTYnFDR1l3dnJMRTlpUXhwVG92bjhU?=
 =?utf-8?B?OWRpZUV4eEtGWXBEbjZpZ3o0RUV0TVpIY3AwWHk3MXdiTWpwdlY1MityNHhN?=
 =?utf-8?B?WWV3R1dxeWhLc0htdVVGOGIzZFpDZElkWDBWTFowQ1Nhd3QyeGFka0lpRXZN?=
 =?utf-8?B?Mk16WEgzMENGU0RWWkpVaUpncTdOSEsrL3lYbCtQcm1ESXp1cjBOMmdjK0dL?=
 =?utf-8?B?N3ZIbXFSSmxJa0xTWGtDR0krL3BwU0pOTzUraVhKSElFRlpKbWQ1Mzhna1hZ?=
 =?utf-8?B?ZFlmZnMzdjZob3dSaVpVbWxoOVdKOUN5bjlodTd1cEJFcU90K1BkVmYxMUR4?=
 =?utf-8?B?L3NKV250SU1yRk1nbnlBWnFwcUR6eXFCcmVhSlhYdzJWRnV4YnhvQmZoSkZa?=
 =?utf-8?B?ZlBqWGdzQll5c05aalUvaXlBUXRpeFZqRktGemhKYWlGUnNOQTJ3WHZTQStq?=
 =?utf-8?B?SmU4VmUrTTNITk13VW1LYmIvM3VDclpGSUJaYW5oY1YyNDY0eG82NExYNHUx?=
 =?utf-8?B?Rm1VTHRQODQwWUk2dU9XTHJZUDZ5b3pJQnZZa3VGTXo4Zy9BTkYvUjY2UlNa?=
 =?utf-8?B?QVEzcFNJQ0Z1ZnU3TGROMnZtbHBkUDIxUnZIaW5DZGkyMEN6RGJSQlBVMWxK?=
 =?utf-8?B?UEYzekIvQTFUeXVFMmZVN1Fhd2pjejZlZnNsN29EVVdOTWszcCtrYUlTLys4?=
 =?utf-8?B?SjNpUWhFZHN1UHBOVll2c1JFR0tYbkpJdHJXWlJLVkRMNTFub0l4Q3FQVmJ4?=
 =?utf-8?B?S0hBU1dPRDBXTnFnbHpTRGQzRmhQd2M4aTg3RDYxUVpSSk50SWlVS1ZqNndI?=
 =?utf-8?B?cUVpdHQ5MUhCQm04UEVoajhnR1hVZm11RU9ZR0JwZ2NHYVE2bzRENzJaZ1ZS?=
 =?utf-8?B?bEFiY0pIT2kyNU5LZHh5ZlhaaHdPcy83QUMyMWZodEFxSThCMlRuZGxLZDZG?=
 =?utf-8?B?eG5RbmQ1Qk82Y0FzS2EyblhGL0h4eVpaRHQ1NUZ2U2FSOG1TMTJtWHBGVTNi?=
 =?utf-8?B?dmtVamNSRXordUpSV0d4a3ExOFBmTDFmRXBVa0RtY3N5NjNqRWw3djdOaHJO?=
 =?utf-8?B?NC96b2RKRXJVRGdLM3c1NDlKb1c3MXhNZmVta1ZwZHdZU2RwSG44R0o4YW95?=
 =?utf-8?B?WU9SUnNNZjZGVTl2VHFKTW4rNkFFcUkxTkpPWm92TFNRc05XQ0xKZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2086382-fae6-42e2-3370-08da3fcb1822
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 10:24:34.4339 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VlMqS4MTD/BpH7utuMqpu4yCRWYMOLtPtW9wzuhNuDB2OKVTcFH2fOi6N9Epb5BoJvX+GFdSPyhaOKZs4ufsCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1346
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Individualize fences before
 adding to dma_resv obj
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
Cc: thomas.hellstrom@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/27/2022 11:55 AM, Matthew Auld wrote:
> On 27/05/2022 10:46, Das, Nirmoy wrote:
>>
>> On 5/26/2022 11:27 AM, Matthew Auld wrote:
>>> On 25/05/2022 10:59, Nirmoy Das wrote:
>>>> _i915_vma_move_to_active() can receive > 1 fences for
>>>> multiple batch buffers submission. Because dma_resv_add_fence()
>>>> can only accept one fence at a time, change _i915_vma_move_to_active()
>>>> to be aware of multiple fences so that it can add individual
>>>> fences to the dma resv object.
>>>>
>>>> v6: fix multi-line comment.
>>>> v5: remove double fence reservation for batch VMAs.
>>>> v4: Reserve fences for composite_fence on multi-batch contexts and
>>>>      also reserve fence slots to composite_fence for each VMAs.
>>>> v3: dma_resv_reserve_fences is not cumulative so pass num_fences.
>>>> v2: make sure to reserve enough fence slots before adding.
>>>>
>>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>>
>>> Do we need Fixes: ?
>>
>>
>> We can add:
>>
>> Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")
>
> Ok, so needs:
>
> Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")
> Cc: <stable@vger.kernel.org> # v5.16+
>
> Should I go ahead and push this to gt-next?


The patch will not get applied cleanly on 5.16 and 5.17. How do we 
handle that generally ?


Thanks,

Nirmoy

>
>>
>>
>> Regards,
>>
>> Nirmoy
>>
>>
>>>
>>>> ---
>>>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
>>>>   drivers/gpu/drm/i915/i915_vma.c               | 48 
>>>> +++++++++++--------
>>>>   2 files changed, 30 insertions(+), 21 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c 
>>>> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>> index b279588c0672..8880d38d36b6 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>> @@ -1010,7 +1010,8 @@ static int eb_validate_vmas(struct 
>>>> i915_execbuffer *eb)
>>>>               }
>>>>           }
>>>>   -        err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>>> +        /* Reserve enough slots to accommodate composite fences */
>>>> +        err = dma_resv_reserve_fences(vma->obj->base.resv, 
>>>> eb->num_batches);
>>>>           if (err)
>>>>               return err;
>>>>   diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>>>> b/drivers/gpu/drm/i915/i915_vma.c
>>>> index 4f6db539571a..0bffb70b3c5f 100644
>>>> --- a/drivers/gpu/drm/i915/i915_vma.c
>>>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>>>> @@ -23,6 +23,7 @@
>>>>    */
>>>>     #include <linux/sched/mm.h>
>>>> +#include <linux/dma-fence-array.h>
>>>>   #include <drm/drm_gem.h>
>>>>     #include "display/intel_frontbuffer.h"
>>>> @@ -1823,6 +1824,21 @@ int _i915_vma_move_to_active(struct i915_vma 
>>>> *vma,
>>>>       if (unlikely(err))
>>>>           return err;
>>>>   +    /*
>>>> +     * Reserve fences slot early to prevent an allocation after 
>>>> preparing
>>>> +     * the workload and associating fences with dma_resv.
>>>> +     */
>>>> +    if (fence && !(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>>> +        struct dma_fence *curr;
>>>> +        int idx;
>>>> +
>>>> +        dma_fence_array_for_each(curr, idx, fence)
>>>> +            ;
>>>> +        err = dma_resv_reserve_fences(vma->obj->base.resv, idx);
>>>> +        if (unlikely(err))
>>>> +            return err;
>>>> +    }
>>>> +
>>>>       if (flags & EXEC_OBJECT_WRITE) {
>>>>           struct intel_frontbuffer *front;
>>>>   @@ -1832,31 +1848,23 @@ int _i915_vma_move_to_active(struct 
>>>> i915_vma *vma,
>>>> i915_active_add_request(&front->write, rq);
>>>>               intel_frontbuffer_put(front);
>>>>           }
>>>> +    }
>>>>   -        if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>>> -            err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>>> -            if (unlikely(err))
>>>> -                return err;
>>>> -        }
>>>> +    if (fence) {
>>>> +        struct dma_fence *curr;
>>>> +        enum dma_resv_usage usage;
>>>> +        int idx;
>>>>   -        if (fence) {
>>>> -            dma_resv_add_fence(vma->obj->base.resv, fence,
>>>> -                       DMA_RESV_USAGE_WRITE);
>>>> +        obj->read_domains = 0;
>>>> +        if (flags & EXEC_OBJECT_WRITE) {
>>>> +            usage = DMA_RESV_USAGE_WRITE;
>>>>               obj->write_domain = I915_GEM_DOMAIN_RENDER;
>>>> -            obj->read_domains = 0;
>>>> -        }
>>>> -    } else {
>>>> -        if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>>> -            err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>>> -            if (unlikely(err))
>>>> -                return err;
>>>> +        } else {
>>>> +            usage = DMA_RESV_USAGE_READ;
>>>>           }
>>>>   -        if (fence) {
>>>> -            dma_resv_add_fence(vma->obj->base.resv, fence,
>>>> -                       DMA_RESV_USAGE_READ);
>>>> -            obj->write_domain = 0;
>>>> -        }
>>>> +        dma_fence_array_for_each(curr, idx, fence)
>>>> +            dma_resv_add_fence(vma->obj->base.resv, curr, usage);
>>>>       }
>>>>         if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)
