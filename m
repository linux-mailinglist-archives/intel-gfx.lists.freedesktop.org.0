Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C675166192
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 16:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B06CC6EDC0;
	Thu, 20 Feb 2020 15:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062066EDBF;
 Thu, 20 Feb 2020 15:57:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 07:57:30 -0800
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="229520281"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 07:57:28 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Thu, 20 Feb 2020 16:57:24 +0100
Message-ID: <9103010.GsyPYnKGBp@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157529875955.27263.14886639874940144583@skylake-alporthouse-com>
References: <20191113125240.3781-1-chris@chris-wilson.co.uk>
 <8042207.s0vteSJg9S@jkrzyszt-desk.ger.corp.intel.com>
 <157529875955.27263.14886639874940144583@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 9/9] i915: Exercise
 I915_CONTEXT_PARAM_RINGSIZE
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Monday, December 2, 2019 3:59:19 PM CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2019-12-02 14:42:58)
> > Hi Chris,
> > =

> > I have a few questions rather than comments.  I hope they are worth spe=
nding =

> > your time.
> > =

> > On Wednesday, November 13, 2019 1:52:40 PM CET Chris Wilson wrote:
> > > I915_CONTEXT_PARAM_RINGSIZE specifies how large to create the command
> > > ringbuffer for logical ring contects. This directly affects the number
> > =

> > s/contects/contexts/
> > =

> > > of batches userspace can submit before blocking waiting for space.
> > > =

> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Have you got this patch still queued somewhere?  As UMD has accepted the =

solution and are ready with changes on their side, I think we need to merge=
 it =

soon, and the kernel side as well.

Thanks,
Janusz


> > > ---
> > >  tests/Makefile.sources        |   3 +
> > >  tests/i915/gem_ctx_ringsize.c | 296 ++++++++++++++++++++++++++++++++=
++
> > >  tests/meson.build             |   1 +
> > >  3 files changed, 300 insertions(+)
> > >  create mode 100644 tests/i915/gem_ctx_ringsize.c
> > > =

> > > diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> > > index e17d43155..801fc52f3 100644
> > > --- a/tests/Makefile.sources
> > > +++ b/tests/Makefile.sources
> > > @@ -163,6 +163,9 @@ gem_ctx_param_SOURCES =3D i915/gem_ctx_param.c
> > >  TESTS_progs +=3D gem_ctx_persistence
> > >  gem_ctx_persistence_SOURCES =3D i915/gem_ctx_persistence.c
> > >  =

> > > +TESTS_progs +=3D gem_ctx_ringsize
> > > +gem_ctx_ringsize_SOURCES =3D i915/gem_ctx_ringsize.c
> > > +
> > >  TESTS_progs +=3D gem_ctx_shared
> > >  gem_ctx_shared_SOURCES =3D i915/gem_ctx_shared.c
> > >  =

> > > diff --git a/tests/i915/gem_ctx_ringsize.c b/tests/i915/gem_ctx_rings=
ize.c
> > > new file mode 100644
> > > index 000000000..1450e8f0d
> > > --- /dev/null
> > > +++ b/tests/i915/gem_ctx_ringsize.c
> > > @@ -0,0 +1,296 @@
> > > +/*
> > > + * Copyright =A9 2019 Intel Corporation
> > > + *
> > > + * Permission is hereby granted, free of charge, to any person obtai=
ning a
> > > + * copy of this software and associated documentation files (the "So=
ftware"),
> > > + * to deal in the Software without restriction, including without li=
mitation
> > > + * the rights to use, copy, modify, merge, publish, distribute, subl=
icense,
> > > + * and/or sell copies of the Software, and to permit persons to whom=
 the
> > > + * Software is furnished to do so, subject to the following conditio=
ns:
> > > + *
> > > + * The above copyright notice and this permission notice (including =
the next
> > > + * paragraph) shall be included in all copies or substantial portion=
s of the
> > > + * Software.
> > > + *
> > > + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, E=
XPRESS OR
> > > + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTA=
BILITY,
> > > + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVEN=
T SHALL
> > > + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES=
 OR OTHER
> > > + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, A=
RISING
> > > + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTH=
ER DEALINGS
> > > + * IN THE SOFTWARE.
> > > + */
> > > +
> > > +#include <errno.h>
> > > +#include <fcntl.h>
> > > +#include <inttypes.h>
> > > +#include <sys/ioctl.h>
> > > +#include <sys/types.h>
> > > +#include <unistd.h>
> > > +
> > > +#include "drmtest.h" /* gem_quiescent_gpu()! */
> > > +#include "i915/gem_context.h"
> > > +#include "i915/gem_engine_topology.h"
> > > +#include "ioctl_wrappers.h" /* gem_wait()! */
> > > +#include "sw_sync.h"
> > > +
> > > +#define I915_CONTEXT_PARAM_RINGSIZE 0xc
> > =

> > How are we going to handle symbol redefinition conflict which arises as=
 soon =

> > as this symbol is also included from kernel headers (e.g. via =

> > "i915/gem_engine_topology.h")?
> =

> Final version we copy the headers form the kernel. Conflicts remind us
> when we forget.
> =

> > =

> > > +
> > > +static bool has_ringsize(int i915)
> > > +{
> > > +     struct drm_i915_gem_context_param p =3D {
> > > +             .param =3D I915_CONTEXT_PARAM_RINGSIZE,
> > > +     };
> > > +
> > > +     return __gem_context_get_param(i915, &p) =3D=3D 0;
> > > +}
> > > +
> > > +static void test_idempotent(int i915)
> > > +{
> > > +     struct drm_i915_gem_context_param p =3D {
> > > +             .param =3D I915_CONTEXT_PARAM_RINGSIZE,
> > > +     };
> > > +     uint32_t saved;
> > > +
> > > +     /*
> > > +      * Simple test to verify that we are able to read back the same
> > > +      * value as we set.
> > > +      */
> > > +
> > > +     gem_context_get_param(i915, &p);
> > > +     saved =3D p.value;
> > > +
> > > +     for (uint32_t x =3D 1 << 12; x <=3D 128 << 12; x <<=3D 1) {
> > =

> > I've noticed you are using two different notations for those minimum/ma=
ximum =

> > constants.  I think that may be confusing.  How about defining and usin=
g =

> > macros?  =

> =

> A range in pages...
>  =

> > > +             p.value =3D x;
> > > +             gem_context_set_param(i915, &p);
> > > +             gem_context_get_param(i915, &p);
> > > +             igt_assert_eq_u32(p.value, x);
> > > +     }
> > > +
> > > +     p.value =3D saved;
> > > +     gem_context_set_param(i915, &p);
> > > +}
> > > +
> > > +static void test_invalid(int i915)
> > > +{
> > > +     struct drm_i915_gem_context_param p =3D {
> > > +             .param =3D I915_CONTEXT_PARAM_RINGSIZE,
> > > +     };
> > > +     uint64_t invalid[] =3D {
> > > +             0, 1, 4095, 4097, 8191, 8193,
> > > +             /* upper limit may be HW dependent, atm it is 512KiB */
> > > +             (512 << 10) - 1, (512 << 10) + 1,
> > =

> > Here is an example of that different notation mentioned above.
> =

> And here written in KiB to match comments.
> =

> > =

> > > +             -1, -1u
> > > +     };
> > > +     uint32_t saved;
> > > +
> > > +     gem_context_get_param(i915, &p);
> > > +     saved =3D p.value;
> > > +
> > > +     for (int i =3D 0; i < ARRAY_SIZE(invalid); i++) {
> > > +             p.value =3D invalid[i];
> > > +             igt_assert_eq(__gem_context_set_param(i915, &p), -EINVA=
L);
> > > +             gem_context_get_param(i915, &p);
> > > +             igt_assert_eq_u64(p.value, saved);
> > > +     }
> > > +}
> > > +
> > > +static int create_ext_ioctl(int i915,
> > > +                         struct drm_i915_gem_context_create_ext *arg)
> > > +{
> > > +     int err;
> > > +
> > > +     err =3D 0;
> > > +     if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, arg)=
) {
> > > +             err =3D -errno;
> > > +             igt_assume(err);
> > > +     }
> > > +
> > > +     errno =3D 0;
> > > +     return err;
> > > +}
> > =

> > This helper looks like pretty standard for me.  Why there are no librar=
y =

> > functions for such generic operations?
> =

> Because no one has written that yet.
> =

> > =

> > > +
> > > +static void test_create(int i915)
> > > +{
> > > +     struct drm_i915_gem_context_create_ext_setparam p =3D {
> > > +             .base =3D {
> > > +                     .name =3D I915_CONTEXT_CREATE_EXT_SETPARAM,
> > > +                     .next_extension =3D 0, /* end of chain */
> > > +             },
> > > +             .param =3D {
> > > +                     .param =3D I915_CONTEXT_PARAM_RINGSIZE,
> > > +                     .value =3D 512 << 10,
> > > +             }
> > > +     };
> > > +     struct drm_i915_gem_context_create_ext create =3D {
> > > +             .flags =3D I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
> > > +             .extensions =3D to_user_pointer(&p),
> > > +     };
> > > +
> > > +     igt_assert_eq(create_ext_ioctl(i915, &create),  0);
> > > +
> > > +     p.param.ctx_id =3D create.ctx_id;
> > > +     p.param.value =3D 0;
> > > +     gem_context_get_param(i915, &p.param);
> > > +     igt_assert_eq(p.param.value, 512 << 10);
> > > +
> > > +     gem_context_destroy(i915, create.ctx_id);
> > > +}
> > > +
> > > +static void test_clone(int i915)
> > > +{
> > > +     struct drm_i915_gem_context_create_ext_setparam p =3D {
> > > +             .base =3D {
> > > +                     .name =3D I915_CONTEXT_CREATE_EXT_SETPARAM,
> > > +                     .next_extension =3D 0, /* end of chain */
> > > +             },
> > > +             .param =3D {
> > > +                     .param =3D I915_CONTEXT_PARAM_RINGSIZE,
> > > +                     .value =3D 512 << 10,
> > > +             }
> > > +     };
> > > +     struct drm_i915_gem_context_create_ext create =3D {
> > > +             .flags =3D I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
> > > +             .extensions =3D to_user_pointer(&p),
> > > +     };
> > > +
> > > +     igt_assert_eq(create_ext_ioctl(i915, &create),  0);
> > > +
> > > +     p.param.ctx_id =3D gem_context_clone(i915, create.ctx_id,
> > > +                                        I915_CONTEXT_CLONE_ENGINES, =
0);
> > > +     igt_assert_neq(p.param.ctx_id, create.ctx_id);
> > > +     gem_context_destroy(i915, create.ctx_id);
> > > +
> > > +     p.param.value =3D 0;
> > > +     gem_context_get_param(i915, &p.param);
> > > +     igt_assert_eq(p.param.value, 512 << 10);
> > > +
> > > +     gem_context_destroy(i915, p.param.ctx_id);
> > > +}
> > > +
> > > +static int __execbuf(int i915, struct drm_i915_gem_execbuffer2 *exec=
buf)
> > > +{
> > > +     int err;
> > > +
> > > +     err =3D 0;
> > > +     if (ioctl(i915, DRM_IOCTL_I915_GEM_EXECBUFFER2, execbuf))
> > > +             err =3D -errno;
> > > +
> > > +     errno =3D 0;
> > > +     return err;
> > > +}
> > =

> > The above helper looks pretty the same as lib/ioctlwrappers.c:__gem_exe=
cbuf().  =

> > Does igt_assume(err) found in the latter matter so much that you use yo=
ur own =

> > version?
> =

> It's very, very different from that one.
> =

> > > +
> > > +static uint32_t __batch_create(int i915, uint32_t offset)
> > =

> > This is always called with offset =3D 0, do we expect other values to b=
e used =

> > later?
> =

> Why not.
>  =

> > > +{
> > > +     const uint32_t bbe =3D 0xa << 23;
> > > +     uint32_t handle;
> > > +
> > > +     handle =3D gem_create(i915, ALIGN(offset + sizeof(bbe), 4096));
> > =

> > Why don't we rely on the driver making the alignment for us?
> =

> I'm used to being inside the kernel where it's expected to be correct.
> =

> > > +     gem_write(i915, handle, offset, &bbe, sizeof(bbe));
> > > +
> > > +     return handle;
> > > +}
> > > +
> > > +static uint32_t batch_create(int i915)
> > > +{
> > > +     return __batch_create(i915, 0);
> > > +}
> > > +
> > > +static unsigned int measure_inflight(int i915, unsigned int engine)
> > > +{
> > > +     IGT_CORK_FENCE(cork);
> > > +     struct drm_i915_gem_exec_object2 obj =3D {
> > > +             .handle =3D batch_create(i915)
> > > +     };
> > > +     struct drm_i915_gem_execbuffer2 execbuf =3D {
> > > +             .buffers_ptr =3D to_user_pointer(&obj),
> > > +             .buffer_count =3D 1,
> > > +             .flags =3D engine | I915_EXEC_FENCE_IN,
> > > +             .rsvd2 =3D igt_cork_plug(&cork, i915),
> > > +     };
> > > +     unsigned int count;
> > > +
> > > +     fcntl(i915, F_SETFL, fcntl(i915, F_GETFL) | O_NONBLOCK);
> > > +
> > > +     gem_execbuf(i915, &execbuf);
> > > +     for (count =3D 1; __execbuf(i915, &execbuf) =3D=3D 0; count++)
> > > +             ;
> > =

> > Shouldn't we check if the reason for the failure is what we expect, i.e=
., =

> > -EWOULDBLOCK (or -EINTR)?  And why don't we put a time constraint on th=
at loop =

> > in case O_NONBLOCK handling is not supported (yet)?
> =

> Sure. The idea is that O_NONBLOCK is supported, otherwise we don't
> have fast and precise feedback.
> =

> > > +static void test_resize(int i915,
> > > +                     const struct intel_execution_engine2 *e,
> > > +                     unsigned int flags)
> > > +#define IDLE (1 << 0)
> > > +{
> > > +     struct drm_i915_gem_context_param p =3D {
> > > +             .param =3D I915_CONTEXT_PARAM_RINGSIZE,
> > > +     };
> > > +     unsigned int prev[2] =3D {};
> > > +     uint32_t saved;
> > > +
> > > +     gem_context_get_param(i915, &p);
> > > +     saved =3D p.value;
> > > +
> > > +     gem_quiescent_gpu(i915);
> > > +     for (p.value =3D 1 << 12; p.value <=3D 128 << 12; p.value <<=3D=
 1) {
> > > +             unsigned int count;
> > > +
> > > +             gem_context_set_param(i915, &p);
> > > +
> > > +             count =3D measure_inflight(i915, e->flags);
> > > +             igt_info("%s: %llx -> %d\n", e->name, p.value, count);
> > > +             igt_assert(count > 3 * (prev[1] - prev[0]) / 4 + prev[1=
]);
> > =

> > Where does this formula come from?  Why not just count =3D=3D 2 * prev[=
1] ?
> > What results should we expect in "active" vs. "idle" mode?
> =

> I've explained somewhere why it is not 2*prev... And there's a small
> amount of imprecision (+-1 request). In test_resize is the comment:
> =

>         /*
>          * The ringsize directly affects the number of batches we can have
>          * inflight -- when we run out of room in the ring, the client is
>          * blocked (or if O_NONBLOCK is specified, -EWOULDBLOCK is report=
ed).
>          * The kernel throttles the client when they enter the last 4KiB =
page,
>          * so as we double the size of the ring, we nearly double the num=
ber
>          * of requests we can fit as 2^n-1: i.e 0, 1, 3, 7, 15, 31 pages.
>          */
> =

> -Chris
> =





_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
