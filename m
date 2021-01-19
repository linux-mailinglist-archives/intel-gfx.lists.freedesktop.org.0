Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58392FB558
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320406E174;
	Tue, 19 Jan 2021 10:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CCA76E174
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:28:02 +0000 (UTC)
IronPort-SDR: a9SVA/u8Zx26T+tY7QWBypTREK5+NtBKNqAttTSI8eWyP7MnPZnZbnqyuc5nyVnVyhKo/BlaEG
 HD6j1AiRVJTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="175403749"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="175403749"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:28:01 -0800
IronPort-SDR: fDTZihazyaGqvfGhsS3D/OMpesbNpRpZRZ6nYiZgneLPT4o6DLEbCopyY8K934A9wJm7d5oqvC
 5cjU2KuC8b9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="573513424"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jan 2021 02:27:59 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 659555C20E6; Tue, 19 Jan 2021 12:25:14 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210119094053.6919-1-chris@chris-wilson.co.uk>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
Date: Tue, 19 Jan 2021 12:25:14 +0200
Message-ID: <87pn21gr5h.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: One more flush for
 Baytrail clear residuals
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

> CI reports that Baytail requires one more invalidate after CACHE_MODE
> for it to be happy.
>
> Fixes: ace44e13e577 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> index 39478712769f..8551e6de50e8 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -353,19 +353,21 @@ static void gen7_emit_pipeline_flush(struct batch_chunk *batch)
>  
>  static void gen7_emit_pipeline_invalidate(struct batch_chunk *batch)
>  {
> -	u32 *cs = batch_alloc_items(batch, 0, 8);
> +	u32 *cs = batch_alloc_items(batch, 0, 10);
>  
>  	/* ivb: Stall before STATE_CACHE_INVALIDATE */
> -	*cs++ = GFX_OP_PIPE_CONTROL(4);
> +	*cs++ = GFX_OP_PIPE_CONTROL(5);
>  	*cs++ = PIPE_CONTROL_STALL_AT_SCOREBOARD |
>  		PIPE_CONTROL_CS_STALL;
>  	*cs++ = 0;
>  	*cs++ = 0;
> +	*cs++ = 0;

dw[5] seems to be only for gen8+. Does it make a difference?

-Mika

>  
> -	*cs++ = GFX_OP_PIPE_CONTROL(4);
> +	*cs++ = GFX_OP_PIPE_CONTROL(5);
>  	*cs++ = PIPE_CONTROL_STATE_CACHE_INVALIDATE;
>  	*cs++ = 0;
>  	*cs++ = 0;
> +	*cs++ = 0;
>  
>  	batch_advance(batch, cs);
>  }
> @@ -397,6 +399,7 @@ static void emit_batch(struct i915_vma * const vma,
>  	batch_add(&cmds, 0xffff0000);
>  	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
>  	batch_add(&cmds, 0xffff0000 | PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
> +	gen7_emit_pipeline_invalidate(&cmds);
>  	gen7_emit_pipeline_flush(&cmds);
>  
>  	/* Switch to the media pipeline and our base address */
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
