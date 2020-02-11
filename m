Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A854D1590C2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 14:55:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFE6B6EA73;
	Tue, 11 Feb 2020 13:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A6B6EA72
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 13:54:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 05:54:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="233454894"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 11 Feb 2020 05:54:55 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 634955C0D8C; Tue, 11 Feb 2020 15:53:56 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200211125856.978559-1-chris@chris-wilson.co.uk>
References: <20200211125856.978559-1-chris@chris-wilson.co.uk>
Date: Tue, 11 Feb 2020 15:53:56 +0200
Message-ID: <87ftfh9qmj.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Poison rings after use
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> On retiring the request, we should not re-use these elements in the ring
> (at least not until we fill the ringbuffer and knowingly reuse the space).
> Leave behind some poison to (hopefully) trap ourselves if we make a
> mistake.
>
> Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 26 +++++++++++++++++---------
>  1 file changed, 17 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 0ecc2cf64216..9ee7bf0200b0 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -203,6 +203,19 @@ static void free_capture_list(struct i915_request *request)
>  	}
>  }
>  
> +static void __i915_request_fill(struct i915_request *rq, u8 val)
> +{
> +	void *vaddr = rq->ring->vaddr;
> +	u32 head;
> +
> +	head = rq->infix;
> +	if (rq->postfix < head) {
> +		memset(vaddr + head, val, rq->ring->size - head);
> +		head = 0;
> +	}
> +	memset(vaddr + head, val, rq->postfix - head);
> +}
> +
>  static void remove_from_engine(struct i915_request *rq)
>  {
>  	struct intel_engine_cs *engine, *locked;
> @@ -247,6 +260,9 @@ bool i915_request_retire(struct i915_request *rq)
>  	 */
>  	GEM_BUG_ON(!list_is_first(&rq->link,
>  				  &i915_request_timeline(rq)->requests));
> +	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> +		/* Poison before we release our space in the ring */
> +		__i915_request_fill(rq, POISON_FREE);

Would it be too detrimental for perf to check for POISON_FREE when
we emit the requests?

I think it is a positive problem that we are in brink
of a DEBUG_GEM_LEVEL split :O

Regardless, with this we get gpu helping on revealing
our bookkeepping failures.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  	rq->ring->head = rq->postfix;
>  
>  	/*
> @@ -1175,9 +1191,6 @@ i915_request_await_object(struct i915_request *to,
>  
>  void i915_request_skip(struct i915_request *rq, int error)
>  {
> -	void *vaddr = rq->ring->vaddr;
> -	u32 head;
> -
>  	GEM_BUG_ON(!IS_ERR_VALUE((long)error));
>  	dma_fence_set_error(&rq->fence, error);
>  
> @@ -1189,12 +1202,7 @@ void i915_request_skip(struct i915_request *rq, int error)
>  	 * context, clear out all the user operations leaving the
>  	 * breadcrumb at the end (so we get the fence notifications).
>  	 */
> -	head = rq->infix;
> -	if (rq->postfix < head) {
> -		memset(vaddr + head, 0, rq->ring->size - head);
> -		head = 0;
> -	}
> -	memset(vaddr + head, 0, rq->postfix - head);
> +	__i915_request_fill(rq, 0);
>  	rq->infix = rq->postfix;
>  }
>  
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
