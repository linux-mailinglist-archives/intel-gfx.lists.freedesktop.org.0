Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29FC154953
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 17:36:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6EAC6FAA6;
	Thu,  6 Feb 2020 16:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F73F6FAA6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 16:36:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 08:36:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="279719504"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Feb 2020 08:36:07 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DE0A45C0D66; Thu,  6 Feb 2020 18:35:12 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200206014439.2137800-1-chris@chris-wilson.co.uk>
References: <20200206014439.2137800-1-chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 18:35:12 +0200
Message-ID: <87a75vad33.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Tweak gen7 xcs flushing
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

> Don't immediately write the seqno into the breadcrumb slot, but wait
> until we've attempted to flush the writes; that is we need to ensure the
> memory is coherent prior to updating the breadcrumb so that any
> observers who see the new seqno can proceed.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 24 ++++++++++++-------
>  1 file changed, 16 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 9537d4912225..42168d7cf5b5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -446,31 +446,39 @@ static u32 *gen6_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
>  	return cs;
>  }
>  
> -#define GEN7_XCS_WA 32
> -static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> +#define GEN7_XCS_WA 8
> +static u32 *
> +__gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 addr, u32 *cs)
>  {
>  	int i;
>  
> -	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
> -	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
> -
>  	*cs++ = MI_FLUSH_DW | MI_INVALIDATE_TLB |
>  		MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
> -	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
> +	*cs++ = addr | MI_FLUSH_DW_USE_GTT;
>  	*cs++ = rq->fence.seqno;
>  
>  	for (i = 0; i < GEN7_XCS_WA; i++) {
>  		*cs++ = MI_STORE_DWORD_INDEX;
> -		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
> +		*cs++ = addr;
>  		*cs++ = rq->fence.seqno;
>  	}
>  
> +	return cs;
> +}
> +
> +static u32 *gen7_xcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> +{
> +	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
> +	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
> +
> +	cs = __gen7_xcs_emit_breadcrumb(rq,  I915_GEM_HWS_SEQNO_ADDR + 4, cs);

One fake for the above before the real thing?
-Mika


> +	cs = __gen7_xcs_emit_breadcrumb(rq,  I915_GEM_HWS_SEQNO_ADDR, cs);
> +
>  	*cs++ = MI_FLUSH_DW;
>  	*cs++ = 0;
>  	*cs++ = 0;
>  
>  	*cs++ = MI_USER_INTERRUPT;
> -	*cs++ = MI_NOOP;
>  
>  	rq->tail = intel_ring_offset(rq, cs);
>  	assert_ring_tail_valid(rq->ring, rq->tail);
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
