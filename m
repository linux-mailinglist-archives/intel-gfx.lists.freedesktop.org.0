Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A44143BE0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 12:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3D96EC69;
	Tue, 21 Jan 2020 11:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A6696EC69
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 11:15:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19956706-1500050 for multiple; Tue, 21 Jan 2020 11:15:44 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200120175704.36340-1-chris@chris-wilson.co.uk>
 <1a812a72-7b17-f5b5-da41-dbeadae5b014@linux.intel.com>
 <157955236639.2218.7304647621155277813@skylake-alporthouse-com>
 <7c1c1334-7033-71f5-c437-a6313ea32d6f@linux.intel.com>
In-Reply-To: <7c1c1334-7033-71f5-c437-a6313ea32d6f@linux.intel.com>
Message-ID: <157960534224.3096.11780378249715491194@skylake-alporthouse-com>
Date: Tue, 21 Jan 2020 11:15:42 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark the removal of the
 i915_request from the sched.link
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

Quoting Tvrtko Ursulin (2020-01-21 11:11:27)
> 
> On 20/01/2020 20:32, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-01-20 19:47:08)
> >>
> >> On 20/01/2020 17:57, Chris Wilson wrote:
> >>> Keep the rq->fence.flags consistent with the status of the
> >>> rq->sched.link, and clear the associated bits when decoupling the link
> >>> on retirement (as we may wish to inspect those flags independent of
> >>> other state).
> >>>
> >>> Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
> >>> References: https://gitlab.freedesktop.org/drm/intel/issues/997
> >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/i915_request.c | 2 ++
> >>>    1 file changed, 2 insertions(+)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> >>> index 9ed0d3bc7249..78a5f5d3c070 100644
> >>> --- a/drivers/gpu/drm/i915/i915_request.c
> >>> +++ b/drivers/gpu/drm/i915/i915_request.c
> >>> @@ -221,6 +221,8 @@ static void remove_from_engine(struct i915_request *rq)
> >>>                locked = engine;
> >>>        }
> >>>        list_del_init(&rq->sched.link);
> >>> +     clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> >>
> >> This one I think can not be set in retirement. Or there is a path?
> >>
> >> [comes back after writing the comment below]
> >>
> >> Race between completion to hold puts the request on hold, then request
> >> completes just as it is un-held? It needs retire to happen at the right
> >> time, driven by ...? Is this it?
> >>
> >>> +     clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
> >>
> >> This one I think indeed can race with completion.
> > 
> > Fwiw, this appears to be the active part of the trace
> > 
> > <0>[   56.132334]   <idle>-0       1.Ns1 52042407us : execlists_reset_finish: 0000:00:02.0 vcs1: depth->1
> > <0>[   56.132415] rs:main -428     0..s. 52042429us : process_csb: 0000:00:02.0 vcs1: cs-irq head=5, tail=1
> > <0>[   56.132501] rs:main -428     0..s. 52042432us : process_csb: 0000:00:02.0 vcs1: csb[0]: status=0x00000001:0x00000000
> > <0>[   56.132591] rs:main -428     0..s. 52042437us : trace_ports: 0000:00:02.0 vcs1: promote { b:6!, 0:0 }
> > <0>[   56.132676] rs:main -428     0..s. 52042442us : process_csb: 0000:00:02.0 vcs1: csb[1]: status=0x00000818:0x00000020
> > <0>[   56.132766] rs:main -428     0..s. 52042445us : trace_ports: 0000:00:02.0 vcs1: completed { b:6!, 0:0 }
> > <0>[   56.132860] kworker/-12      0.... 52042771us : i915_request_retire: 0000:00:02.0 vcs1: fence b:6, current 6
> > <0>[   56.132949] kworker/-65      1d..1 52044886us : execlists_unhold: 0000:00:02.0 vcs0: fence 27:2, current 2 hold release
> > <0>[   56.133041] ksoftirq-16      1..s. 52044912us : process_csb: 0000:00:02.0 vcs0: cs-irq head=2, tail=2
> > <0>[   56.133118] ksoftirq-16      1d.s1 52044916us : __i915_request_submit: 0000:00:02.0 vcs0: fence 27:2, current 2
> > <0>[   56.133216] kworker/-65      1.... 52044946us : i915_request_retire: 0000:00:02.0 vcs0: fence 9:14, current 14
> > <0>[   56.133314] kworker/-65      1d... 52044986us : __i915_request_commit: 0000:00:02.0 vcs0: fence 9:16, current 14
> > <0>[   56.133402] kworker/-65      1d... 52044993us : __engine_park: 0000:00:02.0 vcs0:
> > <0>[   56.133490] kworker/-65      1d..2 52045032us : __i915_request_submit: 0000:00:02.0 vcs0: fence 9:16, current 14
> > <0>[   56.133581] kworker/-65      1d..2 52045892us : trace_ports: 0000:00:02.0 vcs0: submit { 9:16, 0:0 }
> > <0>[   56.133664]   <idle>-0       0dNH2 52045932us : __intel_context_retire: 0000:00:02.0 vcs0: context:27 retire
> > <0>[   56.133751]   <idle>-0       0.Ns1 52045949us : process_csb: 0000:00:02.0 vcs0: cs-irq head=2, tail=4
> > <0>[   56.133838]   <idle>-0       0.Ns1 52045950us : process_csb: 0000:00:02.0 vcs0: csb[3]: status=0x00000001:0x00000000
> > <0>[   56.133927]   <idle>-0       0.Ns1 52045951us : trace_ports: 0000:00:02.0 vcs0: promote { 9:16!, 0:0 }
> > <0>[   56.134013]   <idle>-0       0.Ns1 52045951us : process_csb: 0000:00:02.0 vcs0: csb[4]: status=0x00000818:0x00000060
> > <0>[   56.134102]   <idle>-0       0.Ns1 52045952us : trace_ports: 0000:00:02.0 vcs0: completed { 9:16!, 0:0 }
> > <0>[   56.134198] kworker/-12      0.... 52045960us : i915_request_retire: 0000:00:02.0 vcs0: fence 9:16, current 16
> > <0>[   56.134285] kworker/-12      0.... 52045962us : __engine_park: 0000:00:02.0 vcs0:
> > <0>[   56.134361] kworker/-65      1d..1 52046503us : execlists_unhold: 0000:00:02.0 vcs1: fence 2a:2, current 1 hold release
> > <0>[   56.134427] ksoftirq-16      1..s. 52046510us : process_csb: 0000:00:02.0 vcs1: cs-irq head=1, tail=1
> > 
> > It doesn't look like there's overlap between the hold and retire. :|
> 
> Which bit is the race? I coudln't spot the same request being mentioned 
> on two separate paths.

Neither could I. I don't think this patch is actually associated with
the bug, but I think the timing of the GEM_BUG_ON implicates the
execlists_hold() patch.

> I mean I have no issues with the patch. Just trying to understand the 
> possible races and whether or not there should be an assert for PQUEUE 
> instead of clearing it on retire.

It can be on the pqueue during retirement, we're just a bit more careful
during dequeuing.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
