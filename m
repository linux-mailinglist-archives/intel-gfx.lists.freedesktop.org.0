Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4151939F152
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0632C6EB48;
	Tue,  8 Jun 2021 08:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A679F6EB48
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 08:46:26 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id c13so15295579oib.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 01:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NW8oEUeSrgy2VYJZHRBKOpY8SQw4voXk0GCMDPHBGEE=;
 b=MNmrZO1SJctC01ZHDhCaZxROPmPQVOVuH9cqgZpC3SLTccqx/QnNPiePXj4jCHi7yC
 V9hA8a1KCpWK6QhXVz0PUiXYuXiQWSXIN4Iz8tMNDF4jSYM9VagwVuYhYbIWaouE/gKL
 lnhYlt9egXgfk1eXUOkAJyqbbkA5EX9TT9nxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NW8oEUeSrgy2VYJZHRBKOpY8SQw4voXk0GCMDPHBGEE=;
 b=ZtKRznDHsyG4uYKRnM9qrO76QbQUqr3NJe6tLP93nQDsPRx6I6dAWcrvGDCcPOcv4Q
 Ww/58S8Hn9uj8ntlbedHqGedeYgkh5DrAXOEhselTq8+i9ZXFuvZwKK6pSpcz+U5Jalr
 PUrvXDAvMlK/wk69bvRlVt6dfWF7pgfvh8BgEk1xatD9C4ku946nyXcSMaT2VHisgnXA
 dRq+lnLfpVR8MzEFAz9lbLJKP4kIIQxhQ5AxL0ZUfyQivzVq6ExBntOO8OccyWxy+b5z
 Qn6oPhRNin/2HbF6t/nw67CvZpsbDj/Se+WAqnMHAHCeyVqQWszo2+cIEeANzfbPkWJH
 A5fw==
X-Gm-Message-State: AOAM532ABS5MRaKw8eTKxEKLmHvwU+00lNQQo1lDVKWgBZWws2SJ3MZ3
 zvu49Z0nAmPzkufuRvw1H5hluRoAvzxXXL9vzAu6SA==
X-Google-Smtp-Source: ABdhPJzh0fGlJ33AiwcJaUGCp5HO8XQRpDpxCz8UPRjhRZrz8pArTNy6U/mD5viwiUcQv3sHAzsi5Gg6/4/x89ljrxk=
X-Received: by 2002:a05:6808:1142:: with SMTP id
 u2mr1948304oiu.101.1623141985998; 
 Tue, 08 Jun 2021 01:46:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-37-matthew.brost@intel.com>
 <375b4de4-168f-9c4c-dbb8-f42fd6303628@linux.intel.com>
 <20210525172121.GE14724@sdutt-i7>
 <0f26f76f-e066-fb23-a7b2-784bb8ee771d@linux.intel.com>
 <20210526181053.GA3435@sdutt-i7>
 <53613c13-1cab-b9bd-3922-0389600773ee@linux.intel.com>
 <20210527143514.GA24720@sdutt-i7>
 <828fe399-5319-78a9-c6e3-c0c027e08e9c@linux.intel.com>
 <20210607173101.GA11968@sdutt-i7>
 <2706c890-5145-4edb-acd1-b9862caba8cf@linux.intel.com>
In-Reply-To: <2706c890-5145-4edb-acd1-b9862caba8cf@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 8 Jun 2021 10:46:15 +0200
Message-ID: <CAKMK7uENywXraNAfrU_3iP16zse+S5M7EMOrx7D0z-+AjSqaqA@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH 36/97] drm/i915/guc: Add non blocking
 CTB send function
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
Cc: Jason Ekstrand <jason.ekstrand@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 8, 2021 at 10:39 AM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 07/06/2021 18:31, Matthew Brost wrote:
> > On Thu, May 27, 2021 at 04:11:50PM +0100, Tvrtko Ursulin wrote:
> >>
> >> On 27/05/2021 15:35, Matthew Brost wrote:
> >>> On Thu, May 27, 2021 at 11:02:24AM +0100, Tvrtko Ursulin wrote:
> >>>>
> >>>> On 26/05/2021 19:10, Matthew Brost wrote:
> >>>>
> >>>> [snip]
> >>>>
> >>>>>>>>> +static int ct_send_nb(struct intel_guc_ct *ct,
> >>>>>>>>> +                   const u32 *action,
> >>>>>>>>> +                   u32 len,
> >>>>>>>>> +                   u32 flags)
> >>>>>>>>> +{
> >>>>>>>>> +     struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> >>>>>>>>> +     unsigned long spin_flags;
> >>>>>>>>> +     u32 fence;
> >>>>>>>>> +     int ret;
> >>>>>>>>> +
> >>>>>>>>> +     spin_lock_irqsave(&ctb->lock, spin_flags);
> >>>>>>>>> +
> >>>>>>>>> +     ret = ctb_has_room(ctb, len + 1);
> >>>>>>>>> +     if (unlikely(ret))
> >>>>>>>>> +             goto out;
> >>>>>>>>> +
> >>>>>>>>> +     fence = ct_get_next_fence(ct);
> >>>>>>>>> +     ret = ct_write(ct, action, len, fence, flags);
> >>>>>>>>> +     if (unlikely(ret))
> >>>>>>>>> +             goto out;
> >>>>>>>>> +
> >>>>>>>>> +     intel_guc_notify(ct_to_guc(ct));
> >>>>>>>>> +
> >>>>>>>>> +out:
> >>>>>>>>> +     spin_unlock_irqrestore(&ctb->lock, spin_flags);
> >>>>>>>>> +
> >>>>>>>>> +     return ret;
> >>>>>>>>> +}
> >>>>>>>>> +
> >>>>>>>>>       static int ct_send(struct intel_guc_ct *ct,
> >>>>>>>>>                          const u32 *action,
> >>>>>>>>>                          u32 len,
> >>>>>>>>> @@ -473,6 +541,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>>>>>                          u32 response_buf_size,
> >>>>>>>>>                          u32 *status)
> >>>>>>>>>       {
> >>>>>>>>> +     struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> >>>>>>>>>               struct ct_request request;
> >>>>>>>>>               unsigned long flags;
> >>>>>>>>>               u32 fence;
> >>>>>>>>> @@ -482,8 +551,20 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>>>>>               GEM_BUG_ON(!len);
> >>>>>>>>>               GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
> >>>>>>>>>               GEM_BUG_ON(!response_buf && response_buf_size);
> >>>>>>>>> +     might_sleep();
> >>>>>>>>
> >>>>>>>> Sleep is just cond_resched below or there is more?
> >>>>>>>>
> >>>>>>>
> >>>>>>> Yes, the cond_resched.
> >>>>>>>
> >>>>>>>>> +     /*
> >>>>>>>>> +      * We use a lazy spin wait loop here as we believe that if the CT
> >>>>>>>>> +      * buffers are sized correctly the flow control condition should be
> >>>>>>>>> +      * rare.
> >>>>>>>>> +      */
> >>>>>>>>> +retry:
> >>>>>>>>>               spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> >>>>>>>>> +     if (unlikely(!ctb_has_room(ctb, len + 1))) {
> >>>>>>>>> +             spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> >>>>>>>>> +             cond_resched();
> >>>>>>>>> +             goto retry;
> >>>>>>>>> +     }
> >>>>>>>>
> >>>>>>>> If this patch is about adding a non-blocking send function, and below we can
> >>>>>>>> see that it creates a fork:
> >>>>>>>>
> >>>>>>>> intel_guc_ct_send:
> >>>>>>>> ...
> >>>>>>>>        if (flags & INTEL_GUC_SEND_NB)
> >>>>>>>>                return ct_send_nb(ct, action, len, flags);
> >>>>>>>>
> >>>>>>>>        ret = ct_send(ct, action, len, response_buf, response_buf_size, &status);
> >>>>>>>>
> >>>>>>>> Then why is there a change in ct_send here, which is not the new
> >>>>>>>> non-blocking path?
> >>>>>>>>
> >>>>>>>
> >>>>>>> There is not a change to ct_send(), just to intel_guc_ct_send.
> >>>>>>
> >>>>>> I was doing by the diff which says:
> >>>>>>
> >>>>>>     static int ct_send(struct intel_guc_ct *ct,
> >>>>>>                     const u32 *action,
> >>>>>>                     u32 len,
> >>>>>> @@ -473,6 +541,7 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>>                     u32 response_buf_size,
> >>>>>>                     u32 *status)
> >>>>>>     {
> >>>>>> +        struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
> >>>>>>          struct ct_request request;
> >>>>>>          unsigned long flags;
> >>>>>>          u32 fence;
> >>>>>> @@ -482,8 +551,20 @@ static int ct_send(struct intel_guc_ct *ct,
> >>>>>>          GEM_BUG_ON(!len);
> >>>>>>          GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
> >>>>>>          GEM_BUG_ON(!response_buf && response_buf_size);
> >>>>>> +        might_sleep();
> >>>>>> +        /*
> >>>>>> +         * We use a lazy spin wait loop here as we believe that if the CT
> >>>>>> +         * buffers are sized correctly the flow control condition should be
> >>>>>> +         * rare.
> >>>>>> +         */
> >>>>>> +retry:
> >>>>>>          spin_lock_irqsave(&ct->ctbs.send.lock, flags);
> >>>>>> +        if (unlikely(!ctb_has_room(ctb, len + 1))) {
> >>>>>> +                spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
> >>>>>> +                cond_resched();
> >>>>>> +                goto retry;
> >>>>>> +        }
> >>>>>>
> >>>>>> So it looks like a change to ct_send to me. Is that wrong?
> >>>>
> >>>> What about this part - is the patch changing the blocking ct_send or not,
> >>>> and if it is why?
> >>>>
> >>>
> >>> Yes, ct_send() changes. Sorry for the confusion.
> >>>
> >>> This function needs to be updated to account for the H2G space and
> >>> backoff if no space is available.
> >>
> >> Since this one is the sleeping path, it probably can and needs to be smarter
> >> than having a cond_resched busy loop added. Like sleep and get woken up when
> >> there is space. Otherwise it can degenerate to busy looping via contention
> >> with the non-blocking path.
> >>
> >
> > That screams over enginerring a simple problem to me. If the CT channel
> > is full we are really in trouble anyways - i.e. the performance is going
> > to terrible as we overwhelmed the GuC with traffic. That being said,
>
> Performance of what would be terrible? Something relating to submitting
> new jobs to the GPU I guess. Or something SRIOV related as you hint below.
>
> But there is no real reason why CPU cycles/power should suffer if GuC is
> busy.
>
> Okay, if it can't happen in real world then it's possibly passable as a
> design of a communication interface. But to me it leaves a bad taste and
> a doubt that there is this other aspect of the real world. And that is
> when the unexpected happens. Even the most trivial things like a bug in
> GuC firmware causes the driver to busy spin in there. So not much
> happening on the machine but CPU cores pinned burning cycles in this
> code. It's just lazy and not robust design. "Bug #nnnnn - High CPU usage
> and GUI blocked - Solution: Upgrade GuC firmware and _reboot_ the
> machine". Oh well..
>
> At least I think the commit message should spell out clearly that a busy
> looping path is being added to the sleeping send as a downside of
> implementation choices. Still, for the record, I object to the design.
>
> > IGTs can do this but that really isn't a real world use case. For the
> > real world, this buffer is large enough that it won't ever be full hence
> > the comment + lazy spin loop.
> >
> > Next, it isn't like we get an interrupt or something when space
> > becomes available so how would we wake this thread? Could we come up
> > with a convoluted scheme where we insert ops that generated an interrupt
> > at regular intervals, probably? Would it be super complicated, totally
> > unnecessary, and gain use nothing - absolutely.
> >
> > Lastly, blocking CTBs really shouldn't ever be used. Certainly the
> > submission code doesn't use these. I think SRIOV might, but those can
> > probably be reworked too to use non-blocking. At some point we might
> > want to scrub the driver and just delete the blocking path.

I'd do an s/cond_resched()/msleep(1)/ and comment explaining why we
just don't care about this. That checks of the cpu wasting in this
case (GuC is overloaded, it wont come back anytime soon anyway) and
explains why we really don't want to make this any more clever or
complex code (because comment can explain why we wont hit this in
actual real world usage except when something else is on fire already
anyway).

If you want to go absolutely overkill and it's not too much work, make
the msleep interruptible or check for signals, and bail out. That way
the process can be made unstuck with ^C at least.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
