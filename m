Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BC148E060
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 23:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E4010E149;
	Thu, 13 Jan 2022 22:36:38 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B159810E149;
 Thu, 13 Jan 2022 22:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642113397; x=1673649397;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7VlT3F3Zmg/c+A73I7nbScNEivuMgdgzPYlPlz48JlY=;
 b=Nw+ZCCf3Q1twz3jTIObLnisLrhL6as5Z4kkW31Xf1fTeydSVuyrGBhlS
 wTL8lK0bklNpn4+8c0xn/80oBARDfwsRgItjFhyR7f6EYAdGHFBthy9wi
 m6e+sEaiS+i9VKtcy3d/i2t3ZQyNJoWfUZVIP7cbZLN5w/76i3NSS1xOg
 q6HbnybqZXOecsOjQOvWa5fudvez8mAmF9AXw2oWnkkzoVGjHIjAyOU6P
 y0SjwsfbngbA7neSwLFzQDzgHvR0mMIKyZ4SigKap7EG8OhpuJoWvuITV
 EvjQ3TlRZPUOCbZmKDO2bZo1ZlHuOUsr4lumvlLNggkzLyEOPyfI8HwJQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="307471902"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="307471902"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 14:36:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="614122687"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 14:36:36 -0800
Date: Thu, 13 Jan 2022 14:30:47 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113223047.GA13936@jons-linux-dev-box>
References: <20220113195947.1536897-12-John.C.Harrison@Intel.com>
 <20220113212653.1554786-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113212653.1554786-1-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/i915_hangman: Don't let
 background contexts cause a ban
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

On Thu, Jan 13, 2022 at 01:26:53PM -0800, John.C.Harrison@Intel.com wrote:
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
> v2: Simplify anti-banning code (review feedback from Matthew Brost).
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  tests/i915/i915_hangman.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 9f7f8062c..537ed35a5 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -284,6 +284,17 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
>  	check_alive();
>  }
>  
> +static void context_unban(int fd, unsigned ctx)
> +{
> +	struct drm_i915_gem_context_param param = {
> +		.ctx_id = ctx,
> +		.param = I915_CONTEXT_PARAM_BANNABLE,
> +		.value = 0,
> +	};
> +
> +	gem_context_set_param(fd, &param);
> +}
> +
>  static void
>  test_engine_hang(const intel_ctx_t *ctx,
>  		 const struct intel_execution_engine2 *e, unsigned int flags)
> @@ -307,6 +318,7 @@ test_engine_hang(const intel_ctx_t *ctx,
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
