Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B122222130
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 13:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D02DC6E14C;
	Thu, 16 Jul 2020 11:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBE9A6E14C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 11:16:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21837268-1500050 for multiple; Thu, 16 Jul 2020 12:15:59 +0100
MIME-Version: 1.0
In-Reply-To: <fcd9c39d-6744-b871-d71e-eea391047187@linux.intel.com>
References: <20200710171001.22935-1-chris@chris-wilson.co.uk>
 <8f8c89c7-6b87-c753-2de8-54202199cbbb@linux.intel.com>
 <159489224359.20322.10832618110227402356@build.alporthouse.com>
 <fcd9c39d-6744-b871-d71e-eea391047187@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 12:15:58 +0100
Message-ID: <159489815884.20322.15185834264734131142@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Be wary of data races when
 reading the active execlists
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

Quoting Tvrtko Ursulin (2020-07-16 12:11:18)
> 
> On 16/07/2020 10:37, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-07-16 10:17:11)
> >>
> >> On 10/07/2020 18:10, Chris Wilson wrote:
> >>> [ 1413.563200] BUG: KCSAN: data-race in __await_execution+0x217/0x370 [i915]
> >>> [ 1413.563221]
> >>> [ 1413.563236] race at unknown origin, with read to 0xffff88885bb6c478 of 8 bytes by task 9654 on cpu 1:
> >>> [ 1413.563548]  __await_execution+0x217/0x370 [i915]
> >>> [ 1413.563891]  i915_request_await_dma_fence+0x4eb/0x6a0 [i915]
> >>> [ 1413.564235]  i915_request_await_object+0x421/0x490 [i915]
> >>> [ 1413.564577]  i915_gem_do_execbuffer+0x29b7/0x3c40 [i915]
> >>> [ 1413.564967]  i915_gem_execbuffer2_ioctl+0x22f/0x5c0 [i915]
> >>> [ 1413.564998]  drm_ioctl_kernel+0x156/0x1b0
> >>> [ 1413.565022]  drm_ioctl+0x2ff/0x480
> >>> [ 1413.565046]  __x64_sys_ioctl+0x87/0xd0
> >>> [ 1413.565069]  do_syscall_64+0x4d/0x80
> >>> [ 1413.565094]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> >>>
> >>> To complicate matters, we have to both avoid the read tearing of *active
> >>> and avoid any write tearing as perform the pending[] -> inflight[]
> >>> promotion of the execlists.
> >>>
> >>> Fixes: b55230e5e800 ("drm/i915: Check for awaits on still currently executing requests")
> >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/gt/intel_lrc.c | 15 +++++++++++----
> >>>    drivers/gpu/drm/i915/i915_request.c | 17 +++++++++++++++--
> >>>    2 files changed, 26 insertions(+), 6 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> index cd4262cc96e2..20ade9907754 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> @@ -2060,6 +2060,14 @@ static inline void clear_ports(struct i915_request **ports, int count)
> >>>        memset_p((void **)ports, NULL, count);
> >>>    }
> >>>    
> >>> +static inline void
> >>> +copy_ports(struct i915_request **dst, struct i915_request **src, int count)
> >>> +{
> >>> +     /* A memcpy_p() would be very useful here! */
> >>> +     while (count--)
> >>> +             WRITE_ONCE(*dst++, *src++); /* avoid write tearing */
> >>> +}
> >>> +
> >>>    static void execlists_dequeue(struct intel_engine_cs *engine)
> >>>    {
> >>>        struct intel_engine_execlists * const execlists = &engine->execlists;
> >>> @@ -2648,10 +2656,9 @@ static void process_csb(struct intel_engine_cs *engine)
> >>>    
> >>>                        /* switch pending to inflight */
> >>>                        GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
> >>> -                     memcpy(execlists->inflight,
> >>> -                            execlists->pending,
> >>> -                            execlists_num_ports(execlists) *
> >>> -                            sizeof(*execlists->pending));
> >>> +                     copy_ports(execlists->inflight,
> >>> +                                execlists->pending,
> >>> +                                execlists_num_ports(execlists));
> >>>                        smp_wmb(); /* complete the seqlock */
> >>>                        WRITE_ONCE(execlists->active, execlists->inflight);
> >>>    
> >>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> >>> index 72def88561ce..5a05e4d8b13c 100644
> >>> --- a/drivers/gpu/drm/i915/i915_request.c
> >>> +++ b/drivers/gpu/drm/i915/i915_request.c
> >>> @@ -411,17 +411,30 @@ static bool __request_in_flight(const struct i915_request *signal)
> >>>         * As we know that there are always preemption points between
> >>>         * requests, we know that only the currently executing request
> >>>         * may be still active even though we have cleared the flag.
> >>> -      * However, we can't rely on our tracking of ELSP[0] to known
> >>> +      * However, we can't rely on our tracking of ELSP[0] to know
> >>>         * which request is currently active and so maybe stuck, as
> >>>         * the tracking maybe an event behind. Instead assume that
> >>>         * if the context is still inflight, then it is still active
> >>>         * even if the active flag has been cleared.
> >>> +      *
> >>> +      * To further complicate matters, if there a pending promotion, the HW
> >>> +      * may either perform a context switch to the second inflight execlists,
> >>> +      * or it may switch to the pending set of execlists. In the case of the
> >>> +      * latter, it may send the ACK and we process the event copying the
> >>> +      * pending[] over top of inflight[], _overwriting_ our *active. Since
> >>> +      * this implies the HW is arbitrating and not struck in *active, we do
> >>> +      * not worry about complete accuracy, but we do require no read/write
> >>> +      * tearing of the pointer [the read of the pointer must be valid, even
> >>> +      * as the array is being overwritten, for which we require the writes
> >>> +      * to avoid tearing.]
> >>>         */
> >>>        if (!intel_context_inflight(signal->context))
> >>>                return false;
> >>>    
> >>>        rcu_read_lock();
> >>> -     for (port = __engine_active(signal->engine); (rq = *port); port++) {
> >>> +     for (port = __engine_active(signal->engine);
> >>> +          (rq = READ_ONCE(*port)); /* may race with promotion of pending[] */
> >>> +          port++) {
> >>>                if (rq->context == signal->context) {
> >>>                        inflight = i915_seqno_passed(rq->fence.seqno,
> >>>                                                     signal->fence.seqno);
> >>>
> >>
> >> On the low level it is correctly expressing things. Is it bomb proof on
> >> the high level I am not certain. Preempt to busy is evil..
> >>
> >> In other words, if individual entries in execlists->active can be
> >> changing underneath this function, as it goes, why couldn't it make an
> >> incorrect decision regarding whether it is executing the callback, or
> >> adding to list of signalers, and so either schedule too soon, or miss
> >> scheduling completely?
> > 
> > Not really, we only care about if we are the _stuck_ outgoing context.
> > If the inflight[] is being overwritten as we sample it, that means the
> > context is not stuck (if we are in pending[] we would still be inflight).
> > We either see ourselves and now that we are being executed (so we can
> > signal the callback) or we do not, and we know that we are no longer
> > inflight (and the callback will be signaled later).
> 
> The case which was concerning me is that if incorrect decision is made 
> to add callback to the list after signaler has been completed, but 
> retire will always process this list so that's fine.
> 
> I couldn't find though what protects i915_request_retire racing with the 
> overall i915_request_await_execution flow. Should __await_execution have 
> some checks for completed and not just active?

retire vs await_execution is meant to be the ACTIVE bit.

In retire, we set the ACTIVE bit then flush the llist.
Here we add to the llist then check ACTIVE (and flush if too late).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
