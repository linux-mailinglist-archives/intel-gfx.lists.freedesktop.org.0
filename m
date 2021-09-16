Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5D840DD8F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 17:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72606EB86;
	Thu, 16 Sep 2021 15:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 635576EB86
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 15:05:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222637858"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="222637858"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 08:05:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="516802896"
Received: from ipoconno-mobl3.ger.corp.intel.com (HELO [10.213.234.111])
 ([10.213.234.111])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 08:05:56 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Daniel Vetter <daniel@ffwll.ch>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-8-maarten.lankhorst@linux.intel.com>
 <80c12456-e409-2455-2f47-bb999468d271@linux.intel.com>
 <91a89c54-a792-1016-881b-ced0cbae627a@linux.intel.com>
 <8185b206-3db2-00e0-9878-15b40a514990@linux.intel.com>
 <c781f846-612d-6996-b6e7-9f8ecfecf513@linux.intel.com>
 <c9ad5e04-a134-c088-5d61-40470f7c4761@linux.intel.com>
 <725121c9-f89e-b06e-7267-962fb548891c@linux.intel.com>
 <a7176659-b4a3-33dc-e2e2-4cecf28f7dbb@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <36f7efd5-ec3c-629a-cd9d-e38f12370bbd@linux.intel.com>
Date: Thu, 16 Sep 2021 16:05:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a7176659-b4a3-33dc-e2e2-4cecf28f7dbb@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 07/19] drm/i915: vma is always backed by an
 object.
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


On 16/09/2021 15:30, Tvrtko Ursulin wrote:
> 
> On 16/09/2021 14:41, Maarten Lankhorst wrote:
>> Op 03-09-2021 om 12:48 schreef Tvrtko Ursulin:
>>>
>>> On 03/09/2021 10:31, Maarten Lankhorst wrote:
>>>> Op 31-08-2021 om 12:29 schreef Tvrtko Ursulin:
>>>>>
>>>>> On 31/08/2021 10:34, Maarten Lankhorst wrote:
>>>>>> Op 31-08-2021 om 11:18 schreef Tvrtko Ursulin:
>>>>>>>
>>>>>>> On 30/08/2021 13:09, Maarten Lankhorst wrote:
>>>>>>>> vma->obj and vma->resv are now never NULL, and some checks can 
>>>>>>>> be removed.
>>>>>>>
>>>>>>> Is the direction here compatible with SVM / VM_BIND?
>>>>>>
>>>>>>
>>>>>> Yeah, it should be. The changes here make the obj->resv->lock the 
>>>>>> main lock, so it should at least simplify locking for VM_BIND.
>>>>>
>>>>> Hm but what will vma->obj point to in case of SVM, when there is no 
>>>>> GEM BO?
>>>>
>>>> Probably to one of the bo's in i915_vm, or a dummy bo that least 
>>>> shares the vm_resv object, similar to the aliasing gtt handling.
>>>
>>> As a long term or short term solution? Worried that would waste a lot 
>>> of SLAB space just for convenience (whole struct drm_i915_gem_object 
>>> just to store a single pointer to a dma_resv object, if I got that 
>>> right), while it should be possible to come up with a cleaner design.
>>>
>>> Even for the upcoming page granularity work we will need multiple 
>>> VMAs point to single GEM bo in ppgtt and that, when SVM is 
>>> considered, could for instance mean that VMAs should instead be 
>>> backed by some new backing store objects, which in turn may (or may 
>>> not) point to GEM BOs.
>>>
>>> Regards,
>>>
>>> Tvrtko
>>
>> We could revisit this if it's required for SVM, since we can always 
>> optimize that code later, I don't think it's a problem to remove it 
>> for now, especially since it's a lot easier if VMA becomes a pointer 
>> to a memory slab for an object only, without its own lifetime rules. :)
> 
> Not sure what you meant with "pointer to memory slab for an object"?
> 
> But on the high level, what worries me is whether the direction is not 
> wrong. Sure you can change it all again later, but if we are moving 
> towards the world where VMAs are fundamentally and predominantly *not* 
> backed by GEM buffer objects, then I have to ask the question whether 
> this plan of rewriting everything twice is the most efficient one.
> 
> Maybe its not that scary, not sure, but again, all I see is a large-ish 
> series which implements some very important functionality, and _seems_ 
> to rely on what I think is a design direction incompatible with where I 
> thought we needed to go.
> 
> I suppose all I can do is ask you to verify this direction with Daniel. 
> Maybe you already have but I did not see it in public at least. So 
> adding him to CC.

Okay I reminded myself of how the SVM is implemented and perhaps it is 
not a concern. It seems that it doesn't use the VMA for more than a 
temporary vehicle during PTE setup stage.

And for page granularity paths over legacy binding I think it should 
also be fine since, as you say, all VMAs can and should point to the 
same obj.

Regards,

Tvrtko
