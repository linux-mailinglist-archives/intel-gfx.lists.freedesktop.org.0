Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9712114E430
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 21:45:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF2E6E903;
	Thu, 30 Jan 2020 20:45:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E1B6E903;
 Thu, 30 Jan 2020 20:45:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 12:45:00 -0800
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="218399509"
Received: from lodierna-mobl.ger.corp.intel.com (HELO [10.252.22.225])
 ([10.252.22.225])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 30 Jan 2020 12:44:59 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
References: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d295e6e3-7022-de90-ae9e-36ac2baeb750@linux.intel.com>
Date: Thu, 30 Jan 2020 20:44:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t]
 tests/i915/gem_ctx_persistence: Convert engine subtests to dynamic
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/01/2020 20:41, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Converts all per-engine tests into dynamic subtests and in the process:
> 
>   * Put back I915_EXEC_BSD legacy coverage.
>   * Remove one added static engine list usage.
>   * Compact code by driving two groups of the name/func table.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> ---
>   tests/i915/gem_ctx_persistence.c | 97 +++++++++++++-------------------
>   1 file changed, 39 insertions(+), 58 deletions(-)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index 8b9633b214ff..0d5b22d2b162 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -759,7 +759,20 @@ static void smoketest(int i915)
>   
>   igt_main
>   {
> -	const struct intel_execution_engine2 *e;
> +	struct {
> +		const char *name;
> +		void (*func)(int fd, unsigned int engine);
> +	} *test, tests[] = {
> +		{ "persistence", test_persistence },
> +		{ "cleanup", test_nonpersistent_cleanup },
> +		{ "queued", test_nonpersistent_queued },
> +		{ "mixed", test_nonpersistent_mixed },
> +		{ "mixed-process", test_process_mixed },
> +		{ "hostile", test_nonpersistent_hostile },
> +		{ "hostile-preempt", test_nonpersistent_hostile_preempt },
> +		{ "hang", test_nonpersistent_hang },
> +		{ NULL, NULL },
> +	};
>   	int i915;
>   
>   	igt_fixture {
> @@ -792,72 +805,40 @@ igt_main
>   	igt_subtest("hang")
>   		test_nohangcheck_hang(i915);
>   
> -	__for_each_static_engine(e) {
> -		igt_subtest_group {
> -			igt_fixture {
> -				gem_require_ring(i915, e->flags);
> -				gem_require_contexts(i915);
> -			}
> -
> -			igt_subtest_f("legacy-%s-persistence", e->name)
> -				test_persistence(i915, e->flags);
> -
> -			igt_subtest_f("legacy-%s-cleanup", e->name)
> -				test_nonpersistent_cleanup(i915, e->flags);
> -
> -			igt_subtest_f("legacy-%s-queued", e->name)
> -				test_nonpersistent_queued(i915, e->flags);
> -
> -			igt_subtest_f("legacy-%s-mixed", e->name)
> -				test_nonpersistent_mixed(i915, e->flags);
> -
> -			igt_subtest_f("legacy-%s-mixed-process", e->name)
> -				test_process_mixed(i915, e->flags);
> -
> -			igt_subtest_f("legacy-%s-hostile", e->name)
> -				test_nonpersistent_hostile(i915, e->flags);
> +	igt_subtest("smoketest")
> +		smoketest(i915);
>   
> -			igt_subtest_f("legacy-%s-hostile-preempt", e->name)
> -				test_nonpersistent_hostile_preempt(i915,
> -								   e->flags);
> +	igt_subtest_group {
> +		igt_fixture
> +			gem_require_contexts(i915);
> +
> +		for (test = tests; test->name; test++) {
> +			igt_subtest_with_dynamic_f("legacy-engines-%s",
> +						   test->name) {
> +				for_each_engine(e, i915) {
> +					igt_dynamic_f("%s", e->name)
> +						test->func(i915, eb_ring(e));
> +				}
> +			}
>   		}
>   	}
>   
> -        __for_each_physical_engine(i915, e) {
> -                igt_subtest_group {
> -                        igt_fixture
> -                                gem_require_contexts(i915);
> -
> -			igt_subtest_f("%s-persistence", e->name)
> -				test_persistence(i915, e->flags);
> -
> -			igt_subtest_f("%s-cleanup", e->name)
> -				test_nonpersistent_cleanup(i915, e->flags);
> -
> -			igt_subtest_f("%s-queued", e->name)
> -				test_nonpersistent_queued(i915, e->flags);
> -
> -			igt_subtest_f("%s-mixed", e->name)
> -				test_nonpersistent_mixed(i915, e->flags);
> -
> -			igt_subtest_f("%s-mixed-process", e->name)
> -				test_process_mixed(i915, e->flags);
> +	igt_subtest_group {
> +		const struct intel_execution_engine2 *e;
>   
> -			igt_subtest_f("%s-hostile", e->name)
> -				test_nonpersistent_hostile(i915, e->flags);
> +		igt_fixture
> +			gem_require_contexts(i915);
>   
> -			igt_subtest_f("%s-hostile-preempt", e->name)
> -				test_nonpersistent_hostile_preempt(i915,
> -								   e->flags);
> -
> -			igt_subtest_f("%s-hang", e->name)
> -				test_nonpersistent_hang(i915, e->flags);
> +		for (test = tests; test->name; test++) {
> +			igt_subtest_with_dynamic_f("engines-%s", test->name) {
> +				__for_each_physical_engine(i915, e) {
> +					igt_dynamic_f("%s", e->name)
> +						test->func(i915, e->flags);
> +				}
> +			}
>   		}
>   	}
>   
> -	igt_subtest("smoketest")
> -		smoketest(i915);

I also moved this one to before the default context is configured with 
engine map, since it uses legacy for_each_physical_engine, and is 
therefore confused as to engine selection.

But perhaps better would be to leave it last and convert to 
__for_each_physical_engine. In the spirit of a smoke test is to exercise 
all engines after all.

Regards,

Tvrtko

> -
>   	igt_fixture {
>   		close(i915);
>   	}
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
