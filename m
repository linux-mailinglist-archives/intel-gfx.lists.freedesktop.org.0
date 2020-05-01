Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ACD1C1247
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 14:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5276E039;
	Fri,  1 May 2020 12:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900C56E039
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 12:38:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21082286-1500050 for multiple; Fri, 01 May 2020 13:38:03 +0100
MIME-Version: 1.0
In-Reply-To: <99138c26-b570-4a3b-d48c-a68af08c6e2b@linux.intel.com>
References: <20200501101900.22543-1-chris@chris-wilson.co.uk>
 <99138c26-b570-4a3b-d48c-a68af08c6e2b@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158833668354.27513.7609505652703945840@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 01 May 2020 13:38:03 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Use chained reloc batches
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

Quoting Tvrtko Ursulin (2020-05-01 13:33:14)
> 
> On 01/05/2020 11:18, Chris Wilson wrote:
> > +
> > +     err = 0;
> > +     if (rq->engine->emit_init_breadcrumb)
> > +             err = rq->engine->emit_init_breadcrumb(rq);
> > +     if (!err)
> > +             err = rq->engine->emit_bb_start(rq,
> > +                                             rq->batch->node.start,
> > +                                             PAGE_SIZE,
> > +                                             reloc_bb_flags(cache));
> > +     if (err)
> > +             i915_request_set_error_once(rq, err);
> 
> Will this error propagate and fail the execbuf?

It fails the execution, but not the execbuf... I was thinking it was too
late for the execbuf, but return err at the end propagates nicely!

> 
> > +
> > +     intel_gt_chipset_flush(rq->engine->gt);
> > +     i915_request_add(rq);
> >   }

Thanks,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
