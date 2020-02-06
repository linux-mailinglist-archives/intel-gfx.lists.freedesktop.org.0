Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AA4154947
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 17:33:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09566FAA4;
	Thu,  6 Feb 2020 16:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CF06FAA4
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 16:33:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 08:33:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="432270327"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 06 Feb 2020 08:33:16 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 512AC5C0D66; Thu,  6 Feb 2020 18:32:22 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200206014439.2137800-3-chris@chris-wilson.co.uk>
References: <20200206014439.2137800-1-chris@chris-wilson.co.uk>
 <20200206014439.2137800-3-chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 18:32:22 +0200
Message-ID: <87d0arad7t.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Stop invalidating the PD
 cachelines for gen7
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

> Trust that the HW does the right thing after simply updating the
> PD_DIR_BASE?

Bspec offers an invalidate before writing the base.

So, lets assume the DCLV write is superfluous as it will be
the same.

Then the sequence would be TLB_INVLIDATE followed by
PP_DIR_BASE (which will all pds)

-Mika

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index f915a63e1110..23f4fc2669d1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1341,14 +1341,10 @@ static int load_pd_dir(struct i915_request *rq,
>  	const struct intel_engine_cs * const engine = rq->engine;
>  	u32 *cs;
>  
> -	cs = intel_ring_begin(rq, 12);
> +	cs = intel_ring_begin(rq, 6);
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> -	*cs++ = MI_LOAD_REGISTER_IMM(1);
> -	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_DCLV(engine->mmio_base));
> -	*cs++ = valid;
> -
>  	*cs++ = MI_LOAD_REGISTER_IMM(1);
>  	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
>  	*cs++ = px_base(ppgtt->pd)->ggtt_offset << 10;
> @@ -1359,10 +1355,6 @@ static int load_pd_dir(struct i915_request *rq,
>  	*cs++ = intel_gt_scratch_offset(engine->gt,
>  					INTEL_GT_SCRATCH_FIELD_DEFAULT);
>  
> -	*cs++ = MI_LOAD_REGISTER_IMM(1);
> -	*cs++ = i915_mmio_reg_offset(RING_INSTPM(engine->mmio_base));
> -	*cs++ = _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE);
> -
>  	intel_ring_advance(rq, cs);
>  
>  	return rq->engine->emit_flush(rq, EMIT_FLUSH);
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
