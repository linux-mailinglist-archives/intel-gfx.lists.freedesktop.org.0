Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0C41779A3
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 15:54:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5D76EA86;
	Tue,  3 Mar 2020 14:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1A36EA86;
 Tue,  3 Mar 2020 14:54:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20428052-1500050 for multiple; Tue, 03 Mar 2020 14:37:27 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87r1y95x0f.fsf@gaia.fi.intel.com>
References: <20200303140327.1535286-1-chris@chris-wilson.co.uk>
 <87r1y95x0f.fsf@gaia.fi.intel.com>
Message-ID: <158324624580.6031.4377056183773987481@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 03 Mar 2020 14:37:25 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_parallel: Try
 to trim runtime
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-03-03 14:33:04)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > In all likelihood the runtime is consumed by the thread setup, but just
> > in case it is dominated by the execbuf, make sure that is bounded.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  tests/i915/gem_exec_parallel.c | 28 ++++++++++++++++------------
> >  1 file changed, 16 insertions(+), 12 deletions(-)
> >
> > diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
> > index 0d4d6c628..586f85080 100644
> > --- a/tests/i915/gem_exec_parallel.c
> > +++ b/tests/i915/gem_exec_parallel.c
> > @@ -42,22 +42,26 @@
> >  
> >  #define VERIFY 0
> >  
> > +static inline uint32_t hash32(uint32_t val)
> > +{
> > +#define GOLDEN_RATIO_32 0x61C88647
> > +     return val * GOLDEN_RATIO_32;
> > +}
> > +
> >  static void check_bo(int fd, uint32_t handle, int pass)
> >  {
> > -     uint32_t *map;
> > -     int i;
> > +     uint32_t x = hash32(handle * pass) % 1024;
> >  
> >       igt_debug("Verifying result (pass=%d, handle=%d)\n", pass, handle);
> > -     map = gem_mmap__cpu(fd, handle, 0, 4096, PROT_READ);
> > -     gem_set_domain(fd, handle, I915_GEM_DOMAIN_CPU, 0);
> > -     for (i = 0; i < 1024; i++)
> > -             igt_assert_eq(map[i], i);
> > -     munmap(map, 4096);
> > +     gem_read(fd, handle, x * sizeof(x), &x, sizeof(x));
> > +     igt_assert_eq_u32(x, x);
> 
> This caught my eye.

Fine, I'll read it into a second var.

I thought it looked odd :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
