Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73C71C4F97
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 09:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A756E10F;
	Tue,  5 May 2020 07:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D3886E10F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 07:50:44 +0000 (UTC)
IronPort-SDR: uPtAPGFfu1a5tx6u/q1+t61OD2+gRCLikTVsuWnp8oqIRqyPsdCzUTt4QsEMMsTk1qSC8s+1il
 Yrz6p0f6EAcg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 00:50:43 -0700
IronPort-SDR: H+5UitjS256KsHebkr61ZLVB552Rrlk524i5WnRCEupOu43dLWl0jxIuHJ0gGZFv6+l2ZW4WWz
 OZByhC+x2XDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="259610623"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 05 May 2020 00:50:42 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 306015C1DC1; Tue,  5 May 2020 10:48:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200504180507.6017-1-chris@chris-wilson.co.uk>
References: <20200504180507.6017-1-chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 10:48:37 +0300
Message-ID: <87v9laom96.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI] drm/i915/gt: Small tidy of gen8+ breadcrumb
 emission
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

> Use a local to shrink a line under 80 columns, and refactor the common
> emit_xcs_breadcrumb() wrapper of ggtt-write.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 34 +++++++++++++----------------
>  1 file changed, 15 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d4ef344657b0..c00366387b54 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4641,8 +4641,7 @@ static u32 *emit_preempt_busywait(struct i915_request *request, u32 *cs)
>  }
>  
>  static __always_inline u32*
> -gen8_emit_fini_breadcrumb_footer(struct i915_request *request,
> -				 u32 *cs)
> +gen8_emit_fini_breadcrumb_tail(struct i915_request *request, u32 *cs)
>  {
>  	*cs++ = MI_USER_INTERRUPT;
>  
> @@ -4656,14 +4655,16 @@ gen8_emit_fini_breadcrumb_footer(struct i915_request *request,
>  	return gen8_emit_wa_tail(request, cs);
>  }
>  
> -static u32 *gen8_emit_fini_breadcrumb(struct i915_request *request, u32 *cs)
> +static u32 *emit_xcs_breadcrumb(struct i915_request *request, u32 *cs)
>  {
> -	cs = gen8_emit_ggtt_write(cs,
> -				  request->fence.seqno,
> -				  i915_request_active_timeline(request)->hwsp_offset,
> -				  0);
> +	u32 addr = i915_request_active_timeline(request)->hwsp_offset;
>  
> -	return gen8_emit_fini_breadcrumb_footer(request, cs);
> +	return gen8_emit_ggtt_write(cs, request->fence.seqno, addr, 0);
> +}
> +
> +static u32 *gen8_emit_fini_breadcrumb(struct i915_request *rq, u32 *cs)
> +{
> +	return gen8_emit_fini_breadcrumb_tail(rq, emit_xcs_breadcrumb(rq, cs));
>  }
>  
>  static u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
> @@ -4681,7 +4682,7 @@ static u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
>  				      PIPE_CONTROL_FLUSH_ENABLE |
>  				      PIPE_CONTROL_CS_STALL);
>  
> -	return gen8_emit_fini_breadcrumb_footer(request, cs);
> +	return gen8_emit_fini_breadcrumb_tail(request, cs);
>  }
>  
>  static u32 *
> @@ -4697,7 +4698,7 @@ gen11_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
>  				      PIPE_CONTROL_DC_FLUSH_ENABLE |
>  				      PIPE_CONTROL_FLUSH_ENABLE);
>  
> -	return gen8_emit_fini_breadcrumb_footer(request, cs);
> +	return gen8_emit_fini_breadcrumb_tail(request, cs);
>  }
>  
>  /*
> @@ -4735,7 +4736,7 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *request, u32 *cs)
>  }
>  
>  static __always_inline u32*
> -gen12_emit_fini_breadcrumb_footer(struct i915_request *request, u32 *cs)
> +gen12_emit_fini_breadcrumb_tail(struct i915_request *request, u32 *cs)
>  {
>  	*cs++ = MI_USER_INTERRUPT;
>  
> @@ -4749,14 +4750,9 @@ gen12_emit_fini_breadcrumb_footer(struct i915_request *request, u32 *cs)
>  	return gen8_emit_wa_tail(request, cs);
>  }
>  
> -static u32 *gen12_emit_fini_breadcrumb(struct i915_request *request, u32 *cs)
> +static u32 *gen12_emit_fini_breadcrumb(struct i915_request *rq, u32 *cs)
>  {
> -	cs = gen8_emit_ggtt_write(cs,
> -				  request->fence.seqno,
> -				  i915_request_active_timeline(request)->hwsp_offset,
> -				  0);
> -
> -	return gen12_emit_fini_breadcrumb_footer(request, cs);
> +	return gen12_emit_fini_breadcrumb_tail(rq, emit_xcs_breadcrumb(rq, cs));
>  }
>  
>  static u32 *
> @@ -4775,7 +4771,7 @@ gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
>  				      PIPE_CONTROL_FLUSH_ENABLE |
>  				      PIPE_CONTROL_HDC_PIPELINE_FLUSH);
>  
> -	return gen12_emit_fini_breadcrumb_footer(request, cs);
> +	return gen12_emit_fini_breadcrumb_tail(request, cs);
>  }
>  
>  static void execlists_park(struct intel_engine_cs *engine)
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
