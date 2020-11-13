Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 266BF2B252D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 21:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF416E5C6;
	Fri, 13 Nov 2020 20:12:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 814EF6E5C6;
 Fri, 13 Nov 2020 20:12:42 +0000 (UTC)
IronPort-SDR: kKj/NGiptkfQgncDk/5uJ0Q4yEElF46CXGZP95WMSbiOcXT2ppVIX2hUt9mnBqWbqqvPWaRRHk
 SKGy5BIYvFyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="158305561"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="158305561"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 12:12:41 -0800
IronPort-SDR: mXSq9GPuNXO1f3hVwRByB/n8sjwqY4CRYTQ/Pv6OM+kOVAe2d28hsrgIIv6T47rVYlQJQhRDe6
 nDobZ3HHNPEA==
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="324096609"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 12:12:41 -0800
Date: Fri, 13 Nov 2020 12:12:35 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201113201235.GA54749@orsosgc001.ra.intel.com>
References: <20201113164340.1430848-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113164340.1430848-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915: Increase engine[] to
 fit the entire RING_MASK
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 13, 2020 at 04:43:40PM +0000, Chris Wilson wrote:
>As a stepping stone, increase the assumed 16 engines is enough for
>everyone, to cover the current RING_MASK, the maximum number of engines
>that can currently be selected during execbuf.
>
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Regards,
Umesh

>---
> tests/i915/gem_busy.c          | 2 +-
> tests/i915/gem_ctx_create.c    | 6 +++---
> tests/i915/gem_ctx_shared.c    | 2 +-
> tests/i915/gem_ctx_thrash.c    | 4 ++--
> tests/i915/gem_eio.c           | 4 ++--
> tests/i915/gem_exec_create.c   | 2 +-
> tests/i915/gem_exec_fence.c    | 6 +++---
> tests/i915/gem_exec_gttfill.c  | 2 +-
> tests/i915/gem_exec_latency.c  | 4 ++--
> tests/i915/gem_exec_parallel.c | 6 +++---
> tests/i915/gem_exec_reloc.c    | 2 +-
> tests/i915/gem_exec_suspend.c  | 2 +-
> tests/i915/gem_exec_whisper.c  | 2 +-
> tests/i915/gem_shrink.c        | 2 +-
> tests/i915/i915_module_load.c  | 5 +++--
> 15 files changed, 26 insertions(+), 25 deletions(-)
>
>diff --git a/tests/i915/gem_busy.c b/tests/i915/gem_busy.c
>index ee6a5ca0e..435f30d7b 100644
>--- a/tests/i915/gem_busy.c
>+++ b/tests/i915/gem_busy.c
>@@ -233,8 +233,8 @@ static void close_race(int fd)
> {
> 	const unsigned int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
> 	const unsigned int nhandles = gem_submission_measure(fd, ALL_ENGINES);
>+	unsigned int engines[I915_EXEC_RING_MASK + 1], nengine;
> 	const struct intel_execution_engine2 *e;
>-	unsigned int engines[16], nengine;
> 	unsigned long *control;
> 	uint32_t *handles;
> 	int i;
>diff --git a/tests/i915/gem_ctx_create.c b/tests/i915/gem_ctx_create.c
>index c7295f705..9a512a03b 100644
>--- a/tests/i915/gem_ctx_create.c
>+++ b/tests/i915/gem_ctx_create.c
>@@ -37,10 +37,10 @@
>
> #define ENGINE_FLAGS  (I915_EXEC_RING_MASK | I915_EXEC_BSD_MASK)
>
>-static unsigned all_engines[16];
>+static unsigned all_engines[I915_EXEC_RING_MASK + 1];
> static unsigned all_nengine;
>
>-static unsigned ppgtt_engines[16];
>+static unsigned ppgtt_engines[I915_EXEC_RING_MASK + 1];
> static unsigned ppgtt_nengine;
>
> static int create_ioctl(int fd, struct drm_i915_gem_context_create *arg)
>@@ -131,7 +131,7 @@ static void active(int fd, const struct intel_execution_engine2 *e,
> 	const uint32_t bbe = MI_BATCH_BUFFER_END;
> 	struct drm_i915_gem_execbuffer2 execbuf;
> 	struct drm_i915_gem_exec_object2 obj;
>-	unsigned int nengine, engines[16];
>+	unsigned int nengine, engines[ARRAY_SIZE(all_engines)];
> 	unsigned *shared;
> 	/* When e is NULL, test would run for all engines */
> 	if (!e) {
>diff --git a/tests/i915/gem_ctx_shared.c b/tests/i915/gem_ctx_shared.c
>index 616462d79..6ad721dcd 100644
>--- a/tests/i915/gem_ctx_shared.c
>+++ b/tests/i915/gem_ctx_shared.c
>@@ -740,7 +740,7 @@ static void promotion(int i915, unsigned ring)
> static void smoketest(int i915, unsigned ring, unsigned timeout)
> {
> 	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
>-	unsigned engines[16];
>+	unsigned engines[I915_EXEC_RING_MASK + 1];
> 	unsigned nengine;
> 	unsigned engine;
> 	uint32_t scratch;
>diff --git a/tests/i915/gem_ctx_thrash.c b/tests/i915/gem_ctx_thrash.c
>index d9ddd6689..142bb65f3 100644
>--- a/tests/i915/gem_ctx_thrash.c
>+++ b/tests/i915/gem_ctx_thrash.c
>@@ -92,7 +92,7 @@ static void single(const char *name, bool all_engines)
> {
> 	struct drm_i915_gem_exec_object2 *obj;
> 	struct drm_i915_gem_relocation_entry *reloc;
>-	unsigned int engines[16], num_engines, num_ctx;
>+	unsigned int engines[I915_EXEC_RING_MASK + 1], num_engines, num_ctx;
> 	uint32_t *ctx, *map, scratch, size;
> 	int fd, gen;
> #define MAX_LOOP 16
>@@ -220,7 +220,7 @@ static void single(const char *name, bool all_engines)
>
> static void processes(void)
> {
>-	unsigned engines[16];
>+	unsigned engines[I915_EXEC_RING_MASK + 1];
> 	int num_engines;
> 	struct rlimit rlim;
> 	unsigned num_ctx;
>diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
>index c5ef61bd4..cc5ab2b83 100644
>--- a/tests/i915/gem_eio.c
>+++ b/tests/i915/gem_eio.c
>@@ -694,11 +694,11 @@ static void test_inflight_external(int fd)
>
> static void test_inflight_internal(int fd, unsigned int wait)
> {
>+	const uint32_t bbe = MI_BATCH_BUFFER_END;
> 	struct drm_i915_gem_execbuffer2 execbuf;
> 	struct drm_i915_gem_exec_object2 obj[2];
>-	uint32_t bbe = MI_BATCH_BUFFER_END;
>+	int fences[I915_EXEC_RING_MASK + 1];
> 	unsigned nfence = 0;
>-	int fences[16];
> 	igt_spin_t *hang;
>
> 	igt_require(gem_has_exec_fence(fd));
>diff --git a/tests/i915/gem_exec_create.c b/tests/i915/gem_exec_create.c
>index ee7d4e5d8..94c21a6be 100644
>--- a/tests/i915/gem_exec_create.c
>+++ b/tests/i915/gem_exec_create.c
>@@ -57,7 +57,7 @@ static void all(int fd, unsigned flags, int timeout, int ncpus)
> 	const uint32_t bbe = MI_BATCH_BUFFER_END;
> 	struct drm_i915_gem_execbuffer2 execbuf;
> 	struct drm_i915_gem_exec_object2 obj;
>-	unsigned engines[16], nengine;
>+	unsigned engines[I915_EXEC_RING_MASK + 1], nengine;
>
> 	nengine = 0;
> 	for_each_physical_engine(e, fd)
>diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
>index 56469ebab..6eea050d8 100644
>--- a/tests/i915/gem_exec_fence.c
>+++ b/tests/i915/gem_exec_fence.c
>@@ -881,7 +881,7 @@ static void test_long_history(int fd, long ring_size, unsigned flags)
> 	const uint32_t bbe = MI_BATCH_BUFFER_END;
> 	struct drm_i915_gem_exec_object2 obj[2];
> 	struct drm_i915_gem_execbuffer2 execbuf;
>-	unsigned int engines[16], nengine, n, s;
>+	unsigned int engines[I915_EXEC_RING_MASK + 1], nengine, n, s;
> 	unsigned long limit;
> 	int all_fences;
> 	IGT_CORK_HANDLE(c);
>@@ -1224,8 +1224,8 @@ static void test_syncobj_wait(int fd)
> 	struct drm_i915_gem_exec_fence fence = {
> 		.handle = syncobj_create(fd, 0),
> 	};
>+	unsigned handle[I915_EXEC_RING_MASK + 1];
> 	igt_spin_t *spin;
>-	unsigned handle[16];
> 	int n;
>
> 	/* Check that we can use the syncobj to asynchronous wait prior to
>@@ -1976,9 +1976,9 @@ static void test_syncobj_timeline_wait(int fd)
> 	struct drm_i915_gem_exec_fence fence = {
> 		.handle = syncobj_create(fd, 0),
> 	};
>+	unsigned handle[I915_EXEC_RING_MASK + 1];
> 	uint64_t value = 1;
> 	igt_spin_t *spin;
>-	unsigned handle[16];
> 	int n;
>
> 	/* Check that we can use the syncobj to asynchronous wait prior to
>diff --git a/tests/i915/gem_exec_gttfill.c b/tests/i915/gem_exec_gttfill.c
>index 8f2336a30..1ba5e9a32 100644
>--- a/tests/i915/gem_exec_gttfill.c
>+++ b/tests/i915/gem_exec_gttfill.c
>@@ -110,9 +110,9 @@ static void fillgtt(int fd, unsigned ring, int timeout)
> 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
> 	struct drm_i915_gem_execbuffer2 execbuf;
> 	struct drm_i915_gem_relocation_entry reloc[2];
>+	unsigned engines[I915_EXEC_RING_MASK + 1];
> 	volatile uint64_t *shared;
> 	struct batch *batches;
>-	unsigned engines[16];
> 	unsigned nengine;
> 	unsigned count;
> 	uint64_t size;
>diff --git a/tests/i915/gem_exec_latency.c b/tests/i915/gem_exec_latency.c
>index 4de38288f..6c5a4bc6f 100644
>--- a/tests/i915/gem_exec_latency.c
>+++ b/tests/i915/gem_exec_latency.c
>@@ -464,8 +464,8 @@ rthog_latency_on_ring(int fd, unsigned int engine, const char *name, unsigned in
> 		.flags = IGT_SPIN_POLL_RUN | IGT_SPIN_FAST,
> 	};
> 	struct rt_pkt *results;
>-	unsigned int engines[16];
>-	const char *names[16];
>+	unsigned int engines[I915_EXEC_RING_MASK + 1];
>+	const char *names[ARRAY_SIZE(engines)];
> 	unsigned int nengine;
> 	int ret;
>
>diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
>index 1a988b957..d3dd06a65 100644
>--- a/tests/i915/gem_exec_parallel.c
>+++ b/tests/i915/gem_exec_parallel.c
>@@ -192,11 +192,11 @@ static void handle_close(int fd, unsigned int flags, uint32_t handle, void *data
> static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
> {
> 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>+	unsigned engines[I915_EXEC_RING_MASK + 1], nengine;
>+	uint32_t scratch[NUMOBJ], handle[NUMOBJ];
>+	struct thread *threads;
> 	pthread_mutex_t mutex;
> 	pthread_cond_t cond;
>-	struct thread *threads;
>-	uint32_t scratch[NUMOBJ], handle[NUMOBJ];
>-	unsigned engines[16], nengine;
> 	void *arg[NUMOBJ];
> 	int go;
> 	int i;
>diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
>index 973499ebc..8dcb24a67 100644
>--- a/tests/i915/gem_exec_reloc.c
>+++ b/tests/i915/gem_exec_reloc.c
>@@ -270,7 +270,7 @@ static void active(int fd, unsigned engine)
> 	struct drm_i915_gem_relocation_entry reloc;
> 	struct drm_i915_gem_exec_object2 obj[2];
> 	struct drm_i915_gem_execbuffer2 execbuf;
>-	unsigned engines[16];
>+	unsigned engines[I915_EXEC_RING_MASK + 1];
> 	unsigned nengine;
> 	int pass;
>
>diff --git a/tests/i915/gem_exec_suspend.c b/tests/i915/gem_exec_suspend.c
>index 6886bccd4..8c5661db9 100644
>--- a/tests/i915/gem_exec_suspend.c
>+++ b/tests/i915/gem_exec_suspend.c
>@@ -94,7 +94,7 @@ static void run_test(int fd, unsigned engine, unsigned flags)
> 	struct drm_i915_gem_exec_object2 obj[2];
> 	struct drm_i915_gem_relocation_entry reloc;
> 	struct drm_i915_gem_execbuffer2 execbuf;
>-	unsigned engines[16];
>+	unsigned engines[I915_EXEC_RING_MASK + 1];
> 	unsigned nengine;
> 	igt_spin_t *spin = NULL;
>
>diff --git a/tests/i915/gem_exec_whisper.c b/tests/i915/gem_exec_whisper.c
>index b63d791d1..29d6c6d2f 100644
>--- a/tests/i915/gem_exec_whisper.c
>+++ b/tests/i915/gem_exec_whisper.c
>@@ -175,10 +175,10 @@ static void whisper(int fd, unsigned engine, unsigned flags)
> 	struct drm_i915_gem_exec_object2 store, scratch;
> 	struct drm_i915_gem_exec_object2 tmp[2];
> 	struct drm_i915_gem_execbuffer2 execbuf;
>+	unsigned engines[I915_EXEC_RING_MASK + 1];
> 	struct hang hang;
> 	int fds[64];
> 	uint32_t contexts[64];
>-	unsigned engines[16];
> 	unsigned nengine;
> 	uint32_t batch[16];
> 	unsigned int relocations = 0;
>diff --git a/tests/i915/gem_shrink.c b/tests/i915/gem_shrink.c
>index 5715ef688..dba62c8fa 100644
>--- a/tests/i915/gem_shrink.c
>+++ b/tests/i915/gem_shrink.c
>@@ -37,7 +37,7 @@
> #define MADV_FREE 8
> #endif
>
>-static unsigned int engines[16], nengine;
>+static unsigned int engines[I915_EXEC_RING_MASK + 1], nengine;
>
> static void get_pages(int fd, uint64_t alloc)
> {
>diff --git a/tests/i915/i915_module_load.c b/tests/i915/i915_module_load.c
>index aa998b992..7767eb2b5 100644
>--- a/tests/i915/i915_module_load.c
>+++ b/tests/i915/i915_module_load.c
>@@ -103,10 +103,11 @@ static void store_dword(int fd, unsigned ring)
> static void store_all(int fd)
> {
> 	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>+	unsigned int permuted[I915_EXEC_RING_MASK + 1];
>+	unsigned int engines[I915_EXEC_RING_MASK + 1];
> 	struct drm_i915_gem_exec_object2 obj[2];
>-	struct drm_i915_gem_relocation_entry reloc[32];
>+	struct drm_i915_gem_relocation_entry reloc[2 * ARRAY_SIZE(engines)];
> 	struct drm_i915_gem_execbuffer2 execbuf;
>-	unsigned engines[16], permuted[16];
> 	uint32_t batch[16];
> 	uint64_t offset;
> 	unsigned nengine;
>-- 
>2.29.2
>
>_______________________________________________
>igt-dev mailing list
>igt-dev@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
