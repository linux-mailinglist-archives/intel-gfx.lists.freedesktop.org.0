Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B63BC505FCE
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 00:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40EE10E15E;
	Mon, 18 Apr 2022 22:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE0110E15E
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 22:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650321449; x=1681857449;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Rc3o20xQP8L4QBnjwxhPH/fR9xTxyUSj0xDkeW3hM8k=;
 b=gWmuIF38A6O/Uyhz99hJhisv/dU+Fiq+AiKzgUaNd3RF0ZF8EMk21pr+
 GBjXfRqPg043kvo4ok7hKQyLyA3yDB4Z0oIWPIB1u73mRREuakp0fCs6W
 Jessn79f2TqP4v/xIQltfIizfKeV97du3JWLz3B7yWNJODZvH9wUKjf5e
 BLYR0bYAjFU/COZCG/QQZVgi8tlFvJ95ERWe5W8gQezaCIcHYCDcrxv+Y
 6fVm1AF2dRHTnsj6Nx8dQqLKwbFTQG0UePe76wZnYbwz1xv2oyv6Erw94
 bjwQ5FUBBwGPqLtNM+Lw5RoLqDKDsVg/mLnnK98bKmHHwtNZWpvZPeFa+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="261227850"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="261227850"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 15:37:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="592552201"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 18 Apr 2022 15:37:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 15:37:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Apr 2022 15:37:27 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Apr 2022 15:37:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h/rNedRY/ztD858r+7pcZz+SZpryPzwj1AfPF/BEkvVkXC1Pfy61+c/r3ocOnPvvy/POoBnjj/ib/Sw2X/dp8liqZ2oTOWpUuTc4UO6bpENnTDtzUTu6oFUjudG+KxAB75P/f3X50l/EDjM0QL1ODEHyp3msJ4aYVj0te74tQR1Q9nATCsAOXlMQuOLhyVUd/FS+KO6psaZwu2omaMvid4R1iYfGrRwq5NJJtPw+pCW/DPTpbFV6fieQhdnUEy6ArvzPN97DrDHFUu9rFrbx+Jn/Mn0YRXn3UvV5qaw367vaOtQKDPbh+Rysh3gxUf1JmhSlzCyzKWrLz1fGX5egBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Muhs+XXvESyJtDnaR8oB25bPeBG1M3mJlnwdQIshVfg=;
 b=RrGTTpoLMWH0oFkVVxzAeVDfOZ7SPu/gSbPWHLXKmqJnS0Cm0MEQXZaBsicrEy9mfzfnDnhT6IJdsxv1v+SmkWHar7k5clE14xK21Y6/KF1MDVDJnKNX4XYP2ntPv3DVPKcV4417pCiwQ0NPfUwaautcUYAAJgQGg7a6A8ak74SyOQmTouh5J+XhoAigTybTW9YmT7AtQd0P78+TwWKSsniP+qzfoEhFmUM+BhqHjfgicNjsA0WdI5JODDaZhLYIvX1rumRO783szlTs4s1c528+REOpCeWPzqmDllScIoZeDiKMKAD7hVBpqaer6HzAKE8Vm21AkXW3AK9Bqn1Fqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB2649.namprd11.prod.outlook.com (2603:10b6:5:ce::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.18; Mon, 18 Apr 2022 22:37:25 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f%9]) with mapi id 15.20.5164.025; Mon, 18 Apr 2022
 22:37:25 +0000
Message-ID: <2e5ca73a-4599-99dd-26e3-f8fd0988bbb6@intel.com>
Date: Mon, 18 Apr 2022 15:37:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <john.c.harrison@intel.com>
References: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
 <20220415224025.3693037-4-umesh.nerlige.ramappa@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220415224025.3693037-4-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0112.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::27) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cefc0a93-4d5b-43e6-bb51-08da218c02d4
X-MS-TrafficTypeDiagnostic: DM6PR11MB2649:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB2649EF49E9F04CF1A6280104F4F39@DM6PR11MB2649.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iCXitNbvpYUEt0gHHmCLRNxnf3qzxT97ppIGh25BybEcv+FYeDCoZmttpIo0OOBCdm+uVnvc+31TwiI1aL42Ix3pEXlG+oEIGi8FEMrVkZINMSKsQcvIKj7+a8slWDKdaF4NbGFTIkMeCbjfALIBhAHZLl6olmRRGWjED/8S98IlEXHn9qB4dK1mm6gvvHo+iavTh9PyHkq3ANqDiHSbshHKGFAy7MtAC92DilxmJZSbeTvnhj5Fjv5FdoXR20cG5af5qgrQ2C+8/rWp9ydT8yEPZN2brkBRYWYFfRKUpgj9RmgnK06m2nYqFyibt6neWH01tlo1l6iZZAvnX1boHUlmuoZTiYSwDGr6JmbfUcgQCrOjR1BpshiB5QQc77iT6sHNyErubM5LRXLSxQQUgNm4ZECxqXO7747jd3maGJiBkIsRKJRi7Avo41cQ748dDgEWDAkBv8V3OA+h5YMdk3vfFNtl/klwO7TzoGvVdXGEaQS/u6sSXa2uSg7yjc2zhrZLFsn3QjAdic8xPdNXux4tCELT46FlPrHrJSbDHp8S0cByBsnPCCXs4qMvy/rWD35eKscMhew6sSuDN+R/6YF5HVDx7hWtZ/KilmyCmuOrbAPSbBJZKekEgNu8FgcjrqtsVvLwc6rxJzz+8Ugt22hZ+QIQavGvEExy5xXZZK4UtxgunWRWPx/v8mkzXh26gthvFr6WSnrKXBTMN0njuvv2fYTwSEEo0efiOFZJGJY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(6506007)(31686004)(6636002)(2906002)(86362001)(31696002)(186003)(5660300002)(36756003)(8936002)(508600001)(8676002)(6486002)(26005)(316002)(66946007)(66476007)(66556008)(6512007)(82960400001)(2616005)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVV6Yk9RcWFjR0FsQWFzMXptMXZrallsSmR3aENiZXdscVNaa3FnNzFxeUh3?=
 =?utf-8?B?NWhKZGdSTVBQaUxqaTh0TXlZbWZmNE5raDBwRVA2ZW1uWEQ3UFNBd3VUdVhn?=
 =?utf-8?B?ZnV5QjdxUDFaSTA5MWh3NjdUUTJBZUZDYVl2bXYzWGJobng5OEpjekVPa2xP?=
 =?utf-8?B?cmFyY1NJdG5QTkxNWHcrcUVqM3FPTXI5clZsTG0va2d3V0tDN0hNc0pTQkZQ?=
 =?utf-8?B?L0dhZkpwSlZZT0tLNGgzaEExN1d3dFBoRnV6TnNIKzRHNWVvVm4yeS9xdUtL?=
 =?utf-8?B?eWI2UE1JTWFuVWdjS0gzZEh1Vk9RM3N0TDZwR0EyRDROWnBYdzJHSWt0bTVK?=
 =?utf-8?B?R1dYeTVjZHQxbVlvWFFML05YQWRRNCtGdDFybWVVNGdoQ3R0dk9iV3E4ditt?=
 =?utf-8?B?cWo3S3RSd0ZUNEVZTTZCdHYxa1JFZEhyUllFUlVTVmJ5aHg4MmdnY2hZL2tn?=
 =?utf-8?B?anJjTStvWFkyRmhxYVBCSkVHYWppNy9ITmJhVlRzVC9zQjgxYnNjSDNpWm5i?=
 =?utf-8?B?Y0UzQXk3RmF5SktwSUlRemQzdVI2OGpFRVlYQXdaclVQOTZrR2dpSUU2ZzJZ?=
 =?utf-8?B?Nm9FVGdFTlFUSnZSekJhMFgvcjdOa05KdTZwMjFrNjVCcXozbWJTRmFwcmxJ?=
 =?utf-8?B?NVlEOWNnWGtqYVF4NGRvWGtjZEVMelhvazFJL3VCUzNHTWxqaERWUkhXNmY4?=
 =?utf-8?B?dUN2WFd5L2dvZXZrK3hlNnpvMU1HeXY0blpBUXcxRHluMGhscUwxTDZPdVFB?=
 =?utf-8?B?MG41UnUyS3MwUG8xdVFVQk12MGNGbkFvZytDWU80OGJ0bm5tMXIyKzhzRFhV?=
 =?utf-8?B?TU5jTTBxNUlKTEJFNGhzSDhIK09ITkZadmwrSTlPd2Q1UmwrVUlhTVhXVm1E?=
 =?utf-8?B?NTNmT093UVQvckhsNGdkeVZXRFZKbmo4c0JQTk95a0ljSE9PS1dSeDY4cU10?=
 =?utf-8?B?TEdRV3hmbzlnYXhTcEZqajc1VDB3LzVtWWw4bjJLSDN5N3BPL3g1c3JyZkdH?=
 =?utf-8?B?bDludkFOYmhoaGwxMnJyQkZYZnA5emt5YmtnTm1nZXd1SmdQT2RMb3oxNHRH?=
 =?utf-8?B?R3c4MzdTeWJsRE4zV1JETnQ1aXFFNEkzYjV0T21uV0RUVENBQi9pVWFSMjVo?=
 =?utf-8?B?enJ6cDRaYjZwTzZwcXlSTVFTQnJRV3Z0R1hGb0RLZWZPOFVSM1F4S0NiZzQ0?=
 =?utf-8?B?ZEVPbWMwQ3k5Nnd5cjU4dWtwY3U2ZG45REdLb0tHdHBnOUFDTWphN1E2bEE5?=
 =?utf-8?B?YnUvMlZnR2NsbVZLd2l5aGIxUGMvYjhVcjZyYU5yVld6cFluQjVIaFc3aStF?=
 =?utf-8?B?cC9qMmFVa0dQQ1owRU9IdlhXSWpuSmJtR0o1ZVRpVU1SR1JZeCtwbFFnVldL?=
 =?utf-8?B?dDFKTmppaWdNSkxYWmhWaUJFUnZhenFnRWlkTCtZZDYwRU1tQ0JVdDdscEJK?=
 =?utf-8?B?RWZDcEJjRGlSODEzaUVpOFlGRHhieW8wU1lFcXZrNlNFRHp5VVRTUHFRdG5I?=
 =?utf-8?B?eXA4Vzh6WDVoSHJBVFN5WVBNb1paQlV3VUZvSFpGU2l4cG0xQlU1TlJUZ1Z5?=
 =?utf-8?B?eHlZcHJNb2xnd2JyVEtBcEh5SUkzRGRobzk5cDlhRjFzMndoVGpOMTJFYkFM?=
 =?utf-8?B?QTdoWWEzNVhzM2k2WW1jQ2ZjNzcvODlwMmZ2ei9iN04vdDA2NG0yTGsyeFY2?=
 =?utf-8?B?N1FoaUdMUkYvbTVqK1dxd2ttZytFK2hZV1pGRUpqbGp5SlJnOHBJK0FuMmVp?=
 =?utf-8?B?bWNEaDJWTUQ4dmNFVUpnSFlrNDZQNWxGMnFOcmhoQmJ5bUNZMlYvbXdveVAw?=
 =?utf-8?B?Y3d5MGNHKzlZdjhtTE9ldTlxNG1ZWTgxV1dCRU5ObmJsU2dpN0plaDZkRUJL?=
 =?utf-8?B?L1dJS1pYM0RyMXpQTmk3bHJnampJUG8zVW4vZEwyelZqTmZXODNGUFNPNHNV?=
 =?utf-8?B?WWFudjZ0Y24ydTBZLzNhR3doSzRWbUt1dXRXUnFWNkc0ODV6LzZuZUt2L25V?=
 =?utf-8?B?UjZ2UTUxSTAwbmpLODVhcjFPR2hDMllMdE5nbThJL2x3ZGpzMFNiNUVST0Jj?=
 =?utf-8?B?OUVibzBQK1AxVERsZmY4QUovMWxoa0RNWlNxRFpjVkxuK3RpblVON1B0elhk?=
 =?utf-8?B?M2t4cFd4bkVFdjJYY3VSZEQrQzFNVEhKS2JPLzFOK0xDWUZiWkdTTThwSDdu?=
 =?utf-8?B?bHVvU3VpVnNLeWY4eGpCTDFja1NDQ0ozUitXRng5QnVZUFVYcXdYRmNlZVov?=
 =?utf-8?B?dU8yZkVqS0F4WG9YRzlBNHpuekxWQkNNZDY2UU9kWjR1aTVqeS84R0J4dzJN?=
 =?utf-8?B?eWhLaVdlcDFMbjlNSTdVeGZiUldpakFSTmI4c0JNVHRSbjVaajEzMTZPdkFh?=
 =?utf-8?Q?DmfTkEjtzVgn67UAig287/wZn/b+2ek/MqsyQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cefc0a93-4d5b-43e6-bb51-08da218c02d4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2022 22:37:25.5480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5u4u0u+e7RTl+PsxEsdwj0UyNsMK3oRFHhCUwHtT4PnhsR4pN8MJ7gsuob4TUh82X6uENJfAeJm3siybpUz3MljC1+kAjLtIEzwd9dHfq4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2649
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/guc: Enable GuC based
 workarounds for DG2
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



On 4/15/2022 3:40 PM, Umesh Nerlige Ramappa wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> There are some workarounds for DG2 that are implemented in the GuC
> firmware. However, the KMD is required to enable these by setting the
> appropriate flag as GuC does not know what platform it is running on.
>    Wa_16011759253
>    Wa_14012630569
>    Wa_14013746162
>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> CC: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 14 ++++++++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h |  2 ++
>   2 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 185fb4d59791..fd04c4cd9d44 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -292,6 +292,20 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
>   		flags |= GUC_WA_POLLCS;
>   
> +	/* Wa_16011759253:dg2_g10:a0 */
> +	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
> +		flags |= GUC_WA_GAM_CREDITS;
> +
> +	/*
> +	 * Wa_14012197797:dg2_g10:a0,dg2_g11:a0
> +	 * Wa_22011391025:dg2_g10,dg2_g11,dg2_g12
> +	 *
> +	 * The same WA bit is used for both and 22011391025 is applicable to
> +	 * all DG2.
> +	 */
> +	if (IS_DG2(gt->i915))
> +		flags |= GUC_WA_DUAL_QUEUE;
> +
>   	/* Wa_22011802037: graphics version 12 */
>   	if (GRAPHICS_VER(gt->i915) == 12)
>   		flags |= GUC_WA_PRE_PARSER;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index b136d6528fbf..fe5751f67b19 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -98,6 +98,8 @@
>   #define   GUC_LOG_BUF_ADDR_SHIFT	12
>   
>   #define GUC_CTL_WA			1
> +#define   GUC_WA_GAM_CREDITS		BIT(10)
> +#define   GUC_WA_DUAL_QUEUE		BIT(11)
>   #define   GUC_WA_PRE_PARSER		BIT(14)
>   #define   GUC_WA_POLLCS			BIT(18)
>   

