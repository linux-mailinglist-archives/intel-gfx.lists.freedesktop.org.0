Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9A81C38A0
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 13:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0A8D6E39B;
	Mon,  4 May 2020 11:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3DF6E39B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 11:53:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21106271-1500050 for multiple; Mon, 04 May 2020 12:53:22 +0100
MIME-Version: 1.0
In-Reply-To: <6b0f5f78-cbdb-8a81-f799-3f16cf9c1586@linux.intel.com>
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
 <20200504044903.7626-2-chris@chris-wilson.co.uk>
 <6b0f5f78-cbdb-8a81-f799-3f16cf9c1586@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158859319983.11660.14233761464643225868@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 04 May 2020 12:53:19 +0100
Subject: Re: [Intel-gfx] [PATCH 02/22] drm/i915/gem: Specify address type
 for chained reloc batches
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

Quoting Tvrtko Ursulin (2020-05-04 12:49:03)
> 
> On 04/05/2020 05:48, Chris Wilson wrote:
> > It is required that a chained batch be in the same address domain as its
> > parent, and also that must be specified in the command for earlier gen
> > as it is not inferred from the chaining until gen6.
> > 
> > Fixes: 964a9b0f611e ("drm/i915/gem: Use chained reloc batches")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 12 ++++++------
> >   1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index cce7df231cb9..ab0d4df13c0b 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -1004,14 +1004,14 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
> >       GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
> >       cmd = cache->rq_cmd + cache->rq_size;
> >       *cmd++ = MI_ARB_CHECK;
> > -     if (cache->gen >= 8) {
> > +     if (cache->gen >= 8)
> >               *cmd++ = MI_BATCH_BUFFER_START_GEN8;
> > -             *cmd++ = lower_32_bits(batch->node.start);
> > -             *cmd++ = upper_32_bits(batch->node.start);
> > -     } else {
> > +     else if (cache->gen >= 6)
> >               *cmd++ = MI_BATCH_BUFFER_START;
> > -             *cmd++ = lower_32_bits(batch->node.start);
> > -     }
> > +     else
> > +             *cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
> > +     *cmd++ = lower_32_bits(batch->node.start);
> > +     *cmd++ = upper_32_bits(batch->node.start);
> 
> MI_NOOP between batches on gen < 8 ?

batch->node.start is 32b on gen<8, so this is effectively a trailing NOOP
after the BB_START. However, since it is after the 2 dword BB_START on
earlier gen it is never even evaluated by the CS.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
