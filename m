Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB816720412
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46B6810E69E;
	Fri,  2 Jun 2023 14:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137C210E69E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685715177; x=1717251177;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TPM0D0hqO3RwEFL1ObfFYtTDlPgch8h1aYWSTA+Ysj0=;
 b=GzwsE87COFyflzcRvcPryjtIfU5j6B0Ypktn1Pyq8QI2HsOtc54rOdQQ
 vwUJOabMje/xcoUrvx/T8EZpNPQ2pnc4QXmgYmKciDN6A4BU708S65r7l
 w1GLfN+90AFOOsCOP7IN/MdmvtOBZUtxDsTy/u/FPaqUx+sQubEvBEeV0
 W/3TIs+Hzie8o5X1A+kln1lZ/8AoyPPrU4J9f/MYKCXots7sglZWTl3lg
 fg8Fb8AAxX+l1htC32PbFZVILA+nt9WE5QawbIY1ydFOublag0kUSuqcW
 GzglN79qPqcR6wotG8vgxkPoR2RQNUPj6RcbjkAOgAiMuzt6/4GDVDWXg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="359177346"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="359177346"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:12:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="658289508"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="658289508"
Received: from gsavorni-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.46])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:12:54 -0700
Date: Fri, 2 Jun 2023 16:12:51 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZHn44w+3gjE4BCtJ@ashyti-mobl2.lan>
References: <20230602141127.291372-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230602141127.291372-1-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use the correct error value
 when kernel_context() fails
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
Cc: Nathan Chancellor <nathan@kernel.org>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nathan and all,

please ignore, I sent the wrong file.

Andi

On Fri, Jun 02, 2023 at 04:11:27PM +0200, Andi Shyti wrote:
> kernel_context() returns an error pointer. Use pointer-error
> conversion functions to evaluate its return value, rather than
> checking for a '0' return.
> 
> Fixes: eb5c10cbbc2f ("drm/i915: Remove I915_USER_PRIORITY_SHIFT")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Chris Wilson < chris@chris-wilson.co.uk>
> Cc: <stable@vger.kernel.org> # v5.13+
> ---
>  drivers/gpu/drm/i915/gt/selftest_execlists.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 736b89a8ecf54..4202df5b8c122 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -1530,8 +1530,8 @@ static int live_busywait_preempt(void *arg)
>  	struct drm_i915_gem_object *obj;
>  	struct i915_vma *vma;
>  	enum intel_engine_id id;
> -	int err = -ENOMEM;
>  	u32 *map;
> +	int err;
>  
>  	/*
>  	 * Verify that even without HAS_LOGICAL_RING_PREEMPTION, we can
> @@ -1539,13 +1539,17 @@ static int live_busywait_preempt(void *arg)
>  	 */
>  
>  	ctx_hi = kernel_context(gt->i915, NULL);
> -	if (!ctx_hi)
> -		return -ENOMEM;
> +	if (IS_ERR(ctx_hi))
> +		return PTR_ERR(ctx_hi);
> +
>  	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
>  
>  	ctx_lo = kernel_context(gt->i915, NULL);
> -	if (!ctx_lo)
> +	if (IS_ERR(ctx_lo)) {
> +		err = PTR_ERR(ctx_lo);
>  		goto err_ctx_hi;
> +	}
> +
>  	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
>  
>  	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
> -- 
> 2.40.1
