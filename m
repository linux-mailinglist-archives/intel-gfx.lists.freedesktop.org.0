Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11708303C0C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 12:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B9C6E249;
	Tue, 26 Jan 2021 11:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DFC86E249
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 11:49:30 +0000 (UTC)
IronPort-SDR: E6z6PrDQysTUKI3V975vDEPefAaNhpPXwMmJOCxZzbvF2UZd2wUKRu+8nj3cRQz7PZjugSPGpd
 1MEPDeAFdTfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159663959"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159663959"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 03:49:29 -0800
IronPort-SDR: 69aiQyqwN9yUfXcvYwp9iK7rHd6cWSq6opPMpuDuNOsxhp+jcwOmzjqn2gJ/hYCQ6WJwxWfIhh
 HY4Dw9aNmajQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="402715889"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 26 Jan 2021 03:49:28 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DFE0A5C20E7; Tue, 26 Jan 2021 13:46:37 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210125220247.31701-1-chris@chris-wilson.co.uk>
References: <20210125220247.31701-1-chris@chris-wilson.co.uk>
Date: Tue, 26 Jan 2021 13:46:37 +0200
Message-ID: <871re7ly3m.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Flush before changing register
 state
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

> Flush; invalidate; change registers; invalidate; flush.
>
> Will this finally work on every device? Or will Baytrail complain again?
>
> On the positive side, we immediate see the benefit of having hsw-gt1 in
> CU.
CI

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>
> Fixes: ace44e13e577 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
> Testcase: igt/gem_render_tiled_blits # hsw-gt1
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> index 8551e6de50e8..e403eb046a43 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -393,6 +393,7 @@ static void emit_batch(struct i915_vma * const vma,
>  						     desc_count);
>  
>  	/* Reset inherited context registers */
> +	gen7_emit_pipeline_flush(&cmds);
>  	gen7_emit_pipeline_invalidate(&cmds);
>  	batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
>  	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
