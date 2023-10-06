Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD497BB4FA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 12:20:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E3210E06B;
	Fri,  6 Oct 2023 10:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC34C10E06B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 10:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696587631; x=1728123631;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wAYM+woMjAQbKX5iwL9pxYlbRL0jkjUXJHLmBypDJvI=;
 b=ex/61pi9G6KfSFir0AKGDHQ0jM8n82TYUyUf3aov7sQZhPqgc6XLJEBP
 9rDn323Ce63nlJRXJjz1vR4agfnCXzLR6mtImtZ6Tok7LUCKhG12CP8b4
 BlcVtDVkPiILwOjeOzomVvZIBSQFuvpwnxKewtyceIAfxBid0sEVf4d5f
 o7RM5s702cLSO1gZSxXFitrwBoTHQM3pbQ0JByJdRnWi1UWUSVM2TJZeY
 XsRmcpYJKmPvZR1qPlLesnxZrjdgtkjui1uIT3WRl1tdSwrpx8n+O90Cd
 MGqJXZo3lOjhUVKMDXdt+BF2TpGe+HVv4A7FpjXKBD23n8j6AOhulXE5N Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="381006194"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="381006194"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 03:20:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="875896270"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="875896270"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 03:20:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 03:20:20 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 03:20:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 03:20:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 03:20:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3VQcDYNW9YbfiE+0wgy9VVNQV34Y0RjsdTwFpBw1AJKY6uHnE8U3ljtZ+xcFmpG5HeSxirWzYhXPwJGBTQcEpkD0npRg7BaXESqfR49JmOZaWFjheFqwxbIkq64f+iD5pnbHwLixz/zp2Jb6mONtDS7/O9GWhDP5ZMa+wS2hWIFn8nxQjoe0dffiLu4akjhdigP37lvBpQnrbm5TBsi48qji/UdAMDSDq8SuzXqbM/iEVuj+6CVhsBQJxDyOfqV/od9mYLtl73nJ7wo6JnSonBO14YtLanmclEnV1Yi0aQt7nDRAZnaNBCsn6RUp2d2xJ8qxl7Q7Kpiu3Dk/iZG4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mzVciIIZuie6tSKt24fvXjyDqgw7CCreSqFX/mifxWo=;
 b=X9y8Cu6FsfV8BuRFEuO60mSb2e+2dRC8e9gWzyu+Tff6XBg2oWOHDNcN2tSflWUuHgv5SX3UhyreP0PJS0kKm06UgPn8lFyzko7wSHfSB6VVcJvbvB7P7mitnAJXTh6T/43KqbNQiHkC9G/9tMbnwyZuI8j43X0ZJUlPUQGdBOD3+uQBG7op2oSTYWOtifgn4zpTRwEkOSnTeUOcMVTd0/iBP5BVBaEbCqWCYdgGaM1GvzmG2q+K6AUrQHwrGIDETfDfVICwWSUMxuq0/XWuAfK2FSzra6a2QOXZlDSHA4m+6RM+VrqkEZcDL0tH0nm0jeIB+xyC6O7y2xBkFQNHAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by MW4PR11MB7163.namprd11.prod.outlook.com (2603:10b6:303:212::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.38; Fri, 6 Oct
 2023 10:20:12 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6838.027; Fri, 6 Oct 2023
 10:20:12 +0000
Message-ID: <b95d8be7-c546-1b1c-3975-a4ef6257a28d@intel.com>
Date: Fri, 6 Oct 2023 12:20:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-4-jonathan.cavitt@intel.com>
 <4f9ddf13-d779-e2ff-2baa-73d5d35c5009@linux.intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <4f9ddf13-d779-e2ff-2baa-73d5d35c5009@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0100.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cb::14) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|MW4PR11MB7163:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e8eb952-96e8-424c-907c-08dbc655d301
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +G3ZLUjLRr1oGBbbf3sPPOsn+x8B2b52XmKk67CCpfj9B835ROgvrsikdPkWxKOSmP24iCfHjjipjcuJanO+PpHyoeCYRWgQ5noHP+J7Yh5xwbJOhV1DpilCgBGOib9rL8hu3NlVEkxAZC2LG8hxXuNNzCc4DO9SP+4t6N+V8+Iw+hDp1/G+Y9M2mw59J7aE3VQxibmM1Y52DAPQtYqmStvnk13qaZm+3Jgh/Ef/0P06s54Kf4ufoSenAmB/KWehjVlus1x2S7Qmi97AcXRDZZCV4tB7OSoAoOSkIuPuuQbu3XqZlaNcZO9IP3OoHJM/AmMSRY0lpASPysZvbFBrHmhkzhmAK11ninIfGlxys/vRYKx4KjXHh4AmYCN0DC3HTAZnpqG9zHm5gT3lOsG9r/UKqDwrZR9Lw33UJMnnnCVUQDGXKpgS4mpCksk1FogZrnZYkrcKQoT416qpTo0HR52AtKbSuNi7n645ATxR2DuqEpZThHqvJykk+wZsxGYq7uZj30cpHf3skzFvqE/Sqmb25IFy1WJ6zo+Rry4POgX4e9W6J1WNDpwT9e/xYDDP41iWxjCpEr7sUjmk63j8tqRMdo8MThKn2ZkZL8ODnIBz39wlTpI/y+dk5GZmUQA1RnTQ/0/u6yW2sKXsFqYpgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(376002)(346002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(31686004)(6512007)(2616005)(82960400001)(36756003)(6486002)(478600001)(66476007)(66556008)(66946007)(110136005)(41300700001)(6666004)(26005)(83380400001)(316002)(6506007)(53546011)(38100700002)(2906002)(30864003)(44832011)(31696002)(86362001)(8936002)(8676002)(4326008)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWcxQzl3YjZEM3JyTmpMenZQQmRGYTlRR1VBVFcreWpYbDdKSVlEMzNMVGc1?=
 =?utf-8?B?WEt3eDBuU210dmNZbGZDSW5pTm05L1NxMGdqZG14Yzh0eXpJVVRIS255UkFL?=
 =?utf-8?B?N2xKMWZVZnl5NlhuS3FlSGUzYUVwWkJEZ1E3Z3B3UUc0RFg4S2FQRjJYbElp?=
 =?utf-8?B?VHlBRWJFMmlXaTAwQlgvaWpxTnpIdmhZYWdCTzJRakhXdU1tUlhibHJUblcv?=
 =?utf-8?B?Q3ZRU0c4dFRYNjUveVFRSmFNVFFET2tEWmcranExSDAza29haFFHY2ZSeHN4?=
 =?utf-8?B?THlNRDhURFJWR1dYRUlJYVVtTVlWdHFJajNKMjRNMDNZQ0Q3VXo4TVFUUTJr?=
 =?utf-8?B?RXRRVThKU1Z2U0dSZCtNTjhGcnZtVEdqRHdSZmJFbUllQnBKaXltaGt6S3ll?=
 =?utf-8?B?ZUtjb3AveUtvTEJaTTNDU2FZNzhkOUJ3aWR5bGp0OXE4L25DWnRhU3VIdWlY?=
 =?utf-8?B?dWlhYUNPRW1LQ21PbUYrZ1ZqQUZCeWZSTmZSbEZMT1h2M1BFOCtiSGFLL25E?=
 =?utf-8?B?ell1Ni96aVYxYUJBQWZlT3FtdkgwVlo4UnZKRUNCeEhJUjFJcVJRQ2NiRTN5?=
 =?utf-8?B?YzNnNkJncXRhUC9iWTgyV0xOS0dKNCs4R3R5ZHNkT1VmODhhYUNaekNsdDY2?=
 =?utf-8?B?djJyTWo1QnA3dlR4TE9jS3JnbU5KN05tUndiTHhqZ1RPS3FadVAzQm10Yjdx?=
 =?utf-8?B?NjVZb2lFb1BOL0JjNk1qOWVzTk5WNlpOYS9PVW12eWdkZ09ZbnFNOTh2YXRP?=
 =?utf-8?B?emF5cGgzeTNvSHJBZVh2QTRITnN1ZzJQSGord3BueWJJMjJrR3g4R2hZWVlD?=
 =?utf-8?B?WmVZdnVzRGoyWEt1eUw2T20zUG03MElpUlYwaVpsQUI4bnJXYm43ZXhMajZ0?=
 =?utf-8?B?YkM2Z1BCOFZvTWZpZDBKeG5qMUxQaHFtMm5ldVVGSnNUUHJjeTRDK2xsZHlS?=
 =?utf-8?B?NEk4TWRpYzRnT0VyS1pUdFJEUWE3Ukdqb2t3bGp2VmEzWEJmVjhsVHZNQWRT?=
 =?utf-8?B?OER0dC9HbzdWNU9ac2VDV1hWR01IZlpKenFaQTRqVXgwQVBRdmNJTVM5bDBK?=
 =?utf-8?B?VVJrUXJnaTNzOVVlNzNiUTdILzQzRW10dzV3eTBQZ0Q4V0tUUVBRWkpFMXQr?=
 =?utf-8?B?cHZlRW1lb0dXSlo4UlpCL0UrcVp4SlUzVVVBb2NWS0tOa3MzaGRpVWN1L0Vh?=
 =?utf-8?B?L1U2QlRkemRxOU1OeVZuRjFxVjhPdk5UczZmMGRKSUw0WENPcSt0ODBUWXlo?=
 =?utf-8?B?ekM4eTJmS2pyMkxEdEEyRVdrNklSN1Z6Rm91T21rdlBCYy8xZ2VrV3d3QTlk?=
 =?utf-8?B?Q2VHZnZQaVhjdTErUU15OUpMaWI0RzkzOWxmeUpGK09iclR4eTJPZWcvanFk?=
 =?utf-8?B?c05lOHBYOUNtaUhpd1hldFFUTUc3Nk1BMklUUW5LQUVWSXY4ZkkzcXo4R2Ji?=
 =?utf-8?B?b1BSRTN4VlpKK0JjQkVZVUFpc29rSUQzdElIVlY5V0lPUGdPS1Zla0NGa0Zt?=
 =?utf-8?B?KzQ2KzZPem5lc0RSUDJYdzhkbGozOFBOMEc0UHZneDd0cDZTS2JVS1NCRHdi?=
 =?utf-8?B?cGtmMnZnWUpyUmM5OWdzZXVtc1Azb0RQKzRGU0lQVjl3Wk8yUENhVUgwQmtL?=
 =?utf-8?B?YUJ5aDdDVVVkbHFhckVZbE1ob3dMYjlLTlhLeEVsZFYwQVA0RnJwOVVpZDUy?=
 =?utf-8?B?UDJJMG8wWTBPbTR5V05yYXJYT3E1VlBwOGVrUWg4T2ZZNFl4NU1JYWprUHVp?=
 =?utf-8?B?SDdNY3BNaS9zUmdEdHp4V0tuQmEraEVqcXVDU2pkZk16bzF0RFp0b3VhcU1W?=
 =?utf-8?B?S1pReFo5ZnB5RnhCaDJpUGVrOFhwZUhjZEJOZThoMlpMOGErWHZlc1BrUmNX?=
 =?utf-8?B?bjVnTHRlZ0hFQ3RzWjVKWHlpZ1VZbkpMNFB0RDMrTWpTYUh0NzdSTTZqWm1B?=
 =?utf-8?B?L295L2JUQk00c04wZkFtbUFHaTNoN0pFMGVZM0QxZjFpSWhiUjZDd2dtV0tu?=
 =?utf-8?B?NVV2eUVvRVBMOGdwK1NlQXYxbTMzc2wzbDlaTjV5OWVWYkxsTnhBSmNNV1lK?=
 =?utf-8?B?UE1yQTBkL05IMzhqSzZ0SkNaN3ZyWXhIZ095V1VRMDRoMXdjNzF5M1ovTkNv?=
 =?utf-8?Q?0Sy2+t6U0gN+HI7hRMy3ysL2d?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8eb952-96e8-424c-907c-08dbc655d301
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 10:20:11.9940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Bn/tm92DHm7KPhje9+QeVnhsC/gCo9oL9KyBibjgO/yO2eqziOpuU78acmZrfDS6GBu+XY6Xf3ms1fgPe31aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7163
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/5] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/6/2023 12:11 PM, Tvrtko Ursulin wrote:
>
> Hi,
>
>
> Andi asked me to summarize what I think is unaddressed review feedback 
> so far in order to consolidate and enable hopefully things to move 
> forward. So I will try to re-iterate the comments and questions below.
>
> But also note that there is a bunch of new valid comments from John 
> against v7 which I will not repeat.
>
> On 05/10/2023 20:35, Jonathan Cavitt wrote:
>> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>>
>> The GuC firmware had defined the interface for Translation Look-Aside
>> Buffer (TLB) invalidation.  We should use this interface when
>> invalidating the engine and GuC TLBs.
>> Add additional functionality to intel_gt_invalidate_tlb, invalidating
>> the GuC TLBs and falling back to GT invalidation when the GuC is
>> disabled.
>> The invalidation is done by sending a request directly to the GuC
>> tlb_lookup that invalidates the table.  The invalidation is submitted as
>> a wait request and is performed in the CT event handler.  This means we
>> cannot perform this TLB invalidation path if the CT is not enabled.
>> If the request isn't fulfilled in two seconds, this would constitute
>> an error in the invalidation as that would constitute either a lost
>> request or a severe GuC overload.
>> The tlb_lookup table is allocated as an xarray because the set of
>> pending TLB invalidations may have no upper bound.  The consequence of
>> this is that all actions interfacing with this table need to use the
>> xarray functions, such as xa_alloc_cyclic_irq for array insertion.
>>
>> With this new invalidation routine, we can perform GuC-based GGTT
>> invalidations.  GuC-based GGTT invalidation is incompatible with
>> MMIO invalidation so we should not perform MMIO invalidation when
>> GuC-based GGTT invalidation is expected.
>
> On the commit message, I was asking that it describes the 
> justification for the complexity patch adds with the wait queue 
> management. It is non-trivial code, open-coded-almost-copy-of 
> wait_token(), etc, so it needs explanation.
>
> Today we have all threads serialize their invalidation under 
> gt->tlb.invalidate_lock. With this patch that remains, but it allows a 
> little bit of de-serialization in waiting. I suspect this is because 
> with mmio i915 has direct access to invalidation, where with GuC the 
> requests are competing for latency with other CT requests too (not 
> invalidations).
>
> Simpler patch could be doing the same as the GFP_ATOMIC fallback path 
> in guc_send_invalidate_tlb - ie. serialize it all against one CT 
> invalidation "slot". Are the gains of allowing multiple wait slots 
> significant enough to warrant the complexity etc needs to be 
> documented and the above problem space explained in the commit message.
>
>> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
>> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 ++-
>>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  14 +-
>>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 211 +++++++++++++++++-
>>   7 files changed, 307 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 4d7d88b92632b..18f23f27f1572 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct 
>> i915_ggtt *ggtt)
>>       intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, 
>> GFX_FLSH_CNTL_EN);
>>   }
>>   +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
>> +{
>> +    struct intel_uncore *uncore = gt->uncore;
>> +    intel_wakeref_t wakeref;
>> +
>> +    with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
>> +        struct intel_guc *guc = &gt->uc.guc;
>> +
>> +        intel_guc_invalidate_tlb(guc);
>> +    }
>> +}
>> +
>>   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>   {
>>       struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    struct intel_gt *gt;
>>   -    gen8_ggtt_invalidate(ggtt);
>> -
>> -    if (GRAPHICS_VER(i915) >= 12) {
>> -        struct intel_gt *gt;
>> +    if (!HAS_GUC_TLB_INVALIDATION(i915))
>> +        gen8_ggtt_invalidate(ggtt);
>>   -        list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
>> +    list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
>> +        if (HAS_GUC_TLB_INVALIDATION(i915) &&
>> +            intel_guc_is_ready(&gt->uc.guc)) {
>> +            guc_ggtt_ct_invalidate(gt);
>> +        } else if (GRAPHICS_VER(i915) >= 12) {
>>               intel_uncore_write_fw(gt->uncore,
>>                             GEN12_GUC_TLB_INV_CR,
>>                             GEN12_GUC_TLB_INV_CR_INVALIDATE);
>> -    } else {
>> -        intel_uncore_write_fw(ggtt->vm.gt->uncore,
>> -                      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> +        } else {
>> +            intel_uncore_write_fw(gt->uncore,
>> +                          GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> +        }
>>       }
>>   }
>>   @@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt 
>> *ggtt)
>>           ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>>       }
>>   -    if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
>> +    if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>>           ggtt->invalidate = guc_ggtt_invalidate;
>>       else
>>           ggtt->invalidate = gen8_ggtt_invalidate;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c 
>> b/drivers/gpu/drm/i915/gt/intel_tlb.c
>> index 139608c30d978..a84563c178bc6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
>> @@ -12,6 +12,7 @@
>>   #include "intel_gt_print.h"
>>   #include "intel_gt_regs.h"
>>   #include "intel_tlb.h"
>> +#include "uc/intel_guc.h"
>>     /*
>>    * HW architecture suggest typical invalidation time at 40us,
>> @@ -131,11 +132,22 @@ void intel_gt_invalidate_tlb_full(struct 
>> intel_gt *gt, u32 seqno)
>>           return;
>>         with_intel_gt_pm_if_awake(gt, wakeref) {
>> +        struct intel_guc *guc = &gt->uc.guc;
>> +
>>           mutex_lock(&gt->tlb.invalidate_lock);
>>           if (tlb_seqno_passed(gt, seqno))
>>               goto unlock;
>>   -        mmio_invalidate_full(gt);
>> +        if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
>> +            /*
>> +             * Only perform GuC TLB invalidation if GuC is ready.
>> +             * Otherwise, skip invalidation altogeter.
>> +             */
>> +            if (intel_guc_is_ready(guc))
>> +                intel_guc_invalidate_tlb_full(guc);
>> +        } else {
>> +            mmio_invalidate_full(gt);
>> +        }
>>             write_seqcount_invalidate(&gt->tlb.seqno);
>>   unlock:
>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h 
>> b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> index f359bef046e0b..9dff8012d5e76 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> @@ -138,6 +138,8 @@ enum intel_guc_action {
>>       INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>>       INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>>       INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
>> +    INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
>> +    INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>>       INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>>       INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>>       INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
>> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>>     #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK 0x000000FF
>>   +#define INTEL_GUC_TLB_INVAL_TYPE_MASK    REG_GENMASK(7, 0)
>> +#define INTEL_GUC_TLB_INVAL_MODE_MASK    REG_GENMASK(11, 8)
>> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
>> +
>> +enum intel_guc_tlb_invalidation_type {
>> +    INTEL_GUC_TLB_INVAL_FULL = 0x0,
>> +    INTEL_GUC_TLB_INVAL_GUC = 0x3,
>
> New question - are these names coming from the GuC iface? I find it 
> confusing that full does not include GuC but maybe it is just me. So 
> maybe full should be called GT or something? Although then again it 
> wouldn't be clear GT does not include the GuC..  bummer. GPU? Dunno. 
> Minor confusion I guess so can keep as is.

I agree this is bit confusing name. We are using INTEL_GUC_TLB_INVAL_GUC 
to invalidate ggtt, how about INTEL_GUC_TLB_INVAL_GGTT ?


Regards,

Nirmoy

>
>> +};
>> +
>> +/*
>> + * 0: Heavy mode of Invalidation:
>> + * The pipeline of the engine(s) for which the invalidation is 
>> targeted to is
>> + * blocked, and all the in-flight transactions are guaranteed to be 
>> Globally
>> + * Observed before completing the TLB invalidation
>> + * 1: Lite mode of Invalidation:
>> + * TLBs of the targeted engine(s) are immediately invalidated.
>> + * In-flight transactions are NOT guaranteed to be Globally Observed 
>> before
>> + * completing TLB invalidation.
>> + * Light Invalidation Mode is to be used only when
>> + * it can be guaranteed (by SW) that the address translations remain 
>> invariant
>> + * for the in-flight transactions across the TLB invalidation. In 
>> other words,
>> + * this mode can be used when the TLB invalidation is intended to 
>> clear out the
>> + * stale cached translations that are no longer in use. Light 
>> Invalidation Mode
>> + * is much faster than the Heavy Invalidation Mode, as it does not 
>> wait for the
>> + * in-flight transactions to be GOd.
>> + */
>> +enum intel_guc_tlb_inval_mode {
>> +    INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
>> +    INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
>> +};
>> +
>>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index 6c392bad29c19..d7203ba88b0c0 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -79,6 +79,18 @@ struct intel_guc {
>>        */
>>       atomic_t outstanding_submission_g2h;
>>   +    /** @tlb_lookup: xarray to store all pending TLB invalidation 
>> requests */
>> +    struct xarray tlb_lookup;
>> +
>> +    /**
>> +     * @serial_slot: id to the initial waiter created in tlb_lookup,
>> +     * which is used only when failed to allocate new waiter.
>> +     */
>> +    u32 serial_slot;
>> +
>> +    /** @next_seqno: the next id (sequence no.) to allocate. */
>> +    u32 next_seqno;
>> +
>>       /** @interrupts: pointers to GuC interrupt-managing functions. */
>>       struct {
>>           bool enabled;
>> @@ -296,6 +308,11 @@ struct intel_guc {
>>   #define MAKE_GUC_VER_STRUCT(ver)    MAKE_GUC_VER((ver).major, 
>> (ver).minor, (ver).patch)
>>   #define GUC_SUBMIT_VER(guc) 
>> MAKE_GUC_VER_STRUCT((guc)->submission_version)
>>   +struct intel_guc_tlb_wait {
>> +    struct wait_queue_head wq;
>> +    bool busy;
>> +};
>> +
>>   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>>   {
>>       return container_of(log, struct intel_guc, log);
>> @@ -418,6 +435,11 @@ static inline bool intel_guc_is_supported(struct 
>> intel_guc *guc)
>>       return intel_uc_fw_is_supported(&guc->fw);
>>   }
>>   +int intel_guc_invalidate_tlb_full(struct intel_guc *guc);
>> +int intel_guc_invalidate_tlb(struct intel_guc *guc);
>> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, const u32 
>> *hxg,
>> +                    u32 size);
>> +
>>   static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>>   {
>>       return intel_uc_fw_is_enabled(&guc->fw);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index 6e22af31513a5..37b76f9650d04 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -1115,6 +1115,9 @@ static int ct_process_request(struct 
>> intel_guc_ct *ct, struct ct_incoming_msg *r
>>       case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>>           ret = intel_guc_crash_process_msg(guc, action);
>>           break;
>> +    case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>> +        ret = intel_guc_tlb_invalidation_done(ct_to_guc(ct), hxg, 
>> request->size);
>> +        break;
>>       default:
>>           ret = -EOPNOTSUPP;
>>           break;
>> @@ -1186,6 +1189,7 @@ static int ct_handle_event(struct intel_guc_ct 
>> *ct, struct ct_incoming_msg *requ
>>       switch (action) {
>>       case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>>       case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
>> +    case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>>           g2h_release_space(ct, request->size);
>>       }
>>   diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> index b4d56eccfb1f0..a7c9874e122a3 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> @@ -22,6 +22,7 @@
>>   /* Payload length only i.e. don't include G2H header length */
>>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET    2
>>   #define G2H_LEN_DW_DEREGISTER_CONTEXT        1
>> +#define G2H_LEN_DW_INVALIDATE_TLB        1
>>     #define GUC_CONTEXT_DISABLE        0
>>   #define GUC_CONTEXT_ENABLE        1
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 2cce5ec1ff00d..7b484d1573f16 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct 
>> intel_context *ce, intel_engine_mask_t st
>>     void intel_guc_submission_reset(struct intel_guc *guc, 
>> intel_engine_mask_t stalled)
>>   {
>> +    struct intel_guc_tlb_wait *wait;
>>       struct intel_context *ce;
>>       unsigned long index;
>>       unsigned long flags;
>> +    unsigned long i;
>>         if (unlikely(!guc_submission_initialized(guc))) {
>>           /* Reset called during driver load? GuC not yet 
>> initialised! */
>> @@ -1826,6 +1828,14 @@ void intel_guc_submission_reset(struct 
>> intel_guc *guc, intel_engine_mask_t stall
>>         /* GuC is blown away, drop all references to contexts */
>>       xa_destroy(&guc->context_lookup);
>> +
>> +    /*
>> +     * The full GT reset will have cleared the TLB caches and 
>> flushed the
>> +     * G2H message queue; we can release all the blocked waiters.
>> +     */
>> +    xa_for_each(&guc->tlb_lookup, i, wait) {
>> +        wake_up(&wait->wq);
>> +    }
>
> Here I asked if this is safe to do unlocked versus concurrent 
> xa_alloc/xa_erase from the invalidations thread maybe racing with GPU 
> reset.
>
>>   }
>>     static void guc_cancel_context_requests(struct intel_context *ce)
>> @@ -1948,6 +1958,49 @@ void intel_guc_submission_reset_finish(struct 
>> intel_guc *guc)
>>   static void destroyed_worker_func(struct work_struct *w);
>>   static void reset_fail_worker_func(struct work_struct *w);
>>   +static int init_tlb_lookup(struct intel_guc *guc)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +    int err;
>> +
>> +    if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
>> +        return 0;
>> +
>> +    xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
>> +
>> +    wait = kzalloc(sizeof(*wait), GFP_KERNEL);
>> +    if (!wait)
>> +        return -ENOMEM;
>> +
>> +    init_waitqueue_head(&wait->wq);
>> +
>> +    /* Preallocate a shared id for use under memory pressure. */
>> +    err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, 
>> wait,
>> +                  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
>> +    if (err == -ENOMEM) {
>> +        kfree(wait);
>> +        return err;
>> +    }
>> +
>> +    return 0;
>> +}
>> +
>> +static void fini_tlb_lookup(struct intel_guc *guc)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +
>> +    if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
>> +        return;
>> +
>> +    wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
>> +    if (wait) {
>> +        GEM_BUG_ON(wait->busy);
>> +        kfree(wait);
>> +    }
>> +
>> +    xa_destroy(&guc->tlb_lookup);
>> +}
>> +
>>   /*
>>    * Set up the memory resources to be shared with the GuC (via the 
>> GGTT)
>>    * at firmware loading time.
>> @@ -1966,11 +2019,15 @@ int intel_guc_submission_init(struct 
>> intel_guc *guc)
>>               return ret;
>>       }
>>   +    ret = init_tlb_lookup(guc);
>> +    if (ret)
>> +        goto destroy_pool;
>> +
>>       guc->submission_state.guc_ids_bitmap =
>>           bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>>       if (!guc->submission_state.guc_ids_bitmap) {
>>           ret = -ENOMEM;
>> -        goto destroy_pool;
>> +        goto destroy_tlb;
>>       }
>>         guc->timestamp.ping_delay = (POLL_TIME_CLKS / 
>> gt->clock_frequency + 1) * HZ;
>> @@ -1979,9 +2036,10 @@ int intel_guc_submission_init(struct intel_guc 
>> *guc)
>>         return 0;
>>   +destroy_tlb:
>> +    fini_tlb_lookup(guc);
>>   destroy_pool:
>>       guc_lrc_desc_pool_destroy_v69(guc);
>> -
>>       return ret;
>>   }
>>   @@ -1994,6 +2052,7 @@ void intel_guc_submission_fini(struct 
>> intel_guc *guc)
>>       guc_lrc_desc_pool_destroy_v69(guc);
>>       i915_sched_engine_put(guc->sched_engine);
>>       bitmap_free(guc->submission_state.guc_ids_bitmap);
>> +    fini_tlb_lookup(guc);
>>       guc->submission_initialized = false;
>>   }
>>   @@ -4624,6 +4683,154 @@ g2h_context_lookup(struct intel_guc *guc, 
>> u32 ctx_id)
>>       return ce;
>>   }
>>   +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, 
>> u32 seqno)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +    unsigned long flags;
>> +
>> +    xa_lock_irqsave(&guc->tlb_lookup, flags);
>> +    wait = xa_load(&guc->tlb_lookup, seqno);
>> +
>> +    /* We received a response after the waiting task did exit with a 
>> timeout */
>> +    if (wait)
>> +        wake_up(&wait->wq);
>> +    else
>> +        drm_dbg(&guc_to_gt(guc)->i915->drm,
>> +            "Stale TLB invalidation response with seqno %d\n", seqno);
>> +
>> +    xa_unlock_irqrestore(&guc->tlb_lookup, flags);
>> +}
>> +
>> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, const u32 
>> *hxg, u32 size)
>> +{
>> +    u32 seqno, hxg_len, len;
>> +
>> +    hxg_len = size - GUC_CTB_MSG_MIN_LEN;
>> +    len = hxg_len - GUC_HXG_MSG_MIN_LEN;
>> +
>> +    /* Check for underflow */
>> +    if (unlikely(len < 1 || len > size))
>> +        return -EPROTO;
>> +
>> +    seqno = hxg[GUC_HXG_MSG_MIN_LEN];
>> +    wait_wake_outstanding_tlb_g2h(guc, seqno);
>> +    return 0;
>> +}
>
> For this we said multiple times it does not need to repeat the 
> hxg_len, len and all that ct_process_request already does if the 
> passed in parameter is appropriately adjusted.
>
>> +
>> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long 
>> timeout)
>> +{
>> +    /*
>> +     * This is equivalent to wait_woken() with the exception that
>> +     * we do not wake up early if the kthread task has been completed.
>> +     * As we are called from page reclaim in any task context,
>> +     * we may be invoked from stopped kthreads, but we *must*
>> +     * complete the wait from the HW .
>> +     *
>> +     * A second problem is that since we are called under reclaim
>> +     * and wait_woken() inspected the thread state, it makes an invalid
>> +     * assumption that all PF_KTHREAD tasks have set_kthread_struct()
>> +     * called upon them, and will trigger a GPF in 
>> is_kthread_should_stop().
>> +     */
>> +    do {
>> +        set_current_state(TASK_UNINTERRUPTIBLE);
>> +        if (wq_entry->flags & WQ_FLAG_WOKEN)
>> +            break;
>> +
>> +        timeout = schedule_timeout(timeout);
>> +    } while (timeout);
>> +    __set_current_state(TASK_RUNNING);
>> +
>> +    /* See wait_woken() and woken_wake_function() */
>> +    smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
>> +
>> +    return timeout;
>> +}
>> +
>> +static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
>
> New comment:
>
> u32 type should be enum intel_guc_tlb_inval_mode.
>
>> +{
>> +    struct intel_guc_tlb_wait _wq, *wq = &_wq;
>> +    DEFINE_WAIT_FUNC(wait, woken_wake_function);
>> +    struct intel_gt *gt = guc_to_gt(guc);
>> +    int err;
>> +    u32 seqno;
>> +    u32 action[] = {
>> +        INTEL_GUC_ACTION_TLB_INVALIDATION,
>> +        0,
>> +        REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
>> +            REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
>> +                       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
>> +            INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
>> +    };
>> +    u32 size = ARRAY_SIZE(action);
>> +
>> +    if (!intel_guc_ct_enabled(&guc->ct))
>> +        return -EINVAL;
>
> Here I asked what is the point of this guard since the callers already 
> have intel_guc_is_ready() checks. If there are concerns about races 
> then just one check at the entry to the function can't be enough, no?
>
>> +
>> +    init_waitqueue_head(&_wq.wq);
>> +
>> +    if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
>> +                xa_limit_32b, &guc->next_seqno,
>> +                GFP_ATOMIC | __GFP_NOWARN) < 0) {
>> +        /* Under severe memory pressure? Serialise TLB allocations */
>> +        xa_lock_irq(&guc->tlb_lookup);
>> +        wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
>> +        wait_event_lock_irq(wq->wq,
>> +                    !READ_ONCE(wq->busy),
>> +                    guc->tlb_lookup.xa_lock);
>> +        /*
>> +         * Update wq->busy under lock to ensure only one waiter can
>> +         * issue the TLB invalidation command using the serial slot 
>> at a
>> +         * time. The condition is set to true before releasing the lock
>> +         * so that other caller continue to wait until woken up again.
>> +         */
>> +        wq->busy = true;
>> +        xa_unlock_irq(&guc->tlb_lookup);
>> +
>> +        seqno = guc->serial_slot;
>> +    }
>> +
>> +    action[1] = seqno;
>> +
>> +    add_wait_queue(&wq->wq, &wait);
>> +
>> +    err = intel_guc_send_busy_loop(guc, action, size, 
>> G2H_LEN_DW_INVALIDATE_TLB, true);
>
> Here I asked if we don't have a non-busy looping CT send helper, given 
> how this function is allowed to sleep would be nicer not to burn the CPU.
>
>> +    if (err)
>> +        goto out;
>> +
>> +    /*
>> +     * GuC has a timeout of 1ms for a TLB invalidation response from 
>> GAM.  On a
>> +     * timeout GuC drops the request and has no mechanism to notify 
>> the host about
>> +     * the timeout.  There is also no mechanism for determining the 
>> number of
>> +     * outstanding requests in the CT buffer.  Ergo, keep a larger 
>> timeout that accounts
>> +     * for this individual timeout and the max number of outstanding 
>> requests that
>> +     * can be queued in CT buffer.
>> +     */
>> +#define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
>
> The updated comment addresses my feedback but I believe John had a 
> better suggestion on top.
>
>> +    if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
>> +        gt_err(gt,
>> +               "TLB invalidation response timed out for seqno %u\n", 
>> seqno);
>> +        err = -ETIME;
>> +    }
>> +out:
>> +    remove_wait_queue(&wq->wq, &wait);
>> +    if (seqno != guc->serial_slot)
>> +        xa_erase_irq(&guc->tlb_lookup, seqno);
>> +
>> +    return err;
>> +}
>> +
>> +/* Full TLB invalidation */
>> +int intel_guc_invalidate_tlb_full(struct intel_guc *guc)
>> +{
>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_FULL);
>> +}
>> +
>> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
>> +int intel_guc_invalidate_tlb(struct intel_guc *guc)
>> +{
>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
>> +}
>> +
>>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>>                         const u32 *msg,
>>                         u32 len)
>
> Regards,
>
> Tvrtko
