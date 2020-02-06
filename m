Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C641548EA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 17:15:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AF0C6E529;
	Thu,  6 Feb 2020 16:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B26B6E529
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 16:15:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 08:15:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="226194084"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 06 Feb 2020 08:15:33 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 163B15C0D66; Thu,  6 Feb 2020 18:14:39 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200206014439.2137800-2-chris@chris-wilson.co.uk>
References: <20200206014439.2137800-1-chris@chris-wilson.co.uk>
 <20200206014439.2137800-2-chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 18:14:39 +0200
Message-ID: <87ftfnae1c.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Set the PP_DIR registers
 upon enabling ring submission
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

> Always prime the page table registers before starting the ring. Even
> though we will update these to the per-context page tables during
> dispatch, it is prudent to ensure that the registers always point to a
> valid PD.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 40 ++++++++++++-------
>  1 file changed, 26 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 42168d7cf5b5..f915a63e1110 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -635,6 +635,27 @@ static bool stop_ring(struct intel_engine_cs *engine)
>  	return (ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR) == 0;
>  }
>  
> +static struct i915_address_space *vm_alias(struct i915_address_space *vm)
> +{
> +	if (i915_is_ggtt(vm))
> +		vm = &i915_vm_to_ggtt(vm)->alias->vm;
> +
> +	return vm;
> +}
> +
> +static void set_pp_dir(struct intel_engine_cs *engine)
> +{
> +	struct i915_address_space *vm = vm_alias(engine->gt->vm);
> +
> +	if (vm) {
> +		struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
> +
> +		ENGINE_WRITE(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);

I did think that for setup we set these zero first. But it seems
pointless. They should be zero after reset anywasy.

> +		ENGINE_WRITE(engine, RING_PP_DIR_BASE,
> +			     px_base(ppgtt->pd)->ggtt_offset << 10);

Shift for 16 and then index by cacheline so 16-6 it seems.

> +	}
> +}
> +
>  static int xcs_resume(struct intel_engine_cs *engine)
>  {
>  	struct drm_i915_private *dev_priv = engine->i915;
> @@ -693,6 +714,8 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  	GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->tail));
>  	intel_ring_update_space(ring);
>  
> +	set_pp_dir(engine);
> +

Then rings are off and we start by setting up the pd.
Can't figure out a better spot.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  	/* First wake the ring up to an empty/idle ring */
>  	ENGINE_WRITE(engine, RING_HEAD, ring->head);
>  	ENGINE_WRITE(engine, RING_TAIL, ring->head);
> @@ -1169,23 +1192,12 @@ static void ring_context_destroy(struct kref *ref)
>  	intel_context_free(ce);
>  }
>  
> -static struct i915_address_space *vm_alias(struct intel_context *ce)
> -{
> -	struct i915_address_space *vm;
> -
> -	vm = ce->vm;
> -	if (i915_is_ggtt(vm))
> -		vm = &i915_vm_to_ggtt(vm)->alias->vm;
> -
> -	return vm;
> -}
> -
>  static int __context_pin_ppgtt(struct intel_context *ce)
>  {
>  	struct i915_address_space *vm;
>  	int err = 0;
>  
> -	vm = vm_alias(ce);
> +	vm = vm_alias(ce->vm);
>  	if (vm)
>  		err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)));
>  
> @@ -1196,7 +1208,7 @@ static void __context_unpin_ppgtt(struct intel_context *ce)
>  {
>  	struct i915_address_space *vm;
>  
> -	vm = vm_alias(ce);
> +	vm = vm_alias(ce->vm);
>  	if (vm)
>  		gen6_ppgtt_unpin(i915_vm_to_ppgtt(vm));
>  }
> @@ -1553,7 +1565,7 @@ static int switch_context(struct i915_request *rq)
>  
>  	GEM_BUG_ON(HAS_EXECLISTS(rq->i915));
>  
> -	ret = switch_mm(rq, vm_alias(ce));
> +	ret = switch_mm(rq, vm_alias(ce->vm));
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
