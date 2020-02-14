Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD7F15D53F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 11:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704476E584;
	Fri, 14 Feb 2020 10:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61776E584
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:11:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20221539-1500050 for multiple; Fri, 14 Feb 2020 10:10:27 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0f4a47e8-22e0-bcf2-9c7b-37c8a56bfb3b@intel.com>
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
 <20200210205722.794180-7-chris@chris-wilson.co.uk>
 <0f4a47e8-22e0-bcf2-9c7b-37c8a56bfb3b@intel.com>
Message-ID: <158167502442.10420.4499411920971773391@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Feb 2020 10:10:24 +0000
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/execlists: Remove
 preempt-to-busy roundtrip delay
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

Quoting Daniele Ceraolo Spurio (2020-02-12 01:08:30)
> 
> 
> On 2/10/20 12:57 PM, Chris Wilson wrote:
> > @@ -1934,6 +2002,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >   
> >                               return;
> >                       }
> > +
> > +                     last = skip_lite_restore(engine, last, &submit);
> >               }
> >       }
> >   
> > @@ -2155,10 +2225,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
> >               WRITE_ONCE(execlists->yield, -1);
> >               execlists_submit_ports(engine);
> >               set_preempt_timeout(engine);
> > -     } else {
> > +     }
> > +
> > +     if (intel_engine_has_tail_lrm(engine) || !submit)
> 
> Why do we skip here if intel_engine_has_tail_lrm is true? I see that if 
> we have work pending we either take the skip_lite_restore() or the 
> submit path above, but I can't see why we need to explicitly skip 
> re-starting the ring.

You mean if !has_lrm. We have to delay letting the RING_TAIL move past
the end of the request until the HW has acknowledged the preemption
request. This is required to avoid the ELSP submission from trying to
move the RING_TAIL backwards.

As it turns out, I can't special case has_lrm here since if we read the
new RING_TAIL before the ELSP event, we end up submitting the same
RING_TAIL again and trigging the HW bug.

> 
> >   skip_submit:
> >               ring_set_paused(engine, 0);
> > -     }
> >   }
> >   
> >   static void
> > @@ -2325,7 +2396,8 @@ static void process_csb(struct intel_engine_cs *engine)
> >   
> >                       GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
> >   
> > -                     ring_set_paused(engine, 0);
> > +                     if (!intel_engine_has_tail_lrm(engine))
> > +                             ring_set_paused(engine, 0);
> >   
> 
> here as well, although I'm assuming it has the same explanation as the 
> one above.

For has_lrm, it will have already seen the new RING_TAIL at the end of
the request regardless of the preempting ELSP.

However, as noted without only setting wa_tail in the context-image and
LRM normal tail, we end up hitting WaIdleLiteRestore and killing the HW.
Bleugh.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
