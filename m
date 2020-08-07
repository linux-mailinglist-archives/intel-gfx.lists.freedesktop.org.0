Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAA423ECFB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 13:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D99F86E0D0;
	Fri,  7 Aug 2020 11:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE816E0D0
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 11:56:59 +0000 (UTC)
IronPort-SDR: eiIXyOUR7kOt1mppg1xN19NatAxaCVbK2EQOfgouJdtVUHw28QivAEG4XScEUnCPXxEAGd9kIv
 G13LZtOyh9dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171129802"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171129802"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 04:56:58 -0700
IronPort-SDR: PK3hwicI1YMgH4+r3WWzrY04t9BqaCYcxH3rApzeNWlK1K13lf8p9or0wQv0AQ3NXjwBG+nMpU
 iuD3IQ7iFM0g==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="437881919"
Received: from kmatyuch-mobl.ger.corp.intel.com (HELO [10.255.197.120])
 ([10.255.197.120])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 04:56:57 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200807083256.32761-1-chris@chris-wilson.co.uk>
 <20200807083256.32761-4-chris@chris-wilson.co.uk>
 <8dc16013-5104-b328-0ddb-15d4cc14b027@linux.intel.com>
 <159680125470.9674.10674412226026393934@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <41c64817-3556-373d-d167-9b9fc058abc1@linux.intel.com>
Date: Fri, 7 Aug 2020 12:56:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159680125470.9674.10674412226026393934@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Track signaled breadcrumbs
 outside of the breadcrumb spinlock
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


On 07/08/2020 12:54, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-08-07 12:26:41)
>>
>> On 07/08/2020 09:32, Chris Wilson wrote:
>>>    static void signal_irq_work(struct irq_work *work)
>>>    {
>>>        struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
>>>        const ktime_t timestamp = ktime_get();
>>> +     struct llist_node *signal, *sn;
>>>        struct intel_context *ce, *cn;
>>>        struct list_head *pos, *next;
>>> -     LIST_HEAD(signal);
>>> +
>>> +     signal = NULL;
>>> +     if (unlikely(!llist_empty(&b->signaled_requests)))
>>> +             signal = llist_del_all(&b->signaled_requests);
>>> @@ -242,7 +248,9 @@ static void signal_irq_work(struct irq_work *work)
>>>                         * spinlock as the callback chain may end up adding
>>>                         * more signalers to the same context or engine.
>>>                         */
>>> -                     __signal_request(rq, &signal);
>>> +                     clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
>>> +                     if (__signal_request(rq))
>>> +                             signal = __llist_add(&rq->signal_node, signal);
>>
>> Presumably here you count on no possible races, allowing for a more
>> optimized, custom, __llist_add. It needs a comment at minimum, or even
>> better just use llist_add.
> 
> It's a purely local singly linked list here. We own the
> request->signal_node as that is locked by the b->irq_lock and the
> clear_bit, and signal is a local variable.

True.. just a comment then please and with that:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
