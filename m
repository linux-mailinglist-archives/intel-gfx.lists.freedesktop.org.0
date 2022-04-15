Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28114501F8A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 02:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AD110E2BD;
	Fri, 15 Apr 2022 00:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4B810E078
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 00:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649982115; x=1681518115;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7GwfTBRMLpqH9HAJcI/VUHow6cVrCUvdp2Yhb61R5oU=;
 b=V+Wpqc+z+o8FDrIJplYOGltGfEQfTNNuqUJDYKdRc9nXk4ODQbRKThYc
 czG95e4jiW/Hc35v6x0QAuRcsw1AOHTu7wlhE1k94lY7EnsuQxHlirS7X
 NXhHXoddQMMYkkoHZxIgbkeTab275XJl06+vkPHZICxHqV/Q+NBtD3Uxk
 fDujJq2IjZ5901cGQI9TfzIxVR7LsHk88mCrrI037sWnOMpmw0N/N/uVG
 /PYFNu8R1W7En+fONc5NGH2B7tPZiSq7QfUQev890j5PYP32SDldWJ67g
 mgdmyXW45ysMfp0MjWEegxGkbhJO98p8VdJwE04jZCTctan/FkwMhvpH9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="250361074"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="250361074"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:21:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="560388743"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 14 Apr 2022 17:21:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 17:21:53 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 17:21:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 17:21:53 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 17:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kl7u7WU0OF89hDtB+mVr9HV45/EYEvGNxPIri38rCpzNM/+JszUuL74S/XFLH1605dV67VE8ebKKGZ0leCob2W+5WUB/Kd6jsyTKeOWmcOE0kuMedkGW0hpdq3lFvtgE7ws5ApvtKf51fyiwzydOhWqA/yBo3apEGKyCRv6npqY0a08D6OFW7HJ6TO8SvRwSmaWm4eixNgHkSPMvDW053lFu5N4HXwGnKTw0jx4S2Sl/xfos4CfcEx4lUMPqulXK90+OIbKh8J6+LItBXNhvd0hzOxQm6eVF+P6kmdKSF86lO+vFCsI+oFvR0cTf1GP3bOhErnCH7IFjh6VS52LkAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w6Rl1H8EpRdkf70BbosDnwD0hpapJ2ZSXYT9UxXFr+8=;
 b=SynQH55t1Y62tYRwYeLrYWhvkYMzMXkEFNCluktVC5VW6u3CArbepatrrORSCq6cG0KBUqj3TCbQjAxU5ry74ezbvgHwYcHsv1sqJ4ZY0Q7V64zBZ0pHK53LsO20BuY/Fkt7kqpJzFZwIFb12M1PP9H55NtElCoj8xCrrj/e7eIoB6SpN/MpRdulriuplaJFRK8fhw49eQ1N0m5sFLQhm7qPrKoofa+kz7uEXvACvHiKoKcFsFXQa4LXSsbtRus68H55n0w5QY56nborqgPy0dfbADxL57/PF1lCIsev3FP1PpH4ZCDh+lQL4QUaJyKqjV0jiAPBop/iQiUDlr+Uhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN6PR1101MB2356.namprd11.prod.outlook.com (2603:10b6:404:9c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Fri, 15 Apr
 2022 00:21:51 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001%7]) with mapi id 15.20.5164.020; Fri, 15 Apr 2022
 00:21:51 +0000
Message-ID: <3339394c-a5a5-1624-ea06-80ed7ce2d5ea@intel.com>
Date: Thu, 14 Apr 2022 17:21:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.0
Content-Language: en-GB
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>,
 <daniele.ceraolospurio@intel.com>, <vinay.belgaumkar@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
 <20220413192730.3608660-10-umesh.nerlige.ramappa@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220413192730.3608660-10-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0220.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::15) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4f2142d9-88b1-49de-9ad2-08da1e75efbe
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2356:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR1101MB2356719B31C454AF9DD5DE51BDEE9@BN6PR1101MB2356.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lrW0M4HGaVqUr+mqy84PwHKU/vLYwMAuB918rrP4v3ceB7RwaDBpSNLfdwIedY0Qw0D1OLyg5BJ5Lyi+98ZL+jipqRH9rr7916BCcz194U7ETCYawPpdw6eH2YlTR8AX8HS9Aq+LohLVi1tFvghQEb2xiJ0kHxyKTvnudg8LUrY3SbEWDlENDg6k8B6G6aRkp3zLp5xVJg7ubWoXtB2wCVXdKV/HpUmQs1DJ/DwILX9zcbfE2/abredpBImehGu3rWvy6RGK2GfxgtejomaD9xyybPcQP8m+ygoxa3xZhuIG+qb3524njvSyABYqhhomrh3Hwp4GWntsgRdQwhoTbqwzDQQY/cBvmUDoDs4KGVbnYYus5FKrT9SkX8zqON3NbEmo3zgD90lMHbApsRMNc0jyEive5YD3p3/QUuiM0lMm/3tIL4wnaqzQqooU9nmt9h4n5Q67HJHV0AQ+RL7Ecieyfuo8V2pgJia+QjttAUtUrhhxpfjNyMjhiCOaI3YzgLsJ5v3F1Qt3llpD7dwixv73mViwCueSyXj2CK1ANQ+Yjo0uqkBopOkubGeqhxdRtu81CH9nG/qot9uexA72cOc224k7eoxT/ISWiWdt0srxmgL5L5d/CymIHzR7gogMDPFJVrnyCZGEzhwdGIyj2dzyrTida8kjaIHtZqzBwPANUSJclAPOzlpGMedj01Kwe9Iu4FQrVTKs+ObQacDOsAOvAVULFfehXh7ppy17Fgs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(2616005)(83380400001)(66946007)(6506007)(2906002)(5660300002)(6636002)(86362001)(36756003)(31686004)(110136005)(316002)(508600001)(6486002)(31696002)(8936002)(186003)(26005)(8676002)(53546011)(82960400001)(66476007)(38100700002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXVlZ1NrVG9PV2tEakNsT3E5YTFoR2xHNDZwdnBITG96WUx5ZGVRQnF5QThj?=
 =?utf-8?B?UnRSRzl6TW5qVmdIYWNmcGhUZHVwcUNJYURGWWtNSGd6MUhrSzFCTWU5NUdZ?=
 =?utf-8?B?ajdxQ1d0dFBaSEltL3BmQ1VOakhBVzFQWjhNcVVEL1Z0cUI3YlNkL3ZNRnhp?=
 =?utf-8?B?TnBmVWxILyszdWJJbVBISkdlaGpSL3l2MStsN0dsaklpQVcvR21RSkYxSWls?=
 =?utf-8?B?ZmRTNFBEWHhuN1BwSkw0dlUwUmdtVmVqMC9zUy81c3FJMG9tMFZra2VrRmJU?=
 =?utf-8?B?eHpjRTJCK0dTMWdxWFE4NmlWMHJxUm84QXBkRFh2c2lVNUNUNUphWTcyZVJq?=
 =?utf-8?B?REJXaDBMZ0lDUWg2bEhxQWhBQ0dtM1dwZHFKMUROS211dVV4Ri9HdVpPRlpz?=
 =?utf-8?B?SnNrUjVtVXdPMXVsTE8xUnkzOWdpZUtSVEJTQU10L0tIeENrbUpDUCtyK0hq?=
 =?utf-8?B?czVSMnZpeWlJVzBuZVIrbzRZTzY0Z0ZYdVJtTTJjTnpNVFhqYzJmQ3Q4M0Fr?=
 =?utf-8?B?RXVZQU84TWpYYVhtWXozd2dUVUdMalpzVmhNcHN5Tmo0WFVZY3JIMU52eTR6?=
 =?utf-8?B?aWFZUFF6REwwZ0w3V1FIV040dTc3SFg1bm1PU0JRb1lnN1NoU1pxcDlkTEEz?=
 =?utf-8?B?VE1NVHpsUzUrMndYc1MwU2U1UTRwamJ5WFFqeWcwbzhyUWptSlRYeWxlYjZx?=
 =?utf-8?B?NjY0Y2NDOGRLaWFFZ3ZOUiticnBudGNac1NNOUM3Sk81a1NKNnhiYWw5eEZD?=
 =?utf-8?B?NWZlWGoxZmswK2RGUlc3UkpXdXdyQXpBR1g4RHI4V2RXSjd6Z0pZRzZFeUo4?=
 =?utf-8?B?Q3RveGEyRExyd0tWWDBGTFFZTVJROTJIeXZ6eEtsWnZqVDlEb2Uxaitzd3dI?=
 =?utf-8?B?eUVXS2RYWDV1ZHczdTNVWWxVV1ByVEhuWWNKZXVNaVpjUEVWQ2FwSkx1RWpB?=
 =?utf-8?B?cEtXZlh3d0QxWjRmTjM5VzNYem5BTG0vckZWNDV3KzFSQW4yMFpJQWhMK3Br?=
 =?utf-8?B?R1hSaUZnZ2dJVXJDQi9ZL1EyMkwxOEg0bXVNNmh2aDNQZHQ3U1ZJb3NkYlpD?=
 =?utf-8?B?K3gycEZ5dWtCYTBtUVJRQlpWdkdyZmNNYlRPN0o0N3lJcUhzSWptZU1pMUdN?=
 =?utf-8?B?dHU2MjdVbHc0dkZZWWlUTFA0MS9Ld3hIeFBtR0w2ZVBxLzN0cFc0aXRLeWFH?=
 =?utf-8?B?S2xEZGJuTVRxZTZ5a2YxYWFOWVBqZVlHUWNEbTh1NG1Say9HNmV3NmdYV08y?=
 =?utf-8?B?NzZzN2dnVDF1WnpXT01FN3IvT0NaSlo0aDU0QmVoNVg2cHltUXNibUJGODY3?=
 =?utf-8?B?eW5xcTh3eGJvWUxvSmMyemVreG50MHorSzEyR2tPQVBPTFRPMENxL1ZSVmVK?=
 =?utf-8?B?RmlVWkZzdG0xdGw2Tk9oWElWRnlEUjF0SkZjcWFiNVRUVG1BcTZmS0x6aUc2?=
 =?utf-8?B?eUJvVkZqdzY3KzNBNnZaTWkrRDN6WXhPKzdyL2NDbTYxckFRWlU1SkFHendw?=
 =?utf-8?B?MU9kYnovakpDamlFdEF0OTd4SXNYb3k3TzVqdDdsOEo1T0V2TUFPdExLR3hZ?=
 =?utf-8?B?QTU0bm13eWwxRnVhSE5OZ09oc0h5NmRta1ZYTU9MaHRvL3ByVkxHa3dka3hW?=
 =?utf-8?B?Z1lsUkUwTlkybnhRTW5zd0NlWG9yRERwcU1JRnJaMndWYlpKT3R0K09UNUdp?=
 =?utf-8?B?QnFUV3lYbzJaVzBpejgwMG5lWVg4VnVWVmFCc21mcUF0cHBQN1kzYy9PL2Jw?=
 =?utf-8?B?dVh6bmd6WEdMVnR5ZWZXT1I5OVNuZTVtN3RIOUZhZ2hRZjlia1lUWXRZeHJS?=
 =?utf-8?B?VnZwdkFSbjkvc1pBanF5WDRNZ2Naa0pjQUhiNWlhQXkwT0h3QThrdUxjOVM2?=
 =?utf-8?B?TXBsdm1oaUlGNzViTGhYTmxOTTlTU1dSZEh4TGN3RTZaNDlraWlCSCtPWmVo?=
 =?utf-8?B?MExzek5Id1pUVXhVLzQzUFBnZUdOUE9iK1FjNTl2eS9YRFE1WUg3WDB4Mlh3?=
 =?utf-8?B?SnMxdlZyaVcwUEVNclkvdkNoSElKUlZ0SHVTRS9SRkVHU2dzWEVVaUVSSDFs?=
 =?utf-8?B?Tk1OOExaTUxocUovNG85OEtHUGVSaG8rMG1EdmFMRWovUkxQc3ZZRGxHWkNT?=
 =?utf-8?B?R0JPTXc1dmF5QkwrbXdjYTV5dVZzZ0xDYlNWdUg5KzJUVVRWblpDWXJvRTdO?=
 =?utf-8?B?NjlwMUpsTTVWK0E3L1dUZ3JYdnVoSmVVMGtFUFV1NWY5V2xFdGdZUzcyWEEx?=
 =?utf-8?B?MmthSmdZY25qcGh0aWpqdldFakdtYnI5K3QxYXIxQWVOaTFMNU1WdkprR01E?=
 =?utf-8?B?UTR1VkZlR3VvTnZOYkVVcnc1Z0hqMlBkTitvVEhRWUw4b2dFR0NxbkI1NTBh?=
 =?utf-8?Q?1KaJasqfYQJJBZ5Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f2142d9-88b1-49de-9ad2-08da1e75efbe
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2022 00:21:51.0161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9CIH+7a1fcNfMtv0qiPMpT3gPPhHtMcblS2QlQ5E+9+8J0gMhhkY3ytT0Wemfi9SZBHcuVL6Mw/5emq4zSObyTCNJEBZ4GgG/4VhiUQZpLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2356
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/dg2: Enable Wa_14014475959 -
 RCS / CCS context exit
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

On 4/13/2022 12:27, Umesh Nerlige Ramappa wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> There is bug in DG2 where if the CCS contexts switches out while the RCS
> is running it can cause memory corruption. To workaround this add an
> atomic to a memory address with a value 1 and semaphore wait to the same
> address for a value of 0. The GuC firmware is responsible for writing 0
> to the memory address when it is safe for the context to switch out.
>
> v2: Add atomic GPU instructions
> v3: Add w/a number (JohnH)
> v4: Set DW length to 9 atomic GPU instruction with inline data
> v5: Rebase (Umesh)
> v6: Split MI_ATOMIC definition into 2 (Daniele)
> v7: (Daniele)
> - For non-inline MI_ATOMIC, len should be 1
> - Make INLINE flag part of MI_ATOMIC_INLINE definition
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 41 +++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_engine_types.h  |  8 ++++
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  7 ++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 ++
>   6 files changed, 65 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 047b5a710149..9529c5455bc3 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -583,6 +583,43 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *rq, u32 *cs)
>   	return cs;
>   }
>   
> +/* Wa_14014475959:dg2 */
> +#define CCS_SEMAPHORE_PPHWSP_OFFSET	0x540
> +static u32 ccs_semaphore_offset(struct i915_request *rq)
> +{
> +	return i915_ggtt_offset(rq->context->state) +
> +		(LRC_PPHWSP_PN * PAGE_SIZE) + CCS_SEMAPHORE_PPHWSP_OFFSET;
> +}
> +
> +/* Wa_14014475959:dg2 */
> +static u32 *ccs_emit_wa_busywait(struct i915_request *rq, u32 *cs)
> +{
> +	int i;
> +
> +	*cs++ = MI_ATOMIC_INLINE | MI_ATOMIC_GLOBAL_GTT | MI_ATOMIC_CS_STALL |
> +		MI_ATOMIC_MOVE;
> +	*cs++ = ccs_semaphore_offset(rq);
> +	*cs++ = 0;
> +	*cs++ = 1;
> +
> +	/*
> +	 * When MI_ATOMIC_INLINE_DATA set this command must be 11 DW + (1 NOP)
> +	 * to align. 4 DWs above + 8 filler DWs here.
> +	 */
> +	for (i = 0; i < 8; ++i)
> +		*cs++ = 0;
> +
> +	*cs++ = MI_SEMAPHORE_WAIT |
> +		MI_SEMAPHORE_GLOBAL_GTT |
> +		MI_SEMAPHORE_POLL |
> +		MI_SEMAPHORE_SAD_EQ_SDD;
> +	*cs++ = 0;
> +	*cs++ = ccs_semaphore_offset(rq);
> +	*cs++ = 0;
> +
> +	return cs;
> +}
> +
>   static __always_inline u32*
>   gen12_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
>   {
> @@ -593,6 +630,10 @@ gen12_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
>   	    !intel_uc_uses_guc_submission(&rq->engine->gt->uc))
>   		cs = gen12_emit_preempt_busywait(rq, cs);
>   
> +	/* Wa_14014475959:dg2 */
> +	if (intel_engine_uses_wa_hold_ccs_switchout(rq->engine))
> +		cs = ccs_emit_wa_busywait(rq, cs);
> +
>   	rq->tail = intel_ring_offset(rq, cs);
>   	assert_ring_tail_valid(rq->ring, rq->tail);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index eac20112709c..298f2cc7a879 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -529,6 +529,7 @@ struct intel_engine_cs {
>   #define I915_ENGINE_HAS_RCS_REG_STATE  BIT(9)
>   #define I915_ENGINE_HAS_EU_PRIORITY    BIT(10)
>   #define I915_ENGINE_FIRST_RENDER_COMPUTE BIT(11)
> +#define I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT BIT(12)
>   	unsigned int flags;
>   
>   	/*
> @@ -629,6 +630,13 @@ intel_engine_has_relative_mmio(const struct intel_engine_cs * const engine)
>   	return engine->flags & I915_ENGINE_HAS_RELATIVE_MMIO;
>   }
>   
> +/* Wa_14014475959:dg2 */
> +static inline bool
> +intel_engine_uses_wa_hold_ccs_switchout(struct intel_engine_cs *engine)
> +{
> +	return engine->flags & I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> +}
> +
>   #define instdone_has_slice(dev_priv___, sseu___, slice___) \
>   	((GRAPHICS_VER(dev_priv___) == 7 ? 1 : ((sseu___)->slice_mask)) & BIT(slice___))
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 4243be030bc1..f3fe7d4c3234 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -134,6 +134,13 @@
>   #define   MI_MEM_VIRTUAL	(1 << 22) /* 945,g33,965 */
>   #define   MI_USE_GGTT		(1 << 22) /* g4x+ */
>   #define MI_STORE_DWORD_INDEX	MI_INSTR(0x21, 1)
> +#define MI_ATOMIC		MI_INSTR(0x2f, 1)
> +#define MI_ATOMIC_INLINE	(MI_INSTR(0x2f, 9) | MI_ATOMIC_INLINE_DATA)
> +#define   MI_ATOMIC_GLOBAL_GTT		(1 << 22)
> +#define   MI_ATOMIC_INLINE_DATA		(1 << 18)
> +#define   MI_ATOMIC_CS_STALL		(1 << 17)
> +#define	  MI_ATOMIC_MOVE		(0x4 << 8)
> +
>   /*
>    * Official intel docs are somewhat sloppy concerning MI_LOAD_REGISTER_IMM:
>    * - Always issue a MI_NOOP _before_ the MI_LOAD_REGISTER_IMM - otherwise hw
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 830889349756..228070e31ef0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -296,6 +296,10 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
>   		flags |= GUC_WA_GAM_CREDITS;
>   
> +	/* Wa_14014475959:dg2 */
> +	if (IS_DG2(gt->i915))
> +		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
> +
>   	/*
>   	 * Wa_14012197797:dg2_g10:a0,dg2_g11:a0
>   	 * Wa_22011391025:dg2_g10,dg2_g11,dg2_g12
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index 126e67ea1619..e389a3a041a2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -102,6 +102,7 @@
>   #define   GUC_WA_DUAL_QUEUE		BIT(11)
>   #define   GUC_WA_RCS_RESET_BEFORE_RC6	BIT(13)
>   #define   GUC_WA_PRE_PARSER		BIT(14)
> +#define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
>   #define   GUC_WA_POLLCS			BIT(18)
>   
>   #define GUC_CTL_FEATURE			2
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 38ba9f783312..1cb88e99b040 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -3897,6 +3897,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>   	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
>   	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
>   
> +	/* Wa_14014475959:dg2 */
> +	if (IS_DG2(engine->i915) && engine->class == COMPUTE_CLASS)
> +		engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> +
>   	/*
>   	 * TODO: GuC supports timeslicing and semaphores as well, but they're
>   	 * handled by the firmware so some minor tweaks are required before

