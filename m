Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16081137386
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 17:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E8146EA51;
	Fri, 10 Jan 2020 16:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246BB6EA50;
 Fri, 10 Jan 2020 16:26:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19836897-1500050 for multiple; Fri, 10 Jan 2020 16:26:12 +0000
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200110161627.GA26762@ideak-desk.fi.intel.com>
References: <20200109222300.1154999-1-chris@chris-wilson.co.uk>
 <20200110161627.GA26762@ideak-desk.fi.intel.com>
Message-ID: <157867357187.10140.13602735697460279700@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 Jan 2020 16:26:11 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] test/i915_pm_rc6_residency: Check we
 enter RC6 when mostly idle
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Imre Deak (2020-01-10 16:16:27)
> On Thu, Jan 09, 2020 at 10:23:00PM +0000, Chris Wilson wrote:
> > Long ago, we would only approach runtime-suspend if the GPU had been
> > idle (no userspace submissions) for a second or two. However, since
> > disabling automatic HW RC6 such a relaxed approach to runtime-suspend
> > caused us to never enter RC6 on the desktop and consume vast quantities
> > of power. Surmise this behaviour by setting up a background load that is
> > only active for ~1% of the time (so equivalent to a compositor that is
> > updating the clock every 50ms or so) and verify that we do continue to
> > enter RC6 between the GPU pulses.
> > 
> > References: https://gitlab.freedesktop.org/drm/intel/issues/614
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >  tests/Makefile.am                  |   1 +
> >  tests/i915/i915_pm_rc6_residency.c | 174 +++++++++++++++++++++++++++--
> >  tests/meson.build                  |   9 +-
> >  3 files changed, 173 insertions(+), 11 deletions(-)
> > 
> > diff --git a/tests/Makefile.am b/tests/Makefile.am
> > index 9a320bc23..fc3052475 100644
> > --- a/tests/Makefile.am
> > +++ b/tests/Makefile.am
> > @@ -122,6 +122,7 @@ gem_threaded_access_tiled_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
> >  gem_threaded_access_tiled_LDADD = $(LDADD) -lpthread
> >  gem_tiled_swapping_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
> >  gem_tiled_swapping_LDADD = $(LDADD) -lpthread
> > +i915_pm_rc6_residency_LDADD = $(LDADD) $(top_builddir)/lib/libigt_perf.la
> >  prime_self_import_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
> >  prime_self_import_LDADD = $(LDADD) -lpthread
> >  gem_userptr_blits_CFLAGS = $(AM_CFLAGS) $(THREAD_CFLAGS)
> > diff --git a/tests/i915/i915_pm_rc6_residency.c b/tests/i915/i915_pm_rc6_residency.c
> > index 1b39c870e..a5bcb084b 100644
> > --- a/tests/i915/i915_pm_rc6_residency.c
> > +++ b/tests/i915/i915_pm_rc6_residency.c
> > @@ -25,8 +25,6 @@
> >   *
> >   */
> >  
> > -#include "igt.h"
> > -#include "igt_sysfs.h"
> >  #include <stdio.h>
> >  #include <stdlib.h>
> >  #include <string.h>
> > @@ -34,6 +32,9 @@
> >  #include <errno.h>
> >  #include <time.h>
> >  
> > +#include "igt.h"
> > +#include "igt_perf.h"
> > +#include "igt_sysfs.h"
> >  
> >  #define SLEEP_DURATION 3 /* in seconds */
> >  
> > @@ -195,31 +196,180 @@ static bool wait_for_rc6(void)
> >       return false;
> >  }
> >  
> > +static uint64_t __pmu_read_single(int fd, uint64_t *ts)
> > +{
> > +     uint64_t data[2];
> > +
> > +     igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
> > +
> > +     if (ts)
> > +             *ts = data[1];
> > +
> > +     return data[0];
> > +}
> > +
> > +static uint64_t pmu_read_single(int fd)
> > +{
> > +     return __pmu_read_single(fd, NULL);
> > +}
> > +
> > +#define __assert_within_epsilon(x, ref, tol_up, tol_down) \
> > +     igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
> > +                  (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
> > +                  "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
> > +                  #x, #ref, (double)(x), \
> > +                  (tol_up) * 100.0, (tol_down) * 100.0, \
> > +                  (double)(ref))
> > +
> > +#define assert_within_epsilon(x, ref, tolerance) \
> > +     __assert_within_epsilon(x, ref, tolerance, tolerance)
> > +
> > +static bool __pmu_wait_for_rc6(int fd)
> > +{
> > +     struct timespec tv = {};
> > +     uint64_t start, now;
> > +
> > +     /* First wait for roughly an RC6 Evaluation Interval */
> > +     usleep(160 * 1000);
> > +
> > +     /* Then poll for RC6 to start ticking */
> > +     now = pmu_read_single(fd);
> > +     do {
> > +             start = now;
> > +             usleep(5000);
> > +             now = pmu_read_single(fd);
> > +             if (now - start > 1e6)
> > +                     return true;
> > +     } while (!igt_seconds_elapsed(&tv));
> > +
> > +     return false;
> > +}
> > +
> > +static unsigned int measured_usleep(unsigned int usec)
> > +{
> > +     struct timespec ts = { };
> > +     unsigned int slept;
> > +
> > +     slept = igt_nsec_elapsed(&ts);
> > +     igt_assert(slept == 0);
> > +     do {
> > +             usleep(usec - slept);
> > +             slept = igt_nsec_elapsed(&ts) / 1000;
> > +     } while (slept < usec);
> > +
> > +     return igt_nsec_elapsed(&ts);
> > +}
> > +
> > +static uint32_t batch_create(int fd)
> > +{
> > +     const uint32_t bbe = MI_BATCH_BUFFER_END;
> > +     uint32_t handle;
> > +
> > +     handle = gem_create(fd, 4096);
> > +     gem_write(fd, handle, 0, &bbe, sizeof(bbe));
> > +
> > +     return handle;
> > +}
> > +
> > +static int open_pmu(int i915, uint64_t config)
> > +{
> > +     int fd;
> > +
> > +     fd = perf_i915_open(config);
> > +     igt_skip_on(fd < 0 && errno == ENODEV);
> > +     igt_assert(fd >= 0);
> > +
> > +     return fd;
> > +}
> > +
> > +static void rc6_perf(int i915)
> > +{
> > +     const int64_t duration_ns = 2e9;
> > +     uint64_t idle, prev, ts[2];
> > +     unsigned long slept, cycles;
> > +     unsigned long *done;
> > +     int fd;
> > +
> > +     fd = open_pmu(i915, I915_PMU_RC6_RESIDENCY);
> > +     igt_require(__pmu_wait_for_rc6(fd));
> > +
> > +     /* While idle check full RC6. */
> > +     prev = __pmu_read_single(fd, &ts[0]);
> > +     slept = measured_usleep(duration_ns / 1000);
> > +     idle = __pmu_read_single(fd, &ts[1]);
> > +     igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
> > +     assert_within_epsilon(idle - prev, ts[1] - ts[0], 5);
> > +
> > +     /* Setup up a very light load */
> > +     done = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> > +     igt_fork(child, 1) {
> > +             struct drm_i915_gem_exec_object2 obj = {
> > +                     .handle = batch_create(i915),
> > +             };
> > +             struct drm_i915_gem_execbuffer2 execbuf = {
> > +                     .buffers_ptr = to_user_pointer(&obj),
> > +                     .buffer_count = 1,
> > +             };
> > +
> > +             do {
> > +                     struct timespec tv = {};
> > +
> > +                     igt_seconds_elapsed(&tv);
> > +
> > +                     gem_execbuf(i915, &execbuf);
> > +                     gem_sync(i915, obj.handle);
> > +                     done[1]++;
> > +
> > +                     usleep(igt_seconds_elapsed(&tv) / 10); /* => 1% busy */
> 
> igt_nsec_elapsed()?

That's what I thought I wrote. How bizarre!

> Not too familiar with the perf interface but I assume event[0] read is
> the RC6 residency, while event[1] is the duration while the event was
> enabled (so the duration since the event file was opened?). Looks ok:

Yup, event[1] is the timestamp, as measured from the start of perf_open.
We use PERF_FORMAT_TOTAL_TIME_ENABLED in perf_i915_open().
 
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
