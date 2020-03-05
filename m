Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE64417A628
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64956E1E0;
	Thu,  5 Mar 2020 13:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD426E1E0
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 13:14:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 05:14:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="234409698"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 05 Mar 2020 05:14:26 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 435505C1DDA; Thu,  5 Mar 2020 15:13:09 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <8736an58ql.fsf@gaia.fi.intel.com>
References: <20200305073531.2594698-1-chris@chris-wilson.co.uk>
 <8736an58ql.fsf@gaia.fi.intel.com>
Date: Thu, 05 Mar 2020 15:13:09 +0200
Message-ID: <87pndr3py2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Enable timeslice on
 partial virtual engine dequeue
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mika Kuoppala <mika.kuoppala@linux.intel.com> writes:

> Chris Wilson <chris@chris-wilson.co.uk> writes:
>
>> If we stop filling the ELSP due to an incompatible virtual engine
>> request, check if we should enable the timeslice on behalf of the queue.
>>
>
> Leaves me pondering more of the why.
>
> So that on these boundaries also, the last rq gets subdued to
> a timeslice and not get a free run?

I got some confirmations on irc. Yes this for that.
The commit message could be augmented on the why emphasis!

>
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_lrc.c | 21 ++++++++++++++++-----
>>  1 file changed, 16 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> index 5da86a40434c..954bd4797482 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> @@ -1802,6 +1802,20 @@ static void set_timeslice(struct intel_engine_cs *engine)
>>  	set_timer_ms(&engine->execlists.timer, active_timeslice(engine));
>>  }
>>  
>> +static void start_timeslice(struct intel_engine_cs *engine,
>> +			    struct i915_request *last)
>> +{
>> +	struct intel_engine_execlists *execlists = &engine->execlists;
>> +
>> +	/* As we are returning early, update the hint from the queue */
>> +	execlists->switch_priority_hint =
>> +		max(execlists->queue_priority_hint,
>> +		    execlists->switch_priority_hint);

Still not completely unclear how the all hints play together
but the comment holds true, we bail out early.

>> +
>> +	if (!execlists->timer.expires && need_timeslice(engine, last))
>> +		set_timer_ms(&execlists->timer, timeslice(engine));
>> +}
>> +
>>  static void record_preemption(struct intel_engine_execlists *execlists)
>>  {
>>  	(void)I915_SELFTEST_ONLY(execlists->preempt_hang.count++);
>> @@ -1965,11 +1979,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>>  				 * Even if ELSP[1] is occupied and not worthy
>>  				 * of timeslices, our queue might be.
>>  				 */
>> -				if (!execlists->timer.expires &&
>> -				    need_timeslice(engine, last))
>> -					set_timer_ms(&execlists->timer,
>> -						     timeslice(engine));
>> -
>> +				start_timeslice(engine, last);
>>  				return;
>>  			}
>>  		}
>> @@ -2004,6 +2014,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>>  
>>  			if (last && !can_merge_rq(last, rq)) {
>>  				spin_unlock(&ve->base.active.lock);
>> +				start_timeslice(engine, last);
>>  				return; /* leave this for another */
>
> for another interrupt?

For another veng. The comment might have already been augmented.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -Mika
>
>>  			}
>>  
>> -- 
>> 2.25.1
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
