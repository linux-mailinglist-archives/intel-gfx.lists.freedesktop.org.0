Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025D864D97D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 11:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622B510E513;
	Thu, 15 Dec 2022 10:25:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3194C10E513
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 10:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671099897; x=1702635897;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=f/vpzdkmUEUtAOy9McpzETqN3/GzlBuPdx3eyA3ZeYI=;
 b=C2JeTy+u3DGEBJaraF6q0ZW6sGDj1nbJBfaKq9o+6oHYOOy0zeqD7wGg
 Fa4Xf+Aj2TNCeJbwgelxXru45wZozd2zQyNuqpVJRtVT9rSTeIBDSC3W3
 MsmmxYvbm3QfDfoaNaYJotho6PgxlK5cU992ER7EywtLW9SmtVQLYOBHU
 te+MGJXtBkSRGnUkF4UpxVi8TQpIHZidUbhsesKI7bOb3PwzlYGYEfTXs
 Ag93+IGCea+SsXTcBQihBQgza984QU//3MAuYgh96ggwtuVqabQ0Arund
 QeDuOd03Ap7CFoTFzSa6HxDxei8xtVmFWnlmDZAeBXLh1ftEX8m00I+2x Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="320499383"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="320499383"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 02:24:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="680057436"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="680057436"
Received: from bdragu-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.214.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 02:24:45 -0800
Date: Thu, 15 Dec 2022 11:24:38 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y5r15hz8PQUnfAVi@ashyti-mobl2.lan>
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

On Wed, Dec 14, 2022 at 08:54:39AM +0100, Andrzej Hajda wrote:
> In case of Gen12.50 video and compute engines, TLB_INV registers are
> masked - to modify one bit, corresponding bit in upper half of the register
> must be enabled, otherwise nothing happens.
> 
> Fixes: 77fa9efc16a9 ("drm/i915/xehp: Create separate reg definitions for new MCR registers")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Pushed to drm-intel-gt-next.

Thanks,
Andi

> ---
> Hi,
> 
> This patch was sent already to ML, but together with refactoring patch.
> Since it contains fix and should be merged ASAP it is sent separately
> to get CI test results.
> 
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
