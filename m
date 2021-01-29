Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E24308751
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 10:24:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A526EAA5;
	Fri, 29 Jan 2021 09:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 593866EAA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 09:24:22 +0000 (UTC)
IronPort-SDR: UoGvn4yB2TvcvxBsVqNxRXJapiljERuhYAxgpuyC+sjNdr1wzIE6c7mhDVRlTlBvd2nuoYLEjN
 eMGbYU/GhYsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="179612907"
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="179612907"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 01:24:21 -0800
IronPort-SDR: hwYODf8jLUUh/W92kSyccLN1TpOtRTRhcRbiPD0aP3BfyE8DysSgL1Vxcj1J1WtEDxbTZnPaCP
 n/HuKgtRxwbg==
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="389229056"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO [10.252.47.4])
 ([10.252.47.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 01:24:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <7537d75b-3292-05aa-1ef2-b65aca4d3d73@linux.intel.com>
 <161185117340.2943.10174190803342821813@build.alporthouse.com>
 <f4f42b32-d536-6f2f-0118-be7fedcd94db@linux.intel.com>
 <161187389652.867.1872508301709901604@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <68d277d2-90ed-6858-d8a8-1c3fdc183415@linux.intel.com>
Date: Fri, 29 Jan 2021 09:24:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161187389652.867.1872508301709901604@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 20/41] drm/i915: Replace priolist rbtree
 with a skiplist
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/01/2021 22:44, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-28 16:42:44)
>>
>> On 28/01/2021 16:26, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2021-01-28 15:56:19)
>>>> On 25/01/2021 14:01, Chris Wilson wrote:
>>>>> diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
>>>>> index bc2fa84f98a8..1200c3df6a4a 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_priolist_types.h
>>>>> +++ b/drivers/gpu/drm/i915/i915_priolist_types.h
>>>>> @@ -38,10 +38,36 @@ enum {
>>>>>     #define I915_PRIORITY_UNPREEMPTABLE INT_MAX
>>>>>     #define I915_PRIORITY_BARRIER (I915_PRIORITY_UNPREEMPTABLE - 1)
>>>>>     
>>>>> +#ifdef CONFIG_64BIT
>>>>> +#define I915_PRIOLIST_HEIGHT 12
>>>>> +#else
>>>>> +#define I915_PRIOLIST_HEIGHT 11
>>>>> +#endif
>>>>
>>>> I did not get this. On one hand I could think pointers are larger on
>>>> 64-bit so go for fewer levels, if size was a concern. But on the other
>>>> hand 32-bit is less important these days, definitely much less as a
>>>> performance platform. So going for less memory use => worse performance
>>>> on a less important platform, which typically could be more memory
>>>> constrained? Not sure I see it as that important either way to be
>>>> distinctive but a comment would satisfy me.
>>>
>>> Just aligned to the cacheline. The struct is 128B on 64b and 64B on 32b.
>>> On 64B, we will scale to around 16 million requests in flight and 4
>>> million on 32b. Which should be enough.
>>>
>>> If we shrunk 64b to a 64B node, we would only scale to 256 requests
>>> which limit we definitely will exceed.
>>
>> Ok thanks, pouring it into a comment is implied.
>>
>>>
>>>>>     struct i915_priolist {
>>>>>         struct list_head requests;
>>>>
>>>> What would be on this list? Request can only be on one at a time, so I
>>>> was thinking these nodes would have pointers to list of that priority,
>>>> rather than lists themselves. Assuming there can be multiple nodes of
>>>> the same priority in the 2d hierarcy. Possibly I don't understand the
>>>> layout.
>>>
>>> A request is only on one list (queue, active, hold). But we may still
>>> have more than one request at the same deadline, though that will likely
>>> be limited to priority-inheritance and timeslice deferrals.
>>>
>>> Since we would need pointer to the request, we could only reclaim a
>>> single pointer here, which is not enough to warrant reducing the overall
>>> node size. And while there is at least one user of request->sched.link,
>>> the list maintenance will still be incurred. Using request->sched.link
>>> remains a convenient interface.
>>
>> Lost you.
> 
> /*
>   * i915_priolist forms a skiplist. The skiplist is built in layers,
>   * starting at the base [0] is a singly linked list of all i915_priolist.
>   * Each higher layer contains a fraction of the i915_priolist from the
>   * previous layer:
>   *
>   * S[0] 0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF S
>   * E[1] >1>3>5>7>9>B>D>F>1>3>5>7>9>B>D>F>1>3>5>7>9>B>D>F>1>3>5>7>9>B>D>F E
>   * N[2] -->3-->7-->B-->F-->3-->7-->B-->F-->3-->7-->B-->F-->3-->7-->B-->F N
>   * T[3] ------->7----->F-------7------>F------>7------>F------>7------>F 

Just align this first 7.

T
>   * I[4] -------------->F-------------->F-------------->F-------------->F I
>   * N[5] ------------------------------>F------------------------------>F N
>   * E[6] ------------------------------>F-------------------------------> E
>   * L[7] ---------------------------------------------------------------> L
>   *
>   * To iterate through all active i915_priolist, we only need to follow
>   * the chain in i915_priolist.next[0] (see for_each_priolist).
>   *
>   * To quickly find a specific key (or insert point), we can perform a binary
>   * search by starting at the highest level and following the linked list
>   * at that level until we either find the node, or have gone passed the key.
>   * Then we descend a level, and start walking the list again starting from
>   * the current position, until eventually we find our key, or we run out of

 From the previous on the current level, not current I believe. So go 
previous before descending, right?

Very useful diagram, thank you.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
