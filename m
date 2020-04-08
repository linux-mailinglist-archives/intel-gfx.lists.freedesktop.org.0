Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDFC1A1FF7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA85F6E0F1;
	Wed,  8 Apr 2020 11:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753716E0F1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 11:38:44 +0000 (UTC)
IronPort-SDR: SCiqhwFPFAjYhQ/kA+I+kE6L2urAWglVRZyElriDVWovMaD2t+RFt0yV1ZHw9YmOFUQrmYRK1X
 +Q/K3hIIqX0Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 04:38:43 -0700
IronPort-SDR: WFPugLdz+kyTZwqcv1TbxWPiKbXOxg6XSLquDwl4Jcrubsk3H3zIM2sNGhT8QkQcrPl7wO2TZy
 BrJhgloE2abw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="398175505"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 08 Apr 2020 04:38:43 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 264105C0D80; Wed,  8 Apr 2020 14:36:59 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200408091723.28937-1-chris@chris-wilson.co.uk>
References: <20200408091631.28753-1-chris@chris-wilson.co.uk>
 <20200408091723.28937-1-chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 14:36:59 +0300
Message-ID: <87lfn6nr8k.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Take an explicit ref
 for rq->batch
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

> Since we are peeking into the batch object of the request, it is
> beholden on us to hold a reference to it.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1634
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Follow the mon^H^H^H request.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 57db3d0ffaf2..616d03506c2c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -2655,7 +2655,7 @@ static int create_gang(struct intel_engine_cs *engine,
>  	if (IS_ERR(rq))
>  		goto err_obj;
>  
> -	rq->batch = vma;
> +	rq->batch = i915_vma_get(vma);
>  	i915_request_get(rq);
>  
>  	i915_vma_lock(vma);
> @@ -2679,6 +2679,7 @@ static int create_gang(struct intel_engine_cs *engine,
>  	return 0;
>  
>  err_rq:
> +	i915_vma_put(rq->batch);
>  	i915_request_put(rq);
>  err_obj:
>  	i915_gem_object_put(obj);
> @@ -2775,6 +2776,7 @@ static int live_preempt_gang(void *arg)
>  				err = -ETIME;
>  			}
>  
> +			i915_vma_put(rq->batch);
>  			i915_request_put(rq);
>  			rq = n;
>  		}
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
