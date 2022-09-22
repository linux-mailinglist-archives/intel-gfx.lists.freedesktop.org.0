Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D6D5E6203
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 14:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C9D10EAED;
	Thu, 22 Sep 2022 12:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1AD410EAED
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 12:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663848703; x=1695384703;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u8nvnayMxc6rDxBrCvXV+QM87s+m+CW+3F63FJdA9ns=;
 b=fzK2SMYRTcWj6FlJ2+6FWzYCQHKCQ45Z7fGh8X3zDy1oRxaiAEDoMuvw
 qy2GLDm8DUk1aX7QXZe2enEQOO0m4rogbwez4yrvfloLWMc14GP86hJhC
 iL+6ntFuNakYgzlqfcIOQc3TRPyvMTm50eFHxcAy3nQ2Xf24UfVpClfDH
 TemGm+2/z8DkP/3Rqh4aNtBsEju8XJs3ZLMoRx76pGBakhKOuuo8P0Fe9
 R+owlILf2sGKF+bW50BiYKJHuNwYCCvvq6eltgci04izwENhNXQ6Jc/jk
 bW/tO+QdKVqpDjvd4zzi85adU9114GTEFGXptrVdHvLLOiOfbXdM08pwA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="364259522"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="364259522"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 05:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="682190717"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 22 Sep 2022 05:11:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 05:11:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 05:11:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 05:11:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YyVHK7fEzmB8HlZloOc1r3U12e8iyIYo2+rJQNxy8sQh/r1WPJd4pB1CGSH4Lg9s0fnB9OKXyY72mUjpkk1qk+OKf9/MztZDkf8G5+NoF+WWcNV47x8DnaupEdWr3k5Nq6Gg2Iz73e+Xmv/q50xodHcuHwLXOadJx4gikx8BHqDK7beLH6nYNk9003CcjpFvbssfP5dUDjF5LER/PecG3/vTtL3sMbjAgHiSSt5ByrV8gGcj1N84v1fnICbA52iqqYZTaKmMN5d3WVNuoASu2SrMiUeQdaSg7tyyr6q+MV+3tRSudod7w2BftvPPL8qO97bo4SxuraPz4+RNHnjJEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RupVkrgHhbpvOOMbvcn2xqAeZtOhQ34Wxn1HCyFR1IM=;
 b=O327vSX1sroJVYafDqzNup7fWQcZvz7KQqh1/98D3VJ0qfdeq6TuLILZw6i1305GKnOTr0A5b3YvsEdsC3syDX4KfWIXtaOzfGkjbUrL3TiQWHvMDPS1ZQBJLw3wmNMvHSkAGBvrZLxhCuPyOdkUOM3XOITsmc/LhAgSN4kPRXvivOx3EAn1hbrFcYZl/7okoYExQLFHYxeq+2TM1/48eUUKN3hBQ86C5lJVPWOIXv8FJbQCFtKrsi9LoA8JeLqSvJbdwdwhZOWWnCHpW+ktpZfrZU1ueSfIOTnzWVl8W19H5a7Hvi6JJ7qkcJnrYSs2GeVWSonZkmM0JQCPyT7Aiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by CY8PR11MB7009.namprd11.prod.outlook.com (2603:10b6:930:57::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Thu, 22 Sep
 2022 12:11:39 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1f8:fd76:9d4d:71bc]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1f8:fd76:9d4d:71bc%4]) with mapi id 15.20.5654.019; Thu, 22 Sep 2022
 12:11:39 +0000
Message-ID: <94abfe4d-991f-e354-b6bc-84674c49ef51@intel.com>
Date: Thu, 22 Sep 2022 14:11:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Das, Nirmoy"
 <nirmoy.das@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220908200706.25773-1-nirmoy.das@intel.com>
 <2cd5568f-e63c-1ae3-6aa9-809be360a397@linux.intel.com>
 <a7dcfcb7-f068-d821-9321-bba80b44ff36@linux.intel.com>
 <27158ebf-24e4-c519-13a5-f3d91a539ea2@linux.intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <27158ebf-24e4-c519-13a5-f3d91a539ea2@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0666.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:316::17) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|CY8PR11MB7009:EE_
X-MS-Office365-Filtering-Correlation-Id: 9624576c-0b07-4555-4a92-08da9c939a59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mAoKgAl0kr6EPWjwM+0vEOYUQFHlULaXPmpP7iUH1kob4jtjT//nInQOmLG6X0Rqc37EUtP64Zc+SmAqpUTBu6xeUnxhJsbfQcEGMlkgLIxD3R8RAcUwBtzW5e8iP3EnN2xGwoSNeo+UErEbuuTpmCWRQlf9sKJ9rzpVrLQuXoSkNgL6wBBfNdBoGRDufrPg9/seIf0U1o3yBENSpOtnTP6r/fkwfU+KMu1HJBh0O0jhMFC1F//xC9eRtZeR7n6qvlS03dCDrRwOn+x9AOW6Kozr+KyeE9m0FjWsf895N2+f5xPQ2NSDFenjA+hV66PbYjwYicC5Ibp2TKur8lZl3j4DdSOD35GSynHpyNsbzLWxYltbOq4PG1F7pWxyAJL7Gl4nQzviejQ/64Zo3GwxNAPMkPh4MmOayBMhMlMcaONQTK2IZ1B1pTiNFJobKt+7zqVYPsjAbNkXsggcBa9It5VICMIEbXZr7hO1x9mQ32HRqGeBvOU0FbhpQV+0OwMasz3wa2aTlbeORYs2LoCrs6Xm3hKUnl6vAY2wbgA3Pf6kYMwVlOPo7kXNbb5O7xAAv5pBgktKSY2ylZsKuld8aEY9O9W+khVjfiGei7DVg8ZguW3+EMuhKPuBOjkoyCQFLkP8NABAWC3j9Aa2jV6LB3NEqqQfR0CkFVe8axu5dsP/XBt3ekLdrrkbYCHSl5+GiwKBc88sMrE5YaPdSu9to7ra/PGI9HuZydgFptwfjaaLT5DTdQjV0S98J8zaPbaHIqEg6Rz8IRNC8p6TPu6sXZToVXvxnOivQEwfa5EcHLA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(366004)(376002)(346002)(39860400002)(451199015)(6512007)(26005)(41300700001)(82960400001)(6506007)(5660300002)(36756003)(53546011)(316002)(4326008)(8676002)(66476007)(66556008)(6666004)(66946007)(83380400001)(8936002)(31696002)(86362001)(38100700002)(2906002)(186003)(2616005)(478600001)(31686004)(6486002)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXNnNnRiZkttc3VuRXF4N0VRdExFa1BuSkhSUGZZL2sxNHFRSUNQQVZGN2Nh?=
 =?utf-8?B?ZlowVGNKaVRMNDUxMk1BQWN4c0JlR2NtcjhjQmJQNjhhTncrK1pmekxRSTJW?=
 =?utf-8?B?cSt1ZlF4SW54K2UrTlM3Z1MrQi9Sa3ZKYVJ3OW9uOW0zazNuS3ZrZzZiMGdV?=
 =?utf-8?B?WmwybUVMUVNCYjdyUFhUN0Z1L3RGb2RKdCt0MWxxWGFwZjlNK2lZOHEwenZs?=
 =?utf-8?B?OENUUFVCSUFrbkxHTzJPc0k3bmcxY0lzSDFlWno1SUhJSFF5cFpEaGEyNkd4?=
 =?utf-8?B?Szd2eHplbFhYVEdaaWtUWkQvV3NyYlQrZG5XSUkyTUVBbWtaeDNXckMrVkli?=
 =?utf-8?B?RHlHU081dm5OMWxIbHdlNTQ3VEowSnJwTkFvSFZobXF2cTg1ay9aS012d2Ux?=
 =?utf-8?B?UzNsa05VZERaOGt6YWxQYTJCTEJBMm1LODFPT1RrRVRsVkR6TkJwRHBzcUtk?=
 =?utf-8?B?V1FaMDZJb3IwMGZsemVhWU1nc21XbS9jZlhXM3Jsb1k2dXpyeVE4RWxNakZm?=
 =?utf-8?B?YmNmbkdhc2J0czJIdENjbG8zbzRXMkU4V1BzQXN2OTJmVVJiR29MTEJOWkZG?=
 =?utf-8?B?YXd1MjVxenBZUlhkYzVBZS81NE1EemsvYWs1dmJWb1pwUWpZSWdsblFhK3VJ?=
 =?utf-8?B?cVZVZERYb3k3d21qVWVFUTYwb2JFaWJ4OUFDaWlGbTdsNFRmOElkcCtEZkZr?=
 =?utf-8?B?Rllsc2VaRUo5ZEFSK2IvL2d5Z2h2M2EyVlZEazZSR2MwcUZMdHIyejIwc1l2?=
 =?utf-8?B?dEFsYWNBLzlYVWcrNk1YVjNXY0tNa1J1UkNJcWdOYi95Y3pGa3ZaZzdtUlJX?=
 =?utf-8?B?QUtkaTBVdWxublMzYVRDWFVkZlVpRXN5aDlkT3Vsc2RJRzIwRU14em1KcDRl?=
 =?utf-8?B?aFZyWEpXamtrZkw2dkR5RkEvWlp2S1pCVW85RmJrVERTWG5IT1kvQTRPYVFO?=
 =?utf-8?B?bE15T1hCcG8xUmZOWk5EOE5YdnhkQ3BmMkk1anVNVWVHSjNIQTlyK3JwaHEz?=
 =?utf-8?B?cGl0NDRsOHZFdTZvaEU1d3dVZFJsd3EzK2hqZ3JGa0l0RS82TTduMWxxMzNG?=
 =?utf-8?B?eEI0b3gyZzd2dDJDeVZEdTBqd3JtZHlSVy9BWE9qOU9jSGQrYXViWVNtSTlk?=
 =?utf-8?B?UmxIa0hOeENSN2pzQnRxUEdiWlQ4MlRIVmx6UDdnYnlsSlNPMVpmRmZTT3Zi?=
 =?utf-8?B?bXUyanV1dDdPdWZJNmp6RHNFYnR6RHh5NnFKVS91M2ZXMUR0QWxoY1RUQWpH?=
 =?utf-8?B?WDEwL1hQL2ZXVzVlZDBkU0FHc1RwQnFxR0pYSXJEVkRsaWNlQmh4QkVqaDZL?=
 =?utf-8?B?ZUpydkN3KzNIL2lQemxoZXVkYWI5cVFzZzlyUHdWNk5hdVh2eTlxcUFiNTd2?=
 =?utf-8?B?bHhMWjBCVE5YMEhlcXNRUmxteGJHSnhza1o1TFpqa3V6NWFQMXNhbUpYNGJ6?=
 =?utf-8?B?MzBoVGVuZWc3Z29QT2dyNWYwU01vbWI0TkIwMElyZnI2cGNFVm1qZzE3RzZj?=
 =?utf-8?B?ZmFmdDFFRUFSZEVmMnJPeGcyMXJMejl6RkxlRUZaanA5VlhUQmo2OWoxSlRF?=
 =?utf-8?B?anNnWmRpQjBLWG5OTXRZTCt0N2o4cVV1QVpFRlZhYy9ZY1RWWVRYUDhyZjZu?=
 =?utf-8?B?bnhkRjdubWRFU254MTJxRCtzT3F3bGV5ZnlCTzRITkI5QmlPd0VLQnhmaGhp?=
 =?utf-8?B?dzN1OVUzNm84TnBUNDY1dFZucVZZNit1Wjljck0zcXJaMmg3VjhpRWZRYk81?=
 =?utf-8?B?Q3NnQ0Z3ZkhqdTVyL0J6cEhlKzNtdWxSTzdEZHB2UHFlSmZOa0lKNFZ6Qnpt?=
 =?utf-8?B?UFpJZ05HYUJBN2NsSHdVOXpzRTMycS9pN1dPMVQyUjgwYU9NU28yYzg2MHd5?=
 =?utf-8?B?cG8xMzVyV0xpekVSUnVwY09mOE4xYWJORk1yb3hPTjZZZU95MmZHOHltTlBB?=
 =?utf-8?B?Sjh6VXd5NGN2dVV2NkRNT2ZIcW5lY1FVWjVmRXBNS0JZbHdpcWtlRzArSHNj?=
 =?utf-8?B?TG14aDNiQ3pCZlgvMndBaVE3NGpJdnVGTVhBUlZBUFpVYnFZL0dOWVY1a1NU?=
 =?utf-8?B?SDdxa2VIQkVGZS9LazMxRC91RHlOV1h2ZHVrd21QK1VpMXQzZHJFUk92Tmow?=
 =?utf-8?Q?5JywX/qBwpGEii5RjrNDQ1PkH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9624576c-0b07-4555-4a92-08da9c939a59
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 12:11:39.3764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CarfzKyoQbz1qCKcVhFF7/QqAT+idisJOlI6P4y4WvA+O8JuBO1ulLEDPz4f23p1og098w/xQM0zbjdN10T2kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7009
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: matthew.auld@intel.com, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/22/2022 11:37 AM, Tvrtko Ursulin wrote:
>
> On 21/09/2022 16:53, Das, Nirmoy wrote:
>>
>> On 9/9/2022 10:55 AM, Tvrtko Ursulin wrote:
>>>
>>> On 08/09/2022 21:07, Nirmoy Das wrote:
>>>> i915_gem_drain_freed_objects() might not be enough to
>>>> free all the objects and RCU delayed work might get
>>>> scheduled after the i915 device struct gets freed.
>>>>
>>>> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
>>>>
>>>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>>>> b/drivers/gpu/drm/i915/i915_gem.c
>>>> index 0f49ec9d494a..e8a053eaaa89 100644
>>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>>> @@ -1254,7 +1254,7 @@ void i915_gem_init_early(struct 
>>>> drm_i915_private *dev_priv)
>>>>     void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>>>   {
>>>> -    i915_gem_drain_freed_objects(dev_priv);
>>>> +    i915_gem_drain_workqueue(dev_priv);
>>>> GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>>> GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>>>       drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
>>>
>>>
>>> Help me spot the place where RCU free worker schedules itself back 
>>> to free more objects - if I got the rationale here right?
>> (Sorry for late reply, was on leave last week.)
>>
>> I had to clarify this with Chris. So when driver frees a obj, it does 
>> dma_resv_fini() which will drop reference
>>
>> for all the fences in it and a fence might  reference to an object 
>> and upon release of that fence can trigger a  release reference to an 
>> object.
>
> Hmm I couldn't find that in code but never mind. It's just a stronger 
> version of the same flushing and it's not on a path where speed 
> matters so feel free to go with it.


Can I get a Ack from you for this, Tvrtko ?


Thanks,

Nirmoy

>
> Regards,
>
> Tvrtko
