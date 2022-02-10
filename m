Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F844B0BE8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 12:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6926C10E802;
	Thu, 10 Feb 2022 11:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A4410E802
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 11:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644491413; x=1676027413;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=f4pAL/ZXP1ku1wwYxCHnyRgtVORHtPxZZVz2Yl61g9g=;
 b=DRl0brDEGiJUdGiQw/28xjfmk9x04H5PwXyP68e4muv/qlO2ffvAt8cG
 sf+I3Qy8P4kwRvf3ygxqCdeFrAZrV5Z8yyQo1paTgUaqJweX/5yPiUvw/
 afYjzSwtISeMAh0cSBYYGNGklb1fHkvAbNr9aGB+Rupf15VoWZwJLldNw
 n/RHStEtQYwfzvlkNiuByVNXzvOsZE2hZEltOE/fw7LcLkuFQ8ZyXTPvf
 zfM+Xy8YJEgG00Sz0At2gGVIgcsqPMxqns/qIkz5cBszTxRDeMjMU3AyE
 CtZsoMVwzkHLt/hzLC0MO3lmCxFLzgA2EaxiMmxRlweNOZH+tID/lEILc g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="312753272"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="312753272"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 03:10:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485645385"
Received: from scurtin-mobl1.ger.corp.intel.com (HELO [10.213.201.86])
 ([10.213.201.86])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 03:10:02 -0800
Message-ID: <e9824e03-1223-52a1-ccca-fc2a521ad48e@linux.intel.com>
Date: Thu, 10 Feb 2022 11:10:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Casey Bowman <casey.g.bowman@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
 <e72a6679-2fe6-9390-2e7b-9c59cdd4cda8@linux.intel.com>
 <f4f83f4f-4a13-5b44-4ff5-4d32a1e850be@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <f4f83f4f-4a13-5b44-4ff5-4d32a1e850be@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH 0/1] Splitting up platform-specific calls
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
Cc: michael.cheng@intel.com, jani.nikula@intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/02/2022 05:25, Casey Bowman wrote:
> 
> On 2/7/22 07:36, Tvrtko Ursulin wrote:
>>
>> On 20/01/2022 22:16, Casey Bowman wrote:
>>> In this RFC I would like to ask the community their thoughts
>>> on how we can best handle splitting architecture-specific
>>> calls.
>>>
>>> I would like to address the following:
>>>
>>> 1. How do we want to split architecture calls? Different object files
>>> per platform? Separate function calls within the same object file?
>>
>> If we are talking about per-platform divergence of significant 
>> functions (not necessarily in size but their height position in the 
>> i915 stack) I agree with Jani that top-level per platform organisation 
>> is not the best choice.
>>
>> On the other hand I doubt that there should be many, if any, such 
>> functions. In practice I think it should be only low level stuff which 
>> diverges.
> I agree, as said with my reply to Jani, I think maybe going forward for 
> arch-specific code, #if IS_ENABLED calls should be used sparingly, only 
> in the cases where we do have that arch-specific implementation (like 
> low level calls), instead of just a 'return null', as in my case.
>>
>> On a concrete example..
>>
>>> 2. How do we address dummy functions? If we have a function call that is
>>> used for one or more platforms, but is not used in another, what should
>>> we do for this case?
>>
>> ... depends on the situation. Sometimes a flavour of "warn on once" 
>> can be okay I guess, but also why not build bug on? Because..
> True, with Jani's and your comments, I'm thinking that in the case of 
> when we look at a potential arch-specific function where we're just 
> returning null or something similar, we should be re-evaluating the 
> function and seeing if we should make a different change there.
>>
>>>
>>> I've given an example of splitting an architecture call
>>> in my patch with run_as_guest() being split into different
>>> implementations for x86 and arm64 in separate object files, sharing
>>> a single header.
>>
>> ... run_as_guest may be a very tricky example, given it is called from 
>> intel_vtd_active which has a number of callers.
>>
>> What is correct behaviour on Arm in this example? None of these call 
>> sites will run on Arm? Or that you expect the warn on added in this 
>> patch to trigger as a demonstration? If so, what is the plan going 
>> forward? We can take one example and talk about it hypothetically:
>>
>> ./i915_driver.c:        drm_printf(p, "iommu: %s\n", 
>> enableddisabled(intel_vtd_active(i915)));
>>
>> What is the "fix" (refactor) for Arm here? Looks like a new top-level 
>> function is needed which does not carry the intel_vtd_ prefix but 
>> something more generic. That one could then legitimately "warn on 
>> once", while for intel_vtd_active it would be wrong to do so.
> 
> Good point, run_as_guest might be a bit more challenging of an example.
> 
> In my mind, I was thinking of just simply returning null for arm64 here 
> as I don't believe arm64 would be making use of iommu for our cases (at 
> least, in the short term).
> I think this example function specifically needs to get reworked, as you 
> mentioned, in some way, possibly refactoring intel_vtd_active or 
> something along those lines.
> 
>>
>> And when I say it is needed.. well perhaps it is not strictly needed 
>> in this case, but in some other cases I think we go back to the 
>> problem I stated some months ago and that is that I suspect use of 
>> intel_vtd_active is overloaded. I think it is currently used to answer 
>> all these questions: 1. Is the IOMMU active, just for information.; 2. 
>> Is the IOMMU active and we want to counteract the performance hit by 
>> say using huge pages, adjusting the display bandwidth calculations or 
>> whatever. (In which case we also may want to distinguish between 
>> pass-through and translation modes.); 3. Is a potentially buggy IOMMU 
>> active and we need to work around it. All these under one kind of 
>> worked with one iommu implementation but does it with a different IOMMU?
>>
>> Which I mean leads to end conclusion that this particular function is 
>> a tricky example to answer the questions asked. :)
>>
>>>
>>> Another suggestion from Michael (michael.cheng@intel.com) involved
>>> using a single object file, a single header, and splitting various
>>> functions calls via ifdefs in the header file.
>>
>> In principle, mostly what you have outlined sounds acceptable to me, 
>> with the difference that I would not use i915_platform, but for this 
>> particular example something like i915_hypervisor prefix.
>>
>> Then I would prepare i915 with the same scheme kernel uses, not just 
>> for source file divergence, but header file as well. That is:
>>
>> some_source.c:
>>
>> #include "i915_hypervisor.h"
>>
>> i915_hypervisor.h:
>>
>> #include "platform/i915_hypervisor.h"
>>
>> Then in i915 root you could have:
>>
>> platforms/x86/include/platform/i915_hypervisor.h
>> platforms/arm/include/platform/i915_hypervisor.h
>>
>> And some kbuild stuff to make that work. Is this doable and does it 
>> make sense? Per-platform source files could live in there as well.
>>
>> Same scheme for i915_clflush would work as well.
> 
> I like the idea of getting more specific for the calls here, but I'm 
> somewhat afraid of obfuscating these functions to their own files in 
> addition to scaling issues if we do have more and more arch-specific 
> calls, along with more architectures in the future.
> 
> This just seems like it could blow up the driver in what could 
> ultimately be unnecessary organization for a fewer number of calls if we 
> just add a few platforms and different calls.
> What do you think?

I don't have a good crystal ball to see how many of these you would end 
up during the Arm porting effort, just my gut feeling that it shouldn't 
be a problem to add a few files.

And I don't think it would be obfuscating anything, on the contrary it 
makes things very clear in respect where the platform dependent boundary 
is and what are all the bits that diverge per platforms.

Personally I would just do this all as part of your other series which 
touches clflush and in that way establish a pattern from the start. Plus 
that way I sleep easy not thinking how we started penalizing old 
platforms with needless new function calls on hot paths. But it is my 
opinion only and other people may think differently.

Regards,

Tvrtko
