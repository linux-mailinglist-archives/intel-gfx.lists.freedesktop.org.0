Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC59E2A32A2
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 19:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32F66E11C;
	Mon,  2 Nov 2020 18:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F87B6E117;
 Mon,  2 Nov 2020 18:13:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22873046-1500050 for multiple; Mon, 02 Nov 2020 18:13:55 +0000
MIME-Version: 1.0
In-Reply-To: <966e4a04-0388-a555-5029-c9b5efb4a2c0@linux.intel.com>
References: <20201102153334.3732960-1-chris@chris-wilson.co.uk>
 <966e4a04-0388-a555-5029-c9b5efb4a2c0@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Mon, 02 Nov 2020 18:13:51 +0000
Message-ID: <160434083191.12427.6074581032641222176@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] gem_wsim: Use CTX_TIMESTAMP for timed
 spinners
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-11-02 17:14:24)
> 
> On 02/11/2020 15:33, Chris Wilson wrote:
> > +     if (!f) {
> > +             f = read_timestamp_frequency(fd);
> > +             if (intel_gen(intel_get_drm_devid(fd)) == 11)
> > +                     f = 12500000; /* icl!!! are you feeling alright? */
> 
> What does the comment refer to?

Icelake seems to be using a constant clock for the timestamp that is not
related to the GT clock. This feature is undocumented, but consistent
across all 3 of the icl I have access to. There's a selftest kicking
around for the issue.
 
> Should there be an assert here if < gen11?

CTX_TIMESTAMP is present on gen8+, and so long as we don't use a load
balancer, the tests should run. There's a bail for gen11 +
load-balancing later on.

> > +     return gem_engine_mmio_base(i915, name);
> 
> Why is mmio base needed if relative addressing is used? Maybe I'll 
> figure it out after reading further.

If we are not using relative addressing, we need the mmio base (and the
bit is ignored).

If we are using relative addressing, the offset must be 0.

The intention is to keep working on older platforms, for simple tests at
least. (Quite useful for verifying the logic.)

> > -static unsigned int terminate_bb(struct w_step *w)
> > +static unsigned int create_bb(struct w_step *w, int self)
> >   {
> > -     const uint32_t bbe = 0xa << 23;
> > -     unsigned long mmap_start, mmap_len;
> > -     unsigned long batch_start = w->bb_sz;
> > +     const int gen = intel_gen(intel_get_drm_devid(fd));
> > +     const uint32_t base = mmio_base(fd, w->engine, gen);
> > +#define CS_GPR(x) (base + 0x600 + 8 * (x))
> > +#define TIMESTAMP (base + 0x3a8)
> > +     const int use_64b = gen >= 8;
> > +     enum { START_TS, NOW_TS };
> > +     uint32_t *ptr, *cs, *jmp;
> >       unsigned int r = 0;
> > -     uint32_t *ptr, *cs;
> > -
> > -     batch_start -= sizeof(uint32_t); /* bbend */
> > -
> > -     if (w->unbound_duration)
> > -             batch_start -= 4 * sizeof(uint32_t); /* MI_ARB_CHK + MI_BATCH_BUFFER_START */
> > -
> > -     mmap_start = rounddown(batch_start, PAGE_SIZE);
> > -     mmap_len = ALIGN(w->bb_sz - mmap_start, PAGE_SIZE);
> >   
> >       gem_set_domain(fd, w->bb_handle,
> >                      I915_GEM_DOMAIN_WC, I915_GEM_DOMAIN_WC);
> >   
> > -     ptr = gem_mmap__wc(fd, w->bb_handle, mmap_start, mmap_len, PROT_WRITE);
> > -     cs = (uint32_t *)((char *)ptr + batch_start - mmap_start);
> > +     cs = ptr = gem_mmap__wc(fd, w->bb_handle, 0, 4096, PROT_WRITE);
> >   
> > -     if (w->unbound_duration) {
> > -             w->reloc[r++].offset = batch_start + 2 * sizeof(uint32_t);
> > -             batch_start += 4 * sizeof(uint32_t);
> > +     *cs++ = MI_LOAD_REGISTER_IMM | MI_CS_MMIO_DST;
> > +     *cs++ = CS_GPR(START_TS) + 4;
> 
> What is "+ 4"?

The MI_MATH is 64b, so we need to do 2 dword writes into each GPR.

> > +     *cs++ = 0;
> > +     *cs++ = MI_LOAD_REGISTER_REG | MI_CS_MMIO_DST | MI_CS_MMIO_SRC;
> > +     *cs++ = TIMESTAMP;
> > +     *cs++ = CS_GPR(START_TS);
> >   
> > -             *cs++ = w->preempt_us ? 0x5 << 23 /* MI_ARB_CHK; */ : MI_NOOP;
> > -             w->recursive_bb_start = cs;
> > -             *cs++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
> > +     if (offset_in_page(cs) & 4)
> >               *cs++ = 0;
> > +     jmp = cs;
> > +
> > +     if (w->preempt_us)
> > +             *cs++ = 0x5 << 23; /* MI_ARB_CHECK */
> > +
> > +     *cs++ = MI_LOAD_REGISTER_IMM | MI_CS_MMIO_DST;
> > +     *cs++ = CS_GPR(NOW_TS) + 4;
> > +     *cs++ = 0;
> > +     *cs++ = MI_LOAD_REGISTER_REG | MI_CS_MMIO_DST | MI_CS_MMIO_SRC;
> > +     *cs++ = TIMESTAMP;
> > +     *cs++ = CS_GPR(NOW_TS);
> > +
> > +     *cs++ = MI_MATH(4);
> > +     *cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCA, MI_MATH_REG(NOW_TS));
> > +     *cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCB, MI_MATH_REG(START_TS));
> 
> MI_MATH_REG is aliased to CS_GPR?

Yes.

> > +     *cs++ = MI_MATH_SUB;
> > +     *cs++ = MI_MATH_STOREINV(MI_MATH_REG(NOW_TS), MI_MATH_REG_ACCU);
> > +
> > +     *cs++ = 0x24 << 23 | (1 + use_64b) | MI_CS_MMIO_DST; /* SRM */
> 
> All others have nice defines but SRM, any special reason?

Once upon a time I was lazy, and since then copy'n'pasted.

> > +     *cs++ = CS_GPR(NOW_TS);
> > +     w->reloc[r].target_handle = self;
> > +     w->reloc[r].offset = offset_in_page(cs);
> > +     *cs++ = w->reloc[r].delta = 4000;
> > +     *cs++ = 0;
> > +     r++;
> > +
> > +     /* Delay between SRM and COND_BBE to post the writes */
> > +     for (int n = 0; n < 8; n++) {
> > +             *cs++ = MI_INSTR(0x21, 1);
> > +             *cs++ = 2048;
> >               *cs++ = 0;
> 
> Whats this instruction? Add a define so it is self-documenting?

STORE_INDEX.

> > -     *cs = bbe;
> > +     *cs++ = MI_COND_BATCH_BUFFER_END | MI_DO_COMPARE | (1 + use_64b);
> > +     w->bb_duration = cs;
> > +     *cs++ = 0;
> > +     w->reloc[r].target_handle = self;
> > +     w->reloc[r].offset = offset_in_page(cs);
> > +     *cs++ = w->reloc[r].delta = 4000;
> > +     *cs++ = 0;
> > +     r++;
> > +
> > +     *cs++ = MI_BATCH_BUFFER_START | 1 << 8 | use_64b;
> > +     w->reloc[r].target_handle = self;
> > +     w->reloc[r].offset = offset_in_page(cs);
> > +     *cs++ = w->reloc[r].delta = offset_in_page(jmp);
> 
> Presumably MI_MATH stuff relaxed the loop enough and we don't need any 
> extra noops?

More than enough.
 
> I would appreaciate a banner style comment explaining the batch layout 
> mentioning the interesting offsets and high-level logic.

There's another variant out there with the block comments. More
copy'n'pasting to come.

> >   static void
> > -update_bb_start(struct w_step *w)
> > +update_bb_start(struct workload *wrk, struct w_step *w)
> 
> I think there is w->wrk if you find it easier but it's only one callsite 
> so it's probably even better like this.
> 
> >   {
> > -     if (!w->unbound_duration)
> > -             return;
> > +     uint32_t ticks;
> >   
> > -     gem_set_domain(fd, w->bb_handle,
> > -                    I915_GEM_DOMAIN_WC, I915_GEM_DOMAIN_WC);
> > +     ticks = 0;
> > +     if (!w->unbound_duration)
> > +             ticks = ~ns_to_ctx_ticks(1000 * get_duration(wrk, w));
> 
> Hm inverted ticks, why? And since it is not obvious I think it deserves 
> a comment.

We do not get a choice in the MI_DO_COMPARE operation, so need to
convert the values to work with a less-than.

> > @@ -2812,6 +2640,9 @@ int main(int argc, char **argv)
> >               case 'F':
> >                       scale_time = atof(optarg);
> >                       break;
> > +             case 'n':
> > +                     /* ignored; using HW timers */
> > +                     break;
> 
> For what user? I deleted media-bench.pl but maybe you are using it locally?

Yeah, it was still in my scripts. There's no great need to keep it, I
just thought it was convenient to ignore.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
