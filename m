Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D7264C776
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 11:55:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1BA689830;
	Wed, 14 Dec 2022 10:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D5FD89452
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 10:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671015298; x=1702551298;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UOkFM1RgJn+ntVdH4IfVEqqhQ5lLbXxXWMNNE+bscSA=;
 b=eCSzVf+SjMDKalCHdDvy+CAyoIbEsCns6LHzYaIw+9Z+x27mShD8/Hch
 /HsS1Vmrh8dpu26NRji9YM8U6oYiYvJ0+zhXiY8KnrNIjcMa0+RywcjSD
 Jukl7U1/IBs9+P9Oo3LGeG2tQr98GtlC3MwO2FENpfDa/rwx781c54QW3
 oxU0AmGfF3axTxgjOH54V0r+0KGeDrLBL/Eu9xuh5AvF4Rsqejb7pQzTs
 ZDd+nX2bFf678ZkVgL5+S6wisVzT6KOwZBL+IsRGj3TAEo65a6KBDG1Gf
 GxHI/kEueOmrV3wYfe3oUcCsAYiQk5Q2KggcRP6zfCWom7xACsXzxAySS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="318413005"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="318413005"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 02:54:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="679653400"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="679653400"
Received: from brauta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.42.152])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 02:54:48 -0800
Date: Wed, 14 Dec 2022 11:54:41 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y5mrcQ7MEczwZLp3@ashyti-mobl2.lan>
References: <20221214075439.402485-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221214075439.402485-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix TLB invalidation for Gen12.50
 video and compute engines
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Dec 14, 2022 at 08:54:39AM +0100, Andrzej Hajda wrote:
> In case of Gen12.50 video and compute engines, TLB_INV registers are
> masked - to modify one bit, corresponding bit in upper half of the register
> must be enabled, otherwise nothing happens.
> 
> Fixes: 77fa9efc16a9 ("drm/i915/xehp: Create separate reg definitions for new MCR registers")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

> ---
> Hi,
> 
> This patch was sent already to ML, but together with refactoring patch.
> Since it contains fix and should be merged ASAP it is sent separately
> to get CI test results.

to be scrupulous I'll wait for the full CI run and then I will
push it

Thanks,
Andi

> Regards
> Andrzej
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 63f95c5f36146b..7eeee5a7cb33cb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1100,9 +1100,15 @@ static void mmio_invalidate_full(struct intel_gt *gt)
>  			continue;
>  
>  		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
> +			u32 val = BIT(engine->instance);
> +
> +			if (engine->class == VIDEO_DECODE_CLASS ||
> +			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
> +			    engine->class == COMPUTE_CLASS)
> +				val = _MASKED_BIT_ENABLE(val);
>  			intel_gt_mcr_multicast_write_fw(gt,
>  							xehp_regs[engine->class],
> -							BIT(engine->instance));
> +							val);
>  		} else {
>  			rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
>  			if (!i915_mmio_reg_offset(rb.reg))
> -- 
> 2.34.1
