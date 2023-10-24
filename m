Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3D07D4F05
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 13:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2A3F10E349;
	Tue, 24 Oct 2023 11:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D2510E349
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 11:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698147459; x=1729683459;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Us3iGXsvXowNncdb5YJrDeESu6aPkaxxYljhnBFmBFs=;
 b=fnArszkgpaBUrFnrUCjr1MUtqlRaSiCCu48ddAK7CL3z8rikTREOCVql
 /BXL3BjuBDNZ58LLgfZ2goT1eHJXRX08BV7/O6K7rtnpLiDRzvSxN4J1J
 Hl7Z9DzAdiibPCSTrqWznXayvpO7t1dog6BTyfknqpKen4nG/RPah5Q/a
 yFB2y0NBFCTWFutqzcwYQjgRnQOCFc7cymjhQUc4nUOIXnyKmKVPJ1ZW4
 bOouNWxWtx/t2h+BcEdgCyrVefGPXYacauc1n/bXNjBUu+m+yKK+h8+cg
 W0k1wkOPpR8A2SH7t16iflUHy7WuWbpgxUTT+snUi90LUk/4E8zRja6rF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="384236911"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="384236911"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:37:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6146864"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 04:36:17 -0700
Date: Tue, 24 Oct 2023 13:37:32 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZTesfLICnBOyO4E-@ashyti-mobl2.lan>
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
 <20231023-wabb-v4-2-f75dec962b7d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023-wabb-v4-2-f75dec962b7d@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 2/4] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Mon, Oct 23, 2023 at 10:21:46PM +0200, Andrzej Hajda wrote:
> Apply WABB blit for Wa_16018031267 / Wa_16018063123.
> 
> v3: drop unused enum definition
> v4: move selftest to separate patch, use wa only on BCS0.
> 
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> Co-developed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Two little not binding notes below.

...

> -static u32 *context_indirect_bb(const struct intel_context *ce)
> +/*
> + * per_ctx below determines which WABB section is used.
> + * When true, the function returns the location of the
> + * PER_CTX_BB.  When false, the function returns the
> + * location of the INDIRECT_CTX.
> + */
> +static u32 *context_wabb(const struct intel_context *ce, bool per_ctx)
>  {
>  	void *ptr;
>  
> @@ -1029,6 +1047,7 @@ static u32 *context_indirect_bb(const struct intel_context *ce)
>  	ptr = ce->lrc_reg_state;
>  	ptr -= LRC_STATE_OFFSET; /* back to start of context image */
>  	ptr += context_wa_bb_offset(ce);
> +	ptr += per_ctx ? PAGE_SIZE : 0;

I'm not a big fan of bools here... I'd rather add as parameter
an offset value and just do:

	ptr += offset;

Your choice, not strong on this.

>  
>  	return ptr;
>  }
> @@ -1105,7 +1124,8 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>  
>  	if (GRAPHICS_VER(engine->i915) >= 12) {
>  		ce->wa_bb_page = context_size / PAGE_SIZE;
> -		context_size += PAGE_SIZE;
> +		/* INDIRECT_CTX and PER_CTX_BB need separate pages. */
> +		context_size += PAGE_SIZE * 2;
>  	}
>  
>  	if (intel_context_is_parent(ce) && intel_engine_uses_guc(engine)) {
> @@ -1407,12 +1427,85 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
>  	return gen12_emit_aux_table_inv(ce->engine, cs);
>  }
>  
> +static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u32 *cs)
> +{
> +	struct intel_gt *gt = ce->engine->gt;
> +	int mocs = gt->mocs.uc_index << 1;
> +
> +	/**
> +	 * Wa_16018031267 / Wa_16018063123 requires that SW forces the
> +	 * main copy engine arbitration into round robin mode.  We
> +	 * additionally need to submit the following WABB blt command
> +	 * to produce 4 subblits with each subblit generating 0 byte
> +	 * write requests as WABB:
> +	 *
> +	 * XY_FASTCOLOR_BLT
> +	 *  BG0    -> 5100000E
> +	 *  BG1    -> 0000003F (Dest pitch)
> +	 *  BG2    -> 00000000 (X1, Y1) = (0, 0)
> +	 *  BG3    -> 00040001 (X2, Y2) = (1, 4)
> +	 *  BG4    -> scratch
> +	 *  BG5    -> scratch
> +	 *  BG6-12 -> 00000000
> +	 *  BG13   -> 20004004 (Surf. Width= 2,Surf. Height = 5 )
> +	 *  BG14   -> 00000010 (Qpitch = 4)
> +	 *  BG15   -> 00000000
> +	 */
> +	*cs++ = XY_FAST_COLOR_BLT_CMD | (16 - 2);
> +	*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) | 0x3f;
> +	*cs++ = 0;
> +	*cs++ = 4 << 16 | 1;
> +	*cs++ = lower_32_bits(i915_vma_offset(ce->vm->rsvd));
> +	*cs++ = upper_32_bits(i915_vma_offset(ce->vm->rsvd));
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0x20004004;
> +	*cs++ = 0x10;
> +	*cs++ = 0;
> +
> +	return cs;
> +}
> +
> +static u32 *
> +xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
> +{
> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (NEEDS_FASTCOLOR_BLT_WABB(ce->engine))
> +		cs = xehp_emit_fastcolor_blt_wabb(ce, cs);
> +
> +	return cs;
> +}

Is this function necessary? Can't we just add in
xehp_emit_fastcolor_blt_wabb()

	if (!NEEDS_FASTCOLOR_BLT_WABB(ce->engine))
		return cs;

Andi
