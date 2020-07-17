Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7CD223704
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 10:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB3D6E48E;
	Fri, 17 Jul 2020 08:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925206E48E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 08:30:33 +0000 (UTC)
IronPort-SDR: jUvCOsoR3bz7aH4F9S3dSY6B7BA319g6AJictlCXEZ2vVK51y5xrTeGCRaTjpOtv+Q+EQrk5v0
 rh8aMSiV5+eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="148715133"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="148715133"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:30:32 -0700
IronPort-SDR: 8ZFlICftthXa8HV+7u/UnIh3WcTNeKPgCy5lihOCQa41I7Vs4pgO0NHAB2zCjCSOXzKJZylTRX
 OEuCKhydReTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="300500709"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 17 Jul 2020 01:30:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id AAA6E5C0D8D; Fri, 17 Jul 2020 11:30:07 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200716203201.11977-2-chris@chris-wilson.co.uk>
References: <20200716203201.11977-1-chris@chris-wilson.co.uk>
 <20200716203201.11977-2-chris@chris-wilson.co.uk>
Date: Fri, 17 Jul 2020 11:30:07 +0300
Message-ID: <875zam35o0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Wait for aux invalidation
 on Tigerlake
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

> Add a SRM read back of the aux invalidation register after poking
> hsdes: 1809175790, as failing to do so leads to writes going astray.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 31 ++++++++++++++++++++++-------
>  1 file changed, 24 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index e0280a672f1d..c9e46792b976 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4757,14 +4757,21 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  	intel_engine_mask_t aux_inv = 0;
>  	u32 cmd, *cs;
>  
> +	cmd = 4;
> +	if (mode & EMIT_INVALIDATE)
> +		cmd += 2;
>  	if (mode & EMIT_INVALIDATE)
>  		aux_inv = request->engine->mask & ~BIT(BCS0);
> +	if (aux_inv)
> +		cmd += 2 * hweight8(aux_inv) + 6;
>  
> -	cs = intel_ring_begin(request,
> -			      4 + (aux_inv ? 2 * hweight8(aux_inv) + 2 : 0));
> +	cs = intel_ring_begin(request, cmd);
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> +	if (mode & EMIT_INVALIDATE)
> +		*cs++ = preparser_disable(true);

This makes sense. Could be even separate patch.

On invalidate, care to try if the actual invalidate LRI
with POSTED set (after disabling preparser) could also fix this?

It feels like the posted was missing from the start.

-Mika

> +
>  	cmd = MI_FLUSH_DW + 1;
>  
>  	/* We always require a command barrier so that subsequent
> @@ -4780,11 +4787,6 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  			cmd |= MI_INVALIDATE_BSD;
>  	}
>  
> -	*cs++ = cmd;
> -	*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
> -	*cs++ = 0; /* upper addr */
> -	*cs++ = 0; /* value */
> -
>  	if (aux_inv) { /* hsdes: 1809175790 */
>  		struct intel_engine_cs *engine;
>  		unsigned int tmp;
> @@ -4796,7 +4798,22 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  			*cs++ = AUX_INV;
>  		}
>  		*cs++ = MI_NOOP;
> +
> +		*cs++ = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
> +		*cs++ = i915_mmio_reg_offset(aux_inv_reg(request->engine));
> +		*cs++ = i915_ggtt_offset(engine->status_page.vma) +
> +			I915_GEM_HWS_SCRATCH * sizeof(u32);
> +		*cs++ = 0;
>  	}
> +
> +	*cs++ = cmd;
> +	*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
> +	*cs++ = 0; /* upper addr */
> +	*cs++ = 0; /* value */
> +
> +	if (mode & EMIT_INVALIDATE)
> +		*cs++ = preparser_disable(false);
> +
>  	intel_ring_advance(request, cs);
>  
>  	return 0;
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
