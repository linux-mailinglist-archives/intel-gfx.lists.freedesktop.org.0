Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD84713BE24
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 12:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CBC86E90F;
	Wed, 15 Jan 2020 11:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2F86E90F;
 Wed, 15 Jan 2020 11:04:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 03:04:58 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="424981441"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 03:04:56 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 15 Jan 2020 12:04:51 +0100
Message-ID: <3109551.1VqvYxZIyR@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157858221040.2197.11860218526538512609@skylake-alporthouse-com>
References: <20200109140125.18483-1-janusz.krzysztofik@linux.intel.com>
 <20200109140125.18483-3-janusz.krzysztofik@linux.intel.com>
 <157858221040.2197.11860218526538512609@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] tests/prime_vgem: Examine blitter
 access path
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
Cc: igt-dev@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

Thanks for your review.

On Thursday, January 9, 2020 4:03:30 PM CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-01-09 14:01:25)
> > On future hardware with missing GGTT BAR we won't be able to exercise
> > dma-buf access via that path.  An alternative to basic-gtt subtest for
> > testing dma-buf access is required, as well as basic-fence-mmap and
> > coherency-gtt subtest alternatives for testing WC coherency.
> > 
> > Access to the dma sg list feature exposed by dma-buf can be tested
> > through blitter.  Unfortunately we don't have any equivalently simple
> > tests that use blitter.  Provide them.
> > 
> > Blitter XY_SRC_COPY method implemented by igt_blitter_src_copy__raw()
> > IGT library function has been chosen.
> > 
> > v2: As fast copy is not supported on platforms older than Gen 9,
> >     use XY_SRC_COPY instead (Chris),
> >   - add subtest descriptions.
> > 
> > Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/prime_vgem.c | 192 +++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 192 insertions(+)
> > 
> > diff --git a/tests/prime_vgem.c b/tests/prime_vgem.c
> > index 69ae8c9b..9ceee47a 100644
> > --- a/tests/prime_vgem.c
> > +++ b/tests/prime_vgem.c
> > @@ -23,6 +23,7 @@
> >  
> >  #include "igt.h"
> >  #include "igt_vgem.h"
> > +#include "intel_batchbuffer.h"
> >  
> >  #include <sys/ioctl.h>
> >  #include <sys/poll.h>
> > @@ -171,6 +172,77 @@ static void test_fence_mmap(int i915, int vgem)
> >         close(slave[1]);
> >  }
> >  
> > +static void test_fence_blt(int i915, int vgem)
> > +{
> > +       struct vgem_bo scratch;
> > +       uint32_t prime;
> > +       uint32_t *ptr;
> > +       uint32_t fence;
> > +       int dmabuf, i;
> > +       int master[2], slave[2];
> > +
> > +       igt_assert(pipe(master) == 0);
> > +       igt_assert(pipe(slave) == 0);
> > +
> > +       scratch.width = 1024;
> > +       scratch.height = 1024;
> > +       scratch.bpp = 32;
> > +       vgem_create(vgem, &scratch);
> 
> Hmm. The pitch is returned by the dumb create, did we not report it in
> vgem_bo? scratch.pitch;

You're right, the pitch is returned in scratch.pitch.
 
> > +
> > +       dmabuf = prime_handle_to_fd(vgem, scratch.handle);
> > +       prime = prime_fd_to_handle(i915, dmabuf);
> > +       close(dmabuf);
> > +
> > +       igt_fork(child, 1) {
> > +               uint32_t native;
> > +
> > +               close(master[0]);
> > +               close(slave[1]);
> > +
> > +               native = gem_create(i915, scratch.size);
> > +
> > +               ptr = gem_mmap__wc(i915, native, 0, scratch.size, PROT_READ);
> > +               for (i = 0; i < 1024; i++)
> for (i = 0; i < scratch.height; i++)

Makes sense.

> > +                       igt_assert_eq(ptr[1024 * i], 0);
> 
> igt_assert_eq_u32(ptr[scratch.pitch * i / sizeof(*ptr)], 0);
> 
> The "%08x" will be easier to read when you have ~i later on.

Indeed.

> > +
> > +               write(master[1], &child, sizeof(child));
> > +               read(slave[0], &child, sizeof(child));
> > +
> > +               igt_blitter_src_copy__raw(i915, prime, 0,
> > +                                         scratch.width * scratch.bpp / 8,
> 
> scratch.pitch,

Sure.

> > +                                         I915_TILING_NONE, 0, 0,
> > +                                         scratch.width, scratch.height,
> > +                                         scratch.bpp, native, 0,
> > +                                         scratch.width * scratch.bpp / 8,
> > +                                         I915_TILING_NONE, 0, 0);
> > +               gem_sync(i915, native);

While exercising next version of the patch in my test environment, I've found 
out that the only place where synchronization is actually required for new 
subtests to succeed is this subtest - "basic-fence-blt".  Moreover, either 
following the blitter copy operation with gem_sync(i915, native) or enclosing 
it with prime_sync_start/end(dmabuf, flase) does the job for me.  Assuming 
this behavior is reproducible, which method would you prefer here?

> > +
> > +               for (i = 0; i < 1024; i++)
> > +                       igt_assert_eq(ptr[1024 * i], i);
> > +
> > +               munmap(ptr, scratch.size);
> > +               gem_close(i915, native);
> > +               gem_close(i915, prime);
> > +       }
> > +
> > +       close(master[1]);
> > +       close(slave[0]);
> > +       read(master[0], &i, sizeof(i));
> > +       fence = vgem_fence_attach(vgem, &scratch, VGEM_FENCE_WRITE);
> > +       write(slave[1], &i, sizeof(i));
> 
> Throw in a usleep(50*1000); to emphasize that the only thing stopping
> the blitter is the fence.

OK, and with your comment placed above it, I think.

> > +
> > +       ptr = vgem_mmap(vgem, &scratch, PROT_WRITE);
> > +       for (i = 0; i < 1024; i++)
> > +               ptr[1024 * i] = i;
> > +       munmap(ptr, scratch.size);
> > +       vgem_fence_signal(vgem, fence);
> > +       gem_close(vgem, scratch.handle);
> > +
> > +       igt_waitchildren();
> > +       close(master[0]);
> > +       close(slave[1]);
> > +}
> > +
> >  static void test_write(int vgem, int i915)
> >  {
> >         struct vgem_bo scratch;
> > @@ -236,6 +308,62 @@ static void test_gtt(int vgem, int i915)
> >         gem_close(vgem, scratch.handle);
> >  }
> >  
> > +static void test_blt(int vgem, int i915)
> > +{
> > +       struct vgem_bo scratch;
> > +       uint32_t prime, native;
> > +       uint32_t *ptr;
> > +       int dmabuf, i;
> > +
> > +       scratch.width = 1024;
> > +       scratch.height = 1024;
> > +       scratch.bpp = 32;
> > +       vgem_create(vgem, &scratch);
> > +
> > +       dmabuf = prime_handle_to_fd(vgem, scratch.handle);
> > +       prime = prime_fd_to_handle(i915, dmabuf);
> > +       close(dmabuf);
> > +
> > +       native = gem_create(i915, scratch.size);
> > +
> > +       ptr = gem_mmap__wc(i915, native, 0, scratch.size, PROT_WRITE);
> > +       for (i = 0; i < 1024; i++)
> > +               ptr[1024 * i] = i;
> > +       munmap(ptr, scratch.size);
> > +
> > +       igt_blitter_src_copy__raw(i915,
> > +                                 native, 0, scratch.width * scratch.bpp / 8,
> > +                                 I915_TILING_NONE, 0, 0,
> > +                                 scratch.width, scratch.height, scratch.bpp,
> > +                                 prime, 0, scratch.width * scratch.bpp / 8,
> > +                                 I915_TILING_NONE, 0, 0);
> > +       gem_sync(i915, prime);
> 
> Would this be better with prime_sync_start(dmabuf, true); ?

Did you mean surrounding the this native->prime blitter copy operation with 
prime_sync_start/end(dmabuf, true); ?

> gem_sync(prime) is nice in its own way (checking sync on imported handle
> provides correct serialisation for the vgem_mmap). But I think the
> recommended practice would be to use dmabuf for the inter-device sync?

My intention was to make sure the copy has been completed by GPU.

As I've found both test_blt() and test_blt_interleaved() succeed without any 
syncing in my test environment, I'm going to give different options a try on 
Trybot first before my next submission, unless you are able to provide me with 
your recommendations on all my gem_sync() use cases found in this patch.

Thanks,
Janusz


> > +       ptr = vgem_mmap(vgem, &scratch, PROT_READ | PROT_WRITE);
> > +       for (i = 0; i < 1024; i++) {
> > +               igt_assert_eq(ptr[1024 * i], i);
> > +               ptr[1024 * i] = ~i;
> > +       }
> > +       munmap(ptr, scratch.size);
> > +
> > +       igt_blitter_src_copy__raw(i915,
> > +                                 prime, 0, scratch.width * scratch.bpp / 8,
> > +                                 I915_TILING_NONE, 0, 0,
> > +                                 scratch.width, scratch.height, scratch.bpp,
> > +                                 native, 0, scratch.width * scratch.bpp / 8,
> > +                                 I915_TILING_NONE, 0, 0);
> > +       gem_sync(i915, native);
> > +
> > +       ptr = gem_mmap__wc(i915, native, 0, scratch.size, PROT_READ);
> > +       for (i = 0; i < 1024; i++)
> > +               igt_assert_eq(ptr[1024 * i], ~i);
> > +       munmap(ptr, scratch.size);
> > +
> > +       gem_close(i915, native);
> > +       gem_close(i915, prime);
> > +       gem_close(vgem, scratch.handle);
> > +}
> > +
> >  static void test_shrink(int vgem, int i915)
> >  {
> >         struct vgem_bo scratch = {
> > @@ -319,6 +447,59 @@ static void test_gtt_interleaved(int vgem, int i915)
> >         gem_close(vgem, scratch.handle);
> >  }
> >  
> > +static void test_blt_interleaved(int vgem, int i915)
> > +{
> > +       struct vgem_bo scratch;
> > +       uint32_t prime, native;
> > +       uint32_t *foreign, *local;
> > +       int dmabuf, i;
> > +
> > +       scratch.width = 1024;
> > +       scratch.height = 1024;
> > +       scratch.bpp = 32;
> > +       vgem_create(vgem, &scratch);
> > +
> > +       dmabuf = prime_handle_to_fd(vgem, scratch.handle);
> > +       prime = prime_fd_to_handle(i915, dmabuf);
> > +       close(dmabuf);
> > +
> > +       native = gem_create(i915, scratch.size);
> > +
> > +       foreign = vgem_mmap(vgem, &scratch, PROT_WRITE);
> > +       local = gem_mmap__wc(i915, native, 0, scratch.size, PROT_WRITE);
> > +
> > +       for (i = 0; i < 1024; i++) {
> > +               local[1024 * i] = i;
> > +               igt_blitter_src_copy__raw(i915, native, 0,
> > +                                         scratch.width * scratch.bpp / 8,
> > +                                         I915_TILING_NONE, 0, i,
> > +                                         scratch.width, 1, scratch.bpp,
> > +                                         prime, 0,
> > +                                         scratch.width * scratch.bpp / 8,
> > +                                         I915_TILING_NONE, 0, i);
> > +               gem_sync(i915, prime);
> > +               igt_assert_eq(foreign[1024 * i], i);
> > +
> > +               foreign[1024 * i] = ~i;
> > +               igt_blitter_src_copy__raw(i915, prime, 0,
> > +                                         scratch.width * scratch.bpp / 8,
> > +                                         I915_TILING_NONE, 0, i,
> > +                                         scratch.width, 1, scratch.bpp,
> > +                                         native, 0,
> > +                                         scratch.width * scratch.bpp / 8,
> > +                                         I915_TILING_NONE, 0, i);
> > +               gem_sync(i915, native);
> > +               igt_assert_eq(local[1024 * i], ~i);
> > +       }
> > +
> > +       munmap(local, scratch.size);
> > +       munmap(foreign, scratch.size);
> > +
> > +       gem_close(i915, native);
> > +       gem_close(i915, prime);
> > +       gem_close(vgem, scratch.handle);
> > +}
> 
> So other than using scratch.constants where possible, the tests make
> sense and look interesting. Asynchronous fence scheduling,
> back-and-forth coherency and serialisation.
> 
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
