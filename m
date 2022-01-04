Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69514842DE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 14:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B8E896EB;
	Tue,  4 Jan 2022 13:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1420893EC
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 13:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641304602; x=1672840602;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vuwXWfBsgdGq5+yXqBFidq01ms8HWHP/EvtsGrz0plY=;
 b=ZdxTU4LJfd1vCGiHCDNL3Jw4JoOl2XsA+uLoa46ZedAc4mGVglGuAPR1
 I7ztrqxjdsgcMEld1LAeiO/Xf7yt3z52HTC3SphmFAfQBGfD80ce8EY5V
 9beRkix5J9sbHVb5WzmQkbUuQ6wRlaA2u69tKoi8vZXTNPP13fOlrEk3F
 OMW4XRWbuN0siGt2iZedC7O3Gl5dPvsDcNYukLwh38Q9My66NCtiuegAi
 /SKyPmHShFSnGuMWrcJFtrfRsvic22VtHMbruk++6LRmeEGOjDjDUasAA
 85vw/Se71BqEz+lyfPfJnMZF0zWbYgqwRfgnzjTd5jHxuCFXKoMSG/8CI A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="222218277"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="222218277"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 05:56:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="620655296"
Received: from mcox1-mobl1.ger.corp.intel.com (HELO [10.213.215.140])
 ([10.213.215.140])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 05:56:41 -0800
Message-ID: <8257f42f-7bbd-c033-28f1-f43f21cc81af@linux.intel.com>
Date: Tue, 4 Jan 2022 13:56:39 +0000
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
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <baaf6bcf51c487817392142913f31655138b6596.camel@intel.com>
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


On 24/12/2021 13:34, Teres Alexis, Alan Previn wrote:
> 
> On Fri, 2021-12-24 at 12:09 +0000, Tvrtko Ursulin wrote:
>> Hi,
>>
>> Somehow I stumbled on this while browsing through the mailing list.
>>
>> On 23/12/2021 18:54, Teres Alexis, Alan Previn wrote:
>>> Revisiting below hunk of patch-7 comment, as per offline discussion with Matt,
>>> there is little benefit to even making that guc-id lookup because:
>>>
>>> 1. the delay between the context reset notification (when the vmas are copied
>>>      and when we verify we had received a guc err capture dump) may be subjectively
>>>      large enough and not tethered that the guc-id may have already been re-assigned.
>>>
>>> 2. I was really looking for some kind of unique context handle to print out that could
>>>      be correlated (by user inspecting the dump) back to a unique app or process or
>>>      context-id but cant find such a param in struct intel_context.
>>>
>>> As part of further reviewing the end to end flows and possible error scenarios, there
>>> also may potentially be a mismatch between "which context was reset by guc at time-n"
>>> vs "which context's vma buffers is being printed out at time-n+x" if
>>> we are experiencing back-to-back resets and the user dumped the debugfs x-time later.
>>
>> What does this all actually mean, because it sounds rather alarming,
>> that it just won't be possible to know which context, belonging to which
>> process, was reset? And because of guc_id potentially re-assigned even
>> the captured VMAs may not be the correct ones?
>>
>>
> 
> The flow of events are as below:
> 
> 1. guc sends notification that an error capture was done and ready to take.
> 	- at this point we copy the guc error captured dump into an interim store
> 	  (larger buffer that can hold multiple captures).
> 2. guc sends notification that a context was reset (after the prior)
> 	- this triggers a call to i915_gpu_coredump with the corresponding engine-mask
>            from the context that was reset
> 	- i915_gpu_coredump proceeds to gather entire gpu state including driver state,
>            global gpu state, engine state, context vmas and also engine registers. For the
>            engine registers now call into the guc_capture code which merely needs to verify
> 	  that GuC had already done a step 1 and we have data ready to be parsed.

What about the time between the actual reset and receiving the context 
reset notification? Latter will contain intel_context->guc_id - can that 
be re-assigned or "retired" in between the two and so cause problems for 
matching the correct (or any) vmas?

Regards,

Tvrtko

> 
> (time elapses)
> 
> 3. end user triggers the sysfs to dump the error state and all prior information is
>     printed out in proper format.
> 
> 
> Between 2 and 3:
>     - Looking at existing framework (established by execlist-capture codes),
>          I believe we only hold on to the first error state capture and drop any
>          subsequent context reset captures occurring before #3 (i.e. before the end user
>          triggers the debugfs)
>     - However, in that same space, guc can send us more and more error-capture logs
>           long as we have space for it in the buffer.
> 
> So the issue was that in my original patch, for every next capture-snaphot we find in
> guc-error-capture output buffer, i would find the matching engine and print out all
> the VMA data (that was successfully captured in #2). However, i should only do that
> for the first dump only since that would correlate exactly with the existing execlist
> code behavior. So this fix is actually pretty straight forward to get the right matching
> VMA.
> 
> WRT to my statement about "getting the context-to->process" lookup, i was initially hoping that
> I could "on my own" (within the guc-err-capture module) get that information, but it would be
> a stretch (in terms of inter-component information access). More importantly, its totally
> unnecessary since existing execlist code already did that in Step 2. That code remains intact
> with guc-error-capture.
> 
> One open i plan to test before final rev is with shared engines like CCS and RCS where i want to
> trigger cascading hangs + resets in quick succession just to see how the overall flow behavior works.
> 
> I will attach an output guc error capture based gpu error dump as per the review comment from Matthew
> on last rev.
> 
> ..alan
>>
> 
> 
>> Regards,
>>
>> Tvrtko
>>
>>> (Recap: First, guc notifies capture event, second, guc notifies context reset during
>>> which we trigger i915_gpu_coredump. In this second step, the vma's are dumped and we
>>> verify that the guc capture happened but don't parse the guc-err-capture-logs yet.
>>> Third step is when user triggers the debugfs to dump which is when we parse the error
>>> capture logs.)
>>>
>>> As a fix, what we can do in the guc_error_capture report out is to ensure that
>>> we dont re-print the previously dumped vmas if we end up finding multiple
>>> guc-error-capture dumps since the i915_gpu_coredump would have only captured the vma's
>>> for the very first context that was reset. And with guc-submission, that would always
>>> correlate to the "next-yet-to-be-parsed" guc-err-capture dump (since the guc-error-capture
>>> logs are large enough to hold data for multiple dumps).
>>>
>>> The changes (removal of below-hunk and adding of only-print-the-first-vma") is trivial
>>> but i felt it warranted a good explanation. Apologies for the inbox noise.
>>>
>>> ...alan
>>>
>>> On Tue, 2021-12-07 at 22:32 -0800, Alan Previn Teres Alexis wrote:
>>>> Thanks again for the detailed review here.
>>>> Will fix all the rest on next rev.
>>>> One special response for this one:
>>>>
>>>>
>>>> On Tue, 2021-12-07 at 16:22 -0800, Matthew Brost wrote:
>>>>> On Mon, Nov 22, 2021 at 03:04:02PM -0800, Alan Previn wrote:
>>>>>> +			if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
>>>>>> +				GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data);
>>>>>> +				eng_inst = FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, data.info);
>>>>>> +				eng = guc_lookup_engine(guc, engineclass, eng_inst);
>>>>>> +				if (eng) {
>>>>>> +					GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng);
>>>>>> +				} else {
>>>>>> +					PRINT(&i915->drm, ebuf, "    i915-Eng-Lookup Fail!\n");
>>>>>> +				}
>>>>>> +				ce = guc_context_lookup(guc, data.guc_ctx_id);
>>>>>
>>>>> You are going to need to reference count the 'ce' here. See
>>>>> intel_guc_context_reset_process_msg for an example.
>>>>>
>>>>
>>>> Oh crap - i missed this one - which you had explicitly mentioned offline when i was doing the
>>>> development. Sorry about that i just totally missed it from my todo-notes.
>>>>
>>>> ...alan
> 
