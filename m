Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34542198DEA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 10:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 724146E59F;
	Tue, 31 Mar 2020 08:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D6A6E59F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 08:06:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20748021-1500050 for multiple; Tue, 31 Mar 2020 09:06:30 +0100
MIME-Version: 1.0
In-Reply-To: <87r1x9otcx.fsf@gaia.fi.intel.com>
References: <20200330234205.25928-1-chris@chris-wilson.co.uk>
 <20200330234318.30638-1-chris@chris-wilson.co.uk>
 <87r1x9otcx.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158564198954.18289.2470591596095192165@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 31 Mar 2020 09:06:29 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Double check breadcrumb
 before crying foul
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

Quoting Mika Kuoppala (2020-03-31 08:50:54)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> >   process_csb: 0000:00:02.0 bcs0: cs-irq head=4, tail=5
> >   process_csb: 0000:00:02.0 bcs0: csb[5]: status=0x00008002:0x60000020
> >   trace_ports: 0000:00:02.0 bcs0: preempted { ff84:45154! prio 2 }
> >   trace_ports: 0000:00:02.0 bcs0: promote { ff84:45155* prio 2 }
> >   trace_ports: 0000:00:02.0 bcs0: submit { ff84:45156 prio 2 }
> >
> >   process_csb: 0000:00:02.0 bcs0: cs-irq head=5, tail=6
> >   process_csb: 0000:00:02.0 bcs0: csb[6]: status=0x00000018:0x60000020
> >   trace_ports: 0000:00:02.0 bcs0: completed { ff84:45155* prio 2 }
> >   process_csb: 0000:00:02.0 bcs0: ring:{start:0x00178000, head:0928, tail:0928, ctl:00000000, mode:00000200}
> >   process_csb: 0000:00:02.0 bcs0: rq:{start:00178000, head:08b0, tail:08f0, seqno:ff84:45155, hwsp:45156},
> >   process_csb: 0000:00:02.0 bcs0: ctx:{start:00178000, head:e000928, tail:0928},
> >   process_csb: GEM_BUG_ON("context completed before request")
> >
> > In this sequence, we can see that although we have submitted the next
> > request [ff84:45156] to HW (via ELSP[]) it has not yet reported the
> > lite-restore. Instead, we see the completion event of the currently
> > active request [ff85:45155] but at the time of processing that event,
> > the breadcrumb has not yet been written. Though by the time we do print
> > out the debug info, the seqno write of ff85:45156 has landed!
> 
> I see it.
> 
> But I have now a more generic confusion about the sequence:
> why would the same context preempt itself?

lite-restore continuations.

> 
> >   trace_ports: 0000:00:02.0 bcs0: preempted { ff84:45154! prio 2 }
> >   trace_ports: 0000:00:02.0 bcs0: promote { ff84:45155* prio 2 }
> 
> >
> > Therefore there is a serialisation problem between the seqno writes and
> > CS events, not just between the CS buffer and its head/tail pointers as
> > previously observed on Icelake.
> >
> > This is not a huge problem, as we don't strictly rely on the breadcrumb
> > to determine HW activity, but it may indicate that interrupt delivery is
> > before the seqno write, aka bringing back the plague of missed
> > interrupts from yesteryear. However, there is no indication of this
> > wider problem, so let's just flush the seqno read before reporting an
> > error. If it persists after the fresh read we can worry again.
> 
> Well you are preempting part of my concerns.
> 
> Still you will have a serialision point now only with debug builds.

We only check in debug.

> So I assume the rest of the request completion flow is ambivalent of
> intr seqno coherency and we can cope with this is only for debug...

Right.
 
> Being in generic read hwsp path would be expensive and thus overkill?

Very expensive. There's no evidence that the GPU is that broken that it
returns garbage in a *cached* CPU read.
 
> Could we lift the flushing to the non show_debug path to be always
> part of process_csb cycle?

No. What would be the point? The breadcrumb is not part of the CS flow.
The debug is our sanitycheck that the two events are ordered, but that
is not a strict requirement of the code. If it fails this test, the
presumption is that either the GPU is very dead (e.g. the GO problem,
RING_HEAD/TAIL issues, a variety of other means of killing the gpu) and
the problem will remain, or that we have a programming error, which
again will not resolve itself as we print the debug.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
