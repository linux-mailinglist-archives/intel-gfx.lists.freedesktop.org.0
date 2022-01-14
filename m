Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D7D48EEAD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 17:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C59310EB65;
	Fri, 14 Jan 2022 16:50:17 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93EC510EAE2;
 Fri, 14 Jan 2022 16:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642179015; x=1673715015;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UXpcN3FneI+eitD5ArUvJ7fc/sjpcxS0di92KJUA+3Q=;
 b=HNg9ODtUdHL7wtvSIHTWFw0qyz8I/NWiSiAVKj1gF/i+R071DeYt+PM9
 +fRPPha4/uB6FT1yqBlT8E9PC3C+M1Ssy5pbOhCFf70pjKV/5hcqIfi7X
 pJFVFH3yLYKsBbma5Mz9720bqYObebtoNz0ARV8a36133Rjm7l5eFdJ1X
 rSZrGew/sBYdpRgYI6aCl00o55CAkVAgjTvrMs2bZyc6PZqQcZasluFY6
 vOm3/+QcChzye9dW8S4Ba/2q7HtWRT8irtCvNDGDzqhNyN7GlmMHHvvx3
 r3hShubl7U7CiuixG7xWIIU0Y2CamLXegWyRf7Jpjks/V1UemSIRfSU1Y Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="224266824"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="224266824"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 08:50:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="577329958"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 08:50:15 -0800
Date: Fri, 14 Jan 2022 08:44:25 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220114164425.GA9684@jons-linux-dev-box>
References: <20220113235118.1575410-1-John.C.Harrison@Intel.com>
 <20220113235118.1575410-5-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113235118.1575410-5-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v4 i-g-t 04/15]
 tests/i915/i915_hangman: Explicitly test per engine reset vs full GPU reset
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

On Thu, Jan 13, 2022 at 03:51:07PM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Although the hangman test was ensuring that *some* reset functionality
> was enabled, it did not differentiate what kind. The infrastructure
> required to choose between per engine reset or full GT reset was
> recently added. So update this test to use it as well.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  tests/i915/i915_hangman.c | 76 +++++++++++++++++++++++++--------------
>  1 file changed, 49 insertions(+), 27 deletions(-)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 280eac197..7b8390a6c 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -323,40 +323,26 @@ static void hangcheck_unterminated(const intel_ctx_t *ctx)
>  	}
>  }
>  
> -igt_main
> +static void do_tests(const char *name, const char *prefix,
> +		     const intel_ctx_t *ctx)
>  {
>  	const struct intel_execution_engine2 *e;
> -	const intel_ctx_t *ctx;
> -	igt_hang_t hang = {};
> -
> -	igt_fixture {
> -		device = drm_open_driver(DRIVER_INTEL);
> -		igt_require_gem(device);
> -
> -		ctx = intel_ctx_create_all_physical(device);
> -
> -		hang = igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE);
> -
> -		sysfs = igt_sysfs_open(device);
> -		igt_assert(sysfs != -1);
> -
> -		igt_require(has_error_state(sysfs));
> -	}
> +	char buff[256];
>  
> -	igt_describe("Basic error capture");
> -	igt_subtest("error-state-basic")
> -		test_error_state_basic();
> -
> -	igt_describe("Per engine error capture");
> -	igt_subtest_with_dynamic("error-state-capture") {
> +	snprintf(buff, sizeof(buff), "Per engine error capture (%s reset)", name);
> +	igt_describe(buff);
> +	snprintf(buff, sizeof(buff), "%s-error-state-capture", prefix);
> +	igt_subtest_with_dynamic(buff) {
>  		for_each_ctx_engine(device, ctx, e) {
>  			igt_dynamic_f("%s", e->name)
>  				test_error_state_capture(ctx, e);
>  		}
>  	}
>  
> -	igt_describe("Per engine hang recovery (spin)");
> -	igt_subtest_with_dynamic("engine-hang") {
> +	snprintf(buff, sizeof(buff), "Per engine hang recovery (spin, %s reset)", name);
> +	igt_describe(buff);
> +	snprintf(buff, sizeof(buff), "%s-engine-hang", prefix);
> +	igt_subtest_with_dynamic(buff) {
>                  int has_gpu_reset = 0;
>  		struct drm_i915_getparam gp = {
>  			.param = I915_PARAM_HAS_GPU_RESET,
> @@ -374,8 +360,10 @@ igt_main
>  		}
>  	}
>  
> -	igt_describe("Per engine hang recovery (invalid CS)");
> -	igt_subtest_with_dynamic("engine-error") {
> +	snprintf(buff, sizeof(buff), "Per engine hang recovery (invalid CS, %s reset)", name);
> +	igt_describe(buff);
> +	snprintf(buff, sizeof(buff), "%s-engine-error", prefix);
> +	igt_subtest_with_dynamic(buff) {
>  		int has_gpu_reset = 0;
>  		struct drm_i915_getparam gp = {
>  			.param = I915_PARAM_HAS_GPU_RESET,
> @@ -391,11 +379,45 @@ igt_main
>  				test_engine_hang(ctx, e, IGT_SPIN_INVALID_CS);
>  		}
>  	}
> +}
> +
> +igt_main
> +{
> +	const intel_ctx_t *ctx;
> +	igt_hang_t hang = {};
> +
> +	igt_fixture {
> +		device = drm_open_driver(DRIVER_INTEL);
> +		igt_require_gem(device);
> +
> +		ctx = intel_ctx_create_all_physical(device);
> +
> +		hang = igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE);
> +
> +		sysfs = igt_sysfs_open(device);
> +		igt_assert(sysfs != -1);
> +
> +		igt_require(has_error_state(sysfs));
> +	}
> +
> +	igt_describe("Basic error capture");
> +	igt_subtest("error-state-basic")
> +		test_error_state_basic();
>  
>  	igt_describe("Check that executing unintialised memory causes a hang");
>  	igt_subtest("hangcheck-unterminated")
>  		hangcheck_unterminated(ctx);
>  
> +	do_tests("GT", "gt", ctx);
> +
> +	igt_fixture {
> +		igt_disallow_hang(device, hang);
> +
> +		hang = igt_allow_hang(device, ctx->id, HANG_ALLOW_CAPTURE | HANG_WANT_ENGINE_RESET);
> +	}
> +
> +	do_tests("engine", "engine", ctx);
> +
>  	igt_fixture {
>  		igt_disallow_hang(device, hang);
>  		intel_ctx_destroy(device, ctx);
> -- 
> 2.25.1
> 
