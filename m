Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AAB14E441
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 21:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DEBA6E906;
	Thu, 30 Jan 2020 20:48:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8809C6E904;
 Thu, 30 Jan 2020 20:48:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20065313-1500050 for multiple; Thu, 30 Jan 2020 20:48:00 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
References: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <158041727856.18112.4906224695590570854@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 Jan 2020 20:47:58 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence:
 Convert engine subtests to dynamic
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-30 20:41:24)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Converts all per-engine tests into dynamic subtests and in the process:
> 
>  * Put back I915_EXEC_BSD legacy coverage.
>  * Remove one added static engine list usage.
>  * Compact code by driving two groups of the name/func table.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> ---
>  tests/i915/gem_ctx_persistence.c | 97 +++++++++++++-------------------
>  1 file changed, 39 insertions(+), 58 deletions(-)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index 8b9633b214ff..0d5b22d2b162 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -759,7 +759,20 @@ static void smoketest(int i915)
>  
>  igt_main
>  {
> -       const struct intel_execution_engine2 *e;
> +       struct {
> +               const char *name;
> +               void (*func)(int fd, unsigned int engine);
> +       } *test, tests[] = {
> +               { "persistence", test_persistence },
> +               { "cleanup", test_nonpersistent_cleanup },
> +               { "queued", test_nonpersistent_queued },
> +               { "mixed", test_nonpersistent_mixed },
> +               { "mixed-process", test_process_mixed },
> +               { "hostile", test_nonpersistent_hostile },
> +               { "hostile-preempt", test_nonpersistent_hostile_preempt },
> +               { "hang", test_nonpersistent_hang },
> +               { NULL, NULL },

Heh, that's what I was tempted to suggest but did want to seem like I
was requesting too much :)

> +       };
>         int i915;
>  
>         igt_fixture {
> @@ -792,72 +805,40 @@ igt_main
>         igt_subtest("hang")
>                 test_nohangcheck_hang(i915);
>  
> -       __for_each_static_engine(e) {
> -               igt_subtest_group {
> -                       igt_fixture {
> -                               gem_require_ring(i915, e->flags);
> -                               gem_require_contexts(i915);
> -                       }
> -
> -                       igt_subtest_f("legacy-%s-persistence", e->name)
> -                               test_persistence(i915, e->flags);
> -
> -                       igt_subtest_f("legacy-%s-cleanup", e->name)
> -                               test_nonpersistent_cleanup(i915, e->flags);
> -
> -                       igt_subtest_f("legacy-%s-queued", e->name)
> -                               test_nonpersistent_queued(i915, e->flags);
> -
> -                       igt_subtest_f("legacy-%s-mixed", e->name)
> -                               test_nonpersistent_mixed(i915, e->flags);
> -
> -                       igt_subtest_f("legacy-%s-mixed-process", e->name)
> -                               test_process_mixed(i915, e->flags);
> -
> -                       igt_subtest_f("legacy-%s-hostile", e->name)
> -                               test_nonpersistent_hostile(i915, e->flags);
> +       igt_subtest("smoketest")
> +               smoketest(i915);
>  
> -                       igt_subtest_f("legacy-%s-hostile-preempt", e->name)
> -                               test_nonpersistent_hostile_preempt(i915,
> -                                                                  e->flags);
> +       igt_subtest_group {
> +               igt_fixture
> +                       gem_require_contexts(i915);
> +
> +               for (test = tests; test->name; test++) {
> +                       igt_subtest_with_dynamic_f("legacy-engines-%s",
> +                                                  test->name) {
> +                               for_each_engine(e, i915) {

Don't we need a
  if (!gem_has_ring(i915, eb_ring(e)) continue;
here?

> +                                       igt_dynamic_f("%s", e->name)
> +                                               test->func(i915, eb_ring(e));
> +                               }
> +                       }
>                 }
>         }
>  
> -        __for_each_physical_engine(i915, e) {
> -                igt_subtest_group {
> -                        igt_fixture
> -                                gem_require_contexts(i915);
> -
> -                       igt_subtest_f("%s-persistence", e->name)
> -                               test_persistence(i915, e->flags);
> -
> -                       igt_subtest_f("%s-cleanup", e->name)
> -                               test_nonpersistent_cleanup(i915, e->flags);
> -
> -                       igt_subtest_f("%s-queued", e->name)
> -                               test_nonpersistent_queued(i915, e->flags);
> -
> -                       igt_subtest_f("%s-mixed", e->name)
> -                               test_nonpersistent_mixed(i915, e->flags);
> -
> -                       igt_subtest_f("%s-mixed-process", e->name)
> -                               test_process_mixed(i915, e->flags);
> +       igt_subtest_group {
> +               const struct intel_execution_engine2 *e;
>  
> -                       igt_subtest_f("%s-hostile", e->name)
> -                               test_nonpersistent_hostile(i915, e->flags);
> +               igt_fixture
> +                       gem_require_contexts(i915);
>  
> -                       igt_subtest_f("%s-hostile-preempt", e->name)
> -                               test_nonpersistent_hostile_preempt(i915,
> -                                                                  e->flags);
> -
> -                       igt_subtest_f("%s-hang", e->name)
> -                               test_nonpersistent_hang(i915, e->flags);
> +               for (test = tests; test->name; test++) {
> +                       igt_subtest_with_dynamic_f("engines-%s", test->name) {
> +                               __for_each_physical_engine(i915, e) {
> +                                       igt_dynamic_f("%s", e->name)
> +                                               test->func(i915, e->flags);
> +                               }
> +                       }
>                 }

Then I had a plan to add the pathological engines[] here.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
