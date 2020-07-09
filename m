Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25798219E43
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 12:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 793296E3F4;
	Thu,  9 Jul 2020 10:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285256E3F4
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 10:52:25 +0000 (UTC)
IronPort-SDR: eMFOqbRTMbD+AtxPRr9Cl5vRhDfSPLJCddgLYdAMlZQfWQW+lQtl4x06LNy7h/LQBeSukEOrK8
 PXCR6bDfjvkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="212889344"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="212889344"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 03:52:24 -0700
IronPort-SDR: 3oXuj7E3fRLOIjuufPyK8290tLf8j2fZFsB58OP0VRdjdg05WFaT7gx1ynLlGh+7k1+0ckZfK6
 S13bSqz6ehqQ==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="457866629"
Received: from unknown (HELO [10.251.164.218]) ([10.251.164.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 03:52:23 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-4-chris@chris-wilson.co.uk>
 <846580f3-4dd4-ed0e-b461-010d7b0ae6be@linux.intel.com>
 <159423173830.30287.17971074477427255070@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <db44ae52-dad5-78c9-bae5-2b9805db4790@linux.intel.com>
Date: Thu, 9 Jul 2020 11:52:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159423173830.30287.17971074477427255070@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/gem: Don't drop the timeline
 lock during execbuf
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


On 08/07/2020 19:08, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-08 17:54:51)
>>
>> On 06/07/2020 07:19, Chris Wilson wrote:
>>> @@ -662,18 +692,22 @@ static int eb_reserve(struct i915_execbuffer *eb)
>>>         * room for the earlier objects *unless* we need to defragment.
>>>         */
>>>    
>>> -     if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
>>> -             return -EINTR;
>>> -
>>>        pass = 0;
>>>        do {
>>> +             int err = 0;
>>> +
>>> +             if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
>>> +                     return -EINTR;
>>
>> Recently you explained to me why we still use struct mutex here so
>> maybe, while moving the code, document that in a comment.
> 
> Part of the work here is to eliminate the need for the struct_mutex,
> that will be replaced by not dropping the vm->mutex while binding
> multiple vma.
> 
> It's the interaction with the waits to flush other vm users when under
> pressure that are the most annoying. This area is not straightforward,
> and at least deserves some comments so that the thinking behind it can
> be fixed.
> 
>>> +static struct i915_request *
>>> +nested_request_create(struct intel_context *ce)
>>> +{
>>> +     struct i915_request *rq;
>>> +
>>> +     /* XXX This only works once; replace with shared timeline */
>>
>> Once as in attempt to use the same local intel_context from another eb
>> would upset lockdep? It's not a problem I think.
> 
> "Once" as in this is the only time we can do this nested locking between
> engines of the same context in the whole driver, or else lockdep would
> have been right to complain. [i.e. if we ever do the reserve nesting, we
> are screwed.]
> 
> Fwiw, I have posted patches that will eliminate the need for a nested
> timeline here :)

In this series or just on the mailing list?

> 
>>> +     mutex_lock_nested(&ce->timeline->mutex, SINGLE_DEPTH_NESTING);
>>> +     intel_context_enter(ce);
> 
> 
>>>    static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
>>>    {
>>>        struct intel_timeline *tl;
>>> @@ -2087,9 +2174,7 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
>>>        intel_context_enter(ce);
>>>        rq = eb_throttle(ce);
>>>    
>>> -     intel_context_timeline_unlock(tl);
>>> -
>>> -     if (rq) {
>>> +     while (rq) {
>>>                bool nonblock = eb->file->filp->f_flags & O_NONBLOCK;
>>>                long timeout;
>>>    
>>> @@ -2097,23 +2182,34 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
>>>                if (nonblock)
>>>                        timeout = 0;
>>>    
>>> +             mutex_unlock(&tl->mutex);
>>
>> "Don't drop the timeline lock during execbuf"? Is the "during execbuf"
>> actually a smaller subset
> 
> We are before execbuf in my book :)
> 
> This is throttle the hog before we start, and reserve enough space in
> the ring (we make sure there's a page, or thereabouts) to build a batch
> without interruption.

Ok. :)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
