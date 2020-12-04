Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A532CEF23
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 15:01:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC5826E17A;
	Fri,  4 Dec 2020 14:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF856E17A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 14:01:52 +0000 (UTC)
IronPort-SDR: gphwP6YUa3KLj61jrOcpoRntuqxbsyd0x89z/wBo0rhrYAfp0z5pDyb0YBxqO/Y+ZuEubAunp7
 TPREa1ct5w+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="258091477"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="258091477"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 06:01:36 -0800
IronPort-SDR: uNFL38Z3+T+j2sNm/ZnGJscC5yoLHIuK7K4Txm7+8xeuesGfAaOBxGxMHobbXmvere1D/COGQ5
 oj1flrmR23+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="482399665"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 04 Dec 2020 06:01:35 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DB3725C2069; Fri,  4 Dec 2020 15:59:23 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201203081616.1645-3-chris@chris-wilson.co.uk>
References: <20201203081616.1645-1-chris@chris-wilson.co.uk>
 <20201203081616.1645-3-chris@chris-wilson.co.uk>
Date: Fri, 04 Dec 2020 15:59:23 +0200
Message-ID: <87a6ut3c5g.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Include reset failures in
 the trace
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The GT and engine reset failures are completely invisible when looking at
> a trace for a bug, but are vital to understanding the incomplete flow.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 3654c955e6be..000d63588e9e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -231,7 +231,7 @@ static int g4x_do_reset(struct intel_gt *gt,
>  			      GRDOM_MEDIA | GRDOM_RESET_ENABLE);
>  	ret =  wait_for_atomic(g4x_reset_complete(pdev), 50);
>  	if (ret) {
> -		drm_dbg(&gt->i915->drm, "Wait for media reset failed\n");
> +		GT_TRACE(gt, "Wait for media reset failed\n");
>  		goto out;
>  	}
>  
> @@ -239,7 +239,7 @@ static int g4x_do_reset(struct intel_gt *gt,
>  			      GRDOM_RENDER | GRDOM_RESET_ENABLE);
>  	ret =  wait_for_atomic(g4x_reset_complete(pdev), 50);
>  	if (ret) {
> -		drm_dbg(&gt->i915->drm, "Wait for render reset failed\n");
> +		GT_TRACE(gt, "Wait for render reset failed\n");
>  		goto out;
>  	}
>  
> @@ -265,7 +265,7 @@ static int ilk_do_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask,
>  					   5000, 0,
>  					   NULL);
>  	if (ret) {
> -		drm_dbg(&gt->i915->drm, "Wait for render reset failed\n");
> +		GT_TRACE(gt, "Wait for render reset failed\n");
>  		goto out;
>  	}
>  
> @@ -276,7 +276,7 @@ static int ilk_do_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask,
>  					   5000, 0,
>  					   NULL);
>  	if (ret) {
> -		drm_dbg(&gt->i915->drm, "Wait for media reset failed\n");
> +		GT_TRACE(gt, "Wait for media reset failed\n");
>  		goto out;
>  	}
>  
> @@ -305,9 +305,9 @@ static int gen6_hw_domain_reset(struct intel_gt *gt, u32 hw_domain_mask)
>  					   500, 0,
>  					   NULL);
>  	if (err)
> -		drm_dbg(&gt->i915->drm,
> -			"Wait for 0x%08x engines reset failed\n",
> -			hw_domain_mask);
> +		GT_TRACE(gt,
> +			 "Wait for 0x%08x engines reset failed\n",
> +			 hw_domain_mask);
>  
>  	return err;
>  }
> @@ -407,8 +407,7 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine, u32 *hw_mask)
>  		return 0;
>  
>  	if (ret) {
> -		drm_dbg(&engine->i915->drm,
> -			"Wait for SFC forced lock ack failed\n");
> +		ENGINE_TRACE(engine, "Wait for SFC forced lock ack failed\n");
>  		return ret;
>  	}
>  
> @@ -1148,8 +1147,7 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
>  		ret = intel_guc_reset_engine(&engine->gt->uc.guc, engine);
>  	if (ret) {
>  		/* If we fail here, we expect to fallback to a global reset */
> -		drm_dbg(&gt->i915->drm, "%sFailed to reset %s, ret=%d\n",
> -			uses_guc ? "GuC " : "", engine->name, ret);
> +		ENGINE_TRACE(engine, "Failed to reset, err: %d\n", ret);
>  		goto out;
>  	}
>  
> @@ -1186,7 +1184,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  
>  	kobject_uevent_env(kobj, KOBJ_CHANGE, error_event);
>  
> -	drm_dbg(&gt->i915->drm, "resetting chip, engines=%x\n", engine_mask);
> +	GT_TRACE(gt, "resetting chip, engines=%x\n", engine_mask);
>  	kobject_uevent_env(kobj, KOBJ_CHANGE, reset_event);
>  
>  	/* Use a watchdog to ensure that our reset completes */
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
