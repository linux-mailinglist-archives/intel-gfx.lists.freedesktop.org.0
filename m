Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3A01455EF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 14:32:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8D36F502;
	Wed, 22 Jan 2020 13:32:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8656E536
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 13:32:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:32:33 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="229334990"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Jan 2020 05:32:32 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200121100927.114886-1-chris@chris-wilson.co.uk>
 <20200121130411.267092-1-chris@chris-wilson.co.uk>
 <524735a8-dc0c-fdfc-941a-5cc3afaac40e@linux.intel.com>
 <157961563444.4434.6318084724990340871@skylake-alporthouse-com>
 <31d2ce9f-2a72-7471-1ad4-26ffa7091be6@linux.intel.com>
 <157962793102.5216.10310770620304053074@skylake-alporthouse-com>
 <341a33c9-d378-ee0f-bc35-cb11d1288732@linux.intel.com>
 <157962947004.6241.16387329374520796728@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1d605d9a-dff4-2ff5-30bb-6c5a7350a9cf@linux.intel.com>
Date: Wed, 22 Jan 2020 13:32:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157962947004.6241.16387329374520796728@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/execlists: Reclaim the hanging
 virtual request
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/01/2020 17:57, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-21 17:43:37)
>>
>> On 21/01/2020 17:32, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-01-21 17:19:52)
>>>>
>>>> On 21/01/2020 14:07, Chris Wilson wrote:
>>>>> Quoting Tvrtko Ursulin (2020-01-21 13:55:29)
>>>>>>
>>>>>>
>>>>>> On 21/01/2020 13:04, Chris Wilson wrote:
>>>>>>> +             GEM_BUG_ON(!reset_in_progress(&engine->execlists));
>>>>>>> +
>>>>>>> +             /*
>>>>>>> +              * An unsubmitted request along a virtual engine will
>>>>>>> +              * remain on the active (this) engine until we are able
>>>>>>> +              * to process the context switch away (and so mark the
>>>>>>> +              * context as no longer in flight). That cannot have happened
>>>>>>> +              * yet, otherwise we would not be hanging!
>>>>>>> +              */
>>>>>>> +             spin_lock_irqsave(&ve->base.active.lock, flags);
>>>>>>> +             GEM_BUG_ON(intel_context_inflight(rq->context) != engine);
>>>>>>> +             GEM_BUG_ON(ve->request != rq);
>>>>>>> +             ve->request = NULL;
>>>>>>> +             spin_unlock_irqrestore(&ve->base.active.lock, flags);
>>>>>>> +
>>>>>>> +             rq->engine = engine;
>>>>>>
>>>>>> Lets see I understand this... tasklet has been disabled and ring paused.
>>>>>> But we find an uncompleted request in the ELSP context, with rq->engine
>>>>>> == virtual engine. Therefore this cannot be the first request on this
>>>>>> timeline but has to be later.
>>>>>
>>>>> Not quite.
>>>>>
>>>>> engine->execlists.active[] tracks the HW, it get's updated only upon
>>>>> receiving HW acks (or we reset).
>>>>>
>>>>> So if execlists_active()->engine == virtual, it can only mean that the
>>>>> inflight _hanging_ request has already been unsubmitted by an earlier
>>>>> preemption in execlists_dequeue(), but that preemption has not yet been
>>>>> processed by the HW. (Hence the preemption-reset underway.)
>>>>>
>>>>> Now while we coalesce the requests for a context into a single ELSP[]
>>>>> slot, and only record the last request submitted for a context, we have
>>>>> to walk back along that context's timeline to find the earliest
>>>>> incomplete request and blame the hang upon it.
>>>>>
>>>>> For a virtual engine, it's much simpler as there is only ever one
>>>>> request in flight, but I don't think that has any impact here other
>>>>> than that we only need to repair the single unsubmitted request that was
>>>>> returned to the virtual engine.
>>>>>
>>>>>> One which has been put on the runqueue but
>>>>>> not yet submitted to hw. (Because one at a time.) Or it has been
>>>>>> unsubmitted by __unwind_incomplete_request already. In the former case
>>>>>> why move it to the physical engine? Also in the latter actually, it
>>>>>> would overwrite rq->engine with the physical one.
>>>>>
>>>>> Yes. For incomplete preemption event, the request is *still* on this
>>>>> engine and has not been released (rq->context->inflight == engine, so it
>>>>> cannot be submitted to any other engine, until after we acknowledge the
>>>>> context has been saved and is no longer being accessed by HW.) It is
>>>>> legal for us to process the hanging request along this engine; we have a
>>>>> suboptimal decision to return the request to the same engine after the
>>>>> reset, but since we have replaced the hanging payload, the request is a
>>>>> mere signaling placeholder (and I do not think will overly burden the
>>>>> system and negatively impact other virtual engines).
>>>>
>>>> What if the request in elsp actually completed in the meantime eg.
>>>> preemption timeout was a false positive?
>>>>
>>>> In execlists_capture we do:
>>>>
>>>>           cap->rq = execlists_active(&engine->execlists);
>>>>
>>>> This gets a completed request, then we do:
>>>>
>>>>           cap->rq = active_request(cap->rq->context->timeline, cap->rq);
>>>>
>>>> This walks along the virtual timeline and finds a next virtual request.
>>>> It then binds this request to a physical engine and sets ve->request to
>>>> NULL.
>>>
>>> If we miss the completion event, then active_request() returns the
>>> original request and we blame it for a having a 650ms preemption-off
>>> shader with a 640ms preemption timeout.
>>
>> I am thinking of this sequence of interleaved events:
>>
>>          preempt_timeout
>>                                  tasklet_disable
>>                                  ring_pause
>>                                  execlist_active
>>          seqno write visible
>>                                  active_request - walks the tl to next
> 
> ... tries to walk to next, sees no incomplete request, returns original
> request.
> 
> static struct i915_request *
> active_request(const struct intel_timeline * const tl, struct i915_request *rq)
> {
>          struct i915_request *active = rq;
> 	^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ this sneaky line
> 
>          rcu_read_lock();
>          list_for_each_entry_continue_reverse(rq, &tl->requests, link) {
>                  if (i915_request_completed(rq))
>                          break;
> 
>                  active = rq;
> 		^^^^^^^^^^^^ these too may complete at any moment after
> 		our inspection
> 
> 
>          }
>          rcu_read_unlock();
> 
>          return active;
> }

Brain fart on my part, sorry. I was confused.

Regards,

Tvrtko

>>                                  execlist_hold
>>                                  schedule_worker
>>                                  tasklet_enable
>>          process_csb completed
>>
>> This is not possible? Seqno write happening needs only to be roughly
>> there since as long as tasklet has been disabled execlist->active
>> remains fixed.
> 
> It's certainly possible, the requests do keep going on the HW up until
> the next semaphore (which is after the seqno write). That is taken into
> account in that we may end up trying to reset a completed request, which
> should be avoided in execlists_reset() [after the HW has processed the
> reset request], but we capture the request anyway and put it back for
> execution (which is avoided in execlists_dequeue). Isn't preempt-to-busy
> fun?
> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
