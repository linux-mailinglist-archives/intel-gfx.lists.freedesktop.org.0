Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20770358F78
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 23:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE7C6E3FC;
	Thu,  8 Apr 2021 21:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6FD6E3FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 21:52:19 +0000 (UTC)
IronPort-SDR: T9p9UhXWnJYRdYju40RveckQ+AViDYACDrbtrNjXGluhgFKyljRog5MiC4xBo/ptymAOWsYU0I
 gusu8q5AZOUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="254973647"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="254973647"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:52:18 -0700
IronPort-SDR: FdRh8OQE0+uS2lFdiWhRKjmFT6ei1D7Jn0kjGm8Vgt2SZ/3IKBMS0zc4Z/+Mnw4In5WTj4dvAH
 N9DWX47paXbA==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="415967787"
Received: from kmkerns-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.209.131.159])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:52:17 -0700
Date: Thu, 8 Apr 2021 17:52:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <YG97EOydMw1Q8aRA@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-7-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210328225709.18541-7-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 06/16] drm/i915/pxp: set KCR reg init
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
Cc: Huang@freedesktop.org, intel-gfx@lists.freedesktop.org,
 Sean Z <sean.z.huang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 28, 2021 at 03:56:58PM -0700, Daniele Ceraolo Spurio wrote:
> The setting is required by hardware to allow us doing further protection
> operation such as sending commands to GPU or TEE. The register needs to
> be re-programmed on resume, so for simplicitly we bundle the programming
> with the component binding, which is automatically called on resume.
> 
> Further HW set-up operations will be added in the same location in
> follow-up patches, so get ready for them by using a couple of
> init/fini_hw wrappers instead of calling the KCR funcs directly.
> 
> v3: move programming to component binding function, rework commit msg
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c     | 27 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h     |  3 +++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c |  5 +++++
>  3 files changed, 35 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index a0fc43f72cad..c1ad0cf2c664 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -7,6 +7,24 @@
>  #include "gt/intel_context.h"
>  #include "i915_drv.h"
>  
> +/* KCR register definitions */
> +#define KCR_INIT _MMIO(0x320f0)
> +
> +/* Setting KCR Init bit is required after system boot */
> +#define KCR_INIT_ALLOW_DISPLAY_ME_WRITES REG_BIT(14)

defining registers outside of i915_reg.h is so wrong imo...
but I'm afraid I have lost this fight :/

> +
> +static void kcr_pxp_enable(struct intel_gt *gt)
> +{
> +	intel_uncore_write(gt->uncore, KCR_INIT,
> +			   _MASKED_BIT_ENABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES));
> +}
> +
> +static void kcr_pxp_disable(struct intel_gt *gt)
> +{
> +	intel_uncore_write(gt->uncore, KCR_INIT,
> +			   _MASKED_BIT_DISABLE(KCR_INIT_ALLOW_DISPLAY_ME_WRITES));
> +}
> +
>  static int create_vcs_context(struct intel_pxp *pxp)
>  {
>  	static struct lock_class_key pxp_lock;
> @@ -71,5 +89,14 @@ void intel_pxp_fini(struct intel_pxp *pxp)
>  	intel_pxp_tee_component_fini(pxp);
>  
>  	destroy_vcs_context(pxp);
> +}
> +
> +void intel_pxp_init_hw(struct intel_pxp *pxp)
> +{
> +	kcr_pxp_enable(pxp_to_gt(pxp));
> +}
>  
> +void intel_pxp_fini_hw(struct intel_pxp *pxp)
> +{
> +	kcr_pxp_disable(pxp_to_gt(pxp));
>  }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index e87550fb9821..5427c3b28aa9 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -22,6 +22,9 @@ static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
>  #ifdef CONFIG_DRM_I915_PXP
>  void intel_pxp_init(struct intel_pxp *pxp);
>  void intel_pxp_fini(struct intel_pxp *pxp);
> +
> +void intel_pxp_init_hw(struct intel_pxp *pxp);
> +void intel_pxp_fini_hw(struct intel_pxp *pxp);
>  #else
>  static inline void intel_pxp_init(struct intel_pxp *pxp)
>  {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 21916ec0f6ff..33130fb7113b 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -33,6 +33,9 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>  	pxp->pxp_component = data;
>  	pxp->pxp_component->tee_dev = tee_kdev;
>  
> +	/* the component is required to fully start the PXP HW */
> +	intel_pxp_init_hw(pxp);
> +
>  	return 0;
>  }
>  
> @@ -41,6 +44,8 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
>  {
>  	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
>  
> +	intel_pxp_fini_hw(pxp);
> +


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  	pxp->pxp_component = NULL;
>  }
>  
> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
