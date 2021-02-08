Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA00A313B07
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 18:35:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2086E96D;
	Mon,  8 Feb 2021 17:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196326E974
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 17:35:39 +0000 (UTC)
IronPort-SDR: pEfPUwLWk6DM2UHnL9jtLoPwexuM2XorzwZwNhE5YpG9c3uS4RfpIHsRcu6Km3LJ7WC6Xs0LTJ
 PbxR/qgEbXOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="178239817"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="178239817"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:35:38 -0800
IronPort-SDR: rolYh43HV8ezlFgpOWwZYiOJqCpbPoNiPoQLqNumUNpZN9G3T7VTiC5mpstXvw3DLSiLffvgIi
 xiYZ0jnH6wJA==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="435703160"
Received: from anveshag-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.209.119.193])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:35:37 -0800
Date: Mon, 8 Feb 2021 12:35:36 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20210208173536.GG4798@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-6-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210206020925.36729-6-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [RFC 05/14] drm/i915/pxp: set KCR reg init during
 the boot time
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

On Fri, Feb 05, 2021 at 06:09:16PM -0800, Daniele Ceraolo Spurio wrote:
> Set the KCR init during the boot time, which is required by hardware,
> to allow us doing further protection operation such as sending commands
> to GPU or TEE.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 29 +++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 4ddc8a71a3e7..950daee5b907 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,24 @@
>  #include "gt/intel_context.h"
>  #include "i915_drv.h"
>  
> +/* KCR register definitions */
> +#define KCR_INIT _MMIO(0x320f0)
> +
> +/* Setting KCR Init bit is required after system boot */
> +#define KCR_INIT_ALLOW_DISPLAY_ME_WRITES REG_BIT(14)

I still don't like the spread register defines... we will soon have some weird duplications...

but seems a new trend...

rant aside:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

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
>  	struct intel_gt *gt = pxp_to_gt(pxp);
> @@ -43,19 +61,28 @@ void intel_pxp_init(struct intel_pxp *pxp)
>  	if (!HAS_PXP(gt->i915))
>  		return;
>  
> +	kcr_pxp_enable(gt);
> +
>  	ret = create_vcs_context(pxp);
>  	if (ret)
> -		return;
> +		goto out_kcr;
>  
>  	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
>  
>  	return;
> +
> +out_kcr:
> +	kcr_pxp_disable(gt);
>  }
>  
>  void intel_pxp_fini(struct intel_pxp *pxp)
>  {
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +
>  	if (!intel_pxp_is_enabled(pxp))
>  		return;
>  
>  	destroy_vcs_context(pxp);
> +
> +	kcr_pxp_disable(gt);
>  }
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
