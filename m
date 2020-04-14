Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2341A7EE1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 15:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBBC46E21A;
	Tue, 14 Apr 2020 13:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 059776E4FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 13:53:22 +0000 (UTC)
IronPort-SDR: RcYIALoNQwAdTlRZQ+6FrXPq3o5MNqppgH1Lg+W5XrO43/p8tAW/bBOw24eNFd7ee7s7X36Zol
 dS7RZJESYxnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 06:53:22 -0700
IronPort-SDR: GyYl/eykvr+vOKwdC8KEpiYMfowSj/qSWHoIgpMWrStPN+Y7O7utBMTae0j/lzi+73r1bSK/X5
 YWH6zWCrf1Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="399954879"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 14 Apr 2020 06:53:21 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6A69F5C3A0F; Tue, 14 Apr 2020 16:51:32 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200414122000.19353-1-mika.kuoppala@linux.intel.com>
References: <20200414122000.19353-1-mika.kuoppala@linux.intel.com>
Date: Tue, 14 Apr 2020 16:51:32 +0300
Message-ID: <87d08anpjv.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix indirect context size
 calculation
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

Mika Kuoppala <mika.kuoppala@linux.intel.com> writes:

> Hardware needs cacheline count for indirect context size.
> Count of zero means that the feature is disabled.
> If we only divide size with cacheline bytes, we get
> one cacheline short of execution.
>
> Divide by rounding up to a cacheline size so that
> hardware executes everything intended.
>
> Bspec: 11739
> Fixes: 17ee950df38b ("drm/i915/gen8: Add infrastructure to initialize WA batch buffers")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 6fbad5e2343f..acbb36ad17ff 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4739,7 +4739,8 @@ static void init_wa_bb_reg_state(u32 * const regs,
>  
>  		regs[pos_bb_per_ctx + 2] =
>  			(ggtt_offset + wa_ctx->indirect_ctx.offset) |
> -			(wa_ctx->indirect_ctx.size / CACHELINE_BYTES);
> +			DIV_ROUND_UP(wa_ctx->indirect_ctx.size,
> +				     CACHELINE_BYTES);

The aligment to cacheline is checked on the emitting phase.

This patch can be ignored.
-Mika


>  
>  		regs[pos_bb_per_ctx + 4] =
>  			intel_lr_indirect_ctx_offset(engine) << 6;
> -- 
> 2.17.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
