Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3C9473FCB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 10:48:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B3810E2B3;
	Tue, 14 Dec 2021 09:48:31 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75F0C10E2B3;
 Tue, 14 Dec 2021 09:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639475310; x=1671011310;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=s7Lcekp+2iMOIPGqBHa7RcMspEFTaxbTRd1yBTGoPW0=;
 b=WNa7kOY0UbH2l5taIdlvB+jmOJhI/gC+YTPX7anzOWfP14jgva6Nni3Z
 LvYFaLKanolHbkGXDHDcQOOAuZyF+ZzbA+3Gais7pyXDAJdkde57eY7se
 3KSO6zZm2Z15R/fAIpJOp4QYmSewWv0JokvkleJ+TDNOCaoBI+o30qoDH
 wZgIrXFJgTU3zwamiB8kuuW3arjSk6wqLBZYJdatCUoug/bR8scJ6Exf3
 CMTt2Cicgpw4+kxxjs6NiQKgfhi8aDZ/wIInRE3RdP4S4CNSryfB63U0d
 OpaOSXD15crNat7rOXYLXiy+JeOPJJGntebxm9UFS3neUj3nPq2A9xvBJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="263081404"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="263081404"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:48:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="481854090"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.185])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 01:48:28 -0800
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1mx4PW-0005Dh-DK; Tue, 14 Dec 2021 11:47:50 +0200
Date: Tue, 14 Dec 2021 11:47:50 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: John.C.Harrison@intel.com
Message-ID: <YbhoRiHwnkZV3awF@platvala-desk.ger.corp.intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-2-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211213232914.2523139-2-John.C.Harrison@Intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 01/11]
 tests/i915/i915_hangman: Add descriptions
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
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 13, 2021 at 03:29:04PM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Added descriptions of the various sub-tests and the test as a whole.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  tests/i915/i915_hangman.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 4c18c22db..025bb8713 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -46,6 +46,8 @@
>  static int device = -1;
>  static int sysfs = -1;
>  
> +IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
> +
>  static bool has_error_state(int dir)
>  {
>  	bool result;
> @@ -315,9 +317,9 @@ static void hangcheck_unterminated(void)
>  
>  	gem_execbuf(device, &execbuf);
>  	if (gem_wait(device, handle, &timeout_ns) != 0) {
> -		/* need to manually trigger an hang to clean before failing */
> +		/* need to manually trigger a hang to clean before failing */
>  		igt_force_gpu_reset(device);
> -		igt_assert_f(0, "unterminated batch did not trigger an hang!");
> +		igt_assert_f(0, "unterminated batch did not trigger a hang!");

Ouch, this is a bug that could use a drive-by fix in this same commit:
Add a newline after that text.

With that,
Reviewed-by: Petri Latvala <petri.latvala@intel.com>

>  	}
>  }
>  
> @@ -341,9 +343,11 @@ igt_main
>  		igt_require(has_error_state(sysfs));
>  	}
>  
> +	igt_describe("Basic error capture");
>  	igt_subtest("error-state-basic")
>  		test_error_state_basic();
>  
> +	igt_describe("Per engine error capture");
>  	igt_subtest_with_dynamic("error-state-capture") {
>  		for_each_ctx_engine(device, ctx, e) {
>  			igt_dynamic_f("%s", e->name)
> @@ -351,6 +355,7 @@ igt_main
>  		}
>  	}
>  
> +	igt_describe("Per engine hang recovery (spin)");
>  	igt_subtest_with_dynamic("engine-hang") {
>                  int has_gpu_reset = 0;
>  		struct drm_i915_getparam gp = {
> @@ -369,6 +374,7 @@ igt_main
>  		}
>  	}
>  
> +	igt_describe("Per engine hang recovery (invalid CS)");
>  	igt_subtest_with_dynamic("engine-error") {
>  		int has_gpu_reset = 0;
>  		struct drm_i915_getparam gp = {
> @@ -386,6 +392,7 @@ igt_main
>  		}
>  	}
>  
> +	igt_describe("Check that executing unintialised memory causes a hang");
>  	igt_subtest("hangcheck-unterminated")
>  		hangcheck_unterminated();
>  
> -- 
> 2.25.1
> 
