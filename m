Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B312D629C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 17:55:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07356EA9A;
	Thu, 10 Dec 2020 16:55:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660936EA9A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 16:55:50 +0000 (UTC)
IronPort-SDR: syWnt68mz2n2tnOg2xSF+oAc25o5aCQ1dN0u0vEWRn2E0GoHp080h9NsIPaNUQPqxLM0pgL5kb
 qws09jFV6zMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="171723203"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="171723203"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 08:55:49 -0800
IronPort-SDR: PEp2/x2wTLxrkQbhQ9P3LJszqGBV//5y8EFNxT6E/mJM7WLJ3kTRglnYYEvwQgfSHK4QA1CXuM
 OPXgoLNXl9hw==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="364769123"
Received: from yechielg-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.81.29])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 08:55:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Huang\, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
In-Reply-To: <20201209070307.2304-3-sean.z.huang@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-3-sean.z.huang@intel.com>
Date: Thu, 10 Dec 2020 18:55:44 +0200
Message-ID: <87eejx8usv.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 08 Dec 2020, "Huang, Sean Z" <sean.z.huang@intel.com> wrote:
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

Why here instead of i915_reg.h?

Please at least follow the style described at the top of that file.

BR,
Jani.


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
>  #endif
>  
>  #endif /* __INTEL_PXP_PM_H__ */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
