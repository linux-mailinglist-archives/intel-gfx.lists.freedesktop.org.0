Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB5831CFA0
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 18:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023A489ECD;
	Tue, 16 Feb 2021 17:53:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B760289ECD;
 Tue, 16 Feb 2021 17:53:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23883957-1500050 for multiple; Tue, 16 Feb 2021 17:53:06 +0000
MIME-Version: 1.0
In-Reply-To: <5a07f0c2-48c1-1605-e1f5-91d61a213f67@linux.intel.com>
References: <20210216105050.309803-1-tvrtko.ursulin@linux.intel.com>
 <161347977326.8311.2289376711332554853@build.alporthouse.com>
 <5a07f0c2-48c1-1605-e1f5-91d61a213f67@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Tue, 16 Feb 2021 17:53:04 +0000
Message-ID: <161349798460.8311.9805097556312646496@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/perf_pmu: Subtest to
 measure sampling error for 100% busy
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-02-16 15:59:33)
> 
> On 16/02/2021 12:49, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-02-16 10:50:50)
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> Test that periodic reads of engine busyness against a constant 100% load
> >> are within the 5000ppm tolerance when comparing perf timestamp versus
> >> counter values.
> >>
> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> ---
> >>   tests/i915/perf_pmu.c | 46 ++++++++++++++++++++++++++++++++++++++-----
> >>   1 file changed, 41 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> >> index 50b5c82bc472..728312be5293 100644
> >> --- a/tests/i915/perf_pmu.c
> >> +++ b/tests/i915/perf_pmu.c
> >> @@ -26,6 +26,7 @@
> >>   #include <stdio.h>
> >>   #include <string.h>
> >>   #include <fcntl.h>
> >> +#include <float.h>
> >>   #include <inttypes.h>
> >>   #include <errno.h>
> >>   #include <signal.h>
> >> @@ -46,6 +47,7 @@
> >>   #include "igt_perf.h"
> >>   #include "igt_sysfs.h"
> >>   #include "igt_pm.h"
> >> +#include "igt_stats.h"
> >>   #include "sw_sync.h"
> >>   
> >>   IGT_TEST_DESCRIPTION("Test the i915 pmu perf interface");
> >> @@ -278,8 +280,11 @@ static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
> >>   static void
> >>   single(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
> >>   {
> >> +       unsigned int loops = flags & FLAG_LONG ? 20 : 1;
> >> +       double err_min = DBL_MAX, err_max = -DBL_MAX;
> >>          unsigned long slept;
> >>          igt_spin_t *spin;
> >> +       igt_stats_t s;
> >>          uint64_t val;
> >>          int fd;
> >>   
> >> @@ -290,11 +295,40 @@ single(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
> >>          else
> >>                  spin = NULL;
> >>   
> >> -       val = pmu_read_single(fd);
> >> -       slept = measured_usleep(batch_duration_ns / 1000);
> >> -       if (flags & TEST_TRAILING_IDLE)
> >> -               end_spin(gem_fd, spin, flags);
> >> -       val = pmu_read_single(fd) - val;
> >> +       igt_stats_init_with_size(&s, loops);
> >> +
> >> +       while (--loops) {
> > 
> > while (loops--)
> > 
> > /o\
> 
> Yeah.. At least I know the oddity is related to sampling. Since even on 
> Haswell:
> 
> (perf_pmu:1591) DEBUG: time=500207720 busy=500037022 error=-341.25ppm
> (perf_pmu:1591) DEBUG: time=500252520 busy=500033517 error=-437.78ppm
> (perf_pmu:1591) DEBUG: time=500187490 busy=499999817 error=-375.21ppm
> (perf_pmu:1591) DEBUG: time=500244871 busy=499999837 error=-489.83ppm
> (perf_pmu:1591) DEBUG: time=500268670 busy=499999477 error=-538.10ppm
> (perf_pmu:1591) DEBUG: time=500245246 busy=500000432 error=-489.39ppm
> (perf_pmu:1591) DEBUG: time=500245735 busy=499999306 error=-492.62ppm
> (perf_pmu:1591) DEBUG: time=500270045 busy=500001747 error=-536.31ppm
> (perf_pmu:1591) DEBUG: time=500254286 busy=499998162 error=-511.99ppm
> (perf_pmu:1591) DEBUG: time=500247790 busy=500000347 error=-494.64ppm
> (perf_pmu:1591) DEBUG: time=500250261 busy=500000257 error=-499.76ppm
> (perf_pmu:1591) DEBUG: time=500250005 busy=500008177 error=-483.41ppm
> (perf_pmu:1591) DEBUG: time=500249065 busy=499991867 error=-514.14ppm
> (perf_pmu:1591) DEBUG: time=500249725 busy=500000371 error=-498.46ppm
> (perf_pmu:1591) DEBUG: time=500250335 busy=499999772 error=-500.88ppm
> (perf_pmu:1591) DEBUG: time=500258691 busy=499999937 error=-517.24ppm
> (perf_pmu:1591) DEBUG: time=500239980 busy=500001037 error=-477.66ppm
> (perf_pmu:1591) DEBUG: time=500240791 busy=504999361 error=9512.56ppm
> 
> And this last one is way more than one sampling period. I'll be thinking 
> about this in the background.

One thing to add would be the cumulative error. It does feel like a
corrective factor is applied to the sampling period.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
