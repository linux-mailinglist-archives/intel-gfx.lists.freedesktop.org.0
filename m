Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0302A617AD6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 11:31:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE56D10E5D2;
	Thu,  3 Nov 2022 10:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C30D10E5D2
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 10:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667471459; x=1699007459;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v/670EOBmeFuToKeo7MFLnl9SCd3hdW7Qkj0kWnIFgQ=;
 b=fyF7TVDu2NY8MJPlOaCzqjjV0t26KSP8rO6j5PeEyaTea0wTc9XZHpH0
 g37ov9y7jXwYB06ZitWXfGvbfl+0lczTipq8BTxhCZdvuOm86oiouV0bH
 CTWjAOJakl8pcZJ72sTVnYp/pH9aKj0Ah5MMFPpovIE6LA+UTJW8KJ8K2
 OM5vRAqSABVIVZzeDz/1n3dje+YgiP6hsCH1XHc+NhEre4+P6dH2JpO6H
 kE4Ttd6hP9d+M+f6DD3wgSlbNKu9Dn5FNb9qtRKkJTt1O2QQFuxVWTkhj
 6Q5wA3tjIpQ9GIhcGzTZ0fGJtxxTfRuu0EzuLX8qBHlQhQz7cZPA8+ZH/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395950833"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="395950833"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="723893374"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="723893374"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Nov 2022 03:30:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:30:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 03:30:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 03:30:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jE7HNbivOsKZYqq+Vfv+elgNS7El6wRKn5lGp5V+Yj5aAlUf5hF4kvdW7wVRnRl8lR7J6OtB5x18gJd6JswBO1XO3P6Gb9K06f88as7iLs79Wc3aGqplGNXgB8pSuRrGGZPOqUdWUQU+i4BRJLPientkEduauA+MqLBPrVcpHqC8A5WRtyGVE0VoLDoimoS3DpHDWttqQYvcRGSsRwx5gm2/yaUD/S91hU4PMpImGaouCPfJGaPEkzxa1PVWwWowqjuEzA8+dG9Ycg3UfH4bP++HrWodBFBuj+ChoAFAdLAlxeeSZoWjP1W7tKpeX+j4ToNSh3iYzNOu5+dGJQZK7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u5r3G499xn5Px9HGTBTZQ109N/D/tdtr+KZDwUZSpyQ=;
 b=hiY3iO1lsXvRkRSOvj9kMORVr3tFQ8BmyeatSOrRICJ8tI/b3LvojPujEhgFBk+zm3pAlTUSE+OnqlF2efeDiRpJKhY9XWlhW38T7socFRhkli/klM/+SLLnDLPR4k+bQqOwWFBRZv8KCeGC1mOUbi80QKzBFoUC753yjDBkmOFU0oVWY+JaDNIKn3r+twkDpiA5PhfSLLcSg5gD71Jpz2g5Otc+ZmQT5sKCJuMyiK6Daxi1G7R2b9koN97eL9UwwZgcitZpXrNbQVNkFmps5e3ndWWrgWMvYBBQoJEVwEE69B6HugzIQj5J9RtjNSoGHHcSD2l3jsIblw9guQXgtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CY5PR11MB6281.namprd11.prod.outlook.com (2603:10b6:930:23::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Thu, 3 Nov
 2022 10:30:54 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::be9d:e93e:4ec:166b]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::be9d:e93e:4ec:166b%7]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:30:54 +0000
Message-ID: <5262267d-0d31-4936-57e4-0cf5ad80a605@intel.com>
Date: Thu, 3 Nov 2022 12:30:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: <jani.nikula@intel.com>
References: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
 <20221102145402.617336-4-gwan-gyeong.mun@intel.com>
In-Reply-To: <20221102145402.617336-4-gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0001.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::6) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|CY5PR11MB6281:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c2a82cc-4fef-486a-2806-08dabd867ca6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QDdOXmBGvI8vboMPHwtqyN7u1VU/wdHyjzS8QHCR1hy43YtsDU2CeHO7goLIIN7iU5qEnSC2PEgjNLPevJgIr9KB7cKO2spED0zrAo6YNGCjywigm+M6iVG7wu4ZJ99e/GBnDjthpGIvj3ImGv6LejJQsRKMStby3Ew624EWlwVbBS6NjugsfaTRnZNMlxbqHecYpV8YvJmwxcaxG2l/TC0fwmpWl/k0wZkXiT2KSa1peuCeIcwkgtDiwS9o+AsV1ndGi9QY4rqao+m6t3XdcY3WWIfNYi3AJW7whaf7qOOvURxH2u2bUzcYRrRX4X41YS5ZKKBw80dLqk5sqq3oKta+L3jxRPJifMK+VgDcZUKoREZ1M8MatogSpxZWvGcMT0jhQB0MY9A4KzZgtEpM8zhoIgM6GeV8i0vosaZ9LVgj6ODP2m0VWsitvDJLqKYfDF2VZupW+pSh0q89QvOK8ZXtpqe6iXkJlhV5IFEiyzKWgU/AQwZO9jIH2LaRxq9VhY6bwpm5JtqmeP/03iJ8BAuDUTiwnUoeKfiJ6pfOdQyfHQks186vDYhbI19t0UtcSlLt2fgbq6gGy6LMV8WwlJ7GzdkUsfDfP37bCYNTSL+dV4E1fy7zJBRRkFPnkmal26dJpc4BCZty70XwEQMSwGF/HrOJgtLwttIiJGJT7sv2tcvQEqrHlyS1PHnea44xo3u/U0DLFPq+mlLUHPhgBrsTAqhNsmrX+89rQBFrxPy8lTKRck8RbqbDFnnEXMvxrrlZahYmwso0YaPy16DO/msBUKigOBN7bTVjNvol/TQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199015)(66574015)(83380400001)(31686004)(6666004)(2906002)(6486002)(30864003)(36756003)(82960400001)(38100700002)(86362001)(53546011)(8676002)(186003)(31696002)(2616005)(6512007)(26005)(316002)(66476007)(41300700001)(6636002)(5660300002)(4326008)(34206002)(478600001)(66946007)(66556008)(37006003)(6506007)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnNmaXpzVEdyZjUwMWdJY3BCK0xEZ0cxTU11Ri9qSFpFR0ZHUjF5d2c5RXQx?=
 =?utf-8?B?cUNFdkorcWNhdTU1S25hYjZhVnJST0kzZDEzVnZuRzJsRUVzYVlUUFNmV1p6?=
 =?utf-8?B?Vk5sTGU4a21Zek5CWjBVbUk3cktRTHNGemZXMVJiYUROK0VPcFkzSTB6cFIz?=
 =?utf-8?B?RTFnUkxUZ3k2OWZwT3E1bjZDTmdQNGE3d0tsNTVNYWx3M3UvK2tublFydEhX?=
 =?utf-8?B?T25oL1pyaGczRWNLT2k2QkZ3eWErU3A0RStFRlRROTA0c2NtbTRIRTByV3VD?=
 =?utf-8?B?RGNSUUIvS2h2dkhjUlBTR1B0NVRSSkJjQW5QdlRLbjhCcWt5eHE4ZEMwL1ls?=
 =?utf-8?B?OWdVckFOY1piTUlCRnArNG1mTVk2b0hsc0ZkWldtakN0bStxTG5ReTB3NU10?=
 =?utf-8?B?MVo2Rm9NWHlIcjZ2Z2NPYVdHWkdJN0p5Q3gxQzZPOC9qSWV2K3FrOUxIZGw2?=
 =?utf-8?B?N3Z5NnlyaGcyenQ2K0l2akFXbFplNVFwOERGV2pob08wZGxzQmVMS3hsSEox?=
 =?utf-8?B?L05kNGxoN2JTcW1kaFVRUmk3ZWVPYSszTE4wNy9qczZpbDVFaUpsS2xEZmhN?=
 =?utf-8?B?aEZMZDJrbTZPL2pPbGVKb3NzZUUzWUptT3pneWw3R3JZK3FVREx1U2VveXNY?=
 =?utf-8?B?aVRCVUw1RHpLRUpvVjh5bmVHclg5WlVEU0l2TittTXpCaWI4ekxFbXNxWU5O?=
 =?utf-8?B?NmpNeVhsUDUxKzU5MncxaUNWbkVmZ0NXTit6dGRmUEo5ODZKYVJVZUVoM2pk?=
 =?utf-8?B?eGxyUWkxUml2bUJiQm5tc3crakVQOVBCM00wc0NQbmsxZURYdFYzMEZVcTVP?=
 =?utf-8?B?a2xGVUNEVVVvUDJqWVI0aHNMd1loK3Fyak1XTFhpZjRaMzFLWWhYRWhJWkw3?=
 =?utf-8?B?WEhyT25BN2VrU0hSV0RYVk5Dc3ZhSFB4S29vYzczc0FVV0M0SC9uaWpXK2h6?=
 =?utf-8?B?RTVGY0xwVVJiNkV2citpSE5DRW1ESSttNU1ndi9vMUIxR0dLbWMyRndQd2dF?=
 =?utf-8?B?YzBUbHdURmF3TUFUcmZkbFB1Vm1XWjRhUmM4K3paUlRLa2lhdGU0bldENEN5?=
 =?utf-8?B?OHIraFdBTlNYTFBOS1J3R25NZlRBOUtpTTJIVEhVVkFMKzg0Y2svdENXWkVk?=
 =?utf-8?B?TCtmTHZZc2UzMDQvOXZTNEVlOThxQ1RqTkNzb2dXZGRpVk5IU3lIeURtY0RU?=
 =?utf-8?B?K2NUaEhuaHZPN1AwUiszemk0akZob2FWcytaRkZRejhzTTJDc3NvNnlIa3V6?=
 =?utf-8?B?TlJHZ3ZubDMyTnpuRFJIRmlHQ05SMW1xL2hPTDFQbkJkYWpsNUllVXRrM3dD?=
 =?utf-8?B?cVU0MkM5M1lqdE5zSzJ4RTljZ3d1bHdXeXBiZjVJOEsxNnhMYmcveGdTbVZr?=
 =?utf-8?B?Um1OZFJ4eWk0VjM5bWpNclNpMjVqanNJOWwyNVRERGZpcTI0cFBXVEhNczQ3?=
 =?utf-8?B?UkdCRjVSUGVxVHM2UE1WS0RldnZTOU1pRmU4aGQ4M1AyZWV6TlhCcmZSemRu?=
 =?utf-8?B?TUdzakU1d25jNU9wZTFSaWVHa0pkOHhGS25jUDhNTVVZZlFxRHUrb2dudXF4?=
 =?utf-8?B?MnQvN1htUHlVbzdZS2UrMXk4YS9tdldhUDFoM0hwY1dZV2Q2b1VEemlQeW4y?=
 =?utf-8?B?UUFUczFLWHZPYXpVSC9XdU5kZEVFQXBJWldNOVJJUXdVM1JiYVYvTmQxdmpJ?=
 =?utf-8?B?dWZaaWZOVlFMcklyOGhxUnRIU05TbzVjTUxyT3RacnhOaUdwaVdXK0xZQW9p?=
 =?utf-8?B?Mk9RYlRzdmt0NmpVWlNEL3dpekxmcHFtekxQTkFQZWhpck9rRnNIbzMzR2M4?=
 =?utf-8?B?OXdlcDBpSW1IZTV3YzFNaGpTRUUzNURva1JvSUZQVHVTdlFCd0tudElZTmEv?=
 =?utf-8?B?MGtwQUQyZ0JDRnErdVJXYVAvYzUxYXlTTzg5anZuNm9rdFovN0hKb3JrUjBF?=
 =?utf-8?B?WWJlVFNrazlyOVRyWFE3NDJ4K0dUeVJ5SU9oUU9kQTlHMGVjSnIxZG9mazVh?=
 =?utf-8?B?NFRtWGZyZjd2Y1pRL1B6SUt1R1IxUmZSZVNXRHV3a0ExWFRpZm5wT3dTRk5y?=
 =?utf-8?B?TmM0RnFjeEh4Y0U0VVM1YXQ2NDArYjRtT1R0Nk1Uak9DTUEwWkNmd2RYMTRS?=
 =?utf-8?B?ejdBaURkQnNJUWpZcndSeTR4djZXaUtTWVVTQmYwTEpGVjY5MVhqT3dLQjFr?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c2a82cc-4fef-486a-2806-08dabd867ca6
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 10:30:54.2596 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZEcHTNuME/etfQjy8GBBfqiiki/nykm5fDkfF2ZzLBY7LErcrik8Fb/GubdTRN5IwF0IUXgIUKsRGp2OE6oW7WGXgSHkBNQUqE+GuG35mM8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6281
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v14 3/7] drm/i915: Check for integer
 truncation on scatterlist creation
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 chris@chris-wilson.co.uk, matthew.auld@intel.com, andrzej.hajda@intel.com,
 mchehab@kernel.org, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/2/22 4:53 PM, Gwan-gyeong Mun wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> There is an impedance mismatch between the scatterlist API using unsigned
> int and our memory/page accounting in unsigned long. That is we may try
> to create a scatterlist for a large object that overflows returning a
> small table into which we try to fit very many pages. As the object size
> is under the control of userspace, we have to be prudent and catch the
> conversion errors.
> 
> To catch the implicit truncation we check before calling scattterlist
> creation Apis. we use overflows_type check and report E2BIG if the
> overflows may raise. When caller does not return errno, use WARN_ON to
> report a problem.
> 
> This is already used in our create ioctls to indicate if the uABI request
> is simply too large for the backing store. Failing that type check,
> we have a second check at sg_alloc_table time to make sure the values
> we are passing into the scatterlist API are not truncated.
> 
> v2: Move added i915_utils's macro into drm_util header (Jani N)
> v5: Fix macros to be enclosed in parentheses for complex values
>      Fix too long line warning
> v8: Replace safe_conversion() with check_assign() (Kees)
> v14: Remove shadowing macros of scatterlist creation api and fix to
>       explicitly overflow check where the scatterlist creation APIs are
>       called. (Jani)
> 
Hi Jani,

This version has removed shadowing macros of scatterlist creation api as 
per last comment of you.

Can I please have your ack or review comment?

Br,

G.G.

> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Brian Welty <brian.welty@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Co-developed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_internal.c         |  7 +++++--
>   drivers/gpu/drm/i915/gem/i915_gem_object.h           |  3 ---
>   drivers/gpu/drm/i915/gem/i915_gem_phys.c             |  4 ++++
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c            |  9 ++++++---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c              |  4 ++++
>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c          |  6 +++++-
>   drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c |  6 +++++-
>   drivers/gpu/drm/i915/gem/selftests/huge_pages.c      |  8 ++++++++
>   drivers/gpu/drm/i915/gvt/dmabuf.c                    | 10 ++++++----
>   drivers/gpu/drm/i915/i915_scatterlist.c              |  5 +++++
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c        |  4 ++++
>   drivers/gpu/drm/i915/selftests/scatterlist.c         |  4 ++++
>   12 files changed, 56 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> index 629acb403a2c..b0e6b464bf59 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> @@ -36,11 +36,15 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
>   	struct sg_table *st;
>   	struct scatterlist *sg;
>   	unsigned int sg_page_sizes;
> -	unsigned int npages;
> +	unsigned int npages; /* restricted by sg_alloc_table */
>   	int max_order = MAX_ORDER;
>   	unsigned int max_segment;
>   	gfp_t gfp;
>   
> +	if (overflows_type(obj->base.size >> PAGE_SHIFT, npages))
> +		return -E2BIG;
> +
> +	npages = obj->base.size >> PAGE_SHIFT;
>   	max_segment = i915_sg_segment_size(i915->drm.dev) >> PAGE_SHIFT;
>   	max_order = min(max_order, get_order(max_segment));
>   
> @@ -56,7 +60,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
>   	if (!st)
>   		return -ENOMEM;
>   
> -	npages = obj->base.size / PAGE_SIZE;
>   	if (sg_alloc_table(st, npages, GFP_KERNEL)) {
>   		kfree(st);
>   		return -ENOMEM;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 55817d287676..8cd8d2041c5a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -26,9 +26,6 @@ enum intel_region_id;
>    * this and catch if we ever need to fix it. In the meantime, if you do
>    * spot such a local variable, please consider fixing!
>    *
> - * Aside from our own locals (for which we have no excuse!):
> - * - sg_table embeds unsigned int for nents
> - *
>    * We can check for invalidly typed locals with typecheck(), see for example
>    * i915_gem_object_get_sg().
>    */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> index 0d0e46dae559..88ba7266a3a5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> @@ -28,6 +28,10 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
>   	void *dst;
>   	int i;
>   
> +	/* Contiguous chunk, with a single scatterlist element */
> +	if (overflows_type(obj->base.size, sg->length))
> +		return -E2BIG;
> +
>   	if (GEM_WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
>   		return -EINVAL;
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 11125c32dd35..fdd9d151ac1f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -60,7 +60,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
>   			 struct address_space *mapping,
>   			 unsigned int max_segment)
>   {
> -	const unsigned long page_count = size / PAGE_SIZE;
> +	unsigned int page_count; /* restricted by sg_alloc_table */
>   	unsigned long i;
>   	struct scatterlist *sg;
>   	struct page *page;
> @@ -68,6 +68,10 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
>   	gfp_t noreclaim;
>   	int ret;
>   
> +	if (overflows_type(size / PAGE_SIZE, page_count))
> +		return -E2BIG;
> +
> +	page_count = size / PAGE_SIZE;
>   	/*
>   	 * If there's no chance of allocating enough pages for the whole
>   	 * object, bail early.
> @@ -193,7 +197,6 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	struct intel_memory_region *mem = obj->mm.region;
>   	struct address_space *mapping = obj->base.filp->f_mapping;
> -	const unsigned long page_count = obj->base.size / PAGE_SIZE;
>   	unsigned int max_segment = i915_sg_segment_size(i915->drm.dev);
>   	struct sg_table *st;
>   	struct sgt_iter sgt_iter;
> @@ -236,7 +239,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
>   		} else {
>   			dev_warn(i915->drm.dev,
>   				 "Failed to DMA remap %lu pages\n",
> -				 page_count);
> +				 obj->base.size >> PAGE_SHIFT);
>   			goto err_pages;
>   		}
>   	}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 721b716942bb..2cd7a17c720d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -829,6 +829,10 @@ static int i915_ttm_get_pages(struct drm_i915_gem_object *obj)
>   	struct ttm_place requested, busy[I915_TTM_MAX_PLACEMENTS];
>   	struct ttm_placement placement;
>   
> +	/* restricted by sg_alloc_table */
> +	if (overflows_type(obj->base.size >> PAGE_SHIFT, unsigned int))
> +		return -E2BIG;
> +
>   	GEM_BUG_ON(obj->mm.n_placements > I915_TTM_MAX_PLACEMENTS);
>   
>   	/* Move to the requested placement. */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index 1b1a22716722..893c03f4a794 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -128,13 +128,17 @@ static void i915_gem_object_userptr_drop_ref(struct drm_i915_gem_object *obj)
>   
>   static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
>   {
> -	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
>   	unsigned int max_segment = i915_sg_segment_size(obj->base.dev->dev);
>   	struct sg_table *st;
>   	unsigned int sg_page_sizes;
>   	struct page **pvec;
> +	unsigned int num_pages; /* limited by sg_alloc_table_from_pages_segment */
>   	int ret;
>   
> +	if (overflows_type(obj->base.size >> PAGE_SHIFT, num_pages))
> +		return -E2BIG;
> +
> +	num_pages = obj->base.size >> PAGE_SHIFT;
>   	st = kmalloc(sizeof(*st), GFP_KERNEL);
>   	if (!st)
>   		return -ENOMEM;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> index f963b8e1e37b..bb1e8f1657a6 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> @@ -29,11 +29,15 @@ static int huge_get_pages(struct drm_i915_gem_object *obj)
>   {
>   #define GFP (GFP_KERNEL | __GFP_NOWARN | __GFP_RETRY_MAYFAIL)
>   	const unsigned long nreal = obj->scratch / PAGE_SIZE;
> -	const unsigned long npages = obj->base.size / PAGE_SIZE;
> +	unsigned int npages; /* restricted by sg_alloc_table */
>   	struct scatterlist *sg, *src, *end;
>   	struct sg_table *pages;
>   	unsigned long n;
>   
> +	if (overflows_type(obj->base.size / PAGE_SIZE, npages))
> +		return -E2BIG;
> +
> +	npages = obj->base.size / PAGE_SIZE;
>   	pages = kmalloc(sizeof(*pages), GFP);
>   	if (!pages)
>   		return -ENOMEM;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index 0cb99e75b0bc..1120a7960d47 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -84,6 +84,10 @@ static int get_huge_pages(struct drm_i915_gem_object *obj)
>   	unsigned int sg_page_sizes;
>   	u64 rem;
>   
> +	/* restricted by sg_alloc_table */
> +	if (overflows_type(obj->base.size >> PAGE_SHIFT, unsigned int))
> +		return -E2BIG;
> +
>   	st = kmalloc(sizeof(*st), GFP);
>   	if (!st)
>   		return -ENOMEM;
> @@ -213,6 +217,10 @@ static int fake_get_huge_pages(struct drm_i915_gem_object *obj)
>   	unsigned int sg_page_sizes;
>   	u64 rem;
>   
> +	/* restricted by sg_alloc_table */
> +	if (overflows_type(obj->base.size >> PAGE_SHIFT, unsigned int))
> +		return -E2BIG;
> +
>   	st = kmalloc(sizeof(*st), GFP);
>   	if (!st)
>   		return -ENOMEM;
> diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
> index 01e54b45c5c1..e61cf3beeeba 100644
> --- a/drivers/gpu/drm/i915/gvt/dmabuf.c
> +++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
> @@ -42,8 +42,7 @@
>   
>   #define GEN8_DECODE_PTE(pte) (pte & GENMASK_ULL(63, 12))
>   
> -static int vgpu_gem_get_pages(
> -		struct drm_i915_gem_object *obj)
> +static int vgpu_gem_get_pages(struct drm_i915_gem_object *obj)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
>   	struct intel_vgpu *vgpu;
> @@ -52,8 +51,12 @@ static int vgpu_gem_get_pages(
>   	int i, j, ret;
>   	gen8_pte_t __iomem *gtt_entries;
>   	struct intel_vgpu_fb_info *fb_info;
> -	u32 page_num;
> +	unsigned int page_num; /* limited by sg_alloc_table */
>   
> +	if (overflows_type(obj->base.size >> PAGE_SHIFT, page_num))
> +		return -E2BIG;
> +
> +	page_num = obj->base.size >> PAGE_SHIFT;
>   	fb_info = (struct intel_vgpu_fb_info *)obj->gvt_info;
>   	if (drm_WARN_ON(&dev_priv->drm, !fb_info))
>   		return -ENODEV;
> @@ -66,7 +69,6 @@ static int vgpu_gem_get_pages(
>   	if (unlikely(!st))
>   		return -ENOMEM;
>   
> -	page_num = obj->base.size >> PAGE_SHIFT;
>   	ret = sg_alloc_table(st, page_num, GFP_KERNEL);
>   	if (ret) {
>   		kfree(st);
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i915/i915_scatterlist.c
> index 114e5e39aa72..c9dc3a917d66 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.c
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.c
> @@ -96,6 +96,9 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
>   
>   	i915_refct_sgt_init(rsgt, node->size << PAGE_SHIFT);
>   	st = &rsgt->table;
> +	/* restricted by sg_alloc_table */
> +	WARN_ON(overflows_type(DIV_ROUND_UP_ULL(node->size, segment_pages),
> +			       unsigned int));
>   	if (sg_alloc_table(st, DIV_ROUND_UP_ULL(node->size, segment_pages),
>   			   GFP_KERNEL)) {
>   		i915_refct_sgt_put(rsgt);
> @@ -177,6 +180,8 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
>   
>   	i915_refct_sgt_init(rsgt, size);
>   	st = &rsgt->table;
> +	/* restricted by sg_alloc_table */
> +	WARN_ON(overflows_type(PFN_UP(res->size), unsigned int));
>   	if (sg_alloc_table(st, PFN_UP(res->size), GFP_KERNEL)) {
>   		i915_refct_sgt_put(rsgt);
>   		return ERR_PTR(-ENOMEM);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 27c733b00976..097be1e89dba 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -69,6 +69,10 @@ static int fake_get_pages(struct drm_i915_gem_object *obj)
>   		return -ENOMEM;
>   
>   	rem = round_up(obj->base.size, BIT(31)) >> 31;
> +	/* restricted by sg_alloc_table */
> +	if (overflows_type(rem, unsigned int))
> +		return -E2BIG;
> +
>   	if (sg_alloc_table(pages, rem, GFP)) {
>   		kfree(pages);
>   		return -ENOMEM;
> diff --git a/drivers/gpu/drm/i915/selftests/scatterlist.c b/drivers/gpu/drm/i915/selftests/scatterlist.c
> index d599186d5b71..805c4bfb85fe 100644
> --- a/drivers/gpu/drm/i915/selftests/scatterlist.c
> +++ b/drivers/gpu/drm/i915/selftests/scatterlist.c
> @@ -220,6 +220,10 @@ static int alloc_table(struct pfn_table *pt,
>   	struct scatterlist *sg;
>   	unsigned long n, pfn;
>   
> +	/* restricted by sg_alloc_table */
> +	if (overflows_type(max, unsigned int))
> +		return -E2BIG;
> +
>   	if (sg_alloc_table(&pt->st, max,
>   			   GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN))
>   		return alloc_error;
