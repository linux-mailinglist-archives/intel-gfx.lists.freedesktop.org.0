Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C770648DF61
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 22:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0DB10E3E0;
	Thu, 13 Jan 2022 21:07:00 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F4910E2CA;
 Thu, 13 Jan 2022 21:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642108019; x=1673644019;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9pfr1ziUSnYv/BB7gN8xc1Pz4zD+xuCbfjTKw3S8YBg=;
 b=Gid872FtKvbCI5NpLwBVPGmhzMPY9ze0KyjNOybXM/2rpwIOd0emtm/T
 wDuhPaNIMhKWsgtB+xkCaIvlZ49Z26q22e7FB0KRmOaNyU30uAF2vFE7z
 Bb8QtMfbv6/tfMdkwES3Ot/1E9PWOLi1+vOsgejcBfaNPT2Z2zb3mPjxB
 oHgzn/FaWbvoKo1C8SbBDjtFmzWE/9sCzle0n06Uh0r/yxMS0VmGE4FkC
 uH18ut33fGft+gziG92e3UZbHNISQZ8EL99zUuLtDD/kSv9ui7rVK9e2y
 4xLUA+Qh8iApOaktlPexqXvLAgVjnXm9SHf+hTOXd0eESIYqEdxK4tFzM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244068414"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244068414"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 13:06:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="614100617"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 13:06:58 -0800
Date: Thu, 13 Jan 2022 13:01:08 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113210108.GA24680@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-12-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-12-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 11/15]
 tests/i915/i915_hangman: Don't let background contexts cause a ban
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

On Thu, Jan 13, 2022 at 11:59:43AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The global context used by all the subtests for causing hangs is
> marked as unbannable. However, some of the subtests set background
> spinners running on all engines using a freshly created context. If
> there is a test failure for any reason, all of those spinners can be
> killed off as hanging contexts. On systems with lots of engines, that
> can result in the test being banned from creating any new contexts.
> 
> So make the spinner contexts unbannable as well. That way if one
> subtest fails it won't necessarily bring down all subsequent subtests.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  tests/i915/i915_hangman.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 9f7f8062c..567eb71ee 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -284,6 +284,21 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
>  	check_alive();
>  }
>  
> +static void context_unban(int fd, unsigned ctx)
> +{
> +	struct drm_i915_gem_context_param param = {
> +		.ctx_id = ctx,
> +		.param = I915_CONTEXT_PARAM_BANNABLE,

Looking at the kernel I don't see how I915_CONTEXT_PARAM_BANNABLE can
return -EINVAL unless it is protected context.

> +		.value = 0,
> +	};
> +
> +	if(__gem_context_set_param(fd, &param) == -EINVAL) {
> +		igt_assert_eq(param.value, 0);
> +		param.param = I915_CONTEXT_PARAM_BAN_PERIOD;

Also this always returns -EINVAL.

Probably can just go with:

gem_context_set_param on original parameters.

Matt

> +		gem_context_set_param(fd, &param);
> +	}
> +}
> +
>  static void
>  test_engine_hang(const intel_ctx_t *ctx,
>  		 const struct intel_execution_engine2 *e, unsigned int flags)
> @@ -307,6 +322,7 @@ test_engine_hang(const intel_ctx_t *ctx,
>  	num_ctx = 0;
>  	for_each_ctx_engine(device, ctx, other) {
>  		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
> +		context_unban(device, local_ctx[num_ctx]->id);
>  		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
>  		spin = __igt_spin_new(device,
>  				      .ahnd = ahndN,
> -- 
> 2.25.1
> 
