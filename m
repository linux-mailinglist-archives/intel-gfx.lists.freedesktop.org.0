Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFCA525C8A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 09:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A389710E888;
	Fri, 13 May 2022 07:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6759610E888
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 07:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652428218; x=1683964218;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3R1CC8v/Scq79Stro8X+xchPnyE6X/9p1yJTD5JbPSs=;
 b=WNf1bzUQXWTgapU3nLqor/RKUFNANDlZbFNQu5HX9k0iC5l2zhwxU1/G
 +bb0+HaeIg67FWwHAhQL9yKz8oL+UTqzmSctugzbC1gv1MuS4CUrkqyom
 YpeBjgfe4Y0s0W/8eOFMIdoDNG8PrVgaSHaJIjXjXx6GohC/koz8IqPe0
 tMGyRD2p8d3rNIrSz7jXNp68Z2u055jsQDuh3blaPdv85EGneA2qpEKn4
 oaWRqMaO0O521hZKmWQCahxsLHORp97+8yS0YJNDSzueNv6KIK2LKxiE6
 rKwOUC8C8ZgJQddbgW7VP3lisVIDPujlXP9XMad3hlaSfujlh6wqmbR4L w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="250775582"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="250775582"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 00:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="624772892"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 13 May 2022 00:50:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 13 May 2022 00:50:17 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 13 May 2022 00:50:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 13 May 2022 00:50:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 13 May 2022 00:50:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lSdyPrBW3FGdbgB5dPiItkHvmPFTNGcUMv/OdsH2h8GC0HBbszDzsJeFp8ytyq6TPywjLEPA6K6OdFdV3gQnZOrLrug15fNeRdmUsseHZlVZ1Y15a6s8DSd/RV/48YSRoaWoq2PmG+kwJOjJCHkZFjO/3K7iV6edluLh7a8Q7iuAPOal1o3F9zdqj5CsBlbJW9ru+giAHP3/+jtU5XvYOJDEUZCWjMokShbRc4ulj0aqTd9NqZAZLdhE13oJ6xxuXf0ciIrAAPlleQBEYwEe8bvee+bHElRBDG40MWxDMnySA/3HdSbJ2CC2dQvK3DVmxFJO9vh5AskDmPgG7T3qaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q2L1wujEqcYXRLnBXyosSG4zpXypejEGHZ6Xs5qmEvs=;
 b=kuni/PdEkbr/AVDACBaf3in8SR7MqCWqgAep74S3soAivH7kCKJ/dMEFjR7y6o84oJpvmJExple5Mgv8j1m3lzGSa+ev2BxPNJwm3fhRFDbNGEwFf5snQRc0zW8rP9Xx8ngXUPC5gAMcjlNrmDeHxYdbIetzQ71jTxrLt3xk+h+4SZiEBs0m8oBh9WQoHIV67K581LabrI6PKXxQ/Ev9fdq+236u5Z9MkYVQ4OAoXwpNuAMcqR38bePUVcEkkQzEC2tFLM3j5RNhLLgybwXgTL87W7nk+KhJNIFToYDEBWaTeJv2kuM7zY8z0ctEVcOE9btWC3JQxbe278L2Mi030A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by PH0PR11MB5904.namprd11.prod.outlook.com (2603:10b6:510:14e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Fri, 13 May
 2022 07:50:15 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5250.014; Fri, 13 May 2022
 07:50:15 +0000
Message-ID: <8f00335c-f1e5-3dee-5a44-048365d53685@intel.com>
Date: Fri, 13 May 2022 09:50:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20220512132600.26369-1-nirmoy.das@intel.com>
 <Yn3w3ngqXarXQ04x@zkempczy-mobl2>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <Yn3w3ngqXarXQ04x@zkempczy-mobl2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS8PR07CA0045.eurprd07.prod.outlook.com
 (2603:10a6:20b:459::16) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c622f2a2-ef2a-4f1f-64e6-08da34b5371d
X-MS-TrafficTypeDiagnostic: PH0PR11MB5904:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <PH0PR11MB590431DE73F5D91166730F4199CA9@PH0PR11MB5904.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lZ7yDsocazODcFgpNdgS2lVrRvhh6dI7Lp93VoCINWhGTTC2tXWJXjkjAB9ZkDyWfAbRPWshuEG7uERWpFTcJPE6VjAfZeEnc62VJHF6SAFkLyc4Cj8YFg9Zx2bztUZVRwk5QJXxvoFuItbYt5N3GE/LtiqXpbalZPHT16UbQzElRJCN9kbL0LnuWKaUgnYJJaLB3aSZccwQo8REsoANk5VhJ2udLGFn9861xCO87WbZjBuzaIqEl/QA4KkQLCHEVpKzCGIzN1EDWC+eND8a5S3arI2DOldtD8Br16lzalV1rMnljCn3ZHSYxQcoQnl7gFIe8ADWqEVAeFhkCgEkNrM4wHXZ7SDloR6aCBPZ1LjVukToc04G5nj0DUhAv2liT3UdlDMUHO+KqHVVcL7NunYQ8FQxzhqBse2vVPeFR0JUAeG+aXk50YX0+PEMHT4vDdG3XJRMRruownJzQdM+9lNABky3gPEq/gNtBqRkx1x0bB7rcc/zgl286UWckidy30Z9tZnR2wQT+qnI3HorshcCORtymzN72+Dt7DiS6l9wjJDkJm91pj6aR89YtfWS6hoFZN75Kf/2OXBVmLQlHsSgvdJwrzq9ny7Vgsq6fNP691rs5dgQRVCoVXCOzp+AJiSCyd6sB/L3xVCzPCAM7pLgYO5T7D8QSljpiBb671V4XgOhd8/cqpLN5E6LCWmCvlLJ0ZYVrHk+YlPMWI0LpcXX1V1cvxjKvwpSPQDOLKU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(6666004)(107886003)(6486002)(316002)(2906002)(53546011)(6512007)(6506007)(508600001)(6636002)(37006003)(186003)(2616005)(36756003)(66574015)(5660300002)(83380400001)(30864003)(8936002)(31686004)(4326008)(8676002)(6862004)(66476007)(66556008)(82960400001)(66946007)(86362001)(26005)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEFrZ2p4TGZadW4vOEhVTXJ1WEx4SEJ3WFhOc09aMm1SemRMUHpHNjZsTXpM?=
 =?utf-8?B?QUZXWEtjY2pDRmhrZ2UvQnZBaktpc201cjVUZEdzeU1CSWExMEtLMjZQYmxS?=
 =?utf-8?B?bFRBWHVEeFB2TkVaRjEyM2NUcjlkSDJUQ2lFTzU1ak5GR0hIVEorT2lyQW9V?=
 =?utf-8?B?WHJCQlIvSU9WdDRnb0duV1drMk0wdnZuSExma1hnMVVKZnE3WWVKY0JqbnBO?=
 =?utf-8?B?YXIxQjRJZDQyTlg3V1lNcEJMOERvM2x6UlovQUkrd0w2QXh3WGdzM3h6ZDU1?=
 =?utf-8?B?bmZJY2sxUGRPZGdMTVd5YXJ1OUdzSy94VDgvNFJYbEFzOXhTZUNTNGRXemFB?=
 =?utf-8?B?U0JxdTNEbmsvc01WL00xaFZaRjdkNjM1RE1JUnVRNXpaMm0wcHRYZzFnZzdW?=
 =?utf-8?B?NlFGbGpVa3JnZlptclBFUnVkTUZ1Mzh4aDUwekQzbmNjZU0wNy9jVDF3WlNU?=
 =?utf-8?B?TlBwUjBHYWpzSFdQN0JWUDhoWXJyeStOME1qdk9LUkVlN2lHVGxBV3hwOG9P?=
 =?utf-8?B?OEFzcHhtZEVBdTh5ZFVIYU9uYXhIYWdCMXVQNEU3alUvWUNOR2VickVmenQw?=
 =?utf-8?B?cXJDZTZkRlpYcjM2M2JEbUhrNGpvZEE2aXdUMytQdWxjYldPNXZLdG9iMTJj?=
 =?utf-8?B?K0s5V2lNNjNmWHpFaXN2TlpjR2Q2YUVSclhwMWYrMXJkdnhBNlQ4L2VtTnlu?=
 =?utf-8?B?TFIrNDdFcUI1YVJ5bm5Ta0YrRmFDQWxrZ0p4bFd4Y0VnaEtqUHFCMG82bEY4?=
 =?utf-8?B?U1hvUytqaExQOHV5Qjlkc1BIQXlIRkt2OGZFeEI5MU1ucXdWbllMYUNWc1Fq?=
 =?utf-8?B?cGlXSGM2U2V2b1lSeDJxdHBzdWZKSnJ5bnZkMzNCcU9FQUN4UDc3ZVBOUkUr?=
 =?utf-8?B?SzhuVVNSWC9aaFg4NVpmYXE0TkMvZG8xQ2VIQ2pDUXNqVUdWbDFYZXFQYzZW?=
 =?utf-8?B?Z0ZZVlh2QmRGYUhzakV0OFFOczAzbXFyZFN2anljSEkyWVBHWVQwNmEvRFVI?=
 =?utf-8?B?SFJxYXZ0WENiTTNPcFlaOHFuNkR4T2laZERsWWp4QTh4NVU4TFRpUVlnVlFY?=
 =?utf-8?B?M0pPZzVWZWV1WmNvUTRLcGhhbjg0WEpOQ2pRNFAwU0tjN0pkSzEzY0loa1kz?=
 =?utf-8?B?OU50SGE3clcyTGZ0Uk8zWnJrL1lxUmhUMlhIM2FLMTJjUkVrajhaZ3RMZm9D?=
 =?utf-8?B?RytTOWlabkJtVE00Vmd1YVlaMUlmTEQwWkJwdWprSnA1N1JFRm4reUFpMWxq?=
 =?utf-8?B?T0tibHVESXlHUzFPSUhpY0NEalVpdTFCYXJrK3o1OFU3ZmFla3RWdW1aNzls?=
 =?utf-8?B?NjBNaG1yeUMrK09aUUd0ZjJqdW8ybXdsREpoMXZBazBUNVJwVkFyYVRFN2JZ?=
 =?utf-8?B?Mi9hMm80QXZrMlNUOU03TXRmU1dHNmdSTTYvZGtoNVFqVitwYjEwRWFKdlZ0?=
 =?utf-8?B?VXE2WXNXVkFaUnJ6OENMRlJBbWoydG15aTlGYzRCRFJ5SUtaRGh6SW1MRU9L?=
 =?utf-8?B?RmkySEEzeGxNNFMyWDZYRjdzT0x2bUttYVV6QVpja1N5RGcrdm1mR1BLbzRz?=
 =?utf-8?B?OGxFTUwzQ090ZlFrMFp6am44MWxTR1RuaGVEN3hxSFFlOTRuc2poNGVQd2No?=
 =?utf-8?B?d3VSWmJqcHozMjdHSGV5Q0NzNmY2MjlDN2Nac0FHcThyRmNrZlF1NWczbTc0?=
 =?utf-8?B?ZTk2Rm4rQzM5QTZhSjl6b0t0Tk0xMmIrbklNWEJTdVdzVGRjZ25NVG5OTHFx?=
 =?utf-8?B?UFlYRjd5dy9xc1BMdHY2blhYYVZKY1dvZ21jZnFRc2FITVFFTDF6NEpYTUxl?=
 =?utf-8?B?SzZ4NHdMSjhsQldUaks2V1lXUjRFTDhKRDI3eGZkNXRwNTh2dFdRWXNDcHg4?=
 =?utf-8?B?SXpQdXgvdXRsZUJYQkVId1p4K0dodjBoMEFaa0x0RlF5d05Ic2Y0bjRrZWJE?=
 =?utf-8?B?WFErc2R4aDlQQ1A3dDFMdGVBalBDWm9DYXl6MTZZakVLRE15UnJlVXpxTnlh?=
 =?utf-8?B?Y1lvN01UYlc1QmhOdUc4TnNCYUg5WDdQbkRjL2cvSmJsQU0za2VGTEpJRVZR?=
 =?utf-8?B?K25WZXVaMExDYmpucVRDL2pNV0dFOXVydEpzcFZPVThrbCtweG5PL0ZzdW1Z?=
 =?utf-8?B?a1Axa21XTHpiVG8yZVU5b3dQKzE1VGljT1lTbyswQ0lVY2xoY2tHVDhGeTBX?=
 =?utf-8?B?aEV0MjBRNkNMMG5jY0dwRXBBbG9BV0pDaXJ0NXdsSE1RdWdLeE1BNmliNFVJ?=
 =?utf-8?B?b1dEdGF5L0Jtb2lLekg0NW9EaVp6WGZjZmNXRWs1dEhzYSt6ZWFSanZEZnZq?=
 =?utf-8?B?dVRpSUwwSDlTNGRFRWQ5TDJxVmhkRTcrazV5eFZyaEIzNjAyK09pdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c622f2a2-ef2a-4f1f-64e6-08da34b5371d
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2022 07:50:14.8806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oP1Zf5RS1T4ahU4S9+VcPIxVwQvPCFILKasyMcIUAvnXdS4O3bWfspzrz1EqG0HmlydZObfya4ESg60SCGplvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5904
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable Tile4 tiling mode
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
Cc: krishnaiah.bommu@intel.com, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/13/2022 7:47 AM, Zbigniew Kempczyński wrote:
> On Thu, May 12, 2022 at 03:26:00PM +0200, Nirmoy Das wrote:
>> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>>
>> Enable Tile4 tiling mode on platform that supports
>> Tile4 but no TileY like DG2.
>>
>> v2: disable X-tile for iGPU in fastblit
>>      fix checkpath --strict warnings
>>
>> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   .../i915/gem/selftests/i915_gem_client_blt.c  | 235 ++++++++++++++----
>>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  22 ++
>>   2 files changed, 212 insertions(+), 45 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> index ddd0772fd828..e16661029c78 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
>> @@ -6,6 +6,7 @@
>>   #include "i915_selftest.h"
>>   
>>   #include "gt/intel_context.h"
>> +#include "gt/intel_engine_regs.h"
>>   #include "gt/intel_engine_user.h"
>>   #include "gt/intel_gpu_commands.h"
>>   #include "gt/intel_gt.h"
>> @@ -18,10 +19,71 @@
>>   #include "huge_gem_object.h"
>>   #include "mock_context.h"
>>   
>> +#define OW_SIZE 16                      /* in bytes */
>> +#define F_SUBTILE_SIZE 64               /* in bytes */
>> +#define F_TILE_WIDTH 128                /* in bytes */
>> +#define F_TILE_HEIGHT 32                /* in pixels */
>> +#define F_SUBTILE_WIDTH  OW_SIZE        /* in bytes */
>> +#define F_SUBTILE_HEIGHT 4              /* in pixels */
>> +
>> +static int linear_x_y_to_ftiled_pos(int x, int y, u32 stride, int bpp)
>> +{
>> +	int tile_base;
>> +	int tile_x, tile_y;
>> +	int swizzle, subtile;
>> +	int pixel_size = bpp / 8;
>> +	int pos;
>> +
>> +	/*
>> +	 * Subtile remapping for F tile. Note that map[a]==b implies map[b]==a
>> +	 * so we can use the same table to tile and until.
>> +	 */
>> +	static const u8 f_subtile_map[] = {
>> +		 0,  1,  2,  3,  8,  9, 10, 11,
>> +		 4,  5,  6,  7, 12, 13, 14, 15,
>> +		16, 17, 18, 19, 24, 25, 26, 27,
>> +		20, 21, 22, 23, 28, 29, 30, 31,
>> +		32, 33, 34, 35, 40, 41, 42, 43,
>> +		36, 37, 38, 39, 44, 45, 46, 47,
>> +		48, 49, 50, 51, 56, 57, 58, 59,
>> +		52, 53, 54, 55, 60, 61, 62, 63
>> +	};
>> +
>> +	x *= pixel_size;
>> +	/*
>> +	 * Where does the 4k tile start (in bytes)?  This is the same for Y and
>> +	 * F so we can use the Y-tile algorithm to get to that point.
>> +	 */
>> +	tile_base =
>> +		y / F_TILE_HEIGHT * stride * F_TILE_HEIGHT +
>> +		x / F_TILE_WIDTH * 4096;
>> +
>> +	/* Find pixel within tile */
>> +	tile_x = x % F_TILE_WIDTH;
>> +	tile_y = y % F_TILE_HEIGHT;
>> +
>> +	/* And figure out the subtile within the 4k tile */
>> +	subtile = tile_y / F_SUBTILE_HEIGHT * 8 + tile_x / F_SUBTILE_WIDTH;
>> +
>> +	/* Swizzle the subtile number according to the bspec diagram */
>> +	swizzle = f_subtile_map[subtile];
>> +
>> +	/* Calculate new position */
>> +	pos = tile_base +
>> +		swizzle * F_SUBTILE_SIZE +
>> +		tile_y % F_SUBTILE_HEIGHT * OW_SIZE +
>> +		tile_x % F_SUBTILE_WIDTH;
>> +
>> +	GEM_BUG_ON(!IS_ALIGNED(pos, pixel_size));
>> +
>> +	return pos / pixel_size * 4;
>> +}
>> +
>>   enum client_tiling {
>>   	CLIENT_TILING_LINEAR,
>>   	CLIENT_TILING_X,
>>   	CLIENT_TILING_Y,
>> +	CLIENT_TILING_4,
>>   	CLIENT_NUM_TILING_TYPES
>>   };
>>   
>> @@ -45,6 +107,21 @@ struct tiled_blits {
>>   	u32 height;
>>   };
>>   
>> +static bool fast_blit_ok(struct blit_buffer *buf)
>> +{
>> +	int gen = GRAPHICS_VER(buf->vma->vm->i915);
>> +
>> +	if (gen < 9)
>> +		return false;
>> +
>> +	if (gen < 12)
>> +		return true;
>> +
>> +	/* filter out platforms with unsupported X-tile support(iGPUs and DG1) in fastblit */
>> +	return !((IS_DG1(buf->vma->vm->i915) || (gen == 12 && !HAS_LMEM(buf->vma->vm->i915))) &&
>> +		buf->tiling == CLIENT_TILING_X);
>> +}
>> +
> What would you say for this:
>
> static bool supports_x_tiling(const struct drm_i915_private *i915)
> {
> 	int gen = GRAPHICS_VER(i915);
>
> 	if (gen < 12)
> 		return true;
>
> 	if (!HAS_LMEM(i915) || IS_DG1(i915))
> 		return false;
>
> 	return true;
> }
>
> static bool fast_blit_ok(const struct blit_buffer *buf)
> {
> 	int gen = GRAPHICS_VER(buf->vma->vm->i915);
>
> 	if (gen < 9)
> 		return false;
>
> 	if (gen < 12)
> 		return true;
>
> 	/* filter out platforms with unsupported X-tile support in fastblit */
> 	if (buf->tiling == CLIENT_TILING_X && !supports_x_tiling(buf->vma->vm->i915))
> 		return false;
>
> 	return true;
> }


Looks better, I  resend with that.


Thanks,

Nirmoy

>
> Rest code looks good to me.
>
> --
> Zbigniew
>
>>   static int prepare_blit(const struct tiled_blits *t,
>>   			struct blit_buffer *dst,
>>   			struct blit_buffer *src,
>> @@ -59,51 +136,103 @@ static int prepare_blit(const struct tiled_blits *t,
>>   	if (IS_ERR(cs))
>>   		return PTR_ERR(cs);
>>   
>> -	*cs++ = MI_LOAD_REGISTER_IMM(1);
>> -	*cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
>> -	cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
>> -	if (src->tiling == CLIENT_TILING_Y)
>> -		cmd |= BCS_SRC_Y;
>> -	if (dst->tiling == CLIENT_TILING_Y)
>> -		cmd |= BCS_DST_Y;
>> -	*cs++ = cmd;
>> -
>> -	cmd = MI_FLUSH_DW;
>> -	if (ver >= 8)
>> -		cmd++;
>> -	*cs++ = cmd;
>> -	*cs++ = 0;
>> -	*cs++ = 0;
>> -	*cs++ = 0;
>> -
>> -	cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
>> -	if (ver >= 8)
>> -		cmd += 2;
>> -
>> -	src_pitch = t->width * 4;
>> -	if (src->tiling) {
>> -		cmd |= XY_SRC_COPY_BLT_SRC_TILED;
>> -		src_pitch /= 4;
>> -	}
>> +	if (fast_blit_ok(dst) && fast_blit_ok(src)) {
>> +		struct intel_gt *gt = t->ce->engine->gt;
>> +		u32 src_tiles = 0, dst_tiles = 0;
>> +		u32 src_4t = 0, dst_4t = 0;
>> +
>> +		/* Need to program BLIT_CCTL if it is not done previously
>> +		 * before using XY_FAST_COPY_BLT
>> +		 */
>> +		*cs++ = MI_LOAD_REGISTER_IMM(1);
>> +		*cs++ = i915_mmio_reg_offset(BLIT_CCTL(t->ce->engine->mmio_base));
>> +		*cs++ = (BLIT_CCTL_SRC_MOCS(gt->mocs.uc_index) |
>> +			 BLIT_CCTL_DST_MOCS(gt->mocs.uc_index));
>> +
>> +		src_pitch = t->width; /* in dwords */
>> +		if (src->tiling == CLIENT_TILING_4) {
>> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
>> +			src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
>> +		} else if (src->tiling == CLIENT_TILING_Y) {
>> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
>> +		} else if (src->tiling == CLIENT_TILING_X) {
>> +			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
>> +		} else {
>> +			src_pitch *= 4; /* in bytes */
>> +		}
>>   
>> -	dst_pitch = t->width * 4;
>> -	if (dst->tiling) {
>> -		cmd |= XY_SRC_COPY_BLT_DST_TILED;
>> -		dst_pitch /= 4;
>> -	}
>> +		dst_pitch = t->width; /* in dwords */
>> +		if (dst->tiling == CLIENT_TILING_4) {
>> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
>> +			dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
>> +		} else if (dst->tiling == CLIENT_TILING_Y) {
>> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
>> +		} else if (dst->tiling == CLIENT_TILING_X) {
>> +			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
>> +		} else {
>> +			dst_pitch *= 4; /* in bytes */
>> +		}
>>   
>> -	*cs++ = cmd;
>> -	*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
>> -	*cs++ = 0;
>> -	*cs++ = t->height << 16 | t->width;
>> -	*cs++ = lower_32_bits(dst->vma->node.start);
>> -	if (use_64b_reloc)
>> +		*cs++ = GEN9_XY_FAST_COPY_BLT_CMD | (10 - 2) |
>> +			src_tiles | dst_tiles;
>> +		*cs++ = src_4t | dst_4t | BLT_DEPTH_32 | dst_pitch;
>> +		*cs++ = 0;
>> +		*cs++ = t->height << 16 | t->width;
>> +		*cs++ = lower_32_bits(dst->vma->node.start);
>>   		*cs++ = upper_32_bits(dst->vma->node.start);
>> -	*cs++ = 0;
>> -	*cs++ = src_pitch;
>> -	*cs++ = lower_32_bits(src->vma->node.start);
>> -	if (use_64b_reloc)
>> +		*cs++ = 0;
>> +		*cs++ = src_pitch;
>> +		*cs++ = lower_32_bits(src->vma->node.start);
>>   		*cs++ = upper_32_bits(src->vma->node.start);
>> +	} else {
>> +		if (ver >= 6) {
>> +			*cs++ = MI_LOAD_REGISTER_IMM(1);
>> +			*cs++ = i915_mmio_reg_offset(BCS_SWCTRL);
>> +			cmd = (BCS_SRC_Y | BCS_DST_Y) << 16;
>> +			if (src->tiling == CLIENT_TILING_Y)
>> +				cmd |= BCS_SRC_Y;
>> +			if (dst->tiling == CLIENT_TILING_Y)
>> +				cmd |= BCS_DST_Y;
>> +			*cs++ = cmd;
>> +
>> +			cmd = MI_FLUSH_DW;
>> +			if (ver >= 8)
>> +				cmd++;
>> +			*cs++ = cmd;
>> +			*cs++ = 0;
>> +			*cs++ = 0;
>> +			*cs++ = 0;
>> +		}
>> +
>> +		cmd = XY_SRC_COPY_BLT_CMD | BLT_WRITE_RGBA | (8 - 2);
>> +		if (ver >= 8)
>> +			cmd += 2;
>> +
>> +		src_pitch = t->width * 4;
>> +		if (src->tiling) {
>> +			cmd |= XY_SRC_COPY_BLT_SRC_TILED;
>> +			src_pitch /= 4;
>> +		}
>> +
>> +		dst_pitch = t->width * 4;
>> +		if (dst->tiling) {
>> +			cmd |= XY_SRC_COPY_BLT_DST_TILED;
>> +			dst_pitch /= 4;
>> +		}
>> +
>> +		*cs++ = cmd;
>> +		*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
>> +		*cs++ = 0;
>> +		*cs++ = t->height << 16 | t->width;
>> +		*cs++ = lower_32_bits(dst->vma->node.start);
>> +		if (use_64b_reloc)
>> +			*cs++ = upper_32_bits(dst->vma->node.start);
>> +		*cs++ = 0;
>> +		*cs++ = src_pitch;
>> +		*cs++ = lower_32_bits(src->vma->node.start);
>> +		if (use_64b_reloc)
>> +			*cs++ = upper_32_bits(src->vma->node.start);
>> +	}
>>   
>>   	*cs++ = MI_BATCH_BUFFER_END;
>>   
>> @@ -181,7 +310,13 @@ static int tiled_blits_create_buffers(struct tiled_blits *t,
>>   
>>   		t->buffers[i].vma = vma;
>>   		t->buffers[i].tiling =
>> -			i915_prandom_u32_max_state(CLIENT_TILING_Y + 1, prng);
>> +			i915_prandom_u32_max_state(CLIENT_NUM_TILING_TYPES, prng);
>> +
>> +		/* Platforms support either TileY or Tile4, not both */
>> +		if (HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_Y)
>> +			t->buffers[i].tiling = CLIENT_TILING_4;
>> +		else if (!HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_4)
>> +			t->buffers[i].tiling = CLIENT_TILING_Y;
>>   	}
>>   
>>   	return 0;
>> @@ -206,7 +341,8 @@ static u64 swizzle_bit(unsigned int bit, u64 offset)
>>   static u64 tiled_offset(const struct intel_gt *gt,
>>   			u64 v,
>>   			unsigned int stride,
>> -			enum client_tiling tiling)
>> +			enum client_tiling tiling,
>> +			int x_pos, int y_pos)
>>   {
>>   	unsigned int swizzle;
>>   	u64 x, y;
>> @@ -216,7 +352,12 @@ static u64 tiled_offset(const struct intel_gt *gt,
>>   
>>   	y = div64_u64_rem(v, stride, &x);
>>   
>> -	if (tiling == CLIENT_TILING_X) {
>> +	if (tiling == CLIENT_TILING_4) {
>> +		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
>> +
>> +		/* no swizzling for f-tiling */
>> +		swizzle = I915_BIT_6_SWIZZLE_NONE;
>> +	} else if (tiling == CLIENT_TILING_X) {
>>   		v = div64_u64_rem(y, 8, &y) * stride * 8;
>>   		v += y * 512;
>>   		v += div64_u64_rem(x, 512, &x) << 12;
>> @@ -259,6 +400,7 @@ static const char *repr_tiling(enum client_tiling tiling)
>>   	case CLIENT_TILING_LINEAR: return "linear";
>>   	case CLIENT_TILING_X: return "X";
>>   	case CLIENT_TILING_Y: return "Y";
>> +	case CLIENT_TILING_4: return "F";
>>   	default: return "unknown";
>>   	}
>>   }
>> @@ -284,7 +426,7 @@ static int verify_buffer(const struct tiled_blits *t,
>>   	} else {
>>   		u64 v = tiled_offset(buf->vma->vm->gt,
>>   				     p * 4, t->width * 4,
>> -				     buf->tiling);
>> +				     buf->tiling, x, y);
>>   
>>   		if (vaddr[v / sizeof(*vaddr)] != buf->start_val + p)
>>   			ret = -EINVAL;
>> @@ -504,6 +646,9 @@ static int tiled_blits_bounce(struct tiled_blits *t, struct rnd_state *prng)
>>   	if (err)
>>   		return err;
>>   
>> +	/* Simulating GTT eviction of the same buffer / layout */
>> +	t->buffers[2].tiling = t->buffers[0].tiling;
>> +
>>   	/* Reposition so that we overlap the old addresses, and slightly off */
>>   	err = tiled_blit(t,
>>   			 &t->buffers[2], t->hole + t->align,
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> index 556bca3be804..246ab8f7bf57 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> @@ -236,6 +236,28 @@
>>   #define   XY_FAST_COLOR_BLT_DW		16
>>   #define   XY_FAST_COLOR_BLT_MOCS_MASK	GENMASK(27, 21)
>>   #define   XY_FAST_COLOR_BLT_MEM_TYPE_SHIFT 31
>> +
>> +#define   XY_FAST_COPY_BLT_D0_SRC_TILING_MASK     REG_GENMASK(21, 20)
>> +#define   XY_FAST_COPY_BLT_D0_DST_TILING_MASK     REG_GENMASK(14, 13)
>> +#define   XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(mode)  \
>> +	REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_SRC_TILING_MASK, mode)
>> +#define   XY_FAST_COPY_BLT_D0_DST_TILE_MODE(mode)  \
>> +	REG_FIELD_PREP(XY_FAST_COPY_BLT_D0_DST_TILING_MASK, mode)
>> +#define     LINEAR				0
>> +#define     TILE_X				0x1
>> +#define     XMAJOR				0x1
>> +#define     YMAJOR				0x2
>> +#define     TILE_64			0x3
>> +#define   XY_FAST_COPY_BLT_D1_SRC_TILE4	REG_BIT(31)
>> +#define   XY_FAST_COPY_BLT_D1_DST_TILE4	REG_BIT(30)
>> +#define BLIT_CCTL_SRC_MOCS_MASK  REG_GENMASK(6, 0)
>> +#define BLIT_CCTL_DST_MOCS_MASK  REG_GENMASK(14, 8)
>> +/* Note:  MOCS value = (index << 1) */
>> +#define BLIT_CCTL_SRC_MOCS(idx) \
>> +	REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, (idx) << 1)
>> +#define BLIT_CCTL_DST_MOCS(idx) \
>> +	REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, (idx) << 1)
>> +
>>   #define SRC_COPY_BLT_CMD		(2 << 29 | 0x43 << 22)
>>   #define GEN9_XY_FAST_COPY_BLT_CMD	(2 << 29 | 0x42 << 22)
>>   #define XY_SRC_COPY_BLT_CMD		(2 << 29 | 0x53 << 22)
>> -- 
>> 2.35.1
>>
