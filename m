Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B87FD1467AB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 13:12:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39166FC24;
	Thu, 23 Jan 2020 12:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960906E059
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 12:12:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19981638-1500050 for multiple; Thu, 23 Jan 2020 12:12:06 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87blqucrob.fsf@gaia.fi.intel.com>
References: <20200122201822.889250-1-chris@chris-wilson.co.uk>
 <20200123111816.1292582-1-chris@chris-wilson.co.uk>
 <87blqucrob.fsf@gaia.fi.intel.com>
Message-ID: <157978152353.19995.2381682824583291224@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 Jan 2020 12:12:03 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: Poison GTT scratch pages
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

Quoting Mika Kuoppala (2020-01-23 11:56:20)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Using a clear page for scratch means that we have relatively benign
> > errors in case it is accidentally used, but that can be rather too
> > benign for debugging. If we poison the scratch, ideally it quickly
> > results in an obvious error.
> >
> > v2: Set each page individually just in case we are using highmem for our
> > scratch page.
> > v3: Pick a new scratch register as MI_STORE_REGISTER_MEM does not work
> > with GPR0 on gen7, unbelievably.
> >
> > Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> 
> I have a faint memory...aeons ago..might have.
> 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Matthew Auld <matthew.william.auld@gmail.com>
> > ---
> >  .../drm/i915/gem/selftests/i915_gem_context.c | 51 ++++++++++++++++---
> >  drivers/gpu/drm/i915/gt/intel_gtt.c           | 30 +++++++++++
> >  2 files changed, 75 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> > index 7fc46861a54d..00a56a8b309a 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> > @@ -1575,7 +1575,6 @@ static int read_from_scratch(struct i915_gem_context *ctx,
> >       struct drm_i915_private *i915 = ctx->i915;
> >       struct drm_i915_gem_object *obj;
> >       struct i915_address_space *vm;
> > -     const u32 RCS_GPR0 = 0x2600; /* not all engines have their own GPR! */
> >       const u32 result = 0x100;
> >       struct i915_request *rq;
> >       struct i915_vma *vma;
> > @@ -1596,20 +1595,24 @@ static int read_from_scratch(struct i915_gem_context *ctx,
> >  
> >       memset(cmd, POISON_INUSE, PAGE_SIZE);
> >       if (INTEL_GEN(i915) >= 8) {
> > +             const u32 GPR0 = engine->mmio_base + 0x600;
> > +
> >               *cmd++ = MI_LOAD_REGISTER_MEM_GEN8;
> > -             *cmd++ = RCS_GPR0;
> > +             *cmd++ = GPR0;
> >               *cmd++ = lower_32_bits(offset);
> >               *cmd++ = upper_32_bits(offset);
> >               *cmd++ = MI_STORE_REGISTER_MEM_GEN8;
> > -             *cmd++ = RCS_GPR0;
> > +             *cmd++ = GPR0;
> >               *cmd++ = result;
> >               *cmd++ = 0;
> >       } else {
> > +             const u32 reg = engine->mmio_base + 0x420;
> 
> 3d prim end offset? Well should not matter for this selftest
> but did you check 0xA198?

Forcewake is handled by MI from the engines, if I understood you
correctly. First thought it was indeed just that that !rcs engines
couldn't read from the rcs, so limited it to just rcs and still it
failed.
> 
> How have 0x600 been been working in gen7 previously?

No idea. Tried to use I915_DISPATCH_SECURE (fixing up the batch vma to
be in the GGTT) and it still returned 0. Even after poisoning the GPR
with MI_LOAD_REG_IMM. Ergo it had to be the read of GPR that was being
scrubbed (since we poison the destination to verify the write lands).

But 3DPRIM_END_OFFSET worked (I suspected it might since it's part of
the indirect glDrawArrays), so I assume it's just some more of the
wonderfully askew validation on gen7.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
