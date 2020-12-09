Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C9A2D4896
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 19:08:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DFF6E17F;
	Wed,  9 Dec 2020 18:08:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B61036E17F
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 18:08:01 +0000 (UTC)
IronPort-SDR: igxr+bGN3fJxe3T8vJZkV57wN+6QhmgMLTZB5Zf7d3CWuDHQMnD5VmbzMDiYP8NrJW+CJXvy3c
 FYHcu0JA4ndg==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174266073"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="174266073"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 10:08:00 -0800
IronPort-SDR: sIRSeuFAdMMV+jqdZaYVDZwk71hwSHsGEMeQNGaAOHqBMpeDUFRrVw4bt5DUXnTLQxJWILAniK
 1l+6yhWCc1xQ==
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="376452119"
Received: from rsaxena-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.212.249.193])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 10:08:00 -0800
Date: Wed, 9 Dec 2020 10:07:59 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Message-ID: <20201209180759.GB3405@intel.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-3-sean.z.huang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209070307.2304-3-sean.z.huang@intel.com>
Subject: Re: [Intel-gfx] [RFC-v3 02/13] drm/i915/pxp: set KCR reg init
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 08, 2020 at 11:02:56PM -0800, Huang, Sean Z wrote:
> Set the KCR init during the boot time, which is
> required by hardware, to allow us doing further
> protection operation such as sending commands to
> GPU or TEE.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h | 6 ++++++
>  2 files changed, 14 insertions(+)
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
> +
>  int intel_pxp_init(struct intel_pxp *pxp)
>  {
>  	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> @@ -16,6 +22,8 @@ int intel_pxp_init(struct intel_pxp *pxp)
>  
>  	intel_pxp_ctx_init(&pxp->ctx);
>  
> +	intel_uncore_write(gt->uncore, KCR_INIT, KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
> +
>  	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 7c3d49a6a3ab..b906bf7dea90 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -15,6 +15,7 @@ struct intel_pxp {
>  #ifdef CONFIG_DRM_I915_PXP
>  int intel_pxp_init(struct intel_pxp *pxp);
>  void intel_pxp_uninit(struct intel_pxp *pxp);
> +int intel_pxp_reg_read(struct intel_pxp *pxp, u32 offset, u32 *regval);
>  #else
>  static inline int intel_pxp_init(struct intel_pxp *pxp)
>  {
> @@ -24,6 +25,11 @@ static inline int intel_pxp_init(struct intel_pxp *pxp)
>  static inline void intel_pxp_uninit(struct intel_pxp *pxp)
>  {
>  }
> +
> +static inline int intel_pxp_reg_read(struct intel_pxp *pxp, u32 offset, u32 *regval)
> +{
> +	return 0;
> +}

I'm wondering if some other patch in this series will explain the need for this,
but as is right now, this shouldn't be here on this patch... and maybe not even at all.
Let's minimize the wraps and use the already provided read/write functions.

>  #endif
>  
>  #endif /* __INTEL_PXP_PM_H__ */
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
