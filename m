Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBAC167F66
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 14:57:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E6F6F44C;
	Fri, 21 Feb 2020 13:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589026F44C;
 Fri, 21 Feb 2020 13:57:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 05:57:34 -0800
X-IronPort-AV: E=Sophos;i="5.70,468,1574150400"; d="scan'208";a="229856014"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 05:57:33 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 21 Feb 2020 14:57:26 +0100
Message-ID: <1959904.mUKtKn5uA7@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20200221094321.2534304-1-chris@chris-wilson.co.uk>
References: <20200221094321.2534304-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Exercise
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

On Friday, February 21, 2020 10:43:21 AM CET Chris Wilson wrote:
> I915_CONTEXT_PARAM_RINGSIZE specifies how large to create the command
> ringbuffer for logical ring contects. This directly affects the number

s/contects/contexts/

> of batches userspace can submit before blocking waiting for space.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/Makefile.sources        |   3 +
>  tests/i915/gem_ctx_ringsize.c | 334 ++++++++++++++++++++++++++++++++++
>  tests/meson.build             |   1 +
>  3 files changed, 338 insertions(+)
>  create mode 100644 tests/i915/gem_ctx_ringsize.c
> =

> diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> index b87d6333b..76cf99da5 100644
> --- a/tests/Makefile.sources
> +++ b/tests/Makefile.sources
> @@ -163,6 +163,9 @@ gem_ctx_param_SOURCES =3D i915/gem_ctx_param.c
>  TESTS_progs +=3D gem_ctx_persistence
>  gem_ctx_persistence_SOURCES =3D i915/gem_ctx_persistence.c
>  =

> +TESTS_progs +=3D gem_ctx_ringsize
> +gem_ctx_ringsize_SOURCES =3D i915/gem_ctx_ringsize.c
> +
>  TESTS_progs +=3D gem_ctx_shared
>  gem_ctx_shared_SOURCES =3D i915/gem_ctx_shared.c
>  =

> diff --git a/tests/i915/gem_ctx_ringsize.c b/tests/i915/gem_ctx_ringsize.c
> new file mode 100644
> index 000000000..c377ac076
> --- /dev/null
> +++ b/tests/i915/gem_ctx_ringsize.c
> @@ -0,0 +1,334 @@
> +/*
> + * Copyright =A9 2019 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER D=
EALINGS
> + * IN THE SOFTWARE.
> + */
> +
> +#include <errno.h>
> +#include <fcntl.h>
> +#include <inttypes.h>
> +#include <math.h>
> +#include <sys/ioctl.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +
> +#include "drmtest.h" /* gem_quiescent_gpu()! */
> +#include "i915/gem_context.h"
> +#include "i915/gem_engine_topology.h"
> +#include "ioctl_wrappers.h" /* gem_wait()! */
> +#include "sw_sync.h"
> +
> +#define I915_CONTEXT_PARAM_RINGSIZE 0xc
> +
> +static bool has_ringsize(int i915)
> +{
> +	struct drm_i915_gem_context_param p =3D {
> +		.param =3D I915_CONTEXT_PARAM_RINGSIZE,
> +	};
> +
> +	return __gem_context_get_param(i915, &p) =3D=3D 0;
> +}
> +
> +static void test_idempotent(int i915)
> +{
> +	struct drm_i915_gem_context_param p =3D {
> +		.param =3D I915_CONTEXT_PARAM_RINGSIZE,
> +	};
> +	uint32_t saved;
> +
> +	/*
> +	 * Simple test to verify that we are able to read back the same
> +	 * value as we set.
> +	 */
> +
> +	gem_context_get_param(i915, &p);
> +	saved =3D p.value;
> +
> +	for (uint32_t x =3D 1 << 12; x <=3D 128 << 12; x <<=3D 1) {
> +		p.value =3D x;
> +		gem_context_set_param(i915, &p);
> +		gem_context_get_param(i915, &p);
> +		igt_assert_eq_u32(p.value, x);
> +	}
> +
> +	p.value =3D saved;
> +	gem_context_set_param(i915, &p);
> +}
> +
> +static void test_invalid(int i915)
> +{
> +	struct drm_i915_gem_context_param p =3D {
> +		.param =3D I915_CONTEXT_PARAM_RINGSIZE,
> +	};
> +	uint64_t invalid[] =3D {
> +		0, 1, 4095, 4097, 8191, 8193,
> +		/* upper limit may be HW dependent, atm it is 512KiB */
> +		(512 << 10) - 1, (512 << 10) + 1,
> +		-1, -1u
> +	};
> +	uint32_t saved;
> +
> +	/*
> +	 * The HW only accepts certain aligned values and so we reject
> +	 * any invalid sizes specified by the user.
> +	 *
> +	 * Currently, the HW only accepts 4KiB - 512KiB in 4K increments,
> +	 * and is unlikely to ever accept smaller.
> +	 */
> +
> +	gem_context_get_param(i915, &p);
> +	saved =3D p.value;
> +
> +	for (int i =3D 0; i < ARRAY_SIZE(invalid); i++) {
> +		p.value =3D invalid[i];
> +		igt_assert_eq(__gem_context_set_param(i915, &p), -EINVAL);
> +		gem_context_get_param(i915, &p);
> +		igt_assert_eq_u64(p.value, saved);
> +	}
> +}
> +
> +static int create_ext_ioctl(int i915,
> +			    struct drm_i915_gem_context_create_ext *arg)
> +{
> +	int err;
> +
> +	err =3D 0;
> +	if (igt_ioctl(i915, DRM_IOCTL_I915_GEM_CONTEXT_CREATE_EXT, arg)) {
> +		err =3D -errno;
> +		igt_assume(err);
> +	}
> +
> +	errno =3D 0;
> +	return err;
> +}
> +
> +static void test_create(int i915)
> +{
> +	struct drm_i915_gem_context_create_ext_setparam p =3D {
> +		.base =3D {
> +			.name =3D I915_CONTEXT_CREATE_EXT_SETPARAM,
> +			.next_extension =3D 0, /* end of chain */
> +		},
> +		.param =3D {
> +			.param =3D I915_CONTEXT_PARAM_RINGSIZE,
> +			.value =3D 512 << 10,
> +		}
> +	};
> +	struct drm_i915_gem_context_create_ext create =3D {
> +		.flags =3D I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
> +		.extensions =3D to_user_pointer(&p),
> +	};
> +
> +	/*
> +	 * Check that the ringsize parameter is used during context constuction.
> +	 */
> +
> +	igt_assert_eq(create_ext_ioctl(i915, &create),  0);
> +
> +	p.param.ctx_id =3D create.ctx_id;
> +	p.param.value =3D 0;
> +	gem_context_get_param(i915, &p.param);
> +	igt_assert_eq(p.param.value, 512 << 10);
> +
> +	gem_context_destroy(i915, create.ctx_id);
> +}
> +
> +static void test_clone(int i915)
> +{
> +	struct drm_i915_gem_context_create_ext_setparam p =3D {
> +		.base =3D {
> +			.name =3D I915_CONTEXT_CREATE_EXT_SETPARAM,
> +			.next_extension =3D 0, /* end of chain */
> +		},
> +		.param =3D {
> +			.param =3D I915_CONTEXT_PARAM_RINGSIZE,
> +			.value =3D 512 << 10,
> +		}
> +	};
> +	struct drm_i915_gem_context_create_ext create =3D {
> +		.flags =3D I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS,
> +		.extensions =3D to_user_pointer(&p),
> +	};
> +
> +	/*
> +	 * Check that the ringsize is copied across during context cloning.
> +	 */
> +
> +	igt_assert_eq(create_ext_ioctl(i915, &create),  0);
> +
> +	p.param.ctx_id =3D gem_context_clone(i915, create.ctx_id,
> +					   I915_CONTEXT_CLONE_ENGINES, 0);
> +	igt_assert_neq(p.param.ctx_id, create.ctx_id);
> +	gem_context_destroy(i915, create.ctx_id);
> +
> +	p.param.value =3D 0;
> +	gem_context_get_param(i915, &p.param);
> +	igt_assert_eq(p.param.value, 512 << 10);
> +
> +	gem_context_destroy(i915, p.param.ctx_id);
> +}
> +
> +static int __execbuf(int i915, struct drm_i915_gem_execbuffer2 *execbuf)
> +{
> +	int err;
> +
> +	err =3D 0;
> +	if (ioctl(i915, DRM_IOCTL_I915_GEM_EXECBUFFER2, execbuf)) {
> +		err =3D -errno;
> +		igt_assume(err);
> +	}
> +
> +	errno =3D 0;
> +	return err;
> +}
> +
> +static uint32_t __batch_create(int i915, uint32_t offset)
> +{
> +	const uint32_t bbe =3D 0xa << 23;
> +	uint32_t handle;
> +
> +	handle =3D gem_create(i915, offset + sizeof(bbe));
> +	gem_write(i915, handle, offset, &bbe, sizeof(bbe));
> +
> +	return handle;
> +}
> +
> +static uint32_t batch_create(int i915)
> +{
> +	return __batch_create(i915, 0);
> +}
> +
> +static unsigned int measure_inflight(int i915, unsigned int engine, int =
timeout)
> +{
> +	IGT_CORK_FENCE(cork);
> +	struct drm_i915_gem_exec_object2 obj =3D {
> +		.handle =3D batch_create(i915)
> +	};
> +	struct drm_i915_gem_execbuffer2 execbuf =3D {
> +		.buffers_ptr =3D to_user_pointer(&obj),
> +		.buffer_count =3D 1,
> +		.flags =3D engine | I915_EXEC_FENCE_IN,
> +		.rsvd2 =3D igt_cork_plug(&cork, i915),
> +	};
> +	unsigned int count;
> +	int err;
> +
> +	fcntl(i915, F_SETFL, fcntl(i915, F_GETFL) | O_NONBLOCK);
> +	igt_set_timeout(timeout, "execbuf blocked!");
> +
> +	gem_execbuf(i915, &execbuf);
> +	for (count =3D 1; (err =3D __execbuf(i915, &execbuf)) =3D=3D 0; count++)
> +		;
> +	igt_assert_eq(err, -EWOULDBLOCK);
> +	close(execbuf.rsvd2);
> +
> +	igt_reset_timeout();

Why not right after the 'for' loop is exited?  Don't we unnecessarily risk =

a race condition?

Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Thanks,
Janusz


> +	fcntl(i915, F_SETFL, fcntl(i915, F_GETFL) & ~O_NONBLOCK);
> +
> +	igt_cork_unplug(&cork);
> +	gem_close(i915, obj.handle);
> +
> +	return count;
> +}
> +
> +static void test_resize(int i915,
> +			const struct intel_execution_engine2 *e,
> +			unsigned int flags)
> +#define IDLE (1 << 0)
> +{
> +	struct drm_i915_gem_context_param p =3D {
> +		.param =3D I915_CONTEXT_PARAM_RINGSIZE,
> +	};
> +	unsigned int prev[2] =3D {};
> +	uint64_t elapsed;
> +	uint32_t saved;
> +
> +	/*
> +	 * The ringsize directly affects the number of batches we can have
> +	 * inflight -- when we run out of room in the ring, the client is
> +	 * blocked (or if O_NONBLOCK is specified, -EWOULDBLOCK is reported).
> +	 * The kernel throttles the client when they enter the last 4KiB page,
> +	 * so as we double the size of the ring, we nearly double the number
> +	 * of requests we can fit as 2^n-1: i.e 0, 1, 3, 7, 15, 31 pages.
> +	 */
> +
> +	gem_context_get_param(i915, &p);
> +	saved =3D p.value;
> +
> +	elapsed =3D 0;
> +	gem_quiescent_gpu(i915);
> +	for (p.value =3D 1 << 12; p.value <=3D 128 << 12; p.value <<=3D 1) {
> +		struct timespec tv =3D {};
> +		unsigned int count;
> +
> +		gem_context_set_param(i915, &p);
> +
> +		igt_nsec_elapsed(&tv);
> +		count =3D measure_inflight(i915, e->flags, 1 + ceil(2 * elapsed*1e-9));
> +		elapsed =3D igt_nsec_elapsed(&tv);
> +
> +		igt_info("%s: %llx -> %d\n", e->name, p.value, count);
> +		igt_assert(count > 3 * (prev[1] - prev[0]) / 4 + prev[1]);
> +		if (flags & IDLE)
> +			gem_quiescent_gpu(i915);
> +
> +		prev[0] =3D prev[1];
> +		prev[1] =3D count;
> +	}
> +	gem_quiescent_gpu(i915);
> +
> +	p.value =3D saved;
> +	gem_context_set_param(i915, &p);
> +}
> +
> +igt_main
> +{
> +	const struct intel_execution_engine2 *e;
> +	int i915;
> +
> +	igt_fixture {
> +		i915 =3D drm_open_driver(DRIVER_INTEL);
> +		igt_require_gem(i915);
> +
> +		igt_require(has_ringsize(i915));
> +	}
> +
> +	igt_subtest("idempotent")
> +		test_idempotent(i915);
> +
> +	igt_subtest("invalid")
> +		test_invalid(i915);
> +
> +	igt_subtest("create")
> +		test_create(i915);
> +	igt_subtest("clone")
> +		test_clone(i915);
> +
> +	__for_each_physical_engine(i915, e) {
> +		igt_subtest_f("%s-idle", e->name)
> +			test_resize(i915, e, IDLE);
> +		igt_subtest_f("%s-active", e->name)
> +			test_resize(i915, e, 0);
> +	}
> +
> +	igt_fixture {
> +		close(i915);
> +	}
> +}
> diff --git a/tests/meson.build b/tests/meson.build
> index fa0103e3a..c940e85b0 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -124,6 +124,7 @@ i915_progs =3D [
>  	'gem_ctx_isolation',
>  	'gem_ctx_param',
>  	'gem_ctx_persistence',
> +	'gem_ctx_ringsize',
>  	'gem_ctx_shared',
>  	'gem_ctx_switch',
>  	'gem_ctx_thrash',
> =





_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
