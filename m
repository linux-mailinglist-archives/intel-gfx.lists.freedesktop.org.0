Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 342B32F1BF8
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 18:13:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82E889ADC;
	Mon, 11 Jan 2021 17:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B2289ADC
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 17:13:02 +0000 (UTC)
IronPort-SDR: zUU4xmIH7oLfw3c14rC6k5wH0FKcyZaRLjf8rKgYOg+C5OnZsTm7G7Mtzb6Qgq1I0rzYAW64fg
 d+xwGXh1QHSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="196507906"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="196507906"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 09:13:02 -0800
IronPort-SDR: q+kWjQ1jHd9GUJz+cnUdBJKnrPgaOB5jD7ppruE2OD7f5MwOSWrnRXjb5gcZQwr0BcTKu/7YfR
 BYUfaV78GdTw==
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="352676590"
Received: from sbrooks8-mobl.ger.corp.intel.com (HELO [10.214.224.70])
 ([10.214.224.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 09:13:00 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210111105735.21515-1-chris@chris-wilson.co.uk>
 <20210111105735.21515-3-chris@chris-wilson.co.uk>
 <24903f8e-4f53-c0bd-4ced-7161b505f06d@linux.intel.com>
 <161038246850.28181.16757116420949491976@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c8a89bfa-f5df-5f41-f5d9-a5042226e5ba@linux.intel.com>
Date: Mon, 11 Jan 2021 17:12:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161038246850.28181.16757116420949491976@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Perform an arbitration
 check before busywaiting
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


On 11/01/2021 16:27, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-11 16:19:40)
>>
>> On 11/01/2021 10:57, Chris Wilson wrote:
>>> During igt_reset_nop_engine, it was observed that an unexpected failed
>>> engine reset lead to us busywaiting on the stop-ring semaphore (set
>>> during the reset preparations) on the first request afterwards. There was
>>> no explicit MI_ARB_CHECK in this sequence as the presumption was that
>>> the failed MI_SEMAPHORE_WAIT would itself act as an arbitration point.
>>> It did not in this circumstance, so force it.
>>
>> In other words MI_SEMAPHORE_POLL is not a preemption point? Can't
>> remember if I knew that or not..
> 
> MI_SEMAPHORE_WAIT | POLL is most definitely a preemption point on a
> miss.
> 
>> 1)
>> Why not the same handling in !gen12 version?
> 
> Because I think it's a bug in tgl [a0 at least]. I think I've seen the
> same symptoms on tgl before, but not earlier. This is the first time the
> sequence clicked as to why it was busy spinning. Random engine reset
> failures are rare enough -- I was meant to also write a test case to
> inject failure.

Random engine reset failure you think is a TGL issue?

>   
>> 2)
>> Failed reset leads to busy-hang in following request _tail_? But there
>> is an arb check at the start of following request as well. Or in cases
>> where we context switch into the middle of a previously executing request?
> 
> It was the first request submitted after the failed reset. We expect to
> clear the ring-stop flag on the CS IDLE->ACTIVE event.
> 
>> But why would that busy hang? Hasn't the failed request unpaused the ring?
> 
> The engine was idle at the time of the failed reset. We left the
> ring-stop set, and submitted the next batch of requests. We hit the
> MI_SEMAPHORE_WAIT(ring-stop) at the end of the first request, but
> without hitting an arbitration point (first request, no init-breadcrumb
> in this case), the semaphore was stuck.

So a kernel context request? Why hasn't IDLE->ACTIVE cleared ring stop? 
Presumably this CSB must come after the first request has been submitted 
so apparently I am still not getting how it hangs.

Just because igt_reset_nop_engine does things "quickly"? It prevents the 
CSB from arriving? So ARB_CHECK pickups up on the fact ELSP has been 
rewritten before the IDLE->ACTIVE even received and/or engine reset 
prevented it from arriving?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
