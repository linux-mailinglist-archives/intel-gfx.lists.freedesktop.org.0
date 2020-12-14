Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4D82D9C4D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 17:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9648B6E32A;
	Mon, 14 Dec 2020 16:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2637F6E415;
 Mon, 14 Dec 2020 16:18:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23322550-1500050 for multiple; Mon, 14 Dec 2020 16:18:10 +0000
MIME-Version: 1.0
In-Reply-To: <160796262549.13039.17598952325364014726@build.alporthouse.com>
References: <20201214105123.542518-1-chris@chris-wilson.co.uk>
 <32a5b538-628b-826b-7d75-f44bd6d0f65b@linux.intel.com>
 <160796095538.13039.6937084501164894559@build.alporthouse.com>
 <7063edc7-4edf-3382-dde9-868b32a8b101@linux.intel.com>
 <160796262549.13039.17598952325364014726@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 16:18:10 +0000
Message-ID: <160796269084.13039.5181727112474858604@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] i915/perf_pmu: Verify
 RC6 measurements before/after suspend
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

Quoting Chris Wilson (2020-12-14 16:17:05)
> Quoting Tvrtko Ursulin (2020-12-14 16:08:34)
> > 
> > On 14/12/2020 15:49, Chris Wilson wrote:
> > > Quoting Tvrtko Ursulin (2020-12-14 15:42:20)
> > >>
> > >> On 14/12/2020 10:51, Chris Wilson wrote:
> > >>> RC6 should work before suspend, and continue to increment while idle
> > >>> after suspend. Should.
> > >>>
> > >>> v2: Include a longer sleep after suspend; it appears we are reticent to
> > >>> idle so soon after waking up.
> > >>>
> > >>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > >>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > >>> ---
> > >>>    tests/i915/perf_pmu.c | 28 +++++++++++++++++++++++++---
> > >>>    1 file changed, 25 insertions(+), 3 deletions(-)
> > >>>
> > >>> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> > >>> index cb7273142..0b470c1bc 100644
> > >>> --- a/tests/i915/perf_pmu.c
> > >>> +++ b/tests/i915/perf_pmu.c
> > >>> @@ -170,6 +170,7 @@ static unsigned int measured_usleep(unsigned int usec)
> > >>>    #define TEST_RUNTIME_PM (8)
> > >>>    #define FLAG_LONG (16)
> > >>>    #define FLAG_HANG (32)
> > >>> +#define TEST_S3 (64)
> > >>>    
> > >>>    static igt_spin_t * __spin_poll(int fd, uint32_t ctx,
> > >>>                                const struct intel_execution_engine2 *e)
> > >>> @@ -1578,7 +1579,7 @@ test_frequency_idle(int gem_fd)
> > >>>                     "Actual frequency should be 0 while parked!\n");
> > >>>    }
> > >>>    
> > >>> -static bool wait_for_rc6(int fd)
> > >>> +static bool wait_for_rc6(int fd, int timeout)
> > >>>    {
> > >>>        struct timespec tv = {};
> > >>>        uint64_t start, now;
> > >>> @@ -1594,7 +1595,7 @@ static bool wait_for_rc6(int fd)
> > >>>                now = pmu_read_single(fd);
> > >>>                if (now - start > 1e6)
> > >>>                        return true;
> > >>> -     } while (!igt_seconds_elapsed(&tv));
> > >>> +     } while (igt_seconds_elapsed(&tv) <= timeout);
> > >>>    
> > >>>        return false;
> > >>>    }
> > >>> @@ -1636,14 +1637,32 @@ test_rc6(int gem_fd, unsigned int flags)
> > >>>                }
> > >>>        }
> > >>>    
> > >>> -     igt_require(wait_for_rc6(fd));
> > >>> +     igt_require(wait_for_rc6(fd, 1));
> > >>>    
> > >>>        /* While idle check full RC6. */
> > >>>        prev = __pmu_read_single(fd, &ts[0]);
> > >>>        slept = measured_usleep(duration_ns / 1000);
> > >>>        idle = __pmu_read_single(fd, &ts[1]);
> > >>> +
> > >>>        igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
> > >>> +     assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
> > >>> +
> > >>> +     if (flags & TEST_S3) {
> > >>> +             prev = __pmu_read_single(fd, &ts[0]);
> > >>> +             igt_system_suspend_autoresume(SUSPEND_STATE_MEM,
> > >>> +                                           SUSPEND_TEST_NONE);
> > >>> +             idle = __pmu_read_single(fd, &ts[1]);
> > >>> +             igt_debug("suspend=%"PRIu64"\n", ts[1] - ts[0]);
> > >>> +             //assert_within_epsilon(idle - prev, ts[1] - ts[0], tolerance);
> > >>> +     }
> > >>> +
> > >>> +     igt_assert(wait_for_rc6(fd, 5));
> > >>>    
> > >>> +     prev = __pmu_read_single(fd, &ts[0]);
> > >>> +     slept = measured_usleep(duration_ns / 1000);
> > >>> +     idle = __pmu_read_single(fd, &ts[1]);
> > >>> +
> > >>> +     igt_debug("slept=%lu perf=%"PRIu64"\n", slept, ts[1] - ts[0]);
> > >>
> > >> You plan to leave the C++ bit commented out above and just check it
> > >> here? Doesn't seem it harms to check twice in the non-S3 case anyway,
> > >> just asking.
> > > 
> > > My expectation is that we should have a momentary blip !rc6 during
> > > suspend, and so across suspend we should find mono_raw ~= rc6
> > > 
> > > However, since it is taking a few seconds for us to start rc6 again
> > > after resume, that clearly fails. I'm not sure why it takes so long, so
> > > I suspect a bug. (Possibly something like we are not entering rc6 until
> > > a heartbeat after resume????)
> > > 
> > > So the // is my expectation; the current test the reality.
> > > How best to document that?
> > 
> > CPU clock is stopped and we expect RC6 to be stopped but we probably 
> > cannot be certain enough of the error between the two. So now I am not 
> > sure we will every be able to rely on it matching close enough.
> > 
> > How do the absolute cpu ts and rc6 values look after resume, and both 
> > relative to pre-suspend? Do they not see the S3 as expected but just rc6 
> > is not increasing for how long?
> 
> Right, suspend time is absent from the timestamps. rc6 does not start
> ticking again for ~3s. Smells like a heartbeat :(

Or there might be some other runtime pm delay, fbcon reprobe???
Heartbeat is more familiar territory.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
