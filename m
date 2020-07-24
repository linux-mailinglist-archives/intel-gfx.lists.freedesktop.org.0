Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3888822BF7E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 09:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 976DC6E931;
	Fri, 24 Jul 2020 07:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFBE46E931
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 07:39:27 +0000 (UTC)
IronPort-SDR: +ILzB/jP+78YYiyseYoQ1avRPYy64kYWVFTblGDc3gBrt9MKpXbIhRWddwUWj9K1U5CJ8L/7zh
 51qlNrtWZmzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="148588572"
X-IronPort-AV: E=Sophos;i="5.75,389,1589266800"; d="scan'208";a="148588572"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 00:39:27 -0700
IronPort-SDR: iIrpnnQGbyiUbcH3IdUGHcjgVlkT5iIZ0sITXlpN6dAVcxacl0++Sak5r6cuXNADQSgEVpJyVk
 CxYXrWlMFxwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,389,1589266800"; d="scan'208";a="433001606"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 24 Jul 2020 00:39:26 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 05C645C0D00; Fri, 24 Jul 2020 10:38:56 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200723181001.22711-1-chris@chris-wilson.co.uk>
References: <20200723174144.22195-2-chris@chris-wilson.co.uk>
 <20200723181001.22711-1-chris@chris-wilson.co.uk>
Date: Fri, 24 Jul 2020 10:38:56 +0300
Message-ID: <87wo2t1hwv.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Stall around xcs invalidations
 on tgl
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

> Whether this is an arbitrary stall or a vital ingredient, neverthess the
> impact is noticeable. If we do not have the stall around the xcs
> invalidation before a request, writes within that request sometimes go
> astray.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 353b1717fe84..7d914527d236 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4761,10 +4761,12 @@ static int gen12_emit_flush_render(struct i915_request *request,
>  
>  static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  {
> +#define WA_CNT 16 /* Magic delay or size of some internal pipelined buffer? */

Odd, very odd indeed.

I looked at the selftest in question. For completeness, there should be
READ_ONCE on where the hwsp is read, but that is just a makeup.

But how about forcing the write completion check on, on the actual
write to the hwsp? It is enabled with bit 10.

-Mika

>  	intel_engine_mask_t aux_inv = 0;
>  	u32 cmd, *cs;
> +	int n;
>  
> -	cmd = 4;
> +	cmd = 4 * WA_CNT;
>  	if (mode & EMIT_INVALIDATE)
>  		cmd += 2;
>  	if (mode & EMIT_INVALIDATE)
> @@ -4781,7 +4783,8 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  
>  	cmd = MI_FLUSH_DW + 1;
>  
> -	/* We always require a command barrier so that subsequent
> +	/*
> +	 * We always require a command barrier so that subsequent
>  	 * commands, such as breadcrumb interrupts, are strictly ordered
>  	 * wrt the contents of the write cache being flushed to memory
>  	 * (and thus being coherent from the CPU).
> @@ -4794,10 +4797,12 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  			cmd |= MI_INVALIDATE_BSD;
>  	}
>  
> -	*cs++ = cmd;
> -	*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
> -	*cs++ = 0; /* upper addr */
> -	*cs++ = 0; /* value */
> +	for (n = 0; n < WA_CNT; n++) {
> +		*cs++ = cmd;
> +		*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
> +		*cs++ = 0; /* upper addr */
> +		*cs++ = 0; /* value */
> +	}
>  
>  	if (aux_inv) { /* hsdes: 1809175790 */
>  		struct intel_engine_cs *engine;
> @@ -4818,6 +4823,7 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  	intel_ring_advance(request, cs);
>  
>  	return 0;
> +#undef WA_CNT
>  }
>  
>  static void assert_request_valid(struct i915_request *rq)
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
