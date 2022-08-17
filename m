Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF8F596EE9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 15:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C45591969;
	Wed, 17 Aug 2022 13:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A24911ED;
 Wed, 17 Aug 2022 13:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660741303; x=1692277303;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ptpN96qiIq8PoMkmPFcpSkGwSRb20zaseERFDKikYx4=;
 b=i/0DIPic3IMOaQDTmXGl5B1A0sk0LJemRxFZ/14RL5NZJ9jEgHLhHAcg
 qnBQwqOdHjtIWux8gbJJA3xoQ7LTPYuvKoc3oouy/lEgcn1akMYjqmrjA
 pqAA/51vGzzhgSnUyKDzoHlb61f42QZOOWmDK/6mfMqKN8l6ILtOocXSc
 PxVoBSA6hDJ1orkTR3nw+X9lhWKklXplrAIbKuxNu/1D1qMzYzbG+GHsC
 8P8zyOP4ODcrFLSSm5Wlkn9B7F808MyUTi7a7y8LduJvGpgXQlOutWN+S
 4I5FinkswLq+FC6sLURsq9QzST6qaGITUoImAUiHo8tUFCJimAiLiVlpS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="354226909"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="354226909"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 06:01:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="636368348"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO maurocar-mobl2)
 ([10.252.50.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 06:01:32 -0700
Date: Wed, 17 Aug 2022 15:01:29 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20220817150129.0023caba@maurocar-mobl2>
In-Reply-To: <20220812095346.45379-3-janusz.krzysztofik@linux.intel.com>
References: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
 <20220812095346.45379-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 3/3] tests/gem_exec_fence: Restore
 pre-hang checks in *await-hang scenarios
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Aug 2022 11:53:46 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Commit c8f6aaf32d83 "tests/gem_exec_fence: Check stored values only for
> valid workloads" resolved an issue, observed in *await-hang scenarios,
> where a fence exposed by an invalid spin batch was signaled asynchronously
> to pending checks for depended test batches still waiting for that fence.
> Those checks have been disabled, weakening those scenarios.
> 
> This change restores the pre-hang checks to the extent possible when the
> invalid spin batch may trigger an immediate reset.  If we are lucky enough
> to take a snapshot of the object supposed to be still not modified by
> store batches after we confirm that the spin batch has started and before
> the fence is signaled, we use that copy to verify if the fence dependent
> batches are still blocked.  Running the *await-hang subtests multiple
> times in CI should build our confidence in their results.
> 
> v2: preserve checking the pipeline runs ahead of the hang (Chris)
> v3: use a more simple 'best effort' approach suggested by Chris
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  tests/i915/gem_exec_fence.c | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
> index 78d83460f7..f24bebdb7d 100644
> --- a/tests/i915/gem_exec_fence.c
> +++ b/tests/i915/gem_exec_fence.c
> @@ -21,6 +21,7 @@
>   * IN THE SOFTWARE.
>   */
>  
> +#include <string.h>
>  #include <sys/ioctl.h>
>  #include <sys/poll.h>
>  #include <sys/signal.h>
> @@ -307,12 +308,12 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>  			     const struct intel_execution_engine2 *e,
>  			     unsigned flags)
>  {
> +	uint64_t scratch_offset, ahnd = get_reloc_ahnd(fd, ctx->id);
>  	const struct intel_execution_engine2 *e2;
>  	uint32_t scratch = gem_create(fd, 4096);
> +	uint32_t *out, tmp[4096 / sizeof(*out)];
>  	igt_spin_t *spin;
> -	uint32_t *out;
> -	uint64_t scratch_offset, ahnd = get_reloc_ahnd(fd, ctx->id);
> -	int i;
> +	int i, n;
>  
>  	scratch_offset = get_offset(ahnd, scratch, 4096, 0);
>  
> @@ -353,11 +354,20 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>  	/* Long, but not too long to anger preemption disable checks */
>  	usleep(50 * 1000); /* 50 ms, typical preempt reset is 150+ms */
>  
> +	/*
> +	 * Check for invalidly completing the task early.
> +	 * In -hang variants, invalid spin batch may trigger an immediate reset,
> +	 * then we are able to verify if store batches haven't been started yet
> +	 * only if the fence of the spin batch is still busy.
> +	 * Just run *await-hang subtest multiple times to build confidence.
> +	 */
> +	memcpy(tmp, out, (i + 1) * sizeof(*out));
> +	if (fence_busy(spin->out_fence)) {
> +		for (n = 0; n <= i; n++)
> +			igt_assert_eq_u32(tmp[n], 0);
> +	}
>  	if ((flags & HANG) == 0) {
> -		/* Check for invalidly completing the task early */
>  		igt_assert(fence_busy(spin->out_fence));
> -		for (int n = 0; n <= i; n++)
> -			igt_assert_eq_u32(out[n], 0);
>  
>  		igt_spin_end(spin);
>  	}
