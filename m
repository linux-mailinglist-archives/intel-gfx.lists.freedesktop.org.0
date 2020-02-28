Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C05DE173672
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:53:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9C9A6F430;
	Fri, 28 Feb 2020 11:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47F16F431
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:52:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20383967-1500050 for multiple; Fri, 28 Feb 2020 11:52:55 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-12-chris@chris-wilson.co.uk>
 <87blpj7xv6.fsf@gaia.fi.intel.com>
In-Reply-To: <87blpj7xv6.fsf@gaia.fi.intel.com>
Message-ID: <158289077278.24106.12975460776411775775@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 11:52:52 +0000
Subject: Re: [Intel-gfx] [PATCH 12/20] drm/i915/selftests: Verify LRC
 isolation
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

Quoting Mika Kuoppala (2020-02-28 11:30:21)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> > +     x = 0;
> > +     dw = 0;
> > +     hw = engine->pinned_default_state;
> > +     hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
> > +     do {
> > +             u32 lri = hw[dw];
> > +
> > +             if (lri == 0) {
> > +                     dw++;
> > +                     continue;
> > +             }
> > +
> > +             if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> > +                     lri &= 0x7f;
> > +                     dw += lri + 2;
> > +                     continue;
> > +             }
> > +
> > +             lri &= 0x7f;
> > +             lri++;
> > +             dw++;
> 
> The pattern for weeding out everything except lris starts
> to stand out as a boilerplate. 

Ssh. Just do a visual replacement with for_each_register()

> 
> > +
> > +             while (lri) {
> > +                     if (!is_moving(A[0][x], A[1][x]) &&
> > +                         (A[0][x] != B[0][x] || A[1][x] != B[1][x])) {
> > +                             switch (hw[dw] & 4095) {
> > +                             case 0x30: /* RING_HEAD */
> > +                             case 0x34: /* RING_TAIL */
> > +                                     break;
> > +
> > +                             default:
> > +                                     pr_err("%s[%d]: Mismatch for register %4x, default %08x, reference %08x, result (%08x, %08x), poison %08x, context %08x\n",
> 
> 0x left out on all for compactness or by accident?

I tend not to use 0x, unless it looks odd or we need machine parsing :) 
Here the compactness helps with a very long line.

> > +                                            engine->name, x,
> > +                                            hw[dw], hw[dw + 1],
> > +                                            A[0][x], B[0][x], B[1][x],
> > +                                            poison, lrc[dw + 1]);
> > +                                     err = -EINVAL;
> > +                                     break;
> > +                             }
> > +                     }
> > +                     dw += 2;
> > +                     lri -= 2;
> > +                     x++;
> > +             }
> > +     } while (dw < PAGE_SIZE / sizeof(u32) &&
> > +              (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
> > +
> > +     i915_gem_object_unpin_map(ce->state->obj);
> > +err_B1:
> > +     i915_gem_object_unpin_map(result[1]->obj);
> > +err_B0:
> > +     i915_gem_object_unpin_map(result[0]->obj);
> > +err_A1:
> > +     i915_gem_object_unpin_map(ref[1]->obj);
> > +err_A0:
> > +     i915_gem_object_unpin_map(ref[0]->obj);
> > +     return err;
> > +}
> > +
> > +static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
> > +{
> > +     u32 *sema = memset32(engine->status_page.addr + 1000, 0, 1);
> > +     struct i915_vma *ref[2], *result[2];
> > +     struct intel_context *A, *B;
> > +     struct i915_request *rq;
> > +     int err;
> > +
> > +     A = intel_context_create(engine);
> > +     if (IS_ERR(A))
> > +             return PTR_ERR(A);
> > +
> > +     B = intel_context_create(engine);
> > +     if (IS_ERR(B)) {
> > +             err = PTR_ERR(B);
> > +             goto err_A;
> > +     }
> > +
> > +     ref[0] = create_user_vma(A->vm, SZ_64K);
> > +     if (IS_ERR(ref[0])) {
> > +             err = PTR_ERR(ref[0]);
> > +             goto err_B;
> > +     }
> > +
> > +     ref[1] = create_user_vma(A->vm, SZ_64K);
> > +     if (IS_ERR(ref[1])) {
> > +             err = PTR_ERR(ref[1]);
> > +             goto err_ref0;
> > +     }
> > +
> > +     rq = record_registers(A, ref[0], ref[1], sema);
> > +     if (IS_ERR(rq)) {
> > +             err = PTR_ERR(rq);
> > +             goto err_ref1;
> > +     }
> > +
> > +     WRITE_ONCE(*sema, 1);
> > +     wmb();
> 
> So with this you get reference base for before and after...
> 
> > +
> > +     if (i915_request_wait(rq, 0, HZ / 2) < 0) {
> > +             i915_request_put(rq);
> > +             err = -ETIME;
> > +             goto err_ref1;
> > +     }
> > +     i915_request_put(rq);
> > +
> > +     result[0] = create_user_vma(A->vm, SZ_64K);
> > +     if (IS_ERR(result[0])) {
> > +             err = PTR_ERR(result[0]);
> > +             goto err_ref1;
> > +     }
> > +
> > +     result[1] = create_user_vma(A->vm, SZ_64K);
> > +     if (IS_ERR(result[1])) {
> > +             err = PTR_ERR(result[1]);
> > +             goto err_result0;
> > +     }
> > +
> > +     rq = record_registers(A, result[0], result[1], sema);
> > +     if (IS_ERR(rq)) {
> > +             err = PTR_ERR(rq);
> > +             goto err_result1;
> > +     }
> > +
> > +     err = poison_registers(B, poison, sema);
> 
> ..and apparently the poisoning releases the semaphore
> triggering the preemption?

Correct.

> How can you make preempt happen deterministically with this?

We use MI_ARB_ONOFF to ensure that we can only be preempted within the
semaphore.

> Released semaphore generates interrupt and you have it ready
> with maximum prio?

On submission of the I915_PRIORITY_BARRIER request, we will immediately
submit it to ELSP, and so queue the preemption request to HW. Since we
disable preemption in record_registers() until it hits the semaphore, we
know that the second batch must run only when the first is waiting on
that semaphore.
 
> I am also puzzled why there is a need for two set of reference
> values?

One is without preemption from a second context (so just one context
running on the HW). This reference should match the context image
before/after. The other is after having been preempted between the
two reads. This /should/ also match its context image...

The first checks our mechanism for reading back the registers and
comparing them to the context, the second is the actual test.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
