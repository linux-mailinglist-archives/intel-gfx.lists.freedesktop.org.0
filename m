Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A86448AB06
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 11:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D2914A3FF;
	Tue, 11 Jan 2022 10:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4193314A3FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 10:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641895737; x=1673431737;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KtF9L6D5HGjRvIWuGTbuL+XT8kXtDVWcWkDqfCJDEr8=;
 b=EBUunN0cyG3kehqiyAoquF/kysQoHLsvjU/1F5LV9TAjK7s6a882nTRp
 gGyuyEQX4xMnAVtqzrMOmJc1jTYkaJthIoMoOFsR+qzCbghYcCrSyJiOk
 4Nb5b0yHQM+Aygp9JsPCuSR/0n4DysHG5H8UCiG1jzfAmYVRHaZQJJitU
 YjMxqEjHVwJpKpnwKcVTHUepnQ4Xt8RMHGjfdBe+qv3uDUP9KMrhUc8JJ
 NC2fAqZMBZJojVbMFj5z6AJ3hLxI3CYmwf71i5JF8di8widP38V5LR3HZ
 s2bwXP2EtDtF4rh055AFnImLfPD2yDHUAbjJTVugb59Fr4/Qy3jHcjNhN g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="306802542"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="306802542"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 02:08:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="558315253"
Received: from noblecat-mobl.ger.corp.intel.com (HELO [10.213.217.217])
 ([10.213.217.217])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 02:08:55 -0800
Message-ID: <73a0758a-f54c-64da-7930-9e650ead82b0@linux.intel.com>
Date: Tue, 11 Jan 2022 10:08:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "Brost, Matthew" <matthew.brost@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
 <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
 <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
 <c0fa7466-ecdc-4768-0584-6937e7f0d71a@linux.intel.com>
 <baaf6bcf51c487817392142913f31655138b6596.camel@intel.com>
 <8257f42f-7bbd-c033-28f1-f43f21cc81af@linux.intel.com>
 <0267e249fbc650069e4c6d29438ce32289d535cb.camel@intel.com>
 <4da5fd63-d74f-2004-082b-a75cbdb024ad@linux.intel.com>
 <798a8740d1692541ee822535dbe880ce17b2bbbc.camel@intel.com>
 <3bdab0a4-f182-28bb-0206-8d6d4b34c690@linux.intel.com>
 <d8a7381a0c881dc6ced854aff7468f9b74089b56.camel@intel.com>
 <642bffb1-7878-38ac-a11b-4db462995374@linux.intel.com>
 <26d77a54cd3d32f57666e7447cd9fc5029abece6.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <26d77a54cd3d32f57666e7447cd9fc5029abece6.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/01/2022 18:19, Teres Alexis, Alan Previn wrote:
> 
> On Mon, 2022-01-10 at 08:07 +0000, Tvrtko Ursulin wrote:
>> On 07/01/2022 17:03, Teres Alexis, Alan Previn wrote:
>>> On Fri, 2022-01-07 at 09:03 +0000, Tvrtko Ursulin wrote:
>>>> On 06/01/2022 18:33, Teres Alexis, Alan Previn wrote:
>>>>> On Thu, 2022-01-06 at 09:38 +0000, Tvrtko Ursulin wrote:
>>>>>> On 05/01/2022 17:30, Teres Alexis, Alan Previn wrote:
>>>>>>> On Tue, 2022-01-04 at 13:56 +0000, Tvrtko Ursulin wrote:
>>>>>>>>> The flow of events are as below:
>>>>>>>>>
>>>>>>>>> 1. guc sends notification that an error capture was done and ready to take.
>>>>>>>>> 	- at this point we copy the guc error captured dump into an interim store
>>>>>>>>> 	  (larger buffer that can hold multiple captures).
>>>>>>>>> 2. guc sends notification that a context was reset (after the prior)
>>>>>>>>> 	- this triggers a call to i915_gpu_coredump with the corresponding engine-mask
>>>>>>>>>                from the context that was reset
>>>>>>>>> 	- i915_gpu_coredump proceeds to gather entire gpu state including driver state,
>>>>>>>>>                global gpu state, engine state, context vmas and also engine registers. For the
>>>>>>>>>                engine registers now call into the guc_capture code which merely needs to verify
>>>>>>>>> 	  that GuC had already done a step 1 and we have data ready to be parsed.
>>>>>>>>
>>>>>>>> What about the time between the actual reset and receiving the context
>>>>>>>> reset notification? Latter will contain intel_context->guc_id - can that
>>>>>>>> be re-assigned or "retired" in between the two and so cause problems for
>>>>>>>> matching the correct (or any) vmas?
>>>>>>>>
>>>>>>> Not it cannot because its only after the context reset notification that i915 starts
>>>>>>> taking action against that cotnext - and even that happens after the i915_gpu_codedump (engine-mask-of-context) happens.
>>>>>>> That's what i've observed in the code flow.
>>>>>>
>>>>>> The fact it is "only after" is exactly why I asked.
>>>>>>
>>>>>> Reset notification is in a CT queue with other stuff, right? So can be
>>>>>> some unrelated time after the actual reset. Could have context be
>>>>>> retired in the meantime and guc_id released is the question.
>>>>>>
>>>>>> Because i915 has no idea there was a reset until this delayed message
>>>>>> comes over, but it could see user interrupt signaling end of batch,
>>>>>> after the reset has happened, unbeknown to i915, right?
>>>>>>
>>>>>> Perhaps the answer is guc_id cannot be released via the request retire
>>>>>> flows. Or GuC signaling release of guc_id is a thing, which is then
>>>>>> ordered via the same CT buffer.
>>>>>>
>>>>>> I don't know, just asking.
>>>>>>
>>>>> As long as the context is pinned, the guc-id wont be re-assigned. After a bit of offline brain-dump
>>>>> from John Harrison, there are many factors that can keep the context pinned (recounts) including
>>>>> new or oustanding requests. So a guc-id can't get re-assigned between a capture-notify and a
>>>>> context-reset even if that outstanding request is the only refcount left since it would still
>>>>> be considered outstanding by the driver. I also think we may also be talking past each other
>>>>> in the sense that the guc-id is something the driver assigns to a context being pinned and only
>>>>> the driver can un-assign it (both assigning and unasigning is via H2G interactions).
>>>>> I get the sense you are assuming the GuC can un-assign the guc-id's on its own - which isn't
>>>>> the case. Apologies if i mis-assumed.
>>>>
>>>> I did not think GuC can re-assign ce->guc_id. I asked about request/context complete/retire happening before reset/capture notification is received.
>>>>
>>>> That would be the time window between the last intel_context_put, so last i915_request_put from retire, at which point AFAICT GuC code releases the guc_id. Execution timeline like:
>>>>
>>>>> ------ rq1 ------|------ rq2 ------|
>>>>       ^ engine reset		    ^ rq2, rq1 retire, guc id released
>>>>
>>>>                                                              		^ GuC reset notify received - guc_id not known any more?
>>>>     
>>>> You are saying something is guaranteed to be holding onto the guc_id at the point of receiving the notification? "There are many factors that can keep the context pinned" - what is it in this case? Or the case cannot happen?
>>>>
>>>> Regards,
>>>>
>>>> Tvrtko
>>>
>>> above chart is incorrect: GuC reset notification is sent from GuC to host before it sends the engine reset notification
>>
>> Meaning? And how does it relate to actual reset vs retire vs reset
>> notification (sent or received)?
>>
>> Plus, I thought so far we were talking about reset notification and
>> capture notification, so what you say here now extra confuses me without
>> providing an answer to my question.
>>
>> Regards,
>>
>> Tvrtko
> So i think the confusion at this point of the conversation is because in the prior discussion we have been talking about
> the focus was on printout of the error capture status (which happens when user triggers the debugfs to dump). In your
> previous reply, you had provided a timeline that references the engine-reset, request/retire and reset-notification
> events which are separate from the print-out event.
> 
> 
> So recap of timeline of events that highlights when things occur including the printout:
> (apologies for a lot of repeated and known info below, i am repeating for my own benefit)
> 
> t0
>     - ContextA makes a request
>           -> pin ContextA and get a guc-id OR
>              reuse existing guc-id if context is still pinned.
>           -> ref count is always incremented when a new request is sent
>              to keep the context pinned with the same guc-id
> 
> t1...t10
>     1- ContextA continues through multiple request and retirement events
>     2- no hangs, no resets, ContextA is good
> 
> t11
>     1- ContextA sends a faulty workload
>     2- as always, its either already pinned with same guc-id
>        or get a new guc-id and pinned again
>     3- refcount increases
> t12
>     1- lets assume all outstanding ContextA request successfully retire
>        except the work at t11. So there is one refcount left holding ContextA
>        pinned with that same guc-id
> t13
>     1- GuC decides to reset ContextA (this means KMD had previously setup GuC
>        scheduler policies, execution-quanta and preemption-timeout that tells
>        GuC it wants GuC to reset a context that doesnt complete in time and cant
>        be preempted if a higher priority workload needs to get in).
> t14
>     1- GuC does a full error-state captures on its side and sends the
>        G2H for error-capture-notification to KMD. At this point, refcount
>        remains untouched and context is still pinned.

All good until this step I think.

At this point in the timeline my question is this:

Once GuC is done it's error capture and engine reset, having sent out 
the notification (or plural), does it continue to execute ContextA?

If it does not, given what you wrote in t15-3, please skip to that 
location (t15-3).

If it does continue execution, it then hits the request post-amble 
containing the seqno write and user interrupt.

Engine/capture notifications are sitting in the CT buffer waiting for 
the i915 to read them.

In parallel, ahead of the CT work, i915 notices the ContextA request has 
been completed and proceeds to retire it.

Does this release the final reference on the guc_id associated with 
ContextA?

>     2- error capture module copies the new error-capture to interim store
>        but does not parse it yet.
> t15
>     1- GuC sends the G2H for engine reset / context reset to KMD. At this
>        point, KMD calls the i915_gpu_coredump function and will capture a
>        snapshot of all relevant context information and its faulting request.
>        This includes the context, LRCA and vmas (such as the batch buffer).
>        At this point the guc-error capture is not parsed but we already have a
>        snapshot of the guc-error-capture-dump from t14.
>     2- i915_gpu_coredump shall chose to keep all of the information collected
>        if its the first error or will discard everything.
>     3- i915 may attempt to replay the context or it may not and if not it
>        could lose the guc-id.

This made me thing guc engine reset notification is a "handshake" 
operation and not a pure notification? Does it imply GuC will wait for 
i915 to reply what to do next meaning it won't continue to execute 
ContextA before i915 replies to engine reset notification?

If so that would resolve my concern.

Regards,

Tvrtko

> tn
>     1- The end user triggers the debugfs to dump the gpu error state.
>     2- multiple information is printed and includes the call to
>        intel_guc_capture_out_print_next_group function. The guc-err-capture module
>        now finally parses the information and prints everything it finds.
>     3- based on the sequence of events in t14 and t15 (i.e. guc sends error-capture
>        notification first, guc sends context-reset notification second and the
>        i915_cpu_coredump will only keep dump information the first-error of a context-
>        or-engine rese) the first engine-state-dump that intel_guc_capture_out_print_next_group
>        finds from the buffer that GuC had sent in t14 is expected to match, but we know
>        at this point the guc-id could of course be lost.
>          - NOTE1: in prior replies, i had mentioned something along the lines of "not
>            able to extract information about the context and process". I didnt do
>            a good job of explaining that this gap is pertaining to the new
>            intel_guc_capture_out_print_next_group function being able to get that
>            on its own. I should have also stated that all that info was already
>            captured by i915_gpu_coredump in step 15 and the first engine-reset-dump we
>            find in intel_guc_capture_out_print_next_group should correlate.
>          - NOTE2: Since the i915_gpu_coredump function only keeps the first error-state
>            but discards any subsequent ones (if the end user hasn't cleared the 1st one
>            via the debugfs), I am not having the guc-err-capture module parse all of the
>            error-capture info at the time of t14 and hold off until now at tn.
> 
> An important assumption here is that at the time of tn, the very first engine-dump we parse
> via the guc-error-capture dump should correlate with the first error-capture that
> i915_gpu_coredump is parsing at tn (captured at t15). This was what i had summarized
> on this thread on Dec 23rd morning PST.
> 
> However, if we want to add additional check-and-balance (to ensure the dumps are
> aligned) is to keep a copy of the guc-id and LRCA (not ref-counting and keeping pinned
> but just making a copy of the values) when i915_gpu_coredump does NOT discard the capture
> coz that will be the one printed out when triggered by end-user and is expected to match
> the first entry from the the oustanding guc-err-capture dumps. I can include this in
> my upcoming rev but will only make that copy if the i915_gpu_coredump does NOT discard
> the dump.
> 
> ...alan
> 
