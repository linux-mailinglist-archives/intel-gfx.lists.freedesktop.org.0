Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C571E6C6A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 22:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59B16E5CD;
	Thu, 28 May 2020 20:24:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193056E5CD
 for <Intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 20:24:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21327172-1500050 for multiple; Thu, 28 May 2020 21:23:38 +0100
MIME-Version: 1.0
In-Reply-To: <8f1c20cb-b538-97c1-a953-772d75c232bd@linux.intel.com>
References: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
 <159065984908.10651.3817818286053938468@build.alporthouse.com>
 <8f1c20cb-b538-97c1-a953-772d75c232bd@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <159069741815.10651.7846303087037389376@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 28 May 2020 21:23:38 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Special handling for bonded
 requests
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
Cc: Xiaogang Li <xiaogang.li@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-05-28 11:20:07)
> 
> On 28/05/2020 10:57, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-05-27 09:53:22)
> >> +static void
> >> +mark_bonded_pair(struct i915_request *rq, struct i915_request *signal)
> >> +{
> >> +       /*
> >> +        * Give (temporary) special meaning to a pair requests with requested
> >> +        * aligned start along the video engines.
> >> +        *
> >> +        * They should be non-preemptable and have all ELSP ports to themselves
> >> +        * to avoid any deadlocks caused by inversions.
> >> +        *
> >> +        * Gen11+
> >> +        */
> >> +       if (INTEL_GEN(rq->i915) < 11 ||
> >> +           rq->engine->class != VIDEO_DECODE_CLASS ||
> >> +           rq->engine->class != signal->engine->class)
> >> +               return;
> >> +
> >> +       set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags);
> >> +       set_bit(I915_FENCE_FLAG_NOPREEMPT, &signal->fence.flags);
> >> +
> >> +       intel_context_set_single_submission(rq->context);
> >> +       intel_context_set_single_submission(signal->context);
> > 
> > The thought that just popped into my head:
> > 
> > This can be after signal is already submitted into ELSP[1].
> 
> Yep I knew that but thought it would still work.
> 
> Master in vcs0 port1, slave in vcs1 port0 or queued.
> 
> If queued that means at worst case another bonded pair is running on 
> same engines, so they should be able to complete.
> 
> If slave submitted to vcs1 port0 then it will stay there until whatever 
> is in vcs0 port0 finishes and lets master in.
> 
> Do you see a possibility for things to go bad?

Because the master is already submitted in port1, the bond can go into
port0. Then a second bond turns up for the master in port0, and we're
back at square one.

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 37855ae8f8b3..698608e11df3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2502,6 +2502,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
        lockdep_unpin_lock(&tl->mutex, rq->cookie);
 
        trace_i915_request_add(rq);
+       set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
 
        prev = __i915_request_commit(rq);

Will do the trick.

(Plus fixing up the rules for assert_pending_valid).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
