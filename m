Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5AF7BDEDC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 15:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A6810E114;
	Mon,  9 Oct 2023 13:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588E010E113
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 13:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696857853; x=1728393853;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=3GaTItggg0wQW2WidJ/Hb2GnMBgofVhEu2Wv+neNB+4=;
 b=mWdopw8sYx3/P4h0Yd4eLkuLL3GJnByR+S9ikQA4XK5vRMVTfyECt1JQ
 j4Wf8hAmyonyQVledZ1t8Uj5Vdyl01t6gxrclOuEmLGRuV2OwHDbb1MJ2
 4IAb9DdlcvteCiNst0cVXluTenUbcMO9p+KXYyzKIjI4SmQySjuRHjTVK
 GE1S1HfMUJGX+q9i4MuOtq4eroU06D+Ovb84Q/zEqlV+YsYKK/f6x5rF5
 TEONr5vuBwB0PFbi16Gg0LQlTVWs6elbAmkhCo0jBnxTqZhns376kuqE3
 aUN96TQSWJq/brJQ78wIWFbX2hzNkMRXFswiuC2LuzRS+mvhVOzl73GrS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384014744"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; 
 d="scan'208,217";a="384014744"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:24:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="896769251"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; 
 d="scan'208,217";a="896769251"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 06:22:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 06:24:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 06:24:11 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 06:24:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eX1kWcCStcmCyAyZlVMWh66n6qpup8KPzjtPvbBgM/eHPZDLLkrKBcUm5mUgJTWSQ4Xb6EdWgXLc2BBQIKkS4IniYZyw4kHHQxsveAIO9kAnKBHdxsVLwR+8n1etZ3oacDg6D2Lk5G5bpdmcc3fgiJNM39xfL+m9A9oofLtm1cLlaVz4qiJhcbZyaOqCCK0SqfHqC32XgdxAJmypMlzDY3v8Du5vuQbFnH09UpQflUP9UVENK+YycXp5JI2t9AEr97YMx2LtF5APS1meMZ3ynWRbqjNBsxoISRH3aXWVUNcJfa3k8ptsR9Jk3oczXkrp3qjpnpXfBgSvQjM3HjC/6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uuwXoD2LVCLziblSeH4vHo67NieNYBS152uGaRrAMPo=;
 b=j1lcexU5hb8we0cDb5i63XW9IlAk4APKBZlwKk29JnO7R/OYsMf7hlU91SQe/8HcXrv1OzSUHptwCQWHTInA7guZ18DBh2fHet704kUzWkZL+QugF+4Tlwf1nfTQujgZEZQUdY8LjCb+nmcV2IumCEejjEZsHKxmKbuljdFJdkfapCEdqONl1Ej1buz9XViDkM4EbKbxcFfrRb0QKl5Dgpe3LuLqhZxzzcQGpXBmriuQgnNqUTFOAR8/9n4LbRcj0BrUJDbbXboa2VRMDngbhdtHNxOqLbv5Ld9EPQpg6mvL9/Q6EK3vU/J6CIXxrOP+6/OekdvTJINPzee/PzV6mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by MW4PR11MB6571.namprd11.prod.outlook.com (2603:10b6:303:1e2::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Mon, 9 Oct
 2023 13:24:08 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.032; Mon, 9 Oct 2023
 13:24:08 +0000
Content-Type: multipart/alternative;
 boundary="------------kSf5zh7p1hVk0cftQpvD62oV"
Message-ID: <e60903de-3a94-cd62-76e2-a733d527adf2@intel.com>
Date: Mon, 9 Oct 2023 15:24:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
 <20231006182051.1599923-4-jonathan.cavitt@intel.com>
 <cfd08985-8fe5-1601-6cf4-92a29a111f8e@intel.com>
 <e149a000-f746-9ae3-4dfc-cfe565a836b0@linux.intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <e149a000-f746-9ae3-4dfc-cfe565a836b0@linux.intel.com>
X-ClientProxiedBy: FR2P281CA0078.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::20) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|MW4PR11MB6571:EE_
X-MS-Office365-Filtering-Correlation-Id: e929857a-de51-4ca0-f929-08dbc8cb0483
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VgHpvypgSdtr/KdMmxnFwjkXVliUjegLm/KOd6Q30F0cRSBDPdfNE85OwI985nuzNbVEEgjsvzFX9DZm4CkBV+CNkDxiliad2+BRhMB6qGtMeuK/aYf3HDASkQMFfxEmJqwvtkSf69neMXcdl/3SmWbEcUVem2TI+6RbAKv5X2RxLmCjGfjdf1+bEwgfFyDLrVuOirmgwQFVYOlqvBBCSMSzsF1RzwRt1YjOfwHl4F/MssNBCs74bAjystI3cigtTXVQgd1Yga/ktaWnOeA8bgZ9U8ufaTHPZSuW6W95+JctiTr8CvBvW/Gx1TYZq7+c1UPEsvjpQ+gq3gHmTKz0ZqO/uTiErGKBf45KP5J6YI20vRDcUtRGomQNUd8e+zmbbpdwFnZo37wrPCUYmETaT/I3qp+rKro99U50Hj/OJeIEEbK5q0WjK2AhaZ0hqIT+l3VSUEL4w1Z1sDrP6r5AE3xDWi9OLjpZ89NeTspzwhrnSdGedXuGYuIGhGIpAoTZkilOk7jXjONHGtos2zJxah9kp95vFtGqu6SMISmETQ48mRANGTO6G4K1BRMNWVfEkTbdyNpCdKabrXJwGDL2lXiG21SsT2SPKaYYGwxZeObLHaezT4OUMRT2KoUsfhN9SqtyQNCl1RDZMgLDdofvkg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(366004)(376002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(31696002)(38100700002)(86362001)(82960400001)(36756003)(31686004)(2906002)(966005)(6512007)(478600001)(6486002)(53546011)(41300700001)(8676002)(5660300002)(4326008)(44832011)(6506007)(33964004)(8936002)(6666004)(83380400001)(2616005)(66476007)(66556008)(316002)(66946007)(110136005)(26005)(166002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkNWUFRrUTJRcWVKSnBRdlZXSFlha1h2SlZqbmEzTFpCQUFDN2JFaUpDK1pC?=
 =?utf-8?B?NEdSOFcvNEh3TVZRUUNxeHZjNExrcGpxTE53N2RVQ3FUelBqOFJHdUpIUkNt?=
 =?utf-8?B?ZW5YZCtXcGVuaHUxWERHOVNoeVpzUnBSNEYxUTgxdmNheGhrQ2dSRnJrN1NB?=
 =?utf-8?B?c1lOKy9nd2hvTHFsUmJEZFdxUEg4N0wyRW1uVytQMmNYcmhWbWxSREFGVi9L?=
 =?utf-8?B?a1NkNU1jbmhuaU5pRWRqWVdHY1RodS9XYVdUQk5JRnZXVE95Rk8xL3JXS0RT?=
 =?utf-8?B?Nk9xWHJMOE5VcEMyZy9BQ3RSa0dqWDNUK09BYUswcVArTEdGdnlPZTZJTlJ1?=
 =?utf-8?B?NG5CSWl4cklwekY2SmpKVWJJU1g3d1JoSWhmcm83eUR2YVJsMEg1US8vWU9p?=
 =?utf-8?B?dS9JSWlsaW9UaEF3RDhJVW5IKzljTDQ1OU5SYVZCNEplOWhEYjVzelBjaDd0?=
 =?utf-8?B?NjU0NTFZNTRrb3NXa09iTU5jWlpibEQrTHJoZDN0ZUJhVzlqY2tNMXFqazRE?=
 =?utf-8?B?bEplejJNemVMWlo2Ly90cGxyKytmQ1RQeWRtL0ZJNmdsd1BLYVhLTUUyU2V3?=
 =?utf-8?B?UTU4bElaWWJ5a2VBOHZQWCswUnpEdUFHVlRoejVwRDJDRlo1YmF4cmVtYWhw?=
 =?utf-8?B?WjNadVZvSG80ZWpoRkpUWWc3MC85RXBQcUwrMlo1Sk9WSjZZdytLK2tESHNi?=
 =?utf-8?B?blNrNmR0U3crd29WVkQxZmtIUWNZR0RIQVMrOFhBKzdzMklWWVlKQ2ttdkdH?=
 =?utf-8?B?RHkzTTd0RDRKNWdWY1ZMc0tISkIzanZ0NlhLTzJyeS9veEVyeWpRVWJ3Qjd6?=
 =?utf-8?B?bk9XUiszWDdrM216VUFnVStSVlUvYlJ2Rm1NYjBwSUkwNG5VMDBvSUFtcDRj?=
 =?utf-8?B?U1M0TFFTeWJ6OVFsR2I3aHQ1M2o1bzdCT25OZTFiY2tGN3U5MTA3VWI1K28r?=
 =?utf-8?B?bHpPYUxLYksxRTZWNHAyeW90V2pKUk5BUFBPWkI5dHNMRStDcWhtcjFhdHlP?=
 =?utf-8?B?bTZmeFZJT1Y4cE9mWmNKQ28zQnJEREVranFnZkJFajBxUjN6UCtoYzlKMWNj?=
 =?utf-8?B?QVNWLzR3RTdVc3pDTEh0dUNGYWt2OTNMNW5aTkUvUFpQcERWNzVQT1d0VzVm?=
 =?utf-8?B?dkJTQzc2VSt1cEdEL2FGeFplbW9rUERQbU1FdEdhY3Nub2NyVFFGY0JTN1c5?=
 =?utf-8?B?QzJNY21lZHFKbU1NcUV0REJBR3lCamMvalhYd2lKUUFhZGxzODhmYnlYS1Z1?=
 =?utf-8?B?eGloU3pHNTZMTFVzVmVRWmg0UVJBaWdyQTZIdThlcy83Y2dNU1FkYVplaHc2?=
 =?utf-8?B?dk9pUm54RUVsbm1kbWZxWnlnMHFUMEdISnZ4Vkl2S1NjSW52akFYQmhCYmpC?=
 =?utf-8?B?YXBGbk0rMUxkN05LbmxjNDkwNTlLRXRPclVwU1A1aWpwZmpoQjdxTjBYNnJr?=
 =?utf-8?B?UkNONGloYWNRaXBUcUk5K0FNQkNuZzFCTVNPY2pnNW9mNmI4Vy9zVEs1MVdG?=
 =?utf-8?B?eFBwTk5xM3lmT3ZwVmxJVHpKWHhFUGJicUdrT1huc1ptdE9VR2ZsN01jNVIw?=
 =?utf-8?B?NXRHOXpzUVJCZXJ4eU1LZ2o0YlFyZXFsQ2wvTG0zZzVWVFBYWlh1TENvQkZC?=
 =?utf-8?B?ckppMGVjdHNMRE5xYm5hd3R0R2dTd3lOU3BYazUvaUNoWHVNSjY5VzFtQnQw?=
 =?utf-8?B?eThiWllrWktRZU0xdmJsc2hJUE9Bb1VqNEFLM01jeGt4TEgwU3puVmJMRThp?=
 =?utf-8?B?d3NtUUpzU0dQUTZVUzdkdkxnUERudlVleU9kMUhuc05aL0ExdFJ4dndKdUJk?=
 =?utf-8?B?aTBEVlovL0swdFhRYnZPNE9PZ1NaV1FIalJ1R251RnJha0tmYkNNcm9VNXl0?=
 =?utf-8?B?UzNRVC9hZDd3bVcxNHk1WmFvYjBYS0lldFlYY05RR0p1N3ZzS3VoSXpVR295?=
 =?utf-8?B?bVBqQ3hjbTIrL29NSlRqajRMMUpPY1ZEZGR6eXplMWxSZHRkVGtqMkFIMkVq?=
 =?utf-8?B?NnRLdzFKRElQWkV4NHkvWU9mQ0ZJMy8xbGFnLzdWano4b25TeWx3Y0plMlk5?=
 =?utf-8?B?L2tJbmdEQTZvQW9xendjNWFnSDRuZm9Tc2w5WWErUmlNTktiVUMvVUxKckhp?=
 =?utf-8?Q?tmdrIQYANbTHCJApnA7fsSvzb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e929857a-de51-4ca0-f929-08dbc8cb0483
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 13:24:08.4078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7WHMXh4+FxAuH8a/8k35Mcul2eosZv5SMsDDkFvjW4XoXTbR2G9rEnIaizglIl0Vp44kdqOC2bsWr0IR96e6vQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6571
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 3/7] drm/i915: Define and use GuC and CTB
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

--------------kSf5zh7p1hVk0cftQpvD62oV
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Tvrtko,

On 10/9/2023 2:54 PM, Tvrtko Ursulin wrote:
<snip>
>
>>> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long 
>>> timeout)
>>> +{
>>> +    /*
>>> +     * This is equivalent to wait_woken() with the exception that
>>> +     * we do not wake up early if the kthread task has been completed.
>>> +     * As we are called from page reclaim in any task context,
>>> +     * we may be invoked from stopped kthreads, but we *must*
>>> +     * complete the wait from the HW .
>>> +     *
>>> +     * A second problem is that since we are called under reclaim
>>> +     * and wait_woken() inspected the thread state, it makes an 
>>> invalid
>>> +     * assumption that all PF_KTHREAD tasks have set_kthread_struct()
>>> +     * called upon them, and will trigger a GPF
>>
>> As discussed internally, the GPF issue is resolved with 
>> https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/ 
>> <https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/> 
>>
>
> If it means no open coding a slighlt different wait_token() that would 
> be a lot better ineed.
>
> Although the question of why a single wait queue is not good enough 
> still remains. As I wrote before - give each invalidation a seqno, 
> upon receiving the done h2g store the latest seqno in the driver and 
> wake up all sleepers. They check the seqno and if their has passed 
> exit, otherwise go back to sleep. No xarray needed. Put_pages() 
> invalidations are already serialized so no ill-effect and GGTT 
> invalidations are, or are not, performance sensitive for some reason?


I think your proposed solution should work as per my understanding 
because we are doing TLB invalidation of all engines and it is 
serialized with gt->tlb.invalidate_lock.

We might need this when we want to make it more fine grain and do vma 
based ranged invalidation for better performance. So I think we should 
try with a single wait queue now.


I don't have an concrete answer yet, may be someone else?


Regards,

Nirmoy

>
> Regards,
>
> Tvrtko
>
>>
>>
>>>   in is_kthread_should_stop().
>>> +     */
>>> +    do {
>>> +        set_current_state(TASK_UNINTERRUPTIBLE);
>>> +        if (wq_entry->flags & WQ_FLAG_WOKEN)
>>> +            break;
>>> +
>>> +        timeout = schedule_timeout(timeout);
>>> +    } while (timeout);
>>> +    __set_current_state(TASK_RUNNING);
>>> +
>>> +    /* See wait_woken() and woken_wake_function() */
>>> +    smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
>>> +
>>> +    return timeout;
>>> +}
>>> +
>>> +static int guc_send_invalidate_tlb(struct intel_guc *guc, enum 
>>> intel_guc_tlb_inval_mode type)
>>
>>
>> 2nd param should be intel_guc_tlb_invalidation_type not 
>> intel_guc_tlb_inval_mod.
>>
>> Not sure why didn't CI complained.
>>
>>
>> Regards,
>>
>> Nirmoy
>>
>>> +{
>>> +    struct intel_guc_tlb_wait _wq, *wq = &_wq;
>>> +    DEFINE_WAIT_FUNC(wait, woken_wake_function);
>>> +    int err;
>>> +    u32 seqno;
>>> +    u32 action[] = {
>>> +        INTEL_GUC_ACTION_TLB_INVALIDATION,
>>> +        0,
>>> +        REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
>>> +            REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
>>> +                       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
>>> +            INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
>>> +    };
>>> +    u32 size = ARRAY_SIZE(action);
>>> +
>>> +    init_waitqueue_head(&_wq.wq);
>>> +
>>> +    if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
>>> +                xa_limit_32b, &guc->next_seqno,
>>> +                GFP_ATOMIC | __GFP_NOWARN) < 0) {
>>> +        /* Under severe memory pressure? Serialise TLB allocations */
>>> +        xa_lock_irq(&guc->tlb_lookup);
>>> +        wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
>>> +        wait_event_lock_irq(wq->wq,
>>> +                    !READ_ONCE(wq->busy),
>>> +                    guc->tlb_lookup.xa_lock);
>>> +        /*
>>> +         * Update wq->busy under lock to ensure only one waiter can
>>> +         * issue the TLB invalidation command using the serial slot 
>>> at a
>>> +         * time. The condition is set to true before releasing the 
>>> lock
>>> +         * so that other caller continue to wait until woken up again.
>>> +         */
>>> +        wq->busy = true;
>>> +        xa_unlock_irq(&guc->tlb_lookup);
>>> +
>>> +        seqno = guc->serial_slot;
>>> +    }
>>> +
>>> +    action[1] = seqno;
>>> +
>>> +    add_wait_queue(&wq->wq, &wait);
>>> +
>>> +    /*
>>> +     * This is a critical reclaim path and thus we must loop here:
>>> +     * We cannot block for anything that is on the GPU.
>>> +     */
>>> +    err = intel_guc_send_busy_loop(guc, action, size, 
>>> G2H_LEN_DW_INVALIDATE_TLB, true);
>>> +    if (err)
>>> +        goto out;
>>> +
>>> +    if (!must_wait_woken(&wait, 
>>> intel_guc_ct_expected_delay(&guc->ct))) {
>>> +        guc_err(guc,
>>> +            "TLB invalidation response timed out for seqno %u\n", 
>>> seqno);
>>> +        err = -ETIME;
>>> +    }
>>> +out:
>>> +    remove_wait_queue(&wq->wq, &wait);
>>> +    if (seqno != guc->serial_slot)
>>> +        xa_erase_irq(&guc->tlb_lookup, seqno);
>>> +
>>> +    return err;
>>> +}
>>> +
>>> +/* Full TLB invalidation */
>>> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
>>> +{
>>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
>>> +}
>>> +
>>> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
>>> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
>>> +{
>>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
>>> +}
>>> +
>>>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>>>                         const u32 *msg,
>>>                         u32 len)
--------------kSf5zh7p1hVk0cftQpvD62oV
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi Tvrtko,<br>
    </p>
    <div class="moz-cite-prefix">On 10/9/2023 2:54 PM, Tvrtko Ursulin
      wrote:</div>
    <div class="moz-cite-prefix">&lt;snip&gt;<br>
    </div>
    <blockquote type="cite" cite="mid:e149a000-f746-9ae3-4dfc-cfe565a836b0@linux.intel.com">
      <br>
      <blockquote type="cite">
        <blockquote type="cite">+static long must_wait_woken(struct
          wait_queue_entry *wq_entry, long timeout)
          <br>
          +{
          <br>
          +&nbsp;&nbsp;&nbsp; /*
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * This is equivalent to wait_woken() with the exception
          that
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * we do not wake up early if the kthread task has been
          completed.
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * As we are called from page reclaim in any task
          context,
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * we may be invoked from stopped kthreads, but we *must*
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * complete the wait from the HW .
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; *
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * A second problem is that since we are called under
          reclaim
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * and wait_woken() inspected the thread state, it makes
          an invalid
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * assumption that all PF_KTHREAD tasks have
          set_kthread_struct()
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * called upon them, and will trigger a GPF
          <br>
        </blockquote>
        <br>
        As discussed internally, the GPF issue is resolved with
        <a class="moz-txt-link-freetext" href="https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/">https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/</a>
<a class="moz-txt-link-rfc2396E" href="https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/">&lt;https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/&gt;</a>
        <br>
      </blockquote>
      <br>
      If it means no open coding a slighlt different wait_token() that
      would be a lot better ineed.
      <br>
      <br>
      Although the question of why a single wait queue is not good
      enough still remains. As I wrote before - give each invalidation a
      seqno, upon receiving the done h2g store the latest seqno in the
      driver and wake up all sleepers. They check the seqno and if their
      has passed exit, otherwise go back to sleep. No xarray needed.
      Put_pages() invalidations are already serialized so no ill-effect
      and GGTT invalidations are, or are not, performance sensitive for
      some reason?
      <br>
    </blockquote>
    <p><br>
    </p>
    <p>I think your proposed solution should work as per my
      understanding because we are doing TLB invalidation of all engines
      and it is serialized with <span style="padding: 0px; tab-size:
        8;" class="hljs diff colorediffs language-diff">gt-&gt;tlb.invalidate_lock.</span></p>
    <p>We might need this when we want to make it more fine grain and do
      vma based ranged invalidation for better performance. So I think
      we should try with a single wait queue now. <span style="padding:
        0px; tab-size: 8;" class="hljs diff colorediffs language-diff"></span></p>
    <p></p>
    <p><br>
    </p>
    <p>I don't have an concrete answer yet, may be someone else?</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Nirmoy<br>
    </p>
    <blockquote type="cite" cite="mid:e149a000-f746-9ae3-4dfc-cfe565a836b0@linux.intel.com">
      <br>
      Regards,
      <br>
      <br>
      Tvrtko
      <br>
      <br>
      <blockquote type="cite">
        <br>
        <br>
        <blockquote type="cite">&nbsp; in is_kthread_should_stop().
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; */
          <br>
          +&nbsp;&nbsp;&nbsp; do {
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set_current_state(TASK_UNINTERRUPTIBLE);
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (wq_entry-&gt;flags &amp; WQ_FLAG_WOKEN)
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; timeout = schedule_timeout(timeout);
          <br>
          +&nbsp;&nbsp;&nbsp; } while (timeout);
          <br>
          +&nbsp;&nbsp;&nbsp; __set_current_state(TASK_RUNNING);
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; /* See wait_woken() and woken_wake_function() */
          <br>
          +&nbsp;&nbsp;&nbsp; smp_store_mb(wq_entry-&gt;flags, wq_entry-&gt;flags &amp;
          ~WQ_FLAG_WOKEN);
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; return timeout;
          <br>
          +}
          <br>
          +
          <br>
          +static int guc_send_invalidate_tlb(struct intel_guc *guc,
          enum intel_guc_tlb_inval_mode type)
          <br>
        </blockquote>
        <br>
        <br>
        2nd param should be intel_guc_tlb_invalidation_type not
        intel_guc_tlb_inval_mod.
        <br>
        <br>
        Not sure why didn't CI complained.
        <br>
        <br>
        <br>
        Regards,
        <br>
        <br>
        Nirmoy
        <br>
        <br>
        <blockquote type="cite">+{
          <br>
          +&nbsp;&nbsp;&nbsp; struct intel_guc_tlb_wait _wq, *wq = &amp;_wq;
          <br>
          +&nbsp;&nbsp;&nbsp; DEFINE_WAIT_FUNC(wait, woken_wake_function);
          <br>
          +&nbsp;&nbsp;&nbsp; int err;
          <br>
          +&nbsp;&nbsp;&nbsp; u32 seqno;
          <br>
          +&nbsp;&nbsp;&nbsp; u32 action[] = {
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INTEL_GUC_ACTION_TLB_INVALIDATION,
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
          <br>
          +&nbsp;&nbsp;&nbsp; };
          <br>
          +&nbsp;&nbsp;&nbsp; u32 size = ARRAY_SIZE(action);
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; init_waitqueue_head(&amp;_wq.wq);
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; if (xa_alloc_cyclic_irq(&amp;guc-&gt;tlb_lookup,
          &amp;seqno, wq,
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xa_limit_32b, &amp;guc-&gt;next_seqno,
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GFP_ATOMIC | __GFP_NOWARN) &lt; 0) {
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Under severe memory pressure? Serialise TLB
          allocations */
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xa_lock_irq(&amp;guc-&gt;tlb_lookup);
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wq = xa_load(&amp;guc-&gt;tlb_lookup,
          guc-&gt;serial_slot);
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wait_event_lock_irq(wq-&gt;wq,
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !READ_ONCE(wq-&gt;busy),
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; guc-&gt;tlb_lookup.xa_lock);
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Update wq-&gt;busy under lock to ensure only one
          waiter can
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * issue the TLB invalidation command using the
          serial slot at a
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * time. The condition is set to true before
          releasing the lock
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * so that other caller continue to wait until woken
          up again.
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wq-&gt;busy = true;
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xa_unlock_irq(&amp;guc-&gt;tlb_lookup);
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; seqno = guc-&gt;serial_slot;
          <br>
          +&nbsp;&nbsp;&nbsp; }
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; action[1] = seqno;
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; add_wait_queue(&amp;wq-&gt;wq, &amp;wait);
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; /*
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * This is a critical reclaim path and thus we must loop
          here:
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; * We cannot block for anything that is on the GPU.
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp; */
          <br>
          +&nbsp;&nbsp;&nbsp; err = intel_guc_send_busy_loop(guc, action, size,
          G2H_LEN_DW_INVALIDATE_TLB, true);
          <br>
          +&nbsp;&nbsp;&nbsp; if (err)
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out;
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; if (!must_wait_woken(&amp;wait,
          intel_guc_ct_expected_delay(&amp;guc-&gt;ct))) {
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; guc_err(guc,
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;TLB invalidation response timed out for seqno
          %u\n&quot;, seqno);
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err = -ETIME;
          <br>
          +&nbsp;&nbsp;&nbsp; }
          <br>
          +out:
          <br>
          +&nbsp;&nbsp;&nbsp; remove_wait_queue(&amp;wq-&gt;wq, &amp;wait);
          <br>
          +&nbsp;&nbsp;&nbsp; if (seqno != guc-&gt;serial_slot)
          <br>
          +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xa_erase_irq(&amp;guc-&gt;tlb_lookup, seqno);
          <br>
          +
          <br>
          +&nbsp;&nbsp;&nbsp; return err;
          <br>
          +}
          <br>
          +
          <br>
          +/* Full TLB invalidation */
          <br>
          +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
          <br>
          +{
          <br>
          +&nbsp;&nbsp;&nbsp; return guc_send_invalidate_tlb(guc,
          INTEL_GUC_TLB_INVAL_ENGINES);
          <br>
          +}
          <br>
          +
          <br>
          +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself.
          */
          <br>
          +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
          <br>
          +{
          <br>
          +&nbsp;&nbsp;&nbsp; return guc_send_invalidate_tlb(guc,
          INTEL_GUC_TLB_INVAL_GUC);
          <br>
          +}
          <br>
          +
          <br>
          &nbsp; int intel_guc_deregister_done_process_msg(struct intel_guc
          *guc,
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const u32 *msg,
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 len)
          <br>
        </blockquote>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------kSf5zh7p1hVk0cftQpvD62oV--
