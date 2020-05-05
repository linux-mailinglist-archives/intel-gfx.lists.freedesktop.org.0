Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DB31C577D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 15:53:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8C66E24D;
	Tue,  5 May 2020 13:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5706E24D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 13:53:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21119602-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2020 14:53:40 +0100
MIME-Version: 1.0
In-Reply-To: <20200505134819.22031-1-chris@chris-wilson.co.uk>
References: <20200504135030.19210-5-chris@chris-wilson.co.uk>
 <20200505134819.22031-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158868681646.927.2640126791162273260@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 05 May 2020 14:53:36 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Teach execbuf how to wait on
 future syncobj
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

Quoting Chris Wilson (2020-05-05 14:48:19)
> +static void await_proxy_work(struct work_struct *work)
> +{
> +       struct await_proxy *ap = container_of(work, typeof(*ap), work);
> +       struct i915_request *rq = ap->request;
> +
> +       del_timer_sync(&ap->timer);
> +
> +       if (ap->fence) {
> +               int err = 0;
> +
> +               /*
> +                * If the fence is external, we impose a 10s timeout.
> +                * However, if the fence is internal, we skip a timeout in
> +                * the belief that all fences are in-order (DAG, no cycles)
> +                * and we can enforce forward progress by reset the GPU if
> +                * necessary. A future fence, provided userspace, can trivially
> +                * generate a cycle in the dependency graph, and so cause
> +                * that entire cycle to become deadlocked and for no forward
> +                * progress to either be made, and the driver being kept
> +                * eternally awake.
> +                *
> +                * While we do have a full DAG-verifier in the i915_sw_fence
> +                * debug code, that is perhaps prohibitiverly expensive
> +                * (and is necessarily global), so we replace that by
> +                * checking to see if the endpoints have a recorded cycle.
> +                */
> +               if (dma_fence_is_i915(ap->fence)) {
> +                       struct i915_request *signal = to_request(ap->fence);
> +
> +                       rcu_read_lock();
> +                       if (intel_timeline_sync_is_later(rcu_dereference(signal->timeline),
> +                                                        &rq->fence)) {
> +                               i915_sw_fence_set_error_once(&signal->submit,
> +                                                            -EDEADLK);
> +                               err = -EDEADLK;
> +                       }
> +                       rcu_read_unlock();

End points are not enough. It covers the trivial example I made for
testing, but only that. I think for this to be safe we do need the full
DAG verifier. Oh well, by the time Tvrtko has finished complaining about
it being recursive it might not be so terrible.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
