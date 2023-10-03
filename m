Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F01D07B6843
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 13:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9AAC10E046;
	Tue,  3 Oct 2023 11:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE8510E046
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 11:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696333699; x=1727869699;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=U8wy+Nq+c/PyiA3gJx9M8lAUn2fzmzs0SyLu/SrolGo=;
 b=Au3v/C5g4QLRJkns0+7G6q2NykfsxWOrI8x4c9BmH44bC/Bon1xuJl2M
 AzAkwTg+gv/r0nj4DAUhywh8R44FHDp9X/6udLZYQ8gTP6RWpEsf5cvne
 Z3LFyhmU7mS3YhUfN/rG+0t4Rilwox1RvMD/1p/M4lSR+rshorvMdn2zq
 Yl5mrT3Dr6mIAdfH/X0zIij4L/XxwhyjvL2SlyPDyhQpGm0tZ6dJfPiZl
 cyQissxV0lRQs3YIm+BAHDX0GB5DdvBbjeKI1IHODhXYRvhOcJ38GkVxZ
 /Lt/7qAdjsEJekCSb5iC61vdXY35MHuyx5GaGX0Ce3Cc8rmDDGnMAqA6F A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="447011311"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="447011311"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 04:48:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="754388667"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="754388667"
Received: from akorotox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 04:48:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231002172419.1017044-3-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <20231002172419.1017044-3-jonathan.cavitt@intel.com>
Date: Tue, 03 Oct 2023 14:48:15 +0300
Message-ID: <8734ysgc5c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915: Perform TLB invalidation
 on all GTs during suspend/resume
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com, jonathan.cavitt@intel.com,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 02 Oct 2023, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> Consider multi-gt support when cancelling all tlb invalidations on
> suspend, and when submitting tlb invalidations on resume.
>
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <John.C.Harrison@Intel.com>

I guess I'm wondering why the top level suspend hook needs to iterate
gts instead of some lower level thing. We should aim to reduce
gem/gt/display details from the top level.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/i915_driver.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f5175103ea900..d7655a7b60eda 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1077,6 +1077,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	pci_power_t opregion_target_state;
> +	struct intel_gt *gt;
> +	int i;
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> @@ -1094,7 +1096,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>  
>  	intel_runtime_pm_disable_interrupts(dev_priv);
>  
> -	wake_up_all_tlb_invalidate(&to_gt(dev_priv)->uc.guc);
> +	for_each_gt(gt, dev_priv, i)
> +		wake_up_all_tlb_invalidate(&gt->uc.guc);
>  
>  	intel_hpd_cancel_work(dev_priv);
>  
> @@ -1267,9 +1270,11 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	intel_gvt_resume(dev_priv);
>  
> -	if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&to_gt(dev_priv)->uc.guc)) {
> -		intel_guc_invalidate_tlb_full(&to_gt(dev_priv)->uc.guc);
> -		intel_guc_invalidate_tlb(&to_gt(dev_priv)->uc.guc);
> +	for_each_gt(gt, dev_priv, i) {
> +		if (!INTEL_GUC_SUPPORTS_TLB_INVALIDATION(&gt->uc.guc))
> +			continue;
> +		intel_guc_invalidate_tlb_full(&gt->uc.guc);
> +		intel_guc_invalidate_tlb(&gt->uc.guc);
>  	}
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);

-- 
Jani Nikula, Intel
