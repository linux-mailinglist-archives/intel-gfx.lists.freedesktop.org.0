Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2195BA8C1
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 10:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D368010E3C1;
	Fri, 16 Sep 2022 08:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F4C10E3C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 08:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663318722; x=1694854722;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7chbLBuYKWcaJ+o7r+asel7B2tGM3P2z8xgH/CJ1i/I=;
 b=bOLeW/MrroQAmWrUzBMDbAno8fzRv05MfwHfHCDtKojwfSKnOVELZY0E
 Ts+2PupfsdZQgjjp+26URYDCr0kH3yK5YK2TbnpDP4EJPZRZEX5eV6sVr
 UQYIE2OcCg8QsZAP7rkdPBec8unBhKG9P7Pijb2H36lfCWgbdNBkYWtAe
 HKUG33VU/mZtjm5ynLUo8mUJkb8s30wgvHoLE68DrOzz/iDXorVYAjHJK
 n8Gq/uLmkPc88kBgjETINLMkg6tgzlP5RdHAQhxwRawx6ATzTUwFUz40F
 EXsFDNSGaiPosjH/mbpLE8pJlKB/6/uN9VFyptfuPalLN6ySf1IoarVna Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="299772198"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="299772198"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 01:58:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="613194491"
Received: from agiridha-mobl1.ger.corp.intel.com (HELO [10.213.204.25])
 ([10.213.204.25])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 01:58:40 -0700
Message-ID: <70636d43-57e8-46ac-7751-d8fd0fb13d72@linux.intel.com>
Date: Fri, 16 Sep 2022 09:58:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220915021218.1412111-1-alan.previn.teres.alexis@intel.com>
 <20220915021218.1412111-2-alan.previn.teres.alexis@intel.com>
 <5aec4a0d-e99b-011d-68a9-84ad1f1120bf@linux.intel.com>
 <2808b0f67797543e453e74b4e156df4a5cdd8656.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <2808b0f67797543e453e74b4e156df4a5cdd8656.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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


On 16/09/2022 08:53, Teres Alexis, Alan Previn wrote:
> 
> On Thu, 2022-09-15 at 09:48 +0100, Tvrtko Ursulin wrote:
>> On 15/09/2022 03:12, Alan Previn wrote:
>>> From: Matthew Brost <matthew.brost@intel.com>
>>>
>>> Add a delay, configurable via debugfs (default 34ms), to disable
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>>
> 
>>> +		u16 guc_ids_in_use;
>>
>> Any specific reason to use u16? It can usually just result in larger
>> code generated and I don't see any space saving needed or achieved when
>> it is sandwiched between two struct list_heads.
>>
> no specific reason - will switch to uint32.

Unsigned int would be best. Every time there is explicit width specified 
it looks like there is special reason for the width - like interacting 
with hardware or firmware protocol. At least I always see it like that.

>>> +		u64 sched_disable_delay_ms;
>>
>> 64-bits for the delay then sounds like overkill. Both should IMO just be
>> unsigned ints.
>>
> avoiding some typecasting on related functions that reference this
> but thats not a good excuse so will fix it.

Right, yes, clamp/cap/validate at debugfs entry points should do it.

>>> +		int sched_disable_gucid_threshold;
>>
>> unsigned int as well, so reader does not have to think about:
>>    return guc->submission_state.guc_ids_in_use >
>> 	guc->submission_state.sched_disable_gucid_threshold;
>>
>> further down.
>>
> yes agreed - will fix.
> 
> 
>>> +static void __delay_sched_disable(struct work_struct *wrk)
>>> +{
>>> +	struct intel_context *ce =
>>> +		container_of(wrk, typeof(*ce), guc_state.sched_disable_delay.work);
>>> +	struct intel_guc *guc = ce_to_guc(ce);
>>> +	unsigned long flags;
>>> +
>>>    	spin_lock_irqsave(&ce->guc_state.lock, flags);
>>>    
>>> +	if (bypass_sched_disable(guc, ce)) {
>>> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>> +		intel_context_sched_disable_unpin(ce);
>>> +	} else {
>>> +		do_sched_disable(guc, ce, flags);
>>> +	}
>>
>> lock
>> if
>>     unlock
>>     do sttuff
>> else
>>     do_sched_disable - which unlocks inside
>>
>> Now move to next block..
>>
>>> +}
>>> +
>>> +static bool guc_id_pressure(struct intel_guc *guc, struct intel_context *ce)
>>> +{
>>>    	/*
>>> -	 * We have to check if the context has been disabled by another thread,
>>> -	 * check if submssion has been disabled to seal a race with reset and
>>> -	 * finally check if any more requests have been committed to the
>>> -	 * context ensursing that a request doesn't slip through the
>>> -	 * 'context_pending_disable' fence.
>>> +	 * parent contexts are perma-pinned, if we are unpinning do schedule
>>> +	 * disable immediately.
>>>    	 */
>>> -	if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
>>> -		     context_has_committed_requests(ce))) {
>>> -		clr_context_enabled(ce);
>>> +	if (intel_context_is_parent(ce))
>>> +		return true;
>>> +
>>> +	/*
>>> +	 * If we are beyond the threshold for avail guc_ids, do schedule disable immediately.
>>> +	 */
>>> +	return guc->submission_state.guc_ids_in_use >
>>> +		guc->submission_state.sched_disable_gucid_threshold;
>>> +}
>>> +
>>> +static void guc_context_sched_disable(struct intel_context *ce)
>>> +{
>>> +	struct intel_guc *guc = ce_to_guc(ce);
>>> +	u64 delay = guc->submission_state.sched_disable_delay_ms;
>>> +	unsigned long flags;
>>> +
>>> +	spin_lock_irqsave(&ce->guc_state.lock, flags);
>>> +
>>> +	if (bypass_sched_disable(guc, ce)) {
>>> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>> +		intel_context_sched_disable_unpin(ce);
>>> +	} else if (!intel_context_is_closed(ce) && !guc_id_pressure(guc, ce) &&
>>> +		   delay) {
>>>    		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>> -		goto unpin;
>>> +		mod_delayed_work(system_unbound_wq,
>>> +				 &ce->guc_state.sched_disable_delay,
>>> +				 msecs_to_jiffies(delay));
>>> +	} else {
>>> +		do_sched_disable(guc, ce, flags);
>>>    	}
>>
>> lock
>> if
>>     unlock
>>     do stuff
>> else if
>>     unlock
>>     do stuff
>> else
>>     do_sched_disable - which unlocks inside
>>
>> IMO it creates less readable code for the benefit of not repeating
>> with_intel_runtime_pm -> __guc_context_sched_disable two times. Dunno..
>> it's ugly but I have no suggestions. Hm does it have to send using the
>> busy loop? It couldn't just queue the request and then wait for reply if
>> disable message was emitted?
>>
> I agree that the above code lacks readability - will see if i can break it down to smaller
> functions with cleaner in-function lock/unlock pairs. I agree that a little code duplication
> is better than less readable code. It was inherited code i didn't want to modify but I'll
> go ahead and refactor this.
> 
> On the busy loop - im assuming you are refering to the actual ct sending. I'll consult my
> team if i am missing anything more but based on comments, I believe callers must use that
> function to guarantee reservation of space in the G2H CTB to always have space to capture
> responses for actions that MUST be acknowledged from GuC (acknowledged by either replying
> with a success or failure). This is necessary for coherent guc-id state machine (because the
> GuC firmware will drop requests for guc-id's that are not registered or not in a
> 'sched-enabled' state).

Maybe to explain what I meant a bit better. I thought that the reason 
for strange unlock pattern is the with_runtime_pm which needs to happen 
for the CT send/receive loop. What I meant was would it be possible to 
do it like this:

state lock
...
sent = queue_msg_2_guc (this would be i915 only, no runtime pm needed)
...
state unlock

if (sent)
   with_runtime_pm:
      send/receive queued guc messages (only this would talk to guc)

But I have truly no idea if the CT messaging infrastructure supports 
something like this.

Anyway, see what it is possible and if it is not or too hard for now 
leave it be.

>>> -	guc_id = prep_context_pending_disable(ce);
>>> +}
>>>    
>>> -	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>> +static void guc_flush_all_delayed_disable_sched_contexts(struct intel_guc *guc)
>>> +{
>>> +	struct intel_context *ce;
>>> +	unsigned long index;
>>> +	unsigned long flags;
>>> +	unsigned long ceflags;
>>>    
>>> -	with_intel_runtime_pm(runtime_pm, wakeref)
>>> -		__guc_context_sched_disable(guc, ce, guc_id);
>>> +	xa_lock_irqsave(&guc->context_lookup, flags);
>>> +	xa_for_each(&guc->context_lookup, index, ce) {
>>> +		if (!kref_get_unless_zero(&ce->ref))
>>> +			continue;
>>> +		xa_unlock(&guc->context_lookup);
>>
>> So this whole loop _needs_ to run with interrupts disabled? Explaining
>> why in a comment would be good.
>>
> Being mid-reset, the locking mode is consistent with other functions also used
> as part of the reset preparation that parses and potentially modifies contexts.
> I believe the goal is to handle all of this parsing without getting conflicting
> latent G2H replies that breaks the preparation flow (that herds active contexts
> into a fewer set of states as part of reset) - but i will double check
> with my colleagues.
> 
>>> +		if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
>>> +		    cancel_delayed_work(&ce->guc_state.sched_disable_delay)) {
>>> +			spin_lock_irqsave(&ce->guc_state.lock, ceflags);
>>> +			spin_unlock_irqrestore(&ce->guc_state.lock, ceflags);
>>
>> This deserves a comment about what lock toggling wants to ensure.
>>
> I realize this might have been my local rebasing mistake, the intention was to
> handle cases where sched_disable_delay wasn't pending but potentially still
> executing do_sched_disable. I believe I could try cancel_delayed_work_sync (but
> not sure if i can call that might-sleep funtion mid reset while not-
> interruptible). Else, i would move that lock-unlock to if the
> cancel_delayed_work did not return true (as per original intent before my
> rebase error).

Okay a comment like "flush any currently executing do_sched_disable" 
above the lock toggling would do then. Even better if you add what 
happens if that flushing isn't done.

> 
>> Also, if the loops runs with interrupts disabled what is the point of
>> irqsave variant in here??
> Yes - its redundant, let me fix that, apologies for that.
> 
>>
>> Also2, what is the reason for dropping the lock? intel_context_put?
> Being consistent with other reset preparation code that closes contexts,
> the lock is dropped before the intel_context_put.
> (I hope i am not misunderstanding your question).

Right, okay.. so for locking inversion issues - intel_context_put must 
not be called with guc_state.lock held, yes?

Not a mandatory request, but if you want you could look into the option 
of avoiding lock dropping and instead doing xa_erase and recording the 
list of contexts for sched disable or put in a local list, and doing 
them all in one block outside the locked/irq disabled section. Although 
tbh I am not sure if that would improve anything. Probably not in this 
case of a reset path, but if there are other places in GuC code which do 
this it may be beneficial for less hammering on the CPU and core 
synchronisation for atomics.

>>
>>> +	/*
>>> +	 * If the context gets closed while the execbuf is ongoing, the context
>>> +	 * close code will race with the below code to cancel the delayed work.
>>> +	 * If the context close wins the race and cancels the work, it will
>>> +	 * immediately call the sched disable (see guc_context_close), so there
>>> +	 * is a chance we can get past this check while the sched_disable code
>>> +	 * is being executed. To make sure that code completes before we check
>>> +	 * the status further down, we wait for the close process to complete.
>>> +	 */
>>> +	if (cancel_delayed_work_sync(&ce->guc_state.sched_disable_delay))
>>> +		intel_context_sched_disable_unpin(ce);
>>> +	else if (intel_context_is_closed(ce))
>>> +		wait_for(context_close_done(ce), 1);
>>
>> Comment makes it sounds important to handle the race, althought it
>> doesn't really explain the consequences. But most importantly, what if
>> close doesn't complete in 1ms?
> 
> will add the consequence (i believe the consequence is that we could prematurely
> read context flags bit indicating its gucid is still registered and after skipping
> re-registration, find that context gets closed and guc-id freed).
> 
> Yes the 1 second is arbitrary and unnervingly short. Just spent sometime trying to

One millisecond even. :)

What would be the consequence of prematurely reading the still 
registered context flag? Execbuf fails? GuC hangs? Kernel crashes? 
Something else?

And why cant' this race with context close happen at any other point 
than this particular spot in guc_request_alloc? Immediately after the 
added checks? After atomic_add_unless?

> figure out portions of the SCHED_foo state machine bits and believe that its possible
> for guc_request_alloc to just force context_close to be done from here as it would
> force it into a state requiring re-registration and would close that a few lines
> below. I will however verify with my team mates as i am new to these SCHED_foo state
> machine bits.

Yes it always looked complicated and perhaps it has even grown more so - 
I'm afraid I cannot be of any help there.

Regards,

Tvrtko
