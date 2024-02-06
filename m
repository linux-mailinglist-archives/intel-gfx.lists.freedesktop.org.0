Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECB184BED7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 21:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9834112E12;
	Tue,  6 Feb 2024 20:42:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F1eQPGxW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA8C112E15
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 20:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707252138; x=1738788138;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Lg410I134eEbusfjsxx6PqZplwU+rA3siKMRK5V/sQ=;
 b=F1eQPGxWx/Umc7b/YHWfUY2NihTEizNkr8slYSsnxMONgwNe6ZSEylIA
 ypxtgblXuusbQFQWaqhpMXkl5sgikM/PXrl1r14MFtcMtXoFsrz88YFPg
 EJMH3hU472ZUBME4dsD6A7FwmY+7woQk/1rYx2G/eN14mnfChYx1OlegK
 GctMJ4Iqd3OrFU/mm5Qv374Kbumwl6unCJ1IFR6QKjdRI8wQ24jmYQvUr
 dVHwWgDksrlMcFVu4Yt6rIy2WG+zrsKa4Tv17ZuJg8W2qj1KgtAcgmcQW
 O64UU1ctRi4wCtPP0Cu+YNfOYUxx2gYhz+aPHwtj1+OLZ4fDAIL30dKUe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11483696"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="11483696"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 12:42:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; 
   d="scan'208";a="5736241"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 12:42:14 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 12:42:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 12:42:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 12:42:13 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 12:42:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MlKQ8TOF8ysBfWJTgTZMQMKn4mVm+0AfuFuE0RcjLJbMhZe9MocoaCxhU05Nahr3WLOQZ+bskeJD++iAaSMgW0lvxZ9CYOVQJImDGWVND9ZmIsTKm9e4nPkrwfp3RcbSnazZnPtptBaohWo7yh4pyI+/9Qyp0IJiAUTcdD5WEZNHMKmNRk2N80uNwhQ4/IQnMnw1EtYO1o0j2btff6TEODXY4/6ZgLB/LgmV8U/oeZUkaQJg+UgcoxSEPd5xXJF5byN1SH1+ACwlph2c8WjGwpeOHYbRGU+0z11f8k7WhT+DF98ySQBlDmQj/UltIejAr+VvOKegNSb5Zj64JnkHgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AOpIwG61c6aAKhN8SLTf6E+BedNYk3rQBcaQImSfL48=;
 b=QgMi5ZcxbuqbnsJkUZIzyydOSXG0X0pWGicEXyZzLLqlAKxfc40j1snHZRl3I4B1a3WvITUvnVqRGCnS6yZTNiYAvZ33/4IVZ4L9awpw3ZXXLao5OpyiKCIm69XKg69EbnSP2vGBw/Nme7d4bZYX2VPsaKWcPeg/KK/CWj368HXusyGrB/dBs/Q5r1m/us3rxecSTH07E4/ZpMnsqOsSFpuG2DC5N1r9fy0SxAYPaWn2LY5Rp0p9UYdVYhst2N7ylQmgikNcwFViiCx7psV6Ezekgr+hWgV3R564emEG5Yon4oAM/6cpq75uCBrm8hbGpEqA+rtwGHWwUFbuoAhYog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by MW4PR11MB7163.namprd11.prod.outlook.com (2603:10b6:303:212::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 20:42:10 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f%3]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 20:42:10 +0000
Message-ID: <e32a2e57-97b6-4872-a89e-d32224a8d834@intel.com>
Date: Tue, 6 Feb 2024 12:42:06 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Souza, Jose"
 <jose.souza@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "kenneth@whitecape.org" <kenneth@whitecape.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Zanoni, Paulo R"
 <paulo.r.zanoni@intel.com>, "Ghuge, Sagar" <sagar.ghuge@intel.com>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
 <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
 <fe98dc0052a87bf4b916f34813233d7fa69752a1.camel@intel.com>
 <531ad2c0-445a-4fdc-bdb7-d50bf70d5c69@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <531ad2c0-445a-4fdc-bdb7-d50bf70d5c69@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0119.namprd03.prod.outlook.com
 (2603:10b6:a03:333::34) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|MW4PR11MB7163:EE_
X-MS-Office365-Filtering-Correlation-Id: a90a1fbf-10ae-47b7-8edd-08dc27541736
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UwYx1gsLl7oeOPmeatSHSUjE8SMAuPndq2yHuKb/VKKu0hb6lpuU5V/x1LZACK+WICeIgfaR6yeJoQqnWQYUCZNf4iGskmIXJdbuSmW5HOo6GmaVzZSKbSsQzWVxd+YQhdZQVQp8dt19g2lId9BxItn0Stx8DPjIRTG8NoopKIOue/6E8Y04xHpRCLemVE/0PZy1cXboBo1baXDHDKUJ/at+yaN1LfkkxmVw3yFO1fWtjpW6o28IBuvRwzOWA5Dc9ZSy1wQzl/HEO7wJaf9WGZHliTxwyI/W3Ag7gEfhOQgRWnqFpOFrpq6LQqEzVuHIXSdCJIxB79Nl5bS53HEKfjx5JrJsPy8zAnpr7deg3A6jPLWqrUafrvXdy1gurTJ7jgim+AoH5WbqIIA/ksiLulmkYPRoleLO8bAOOTFompbpoe7r+fnsDxRfPSbRsfurefjma7J2CMHZ2v2+UXQ1u0TpWg0fol7oIbRZmJvFmWi7ilZOUWMQH3DbyzhSxJdIJhprsCe1/co1Hdgfdx6GWwYfeK2Sn39B7ASOgmRoIIM6amvv/NoqnrRd3bZ1qdlQlwu4s7Vduwzx8za2p+p8DPNmjBPVn6rsXouqu29jZZYXOyBgDcEYRE33jHW1da6z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(366004)(396003)(376002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(2616005)(86362001)(26005)(31696002)(41300700001)(5660300002)(6486002)(966005)(2906002)(478600001)(54906003)(66476007)(316002)(66946007)(110136005)(66556008)(36756003)(8676002)(8936002)(6512007)(4326008)(6506007)(53546011)(6666004)(38100700002)(31686004)(82960400001)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGJzdGdqaFkrV1Q1aGNQQjVNMHB6aGUrOElqaDJQRzBFTEJrOEtrK1FpYkRR?=
 =?utf-8?B?MFUvU0ZieEc3OHREbWhMQlJncllNbGhISER5R2MzYXBNbi9YRHZFblRrLzBr?=
 =?utf-8?B?UXVHZDhZenBqUmMvVXlLZTNqdjV6USs5aWJiQm5td2JZL055Z2doc1VNcUt4?=
 =?utf-8?B?VmUzeWYzZVJvNnQxWWtOV3lsckdFY1RxdkR6WjB1V011dVZvNHE0RjN6R3B4?=
 =?utf-8?B?S0JheWkvNllpRlVlWUF6SEFxOG5zY1lVOHhGL3dlZktVNkZ5Z0RwUkNiMjdz?=
 =?utf-8?B?MzNSSWNJWGR5YXNJeWVQRHpXSjUrZjhjYnh3S21TYk9HNlo4N0xHcnFyK1Rr?=
 =?utf-8?B?M2IyK3M2aXdwcUZ5R2FWdm9TM3VqUnh1dERHZXVmNEdmeXBrNDVJRytNTDFX?=
 =?utf-8?B?WTZnU1E0aDdkYmdRZW81elVpc1JHbldEUHZpSFlLSzV0YTBMR2RmK3dqcGJo?=
 =?utf-8?B?eDV4S3VuWE9GSFl0eFZNNnlhSHY0TEdjeUkvNzVIaGZsOXhpQTFSOGIyL2Nu?=
 =?utf-8?B?M2lpV1AwOTFJNEVLYlY5M1NPZHc5NVVydFFlNElUUW0zTXhTTTdxYXNXS29v?=
 =?utf-8?B?K3g3dnFLMU5ZMGQ1bnRkY2V3SVh1eEpxSWlrM3ZsajBDaEwxS3ZVR2ZWTGYr?=
 =?utf-8?B?QzdrdmpqNGVtaWZIaWIyUTZRYjBIMHBTWnRGZlpqK2xVVlRUY3Fsblh0ZEZJ?=
 =?utf-8?B?a3UzTWk2SVhXSzdUYkZmODdHT2UydTJvaWh2TXlPckIxSXdzOExub0VsSS9J?=
 =?utf-8?B?K0p2bzFWK0trZUFxdXpBdktCeWdJNTlGMEQ3NFYvZld6Q0cveGprV2lHeENJ?=
 =?utf-8?B?NDFvMkxRSHg0VlhCVTlaVFBXN3M2VXVJdjdmTE5EeFdJV2hWZ1dBMUVmTS9M?=
 =?utf-8?B?dUx6c0JybHhJSEQybU5iL0srNk9QSDRzT3RZQ0pBUUZHdDRrVG4vbjdGWkVm?=
 =?utf-8?B?bTFobGFydXh3Q1FjcXR6emFQSW1vZ0dDQVRUTE5ETjdWYnJlaHNWcmpUUWx0?=
 =?utf-8?B?NnRIcUFWTTZuOGFJNHJSbDgydkNxNkxiWFh5L29YZVpKbUQwdXplTnNZMXVh?=
 =?utf-8?B?eG1TcEJWUFFlQSswVThVWW9od3kwMEJHMkdHRlB5aUhBYWZ2M2d6WlhiK3Nv?=
 =?utf-8?B?VkVUQjZKNm51U0N1ZnpPanpHNFNkRDZKcTBFbkk1bGtaS1VSTjRYdXBNRGEr?=
 =?utf-8?B?RjE4eG1UOE9xNTNFRWlIMFJuVnVPTDFHWEQ5VUFZSmgwaVRaaktmazhvN0dS?=
 =?utf-8?B?V0VIUlUydURScVVXZTZnbm5KUzRnVkRyWDA3SGl3bEZhMUR1Z3kwaTh2Z1BP?=
 =?utf-8?B?T3JUNGhmR2pXNHVEMzgwK0p3TXliMnhaakVQaFo2RjFRVmRkWENrWDRsS2Iv?=
 =?utf-8?B?WHlhMWdzdGxIc3Z3dHVVWmNVdnFwQlNEZlZVcGM4RExiR1hCZk5PanhWREdr?=
 =?utf-8?B?OEJDaVZ5c3l3c0tpb1pUcDV4bWlPQWY5K085Q1lkOHlyazhMc0h4dE9FL2Jz?=
 =?utf-8?B?Z0pSTVdodFFTci9IeVZZTGc5UmFNU1hmTTd4VnpDaE81N1RzYU5nWS81c001?=
 =?utf-8?B?M2I5bzVKWDE0ZWl0OTdYeEVNd2h2Sm5zYkVCRXZhWjl4dGF3THFkQUdFZktl?=
 =?utf-8?B?cEozdlRVQVltWTZpZXAxY0lNVmdaWHByYm5XbXkzd2JzYWFtWTJIeEJiMm91?=
 =?utf-8?B?L0RVbE1icnlTM2pzS1psaWxPRzJSUU1MaEExcHRGdkRPc0JaK3JIeC8xT0VD?=
 =?utf-8?B?RzdWWTdJdjhKZE5lVk5VY3h3cW1rcFJpd2ZuM3EzWUNoMlFZOTk3V1BITHVn?=
 =?utf-8?B?R3VwS0ZxTyszMzJoYXVwT0htTmZCaWVPK3g4RERvRHJITGQzNmtGQkd1L09r?=
 =?utf-8?B?Nm94cXVKaVM1NGN4cW9MRGt2N3FFdndrRklicWxGNHpLMXJCOThTdDNpT0Nt?=
 =?utf-8?B?RFBQWXQrWDJKQWFOKzFiMFdzclF6Q2RnWnBYQVZPQ0NBbkRGbWp2bnRKL09t?=
 =?utf-8?B?Sm8vQllJZTQxQ1RrUTFTQkxkK3BSWC9hT0prZ05kZ0d4QU45Z0dzOUIzTzVh?=
 =?utf-8?B?MHovbFRtQzJoYXYzUjRlWHFKUXBUZU1sZHhzdEM1dWh1NEpLQ1ZxZmt5RXd0?=
 =?utf-8?B?SjFzVWtYeUNwbGpUb1hGaTU3M1JJUXU0czlEWVgzM3oxbHdHbnpPa3RwcmZQ?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a90a1fbf-10ae-47b7-8edd-08dc27541736
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2024 20:42:10.1954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j84GyFYDdBmxHXJcC2p8DDWDGILADyHmlZS4JtVFM6iPLpASWoWsog6/cWaqnAPETemBdSXNZUJbqosDgJqhZ0xTkzIAyKtSNwFmzlpew18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7163
X-OriginatorOrg: intel.com
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

On 2/6/2024 08:33, Tvrtko Ursulin wrote:
> On 01/02/2024 18:25, Souza, Jose wrote:
>> On Wed, 2024-01-24 at 08:55 +0000, Tvrtko Ursulin wrote:
>>> On 24/01/2024 08:19, Joonas Lahtinen wrote:
>>>> Add reporting of the GuC submissio/VF interface version via GETPARAM
>>>> properties. Mesa intends to use this information to check for old
>>>> firmware versions with known bugs before enabling features like async
>>>> compute.
>>>
>>> There was
>>> https://patchwork.freedesktop.org/patch/560704/?series=124592&rev=1
>>> which does everything in one go so would be my preference.
>>
>> IMO Joonas version brings less burden to be maintained(no new struct).
>> But both versions works, please just get into some agreement so we 
>> can move this forward.
>
> So I would really prefer the query. Simplified version would do like 
> the compile tested only:
Vivaik's patch is definitely preferred. It is much cleaner to make one 
single call than having to make four separate calls. It is also 
extensible to other firmwares if required. The only blockage against it 
was whether it was a good thing to report at all. If that blockage is no 
longer valid then we should just merge the patch that has already been 
discussed, polished, fixed, etc. rather than starting the whole process 
from scratch.

And note that it is four calls not three. The code below is missing the 
branch version number.

John.

>
> diff --git a/drivers/gpu/drm/i915/i915_query.c 
> b/drivers/gpu/drm/i915/i915_query.c
> index 00871ef99792..999687f6a3d4 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -551,6 +551,37 @@ static int query_hwconfig_blob(struct 
> drm_i915_private *i915,
>         return hwconfig->size;
>  }
>
> +static int
> +query_guc_submission_version(struct drm_i915_private *i915,
> +                            struct drm_i915_query_item *query)
> +{
> +       struct drm_i915_query_guc_submission_version __user *query_ptr =
> + u64_to_user_ptr(query->data_ptr);
> +       struct drm_i915_query_guc_submission_version ver;
> +       struct intel_guc *guc = &to_gt(i915)->uc.guc;
> +       const size_t size = sizeof(ver);
> +       int ret;
> +
> +       if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
> +               return -ENODEV;
> +
> +       ret = copy_query_item(&ver, size, size, query);
> +       if (ret != 0)
> +               return ret;
> +
> +       if (ver.major || ver.minor || ver.patch)
> +               return -EINVAL;
> +
> +       ver.major = guc->submission_version.major;
> +       ver.minor = guc->submission_version.minor;
> +       ver.patch = guc->submission_version.patch;
> +
> +       if (copy_to_user(query_ptr, &ver, size))
> +               return -EFAULT;
> +
> +       return 0;
> +}
> +
>  static int (* const i915_query_funcs[])(struct drm_i915_private 
> *dev_priv,
>                                         struct drm_i915_query_item 
> *query_item) = {
>         query_topology_info,
> @@ -559,6 +590,7 @@ static int (* const i915_query_funcs[])(struct 
> drm_i915_private *dev_priv,
>         query_memregion_info,
>         query_hwconfig_blob,
>         query_geometry_subslices,
> +       query_guc_submission_version,
>  };
>
>  int i915_query_ioctl(struct drm_device *dev, void *data, struct 
> drm_file *file)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 550c496ce76d..d80d9b5e1eda 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -3038,6 +3038,7 @@ struct drm_i915_query_item {
>          *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct 
> drm_i915_query_memory_regions)
>          *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob 
> uAPI`)
>          *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct 
> drm_i915_query_topology_info)
> +        *  - %DRM_I915_QUERY_GUC_SUBMISSION_VERSION (see struct 
> drm_i915_query_guc_submission_version)
>          */
>         __u64 query_id;
>  #define DRM_I915_QUERY_TOPOLOGY_INFO           1
> @@ -3046,6 +3047,7 @@ struct drm_i915_query_item {
>  #define DRM_I915_QUERY_MEMORY_REGIONS          4
>  #define DRM_I915_QUERY_HWCONFIG_BLOB           5
>  #define DRM_I915_QUERY_GEOMETRY_SUBSLICES      6
> +#define DRM_I915_QUERY_GUC_SUBMISSION_VERSION  7
>  /* Must be kept compact -- no holes and well documented */
>
>         /**
> @@ -3591,6 +3593,15 @@ struct drm_i915_query_memory_regions {
>         struct drm_i915_memory_region_info regions[];
>  };
>
> +/**
> +* struct drm_i915_query_guc_submission_version - query GuC submission 
> interface version
> +*/
> +struct drm_i915_query_guc_submission_version {
> +       __u64 major;
> +       __u64 minor;
> +       __u64 patch;
> +};
> +
>  /**
>   * DOC: GuC HWCONFIG blob uAPI
>   *
>
> It is not that much bigger that the triple get param and IMO nicer.
>
> But if there is no motivation to do it properly then feel free to 
> proceed with this, I will not block it.
>
> Regards,
>
> Tvrtko
>
> P.S.
> Probably still make sure to remove the reference to SR-IOV.
>
>>
>>>
>>> During the time of that patch there was discussion whether firmware
>>> version or submission version was better. I vaguely remember someone
>>> raised an issue with the latter. Adding John in case he remembers.
>>>
>>>> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>>>> Cc: Jose Souza <jose.souza@intel.com>
>>>> Cc: Sagar Ghuge <sagar.ghuge@intel.com>
>>>> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
>>>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/i915_getparam.c | 12 ++++++++++++
>>>>    include/uapi/drm/i915_drm.h          | 13 +++++++++++++
>>>>    2 files changed, 25 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_getparam.c 
>>>> b/drivers/gpu/drm/i915/i915_getparam.c
>>>> index 5c3fec63cb4c1..f176372debc54 100644
>>>> --- a/drivers/gpu/drm/i915/i915_getparam.c
>>>> +++ b/drivers/gpu/drm/i915/i915_getparam.c
>>>> @@ -113,6 +113,18 @@ int i915_getparam_ioctl(struct drm_device 
>>>> *dev, void *data,
>>>>            if (value < 0)
>>>>                return value;
>>>>            break;
>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR:
>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_MINOR:
>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_PATCH:
>>>> +        if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
>>>> +            return -ENODEV;
>>>> +        if (param->param == I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR)
>>>> +            value = to_gt(i915)->uc.guc.submission_version.major;
>>>> +        else if (param->param == 
>>>> I915_PARAM_GUC_SUBMISSION_VERSION_MINOR)
>>>> +            value = to_gt(i915)->uc.guc.submission_version.minor;
>>>> +        else
>>>> +            value = to_gt(i915)->uc.guc.submission_version.patch;
>>>> +        break;
>>>>        case I915_PARAM_MMAP_GTT_VERSION:
>>>>            /* Though we've started our numbering from 1, and so 
>>>> class all
>>>>             * earlier versions as 0, in effect their value is 
>>>> undefined as
>>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>>> index fd4f9574d177a..7d5a47f182542 100644
>>>> --- a/include/uapi/drm/i915_drm.h
>>>> +++ b/include/uapi/drm/i915_drm.h
>>>> @@ -806,6 +806,19 @@ typedef struct drm_i915_irq_wait {
>>>>     */
>>>>    #define I915_PARAM_PXP_STATUS         58
>>>>    +/*
>>>> + * Query for the GuC submission/VF interface version number
>>>
>>> What is this VF you speak of? :/
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>> + *
>>>> + * -ENODEV is returned if GuC submission is not used
>>>> + *
>>>> + * On success, returns the respective GuC submission/VF interface 
>>>> major,
>>>> + * minor or patch version as per the requested parameter.
>>>> + *
>>>> + */
>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR 59
>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MINOR 60
>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_PATCH 61
>>>> +
>>>>    /* Must be kept compact -- no holes and well documented */
>>>>       /**
>>

