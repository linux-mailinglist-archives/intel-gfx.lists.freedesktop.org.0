Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0537D2C863A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 15:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638956E40D;
	Mon, 30 Nov 2020 14:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5E86E40D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 14:11:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23163065-1500050 for multiple; Mon, 30 Nov 2020 14:11:50 +0000
MIME-Version: 1.0
In-Reply-To: <160674359480.9503.7150298801559341502@build.alporthouse.com>
References: <20201128184040.20150-1-chris@chris-wilson.co.uk>
 <20201128184040.20150-4-chris@chris-wilson.co.uk>
 <f8856a1a-48ad-9a26-3658-bfbcef1c7a95@linux.intel.com>
 <160674359480.9503.7150298801559341502@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 14:11:51 +0000
Message-ID: <160674551153.9850.7796675329562996590@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 4/4] drm/i915/gt: Pipelined page migration
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

Quoting Chris Wilson (2020-11-30 13:39:54)
> Quoting Tvrtko Ursulin (2020-11-30 13:12:55)
> > 
> > On 28/11/2020 18:40, Chris Wilson wrote:
> > > +struct i915_request *
> > > +intel_context_migrate_pages(struct intel_context *ce,
> > > +                         struct scatterlist *src,
> > > +                         struct scatterlist *dst)
> > > +{
> > > +     struct sgt_dma it_s = sg_sgt(src), it_d = sg_sgt(dst);
> > > +     u64 encode = ce->vm->pte_encode(0, I915_CACHE_LLC, 0); /* flags */
> > > +     struct i915_request *rq;
> > > +     int len;
> > > +     int err;
> > > +
> > > +     /* GEM_BUG_ON(ce->vm != migrate_vm); */
> > > +
> > > +     err = intel_context_pin(ce);
> > > +     if (err)
> > > +             return ERR_PTR(err);
> > > +
> > > +     GEM_BUG_ON(ce->ring->size < SZ_64K);
> > > +
> > > +     do {
> > > +             rq = i915_request_create(ce);
> > > +             if (IS_ERR(rq)) {
> > > +                     err = PTR_ERR(rq);
> > > +                     goto out_ce;
> > > +             }
> > > +
> > > +             len = emit_pte(rq, &it_s, encode, 0, CHUNK_SZ);
> > > +             if (len <= 0) {
> > > +                     err = len;
> > > +                     goto out_rq;
> > > +             }
> > > +
> > > +             if (emit_pte(rq, &it_d, encode, CHUNK_SZ, len) < len) {
> > > +                     err = -EINVAL;
> > > +                     goto out_rq;
> > > +             }
> > 
> > Source and destination PTEs into the reserved [0, sz * 2) area?
> 
> Yes.
> 
> > 
> > > +
> > > +             err = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
> > > +             if (err)
> > > +                     goto out_rq;
> > > +
> > > +             err = emit_copy(rq, len);
> > 
> > Right so copy can use fixed offsets.
> > 
> > > +             if (err)
> > > +                     goto out_rq;
> > > +
> > > +             if (!it_s.sg)
> > > +                     i915_request_get(rq);
> > > +out_rq:
> > > +             i915_request_add(rq);
> > > +             if (it_s.sg)
> > > +                     cond_resched();
> > 
> >  From what context does this run? No preemptible?
> 
> Has to be process context; numerous allocations, implicit waits (that we
> want to avoid in practice), and the timeline (per-context) mutex to
> guard access to the ringbuffer.

Another thought was to allocate new contexts on the fly; as we can only
copy about 500MiB before stalling using GPU PTE updates.

However, I thought reallocations would be worse for the code flow.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
