Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA449489308
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 09:07:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1A911BF3B;
	Mon, 10 Jan 2022 08:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B0011BF3B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 08:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641802048; x=1673338048;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=XrhW6as0HVgZ1F8Xbr71Gy+2LBMIpEqz2KLZLE/WNsQ=;
 b=SHA8bfpHrtd19KlbMDTnpG+zpZBBJDj2B2eMO2cKAOjhkisbnJEsdU8j
 wjSLg8Oh/mB7mP8ojLG5vZRiQMt0jRLGXA5j+KVSss/oqV1MxPXYTbbSw
 CdEH6VPQVBpJ3vTsZZU2magbPzSsoAO3t56ZIgVllfNF0vB6p32McHMt+
 paucFOUcEJ+/av/EoiMi36YmJDy3yCTugIxfqh6wHFprw/2SWveiAHVVM
 yR41cNCMxVDfDQnq1UxiKrAJd9f+7uc5fOnpEC+nh7d4pvYTPuLAWyAvC
 YUBqL8VbDSmrFqbJ7ER3NfGAuf6cBHG1wLhs83FGZskeVKi4qXMtP6jsK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="329519037"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="329519037"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 00:07:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="557909190"
Received: from walshd-mobl.ger.corp.intel.com (HELO [10.213.255.5])
 ([10.213.255.5])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 00:07:26 -0800
Message-ID: <642bffb1-7878-38ac-a11b-4db462995374@linux.intel.com>
Date: Mon, 10 Jan 2022 08:07:24 +0000
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
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <d8a7381a0c881dc6ced854aff7468f9b74089b56.camel@intel.com>
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


On 07/01/2022 17:03, Teres Alexis, Alan Previn wrote:
> 
> On Fri, 2022-01-07 at 09:03 +0000, Tvrtko Ursulin wrote:
>> On 06/01/2022 18:33, Teres Alexis, Alan Previn wrote:
>>> On Thu, 2022-01-06 at 09:38 +0000, Tvrtko Ursulin wrote:
>>>> On 05/01/2022 17:30, Teres Alexis, Alan Previn wrote:
>>>>> On Tue, 2022-01-04 at 13:56 +0000, Tvrtko Ursulin wrote:
>>>>>>> The flow of events are as below:
>>>>>>>
>>>>>>> 1. guc sends notification that an error capture was done and ready to take.
>>>>>>> 	- at this point we copy the guc error captured dump into an interim store
>>>>>>> 	  (larger buffer that can hold multiple captures).
>>>>>>> 2. guc sends notification that a context was reset (after the prior)
>>>>>>> 	- this triggers a call to i915_gpu_coredump with the corresponding engine-mask
>>>>>>>               from the context that was reset
>>>>>>> 	- i915_gpu_coredump proceeds to gather entire gpu state including driver state,
>>>>>>>               global gpu state, engine state, context vmas and also engine registers. For the
>>>>>>>               engine registers now call into the guc_capture code which merely needs to verify
>>>>>>> 	  that GuC had already done a step 1 and we have data ready to be parsed.
>>>>>>
>>>>>> What about the time between the actual reset and receiving the context
>>>>>> reset notification? Latter will contain intel_context->guc_id - can that
>>>>>> be re-assigned or "retired" in between the two and so cause problems for
>>>>>> matching the correct (or any) vmas?
>>>>>>
>>>>> Not it cannot because its only after the context reset notification that i915 starts
>>>>> taking action against that cotnext - and even that happens after the i915_gpu_codedump (engine-mask-of-context) happens.
>>>>> That's what i've observed in the code flow.
>>>>
>>>> The fact it is "only after" is exactly why I asked.
>>>>
>>>> Reset notification is in a CT queue with other stuff, right? So can be
>>>> some unrelated time after the actual reset. Could have context be
>>>> retired in the meantime and guc_id released is the question.
>>>>
>>>> Because i915 has no idea there was a reset until this delayed message
>>>> comes over, but it could see user interrupt signaling end of batch,
>>>> after the reset has happened, unbeknown to i915, right?
>>>>
>>>> Perhaps the answer is guc_id cannot be released via the request retire
>>>> flows. Or GuC signaling release of guc_id is a thing, which is then
>>>> ordered via the same CT buffer.
>>>>
>>>> I don't know, just asking.
>>>>
>>> As long as the context is pinned, the guc-id wont be re-assigned. After a bit of offline brain-dump
>>> from John Harrison, there are many factors that can keep the context pinned (recounts) including
>>> new or oustanding requests. So a guc-id can't get re-assigned between a capture-notify and a
>>> context-reset even if that outstanding request is the only refcount left since it would still
>>> be considered outstanding by the driver. I also think we may also be talking past each other
>>> in the sense that the guc-id is something the driver assigns to a context being pinned and only
>>> the driver can un-assign it (both assigning and unasigning is via H2G interactions).
>>> I get the sense you are assuming the GuC can un-assign the guc-id's on its own - which isn't
>>> the case. Apologies if i mis-assumed.
>>
>> I did not think GuC can re-assign ce->guc_id. I asked about request/context complete/retire happening before reset/capture notification is received.
>>
>> That would be the time window between the last intel_context_put, so last i915_request_put from retire, at which point AFAICT GuC code releases the guc_id. Execution timeline like:
>>
>>> ------ rq1 ------|------ rq2 ------|
>>      ^ engine reset		    ^ rq2, rq1 retire, guc id released
>>
>>                                                             		^ GuC reset notify received - guc_id not known any more?
>>    
>> You are saying something is guaranteed to be holding onto the guc_id at the point of receiving the notification? "There are many factors that can keep the context pinned" - what is it in this case? Or the case cannot happen?
>>
>> Regards,
>>
>> Tvrtko
> 
> above chart is incorrect: GuC reset notification is sent from GuC to host before it sends the engine reset notification

Meaning? And how does it relate to actual reset vs retire vs reset 
notification (sent or received)?

Plus, I thought so far we were talking about reset notification and 
capture notification, so what you say here now extra confuses me without 
providing an answer to my question.

Regards,

Tvrtko
