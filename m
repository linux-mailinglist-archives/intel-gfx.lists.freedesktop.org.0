Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0687648ED9C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 17:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1960F10EDDF;
	Fri, 14 Jan 2022 16:02:22 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C93810EDDF;
 Fri, 14 Jan 2022 16:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642176140; x=1673712140;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=J/dDYUZD339TaF5VlsQ6VxyWWOTkVXDXpJqgC756loM=;
 b=TZl/0PI7zoOEvASaKpvKioxV3HQWa95EQHJ70yRbGQ/I0mbt5iaR7LP9
 UP57pTO7OyDlI+zy1xwBqGYcWsf9q+o++lnEdABtzCrWZni9X96vRAdYh
 FfMKvF2s8PIsBcBvsvkY7vGhzfwQa/fVJwfnf1kWzWArojYVGuoS18hXC
 X9nmAahkZz6grDEuIE1khlLjl1cQJvw1l3o9fREUHj25W1brKTbtd3oXX
 wXs3vVFspLbgkm83o8x6bh53QIOCzyhqfzGJX++baBfRSWDtEvPZrvgyx
 wpkMzpbLWgZQPPx6SalIrbkkPHy/DWkkC9Mr4QN3vxei0L6YOSLV+MWul g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="224956233"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="224956233"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 07:59:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="516439689"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 07:59:14 -0800
Date: Fri, 14 Jan 2022 07:53:25 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220114155325.GA9501@jons-linux-dev-box>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
 <20220113235118.1575410-6-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113235118.1575410-6-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 i-g-t 05/15] tests/i915/i915_hangman: Add
 uevent test & fix detector
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 03:51:08PM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Some of the IGT framework relies on receving a uevent when a hang
> occurs. So add a test that this actually works.
> 
> While testing this, noticed that hangs could sometimes be missed
> because the uevent was (presumably) still in flight by the time the
> handler was de-registered. So add an extra delay during cleanup to
> give the uevent chance to arrive.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  lib/igt_aux.c             |  7 +++++++
>  tests/i915/i915_hangman.c | 43 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/lib/igt_aux.c b/lib/igt_aux.c
> index c247a1aa4..03cc38c93 100644
> --- a/lib/igt_aux.c
> +++ b/lib/igt_aux.c
> @@ -523,6 +523,13 @@ void igt_fork_hang_detector(int fd)
>  
>  void igt_stop_hang_detector(void)
>  {
> +	/*
> +	 * Give the uevent time to arrive. No sleep at all misses about 20% of
> +	 * hangs (at least, in the i915_hangman/detector test). A sleep of 1ms
> +	 * seems to miss about 2%, 10ms loses <1%, so 100ms should be safe.
> +	 */
> +	usleep(100 * 1000);
> +
>  	igt_stop_helper(&hang_detector);
>  }
>  
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 7b8390a6c..354769f39 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -31,6 +31,7 @@
>  #include <sys/stat.h>
>  #include <sys/types.h>
>  #include <fcntl.h>
> +#include <signal.h>
>  
>  #include "i915/gem.h"
>  #include "i915/gem_create.h"
> @@ -289,6 +290,38 @@ test_engine_hang(const intel_ctx_t *ctx,
>  	put_ahnd(ahnd);
>  }
>  
> +static int hang_count;
> +
> +static void sig_io(int sig)
> +{
> +	hang_count++;
> +}
> +
> +static void test_hang_detector(const intel_ctx_t *ctx,
> +			       const struct intel_execution_engine2 *e)
> +{
> +	igt_hang_t hang;
> +	uint64_t ahnd = get_reloc_ahnd(device, ctx->id);
> +
> +	hang_count = 0;
> +
> +	igt_fork_hang_detector(device);
> +
> +	/* Steal the signal handler */
> +	signal(SIGIO, sig_io);
> +
> +	/* Make a hang... */
> +	hang = igt_hang_ctx_with_ahnd(device, ahnd, ctx->id, e->flags, 0);
> +
> +	igt_post_hang_ring(device, hang);
> +	put_ahnd(ahnd);
> +
> +	igt_stop_hang_detector();
> +
> +	/* Did it work? */
> +	igt_assert(hang_count == 1);
> +}
> +
>  /* This test covers the case where we end up in an uninitialised area of the
>   * ppgtt and keep executing through it. This is particularly relevant if 48b
>   * ppgtt is enabled because the ppgtt is massively bigger compared to the 32b
> @@ -408,6 +441,16 @@ igt_main
>  	igt_subtest("hangcheck-unterminated")
>  		hangcheck_unterminated(ctx);
>  
> +	igt_describe("Check that hang detector works");
> +	igt_subtest_with_dynamic("detector") {
> +		const struct intel_execution_engine2 *e;
> +
> +		for_each_ctx_engine(device, ctx, e) {
> +			igt_dynamic_f("%s", e->name)
> +				test_hang_detector(ctx, e);
> +		}
> +	}
> +
>  	do_tests("GT", "gt", ctx);
>  
>  	igt_fixture {
> -- 
> 2.25.1
> 
