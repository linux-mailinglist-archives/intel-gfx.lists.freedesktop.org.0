Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF91D22AA65
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jul 2020 10:13:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A706E0F2;
	Thu, 23 Jul 2020 08:13:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743836E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 08:13:06 +0000 (UTC)
IronPort-SDR: UXWaNeOqCwqxSvvmThaEQGrxuToXXcU6tAE8uGhHsNBBbD+yFJwAhq6hhny4h3/fkR5CnBDuLI
 93F7q7qJBcSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="215098423"
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; d="scan'208";a="215098423"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2020 01:13:05 -0700
IronPort-SDR: 8+ytA8mfVVjo3a56svqMjhNrVFZTUphSdvBKEOqp7fUbQsvaikr7Q8m7vBOootMlJsL1KE5Rq8
 Pm2rI2O9MjBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; d="scan'208";a="488286047"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 23 Jul 2020 01:13:04 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 333F25C183F; Thu, 23 Jul 2020 11:12:36 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200723074808.29908-1-chris@chris-wilson.co.uk>
References: <20200723074808.29908-1-chris@chris-wilson.co.uk>
Date: Thu, 23 Jul 2020 11:12:36 +0300
Message-ID: <874kpy645n.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove gen check before calling
 intel_rps_boost
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

> It's been a while since gen6_rps_boost() [that only worked on gen6+] was
> replaced by intel_rps_boost() that understood itself when rps was
> active. Since the intel_rps_boost() is gen-agnostic, just call it.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_request.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 679a915e9a63..e48daeef6882 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1823,11 +1823,8 @@ long i915_request_wait(struct i915_request *rq,
>  	 * but at a cost of spending more power processing the workload
>  	 * (bad for battery).
>  	 */
> -	if (flags & I915_WAIT_PRIORITY) {
> -		if (!i915_request_started(rq) &&
> -		    INTEL_GEN(rq->engine->i915) >= 6)
> -			intel_rps_boost(rq);
> -	}
> +	if (flags & I915_WAIT_PRIORITY && !i915_request_started(rq))
> +		intel_rps_boost(rq);
>  
>  	wait.tsk = current;
>  	if (dma_fence_add_callback(&rq->fence, &wait.cb, request_wait_wake))
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
