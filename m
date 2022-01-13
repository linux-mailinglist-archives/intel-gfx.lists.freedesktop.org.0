Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EC848DE95
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E15710E2B3;
	Thu, 13 Jan 2022 20:04:17 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B3310E2B3;
 Thu, 13 Jan 2022 20:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642104255; x=1673640255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=houc8fQvm5Lltx/wN2zSHWWUYu/Fb9foJvJKGw394OE=;
 b=ErB/uBHXobVr2wS87h2Gggew+o7Cc7w7ecqH+7oatZ1mW3HqxIyKRHrT
 yo9eRGeVsvQfl2YW+fvw3lPgBfCC+mrkw/+fSmG2D2RDVvtN9deZi8iD7
 Baidysc6LtLXGz9HBWAiOTnmU79t6cL5SGfXFjxdFu65ogH4CHJoDRQzL
 LRjp3Is6QSMgTRxE4hjKMX6f/o2dVM8PJDf/KaIsFCZBUpAgqTxq9uSwW
 AR61uaAxJexfc3l8Mg1HmscOEf6kVsqSTj9/JKh91Qm7GERSvYKuMgtBC
 J2gPjH0jhgAAEoMk51oBc6J/Hw1FEkDbTTUnip2f/k7VKdh/1eV91NkB5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244306531"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244306531"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:04:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="516069454"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:04:14 -0800
Date: Thu, 13 Jan 2022 11:58:24 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113195824.GA7322@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-4-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-4-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 03/15]
 tests/i915/i915_hangman: Update capture test to use engine structure
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

On Thu, Jan 13, 2022 at 11:59:35AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The capture test was still using old style ring_id and ring_name
> (derived from the engine structure at the higher level). Update it to
> just take the engine structure directly.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  tests/i915/i915_hangman.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index f64b8819d..280eac197 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -207,8 +207,8 @@ static void check_error_state(const char *expected_ring_name,
>  	igt_assert(found);
>  }
>  
> -static void test_error_state_capture(const intel_ctx_t *ctx, unsigned ring_id,
> -				     const char *ring_name)
> +static void test_error_state_capture(const intel_ctx_t *ctx,
> +				     const struct intel_execution_engine2 *e)
>  {
>  	uint32_t *batch;
>  	igt_hang_t hang;
> @@ -217,7 +217,7 @@ static void test_error_state_capture(const intel_ctx_t *ctx, unsigned ring_id,
>  
>  	clear_error_state();
>  
> -	hang = igt_hang_ctx_with_ahnd(device, ahnd, ctx->id, ring_id,
> +	hang = igt_hang_ctx_with_ahnd(device, ahnd, ctx->id, e->flags,
>  				      HANG_ALLOW_CAPTURE);
>  	offset = hang.spin->obj[IGT_SPIN_BATCH].offset;
>  
> @@ -226,7 +226,7 @@ static void test_error_state_capture(const intel_ctx_t *ctx, unsigned ring_id,
>  
>  	igt_post_hang_ring(device, hang);
>  
> -	check_error_state(ring_name, offset, batch);
> +	check_error_state(e->name, offset, batch);
>  	munmap(batch, 4096);
>  	put_ahnd(ahnd);
>  }
> @@ -351,7 +351,7 @@ igt_main
>  	igt_subtest_with_dynamic("error-state-capture") {
>  		for_each_ctx_engine(device, ctx, e) {
>  			igt_dynamic_f("%s", e->name)
> -				test_error_state_capture(ctx, e->flags, e->name);
> +				test_error_state_capture(ctx, e);
>  		}
>  	}
>  
> -- 
> 2.25.1
> 
