Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F59222086
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 12:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FF96EC3A;
	Thu, 16 Jul 2020 10:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E4BF6EC3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 10:22:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21836634-1500050 for multiple; Thu, 16 Jul 2020 11:22:19 +0100
MIME-Version: 1.0
In-Reply-To: <2b36397e-ec54-ccf8-7c9c-67f1581c8557@linux.intel.com>
References: <20200714094709.15775-1-chris@chris-wilson.co.uk>
 <20200714094709.15775-2-chris@chris-wilson.co.uk>
 <bb3940a2-c422-0460-4844-0d86799b7213@linux.intel.com>
 <159489096795.20322.18102014846063389172@build.alporthouse.com>
 <2b36397e-ec54-ccf8-7c9c-67f1581c8557@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 11:22:19 +0100
Message-ID: <159489493909.20322.17538930611402018935@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Remove requirement for
 holding i915_request.lock for breadcrumbs
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

Quoting Tvrtko Ursulin (2020-07-16 11:11:55)
> 
> 
> On 16/07/2020 10:16, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-07-16 10:01:15)
> >>
> >> On 14/07/2020 10:47, Chris Wilson wrote:
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> index e0280a672f1d..aa7be7f05f8c 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> @@ -1148,20 +1148,6 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
> >>>                } else {
> >>>                        struct intel_engine_cs *owner = rq->context->engine;
> >>>    
> >>> -                     /*
> >>> -                      * Decouple the virtual breadcrumb before moving it
> >>> -                      * back to the virtual engine -- we don't want the
> >>> -                      * request to complete in the background and try
> >>> -                      * and cancel the breadcrumb on the virtual engine
> >>> -                      * (instead of the old engine where it is linked)!
> >>> -                      */
> >>> -                     if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> >>> -                                  &rq->fence.flags)) {
> >>> -                             spin_lock_nested(&rq->lock,
> >>> -                                              SINGLE_DEPTH_NESTING);
> >>> -                             i915_request_cancel_breadcrumb(rq);
> >>> -                             spin_unlock(&rq->lock);
> >>> -                     }
> >>
> >> Why is this not needed any more?
> > 
> > Hindsight says that this was just paper. We have just done the same
> > cancellation step in i915_request_unsubmit, so all this was doing is
> > shrinking the window for a breadcrumb being attached [and with the
> > serialisation around testing the I915_FENCE_FLAG_ACTIVE_BIT there should
> > be no window at all] while the request is being moved back to the virtual
> > engine.
> 
> True, how did we miss it until now..
> 
> > Now the question is how do we end up attaching to the virtual engine
> > while unsubmitted, and that appears to be entirely due to the ACTIVE
> > flag being set in retire after completion. The other way is that we use
> > the local virtual engine breadcrumb list to defer the signaling on
> > submission of an old request.
> > 
> > So... If I can fix the issues around retirement that means we should be
> > able to kill off virtual_xfer_breadcrumbs... I hope so.
> 
> I read this as a slightly different series will be coming?

Yes. Testing in progress, while I write comments.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
