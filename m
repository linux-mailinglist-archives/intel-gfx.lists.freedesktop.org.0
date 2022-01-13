Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF20B48DEDA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4DD110E12A;
	Thu, 13 Jan 2022 20:24:47 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7944F10E12A;
 Thu, 13 Jan 2022 20:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642105486; x=1673641486;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=o3VRmIWTfw1JMXMGImFpM3lsUGFrdbXn2F272rqav7g=;
 b=AOuASOIpW3iDJpH9FhyJiG6a3ziM6yUcmm+3NOAuWxr6EUsvDzPhxfSx
 Y4Bq44fcf6fr+hsJMd4ZcDj6IffaaI7W26oeph34bmXgx+bPJwWH14ca6
 wYZyZneaka4/FpMNNhHF16JNFc65Au925PjaOOQO6HAU49uOT5Jcgc0Kw
 WfOhwpLb6sG28h+IJ+TYTpyW9DLLSbpDwVOEVnR4kZaGeUIiwDr4lJeFP
 ylfB1EuBL+GfON1oE6Z2w96+1YpDTpF8JbF2BjPzZCHV21rrEXhDemAd9
 4/pBsEUPxun56Nc721ilUIR17xBUvrk7Kn3ZOlKMh2Ng86BH299TBoEna A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="307450645"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307450645"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:24:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="623989573"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:24:45 -0800
Date: Thu, 13 Jan 2022 12:18:55 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113201854.GA28094@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-9-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-9-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 i-g-t 08/15] tests/i915/i915_hangman: Add
 alive-ness test after error capture
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

On Thu, Jan 13, 2022 at 11:59:40AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Added a an extra step to the i915_hangman tests to check that the
> system is still alive after the hang and recovery. This submits a
> simple batch to each engine which does a write to memory and checks
> that the write occurred.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Looks good to me but can't help but think this could be a library
function as I really doubt this is the only test where at the end of the
test we want to verify all engines are alive. Something to keep an eye /
do in a follow up.

With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  tests/i915/i915_hangman.c | 59 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 5a0c9497c..918418760 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -48,8 +48,57 @@
>  static int device = -1;
>  static int sysfs = -1;
>  
> +#define OFFSET_ALIVE	10
> +
>  IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
>  
> +static void check_alive(void)
> +{
> +	const struct intel_execution_engine2 *engine;
> +	const intel_ctx_t *ctx;
> +	uint32_t scratch, *out;
> +	int fd, i = 0;
> +	uint64_t ahnd, scratch_addr;
> +
> +	fd = drm_open_driver(DRIVER_INTEL);
> +	igt_require(gem_class_can_store_dword(fd, 0));
> +
> +	ctx = intel_ctx_create_all_physical(fd);
> +	ahnd = get_reloc_ahnd(fd, ctx->id);
> +	scratch = gem_create(fd, 4096);
> +	scratch_addr = get_offset(ahnd, scratch, 4096, 0);
> +	out = gem_mmap__wc(fd, scratch, 0, 4096, PROT_WRITE);
> +	gem_set_domain(fd, scratch,
> +			I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
> +
> +	for_each_physical_engine(fd, engine) {
> +		igt_assert_eq_u32(out[i + OFFSET_ALIVE], 0);
> +		i++;
> +	}
> +
> +	i = 0;
> +	for_each_ctx_engine(fd, ctx, engine) {
> +		if (!gem_class_can_store_dword(fd, engine->class))
> +			continue;
> +
> +		/* +OFFSET_ALIVE to ensure engine zero doesn't get a false negative */
> +		igt_store_word(fd, ahnd, ctx, engine, -1, scratch, scratch_addr,
> +			       i + OFFSET_ALIVE, i + OFFSET_ALIVE);
> +		i++;
> +	}
> +
> +	gem_set_domain(fd, scratch, I915_GEM_DOMAIN_GTT, 0);
> +
> +	while (i--)
> +		igt_assert_eq_u32(out[i + OFFSET_ALIVE], i + OFFSET_ALIVE);
> +
> +	munmap(out, 4096);
> +	gem_close(fd, scratch);
> +	put_ahnd(ahnd);
> +	intel_ctx_destroy(fd, ctx);
> +	close(fd);
> +}
> +
>  static bool has_error_state(int dir)
>  {
>  	bool result;
> @@ -231,6 +280,8 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
>  	check_error_state(e->name, offset, batch);
>  	munmap(batch, 4096);
>  	put_ahnd(ahnd);
> +
> +	check_alive();
>  }
>  
>  static void
> @@ -289,6 +340,8 @@ test_engine_hang(const intel_ctx_t *ctx,
>  		put_ahnd(ahndN);
>  	}
>  	put_ahnd(ahnd);
> +
> +	check_alive();
>  }
>  
>  static int hang_count;
> @@ -321,6 +374,8 @@ static void test_hang_detector(const intel_ctx_t *ctx,
>  
>  	/* Did it work? */
>  	igt_assert(hang_count == 1);
> +
> +	check_alive();
>  }
>  
>  /* This test covers the case where we end up in an uninitialised area of the
> @@ -356,6 +411,8 @@ static void hangcheck_unterminated(const intel_ctx_t *ctx)
>  		igt_force_gpu_reset(device);
>  		igt_assert_f(0, "unterminated batch did not trigger a hang!\n");
>  	}
> +
> +	check_alive();
>  }
>  
>  static void do_tests(const char *name, const char *prefix,
> @@ -433,6 +490,8 @@ igt_main
>  		igt_assert(sysfs != -1);
>  
>  		igt_require(has_error_state(sysfs));
> +
> +		gem_require_mmap_wc(device);
>  	}
>  
>  	igt_describe("Basic error capture");
> -- 
> 2.25.1
> 
