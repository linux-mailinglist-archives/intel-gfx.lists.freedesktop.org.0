Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90549162D9A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 19:00:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B366E39C;
	Tue, 18 Feb 2020 18:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616046E39C;
 Tue, 18 Feb 2020 18:00:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20267083-1500050 for multiple; Tue, 18 Feb 2020 18:00:04 +0000
MIME-Version: 1.0
To: Antonio Argenziano <antonio.argenziano@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <7c8a0bc1-3e3f-4551-7e62-9f21bed92192@intel.com>
References: <20200218122648.1252102-1-chris@chris-wilson.co.uk>
 <20200218174219.1301127-1-chris@chris-wilson.co.uk>
 <7c8a0bc1-3e3f-4551-7e62-9f21bed92192@intel.com>
Message-ID: <158204880357.8112.17918282201515978143@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Feb 2020 18:00:03 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Exercise
 implicit ordering between engines
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
Cc: igt-dev@lists.freedesktop.org,
 Sravan Kumar Nedunoori <sravan.kumar.nedunoori@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Antonio Argenziano (2020-02-18 17:56:10)
> 
> 
> On 18/02/20 09:42, Chris Wilson wrote:
> > Check that reads are serialised after a write, and that a subsequent
> > write is after all reads.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Antonio Argenziano <antonio.argenziano@intel.com>
> > Cc: Sravan Kumar Nedunoori <sravan.kumar.nedunoori@intel.com>
> > ---
> >   tests/i915/gem_exec_schedule.c | 73 ++++++++++++++++++++++++++++++++++
> >   1 file changed, 73 insertions(+)
> > 
> > diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
> > index a20985864..cfd06aa55 100644
> > --- a/tests/i915/gem_exec_schedule.c
> > +++ b/tests/i915/gem_exec_schedule.c
> > @@ -241,6 +241,61 @@ static void fifo(int fd, unsigned ring)
> >       igt_assert_eq_u32(result, 2);
> >   }
> >   
> > +enum implicit_dir {
> > +     READ_WRITE = 0x1,
> > +     WRITE_READ = 0x2,
> > +};
> > +
> > +static void implicit_rw(int i915, unsigned ring, enum implicit_dir dir)
> > +{
> > +     IGT_CORK_FENCE(cork);
> > +     unsigned int count;
> > +     uint32_t scratch;
> > +     uint32_t result;
> > +     int fence;
> > +
> > +     count = 0;
> > +     for_each_physical_engine(other, i915) {
> > +             if (eb_ring(other) == ring)
> > +                     continue;
> > +
> > +             count++;
> > +     }
> > +     igt_require(count);
> > +
> > +     scratch = gem_create(i915, 4096);
> > +     fence = igt_cork_plug(&cork, i915);
> > +
> > +     if (dir & WRITE_READ)
> > +             store_dword_fenced(i915, 0,
> > +                                ring, scratch, 0, -ring,
> > +                                fence, I915_GEM_DOMAIN_RENDER);
> > +
> > +     for_each_physical_engine(other, i915) {
> > +             if (eb_ring(other) == ring)
> > +                     continue;
> > +
> > +             store_dword_fenced(i915, 0,
> > +                                eb_ring(other), scratch, 0, eb_ring(other),
> > +                                fence, 0);
> > +     }
> > +
> > +     if (dir & READ_WRITE)
> > +             store_dword_fenced(i915, 0,
> > +                                ring, scratch, 0, ring,
> > +                                fence, I915_GEM_DOMAIN_RENDER);
> > +
> > +     unplug_show_queue(i915, &cork, ring);
> > +     close(fence);
> > +
> > +     result =  __sync_read_u32(i915, scratch, 0);
> > +     gem_close(i915, scratch);
> > +
> > +     igt_assert_neq_u32(result, -ring);
> 
> if (dir & WRITE_READ) ?

We should never have -ring in there. If we have 2 billion engines, CI
will timeout first. And ring should always be !0.

Although the symmetry is pleasing.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
