Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD592A416A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 11:14:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0646E89A;
	Tue,  3 Nov 2020 10:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A7056E89A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 10:14:26 +0000 (UTC)
IronPort-SDR: tSrxQqoT8ljeLokMsqZdGFEYIHvAJs2NaUVIx6itkf0wOA8NS5iCQ5M4Cc41E3g2GtF3UoMv0X
 Q6liUvDsTFlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="169134946"
X-IronPort-AV: E=Sophos;i="5.77,447,1596524400"; d="scan'208";a="169134946"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 02:14:26 -0800
IronPort-SDR: BLdmefsmpACf2OF+l6d8q4dZYMDt+IsSIc7s+EDh7fqxrjoRcWmVIen+ZPA7GhPq17UeF6FErd
 29GkHuMsHBsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,447,1596524400"; d="scan'208";a="396518950"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 03 Nov 2020 02:14:25 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7C5D25C2054; Tue,  3 Nov 2020 12:12:37 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201102221057.29626-1-chris@chris-wilson.co.uk>
References: <20201102221057.29626-1-chris@chris-wilson.co.uk>
Date: Tue, 03 Nov 2020 12:12:37 +0200
Message-ID: <877dr2g356.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Expose more parameters for
 emitting writes into the ring
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

> Add another lower level to emit_ggtt_write so that the GGTT nature of
> the write is not hardcoded into the emitter.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h | 55 ++++++++++++++++----------
>  1 file changed, 35 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 7c3a1012e702..760fefdfe392 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -245,22 +245,14 @@ static inline u32 *gen12_emit_pipe_control(u32 *batch, u32 flags0, u32 flags1, u
>  }
>  
>  static inline u32 *
> -__gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags0, u32 flags1)
> +__gen8_emit_write_rcs(u32 *cs, u32 value, u32 offset, u32 flags0, u32 flags1)

Opportunity to swap the offset/value to be in line with the actual qw
write. Just an observation rather than a value add proposal.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  {
> -	/* We're using qword write, offset should be aligned to 8 bytes. */
> -	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
> -
> -	/* w/a for post sync ops following a GPGPU operation we
> -	 * need a prior CS_STALL, which is emitted by the flush
> -	 * following the batch.
> -	 */
>  	*cs++ = GFX_OP_PIPE_CONTROL(6) | flags0;
> -	*cs++ = flags1 | PIPE_CONTROL_QW_WRITE | PIPE_CONTROL_GLOBAL_GTT_IVB;
> -	*cs++ = gtt_offset;
> +	*cs++ = flags1 | PIPE_CONTROL_QW_WRITE;
> +	*cs++ = offset;
>  	*cs++ = 0;
>  	*cs++ = value;
> -	/* We're thrashing one dword of HWS. */
> -	*cs++ = 0;
> +	*cs++ = 0; /* We're thrashing one extra dword. */
>  
>  	return cs;
>  }
> @@ -268,13 +260,38 @@ __gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags0, u32 f
>  static inline u32*
>  gen8_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
>  {
> -	return __gen8_emit_ggtt_write_rcs(cs, value, gtt_offset, 0, flags);
> +	/* We're using qword write, offset should be aligned to 8 bytes. */
> +	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
> +
> +	return __gen8_emit_write_rcs(cs,
> +				     value,
> +				     gtt_offset,
> +				     0,
> +				     flags | PIPE_CONTROL_GLOBAL_GTT_IVB);
>  }
>  
>  static inline u32*
>  gen12_emit_ggtt_write_rcs(u32 *cs, u32 value, u32 gtt_offset, u32 flags0, u32 flags1)
>  {
> -	return __gen8_emit_ggtt_write_rcs(cs, value, gtt_offset, flags0, flags1);
> +	/* We're using qword write, offset should be aligned to 8 bytes. */
> +	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
> +
> +	return __gen8_emit_write_rcs(cs,
> +				     value,
> +				     gtt_offset,
> +				     flags0,
> +				     flags1 | PIPE_CONTROL_GLOBAL_GTT_IVB);
> +}
> +
> +static inline u32 *
> +__gen8_emit_flush_dw(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
> +{
> +	*cs++ = (MI_FLUSH_DW + 1) | flags;
> +	*cs++ = gtt_offset;
> +	*cs++ = 0;
> +	*cs++ = value;
> +
> +	return cs;
>  }
>  
>  static inline u32 *
> @@ -285,12 +302,10 @@ gen8_emit_ggtt_write(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
>  	/* Offset should be aligned to 8 bytes for both (QW/DW) write types */
>  	GEM_BUG_ON(!IS_ALIGNED(gtt_offset, 8));
>  
> -	*cs++ = (MI_FLUSH_DW + 1) | MI_FLUSH_DW_OP_STOREDW | flags;
> -	*cs++ = gtt_offset | MI_FLUSH_DW_USE_GTT;
> -	*cs++ = 0;
> -	*cs++ = value;
> -
> -	return cs;
> +	return __gen8_emit_flush_dw(cs,
> +				    value,
> +				    gtt_offset | MI_FLUSH_DW_USE_GTT,
> +				    flags | MI_FLUSH_DW_OP_STOREDW);
>  }
>  
>  static inline void __intel_engine_reset(struct intel_engine_cs *engine,
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
