Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B9B2D5594
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 09:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE976E3EF;
	Thu, 10 Dec 2020 08:43:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17DD6E3EF
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 08:43:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23276322-1500050 for multiple; Thu, 10 Dec 2020 08:43:28 +0000
MIME-Version: 1.0
In-Reply-To: <20201210072435.24066-3-sean.z.huang@intel.com>
References: <20201210072435.24066-1-sean.z.huang@intel.com>
 <20201210072435.24066-3-sean.z.huang@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 08:43:28 +0000
Message-ID: <160758980852.595.4926485420604986511@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC-v4 02/21] drm/i915/pxp: set KCR reg init
 during the boot time
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

Quoting Huang, Sean Z (2020-12-10 07:24:16)
> Set the KCR init during the boot time, which is
> required by hardware, to allow us doing further
> protection operation such as sending commands to
> GPU or TEE.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index ba43b2c923c7..c4815950567d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,12 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
>  
> +/* KCR register definitions */
> +#define KCR_INIT            _MMIO(0x320f0)
> +#define KCR_INIT_MASK_SHIFT (16)
> +/* Setting KCR Init bit is required after system boot */
> +#define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))

That's a regular masked register.

#define KCR_INIT_ALLOW_DISPLAY_ME_WRITES REG_BIT(14)
intel_uncore_write(gt->uncore,
		   KCR_INIT, _MASKED_ENABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES));

> +
>  int intel_pxp_init(struct intel_pxp *pxp)
>  {
>         struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> @@ -16,6 +22,8 @@ int intel_pxp_init(struct intel_pxp *pxp)
>  
>         intel_pxp_ctx_init(&pxp->ctx);
>  
> +       intel_uncore_write(gt->uncore, KCR_INIT, KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
> +
>         drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
>  
>         return 0;
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
