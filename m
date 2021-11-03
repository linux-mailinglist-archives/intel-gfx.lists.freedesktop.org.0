Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 607EB443AA0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 01:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AD06E905;
	Wed,  3 Nov 2021 00:52:16 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BD836E905;
 Wed,  3 Nov 2021 00:52:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="230123815"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="230123815"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 17:52:14 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="449866526"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 17:52:13 -0700
Date: Tue, 2 Nov 2021 17:47:40 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20211103004740.GA16769@jons-linux-dev-box>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-8-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211021234044.3071069-8-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH i-g-t 7/8] lib/igt_gt: Allow per engine
 reset testing
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

On Thu, Oct 21, 2021 at 04:40:43PM -0700, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> With GuC submission, engine resets are handled entirely within GuC
> rather than within i915. Traditionally, IGT has disallowed engine
> based resets becuase they don't send the uevent which IGT uses to
> check for unexpected resets. However, it is important to be able to
> test all reset mechanisms that can be used, so allow engine based
> resets to be enabled.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  lib/igt_gt.c | 44 +++++++++++++++++++++++++++++---------------
>  lib/igt_gt.h |  1 +
>  2 files changed, 30 insertions(+), 15 deletions(-)
> 
> diff --git a/lib/igt_gt.c b/lib/igt_gt.c
> index a0ba04cc1..7c7df95ee 100644
> --- a/lib/igt_gt.c
> +++ b/lib/igt_gt.c
> @@ -56,23 +56,28 @@
>   * engines.
>   */
>  
> +static int reset_query_once = -1;
> +
>  static bool has_gpu_reset(int fd)
>  {
> -	static int once = -1;
> -	if (once < 0) {
> -		struct drm_i915_getparam gp;
> -		int val = 0;
> -
> -		memset(&gp, 0, sizeof(gp));
> -		gp.param = 35; /* HAS_GPU_RESET */
> -		gp.value = &val;
> -
> -		if (ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp))
> -			once = intel_gen(intel_get_drm_devid(fd)) >= 5;
> -		else
> -			once = val > 0;
> +	if (reset_query_once < 0) {
> +		reset_query_once = gem_gpu_reset_type(fd);
> +
> +		/* Very old kernels did not support the query */
> +		if (reset_query_once == -1)
> +			reset_query_once =
> +			      (intel_gen(intel_get_drm_devid(fd)) >= 5) ? 1 : 0;
>  	}
> -	return once;
> +
> +	return reset_query_once > 0;
> +}
> +
> +static bool has_engine_reset(int fd)
> +{
> +	if (reset_query_once < 0)
> +		has_gpu_reset(fd);
> +
> +	return reset_query_once > 1;
>  }
>  
>  static void eat_error_state(int dev)
> @@ -176,7 +181,11 @@ igt_hang_t igt_allow_hang(int fd, unsigned ctx, unsigned flags)
>  		igt_skip("hang injection disabled by user [IGT_HANG=0]\n");
>  	gem_context_require_bannable(fd);
>  
> -	allow_reset = 1;
> +	if (flags & HANG_WANT_ENGINE_RESET)
> +		allow_reset = 2;
> +	else
> +		allow_reset = 1;
> +
>  	if ((flags & HANG_ALLOW_CAPTURE) == 0) {
>  		param.param = I915_CONTEXT_PARAM_NO_ERROR_CAPTURE;
>  		param.value = 1;
> @@ -187,11 +196,16 @@ igt_hang_t igt_allow_hang(int fd, unsigned ctx, unsigned flags)
>  		__gem_context_set_param(fd, &param);
>  		allow_reset = INT_MAX; /* any reset method */
>  	}
> +
>  	igt_require(igt_params_set(fd, "reset", "%d", allow_reset));
> +	reset_query_once = -1;  /* Re-query after changing param */
>  
>  	if (!igt_check_boolean_env_var("IGT_HANG_WITHOUT_RESET", false))
>  		igt_require(has_gpu_reset(fd));
>  
> +	if (flags & HANG_WANT_ENGINE_RESET)
> +		igt_require(has_engine_reset(fd));
> +
>  	ban = context_get_ban(fd, ctx);
>  	if ((flags & HANG_ALLOW_BAN) == 0)
>  		context_set_ban(fd, ctx, 0);
> diff --git a/lib/igt_gt.h b/lib/igt_gt.h
> index ceb044b86..c5059817b 100644
> --- a/lib/igt_gt.h
> +++ b/lib/igt_gt.h
> @@ -51,6 +51,7 @@ igt_hang_t igt_hang_ctx_with_ahnd(int fd, uint64_t ahnd, uint32_t ctx, int ring,
>  
>  #define HANG_ALLOW_BAN 1
>  #define HANG_ALLOW_CAPTURE 2
> +#define HANG_WANT_ENGINE_RESET 4
>  
>  igt_hang_t igt_hang_ring(int fd, int ring);
>  igt_hang_t igt_hang_ring_with_ahnd(int fd, int ring, uint64_t ahnd);
> -- 
> 2.25.1
> 
