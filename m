Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5844A9E2F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 18:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCC110EEDC;
	Fri,  4 Feb 2022 17:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA10710EEE5
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 17:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643996759; x=1675532759;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=M598TJz4HB/brJRr5oQuxpFZLQvb22wr/+AMZC6Wrfw=;
 b=baTYcAOCOJEVl7LrcQFfjNjj1QU/X0u/0RipRE2uQ7Wo2wF8sLvm552W
 YTLGrXRTsOQVUNGAk3xzUoATcqPQjhg8/3bc/G6ER+kcwC9ify3oPVqBV
 AopsXLRcGQFfllAnncnYeePPb81Ly2OeIZNdv1F+8EQjEHAqF6crTh0xH
 RYk4knpdZDQHY+o6HZ6DK4pg0twNvzv6/ITF6wj08SVXEaUoytOQODTgG
 UkuHcmiZ08anPnXQfWXkZ39fyd6geepQR9tvcwciGbkc/4/slfz9lgEcI
 lgHXRqieAkZvKqG2LdIhR9UC++3kJFHwSB35WWmTtstVQh8n94fhGnUM7 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="235810763"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="235810763"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 09:45:59 -0800
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="539241163"
Received: from gpanagop-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 09:45:54 -0800
Date: Fri, 4 Feb 2022 18:45:51 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <Yf1mT6cFanBUgEXa@intel.intel>
References: <20220127084915.GC25644@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220127084915.GC25644@kili>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix some error codes in
 __cancel_reset()
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
Cc: kernel-janitors@vger.kernel.org,
 Micha?? Winiarski <michal.winiarski@intel.com>,
 Thomas Hellstr?m <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Zhihao Cheng <chengzhihao1@huawei.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dan,

> There were two error paths in __cancel_reset() which return success
> instead of a negative error code as expected.
> 
> Fixes: 4e6835466771 ("drm/i915/selftests: Add a cancel request selftest that triggers a reset")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> >From static analysis.  I am not 100% sure this.  Please review extra
> carefully!
> 
>  drivers/gpu/drm/i915/selftests/i915_request.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 2a99dd7c2fe8..05e9f977757b 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -809,7 +809,8 @@ static int __cancel_reset(struct drm_i915_private *i915,
>  	preempt_timeout_ms = engine->props.preempt_timeout_ms;
>  	engine->props.preempt_timeout_ms = 100;
>  
> -	if (igt_spinner_init(&spin, engine->gt))
> +	err = igt_spinner_init(&spin, engine->gt);
> +	if (err)
>  		goto out_restore;
>  
>  	ce = intel_context_create(engine);
> @@ -838,8 +839,10 @@ static int __cancel_reset(struct drm_i915_private *i915,
>  	}
>  
>  	nop = intel_context_create_request(ce);
> -	if (IS_ERR(nop))
> +	if (IS_ERR(nop)) {
> +		err = PTR_ERR(nop);
>  		goto out_rq;
> +	}

Looks correct to me:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thank you,
Andi
