Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3DA210B1C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 14:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C1CF6E8B9;
	Wed,  1 Jul 2020 12:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADDBE6E8AE;
 Wed,  1 Jul 2020 12:39:26 +0000 (UTC)
IronPort-SDR: FR2OpD9ZgiOZNtEulhusVcBb2GVaZeeN/nmpcuh/rou3JEeEuXX+etN9Oa1ltjKly0ILnoS69W
 tO19oGp1BI7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="211614022"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="211614022"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 05:39:25 -0700
IronPort-SDR: 3Crn9PqcUvU7Pa9GONA+OaVNeYzeQMPvXKGuaY8gTRTXUCgtdb0sejj3mBhQszRAKYzKxjsFCh
 wMqbnKhWfAjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="266756980"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2020 05:39:25 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 05:39:24 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 Jul 2020 05:39:24 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.74]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.142]) with mapi id 14.03.0439.000;
 Wed, 1 Jul 2020 05:39:24 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] i915/gem_close_race: Mix in a contexts and a
 small delay to closure
Thread-Index: AQHWTyT3g/GAMxrCLkCPLVbw2IvHcajyqfeg
Date: Wed, 1 Jul 2020 12:39:22 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663011E8636D8@fmsmsx107.amr.corp.intel.com>
References: <20200630212515.1132791-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200630212515.1132791-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_close_race: Mix in a
 contexts and a small delay to closure
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>-----Original Message-----
>From: Chris Wilson <chris@chris-wilson.co.uk>
>Sent: Tuesday, June 30, 2020 5:25 PM
>To: intel-gfx@lists.freedesktop.org
>Cc: igt-dev@lists.freedesktop.org; Chris Wilson <chris@chris-wilson.co.uk>;
>Ruhl, Michael J <michael.j.ruhl@intel.com>
>Subject: [PATCH i-g-t] i915/gem_close_race: Mix in a contexts and a small
>delay to closure
>
>Keep the old handles in a small ring so that we build up a small amount
>of pressure for i915_gem_close_object() and throw in a few concurrent
>contexts so we have to process an obj->lut_list containing more than one
>element. And to make sure the list is truly long enough to schedule,
>start leaking the contexts.
>
>Note that the only correctness check is that the selfcopy doesn't
>explode; the challenge would be to prove that the old handles are no
>longer accessible via the execbuf lut. However, this is sufficient to
>make sure we at least hit the interruptible spinlock used by
>close-objects.
>
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
>---
> tests/i915/gem_close_race.c | 68 +++++++++++++++++++++++++++++-------
>-
> 1 file changed, 53 insertions(+), 15 deletions(-)
>
>diff --git a/tests/i915/gem_close_race.c b/tests/i915/gem_close_race.c
>index db570e8fd..4b72d353c 100644
>--- a/tests/i915/gem_close_race.c
>+++ b/tests/i915/gem_close_race.c
>@@ -55,7 +55,7 @@ static bool has_64bit_relocations;
>
> #define sigev_notify_thread_id _sigev_un._tid
>
>-static void selfcopy(int fd, uint32_t handle, int loops)
>+static void selfcopy(int fd, uint32_t ctx, uint32_t handle, int loops)
> {
> 	struct drm_i915_gem_relocation_entry reloc[2];
> 	struct drm_i915_gem_exec_object2 gem_exec[2];
>@@ -113,6 +113,7 @@ static void selfcopy(int fd, uint32_t handle, int loops)
> 	execbuf.batch_len = (b - buf) * sizeof(*b);
> 	if (HAS_BLT_RING(devid))
> 		execbuf.flags |= I915_EXEC_BLT;
>+	execbuf.rsvd1 = ctx;
>
> 	memset(&gem_pwrite, 0, sizeof(gem_pwrite));
> 	gem_pwrite.handle = create.handle;
>@@ -135,7 +136,7 @@ static uint32_t load(int fd)
> 	if (handle == 0)
> 		return 0;
>
>-	selfcopy(fd, handle, 100);
>+	selfcopy(fd, 0, handle, 100);
> 	return handle;
> }
>
>@@ -165,14 +166,19 @@ static void crashme_now(int sig)
> #define usec(x) (1000*(x))
> #define msec(x) usec(1000*(x))
>
>-static void threads(int timeout)
>+static void thread(int fd, struct drm_gem_open name,
>+		   int timeout, unsigned int flags)
>+#define CONTEXTS 0x1
> {
> 	struct sigevent sev;
> 	struct sigaction act;
>-	struct drm_gem_open name;
> 	struct itimerspec its;
>+	uint32_t *history;
>+#define N_HISTORY (256)
> 	timer_t timer;
>-	int fd;
>+
>+	history = malloc(sizeof(*history) * N_HISTORY);
>+	igt_assert(history);
>
> 	memset(&act, 0, sizeof(act));
> 	act.sa_handler = crashme_now;
>@@ -184,28 +190,57 @@ static void threads(int timeout)
> 	sev.sigev_signo = SIGRTMIN;
> 	igt_assert(timer_create(CLOCK_MONOTONIC, &sev, &timer) == 0);
>
>-	fd = drm_open_driver(DRIVER_INTEL);
>-	name.name = gem_flink(fd, gem_create(fd, OBJECT_SIZE));
>-
> 	igt_until_timeout(timeout) {
>-		crashme.fd = drm_open_driver(DRIVER_INTEL);
>+		unsigned int n = 0;
>+
>+		memset(history, 0, sizeof(*history) * N_HISTORY);
>+
>+		crashme.fd = gem_reopen_driver(fd);
>
> 		memset(&its, 0, sizeof(its));
>-		its.it_value.tv_nsec = msec(1) + (rand() % msec(10));
>+		its.it_value.tv_nsec = msec(1) + (rand() % msec(150));
> 		igt_assert(timer_settime(timer, 0, &its, NULL) == 0);
>
> 		do {
>-			if (drmIoctl(crashme.fd, DRM_IOCTL_GEM_OPEN,
>&name))
>+			uint32_t ctx = 0;
>+
>+			if (drmIoctl(crashme.fd,
>+				     DRM_IOCTL_GEM_OPEN,
>+				     &name))
> 				break;
>
>-			selfcopy(crashme.fd, name.handle, 100);
>-			drmIoctl(crashme.fd, DRM_IOCTL_GEM_CLOSE,
>&name.handle);
>+			if (flags & CONTEXTS)
>+				__gem_context_create(crashme.fd, &ctx);
>+
>+			selfcopy(crashme.fd, ctx, name.handle, 1);
>+
>+			ctx = history[n % N_HISTORY];

Ahh this 'ctx' isn't really a context, it an unclosed handle.

So the difference is that you keep around N_HISTORY open handles and
the associated contexts (if requested) until the test is done.

And 256 is enough history?  Any concerns with faster CPU/GPUs?

Looks like a good way to stress things.

Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>

M


>+			if (ctx)
>+				drmIoctl(crashme.fd,
>+					 DRM_IOCTL_GEM_CLOSE,
>+					 &ctx);
>+			history[n % N_HISTORY] = name.handle;
>+			n++;
> 		} while (1);
>
> 		close(crashme.fd);
> 	}
>
> 	timer_delete(timer);
>+	free(history);
>+}
>+
>+static void threads(int timeout, unsigned int flags)
>+{
>+	struct drm_gem_open name;
>+	int fd;
>+
>+	fd = drm_open_driver(DRIVER_INTEL);
>+	name.name = gem_flink(fd, gem_create(fd, OBJECT_SIZE));
>+
>+	igt_fork(child, sysconf(_SC_NPROCESSORS_ONLN))
>+		thread(fd, name, timeout, flags);
>+	igt_waitchildren();
>
> 	gem_quiescent_gpu(fd);
> 	close(fd);
>@@ -233,7 +268,7 @@ igt_main
> 	}
>
> 	igt_subtest("basic-threads")
>-		threads(1);
>+		threads(1, 0);
>
> 	igt_subtest("process-exit") {
> 		igt_fork(child, 768)
>@@ -241,8 +276,11 @@ igt_main
> 		igt_waitchildren();
> 	}
>
>+	igt_subtest("contexts")
>+		threads(30, CONTEXTS);
>+
> 	igt_subtest("gem-close-race")
>-		threads(150);
>+		threads(150, 0);
>
> 	igt_fixture
> 	    igt_stop_hang_detector();
>--
>2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
