Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F5D20B3DA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:46:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE716EBA5;
	Fri, 26 Jun 2020 14:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2326EBA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 14:46:20 +0000 (UTC)
IronPort-SDR: hyDWjSGSoCF7qROwOWF5ZsUvn7YD9RYpupG+1YT/lQN9i93jpRFg4LXw3lPiyelgjWmLRiIpMU
 PTe5k3I3csNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="133724607"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="133724607"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 07:46:19 -0700
IronPort-SDR: 5ltVEDhnAvFFmqZLgd3mPXHuTACGO58ErrRxx+GwTSoLzh65MoE2h320ud5vCs49gqbt6PiShO
 ZacCXdLU+IcQ==
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="424094568"
Received: from golswang-mobl1.ger.corp.intel.com (HELO [10.254.152.25])
 ([10.254.152.25])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 07:46:18 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
 <20200625234212.22811-6-daniele.ceraolospurio@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b2a2b011-e987-1508-f466-230c6e6b7f16@linux.intel.com>
Date: Fri, 26 Jun 2020 15:46:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200625234212.22811-6-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Introduce gt_init_mmio
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/06/2020 00:42, Daniele Ceraolo Spurio wrote:
> We already call 2 gt-related init_mmio functions in driver_mmio_probe
> and a 3rd one will be added by a follow-up patch, so pre-emptively
> introduce a gt_init_mmio function to group them.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c | 7 +++++++
>   drivers/gpu/drm/i915/gt/intel_gt.h | 1 +
>   drivers/gpu/drm/i915/i915_drv.c    | 4 +---
>   3 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index d0ae1cb5c7c9..949114f09b82 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -44,6 +44,13 @@ void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt)
>   	gt->ggtt = ggtt;
>   }
>   
> +int intel_gt_init_mmio(struct intel_gt *gt)
> +{
> +	intel_uc_init_mmio(&gt->uc);
> +
> +	return intel_engines_init_mmio(gt);
> +}
> +
>   static void init_unused_ring(struct intel_gt *gt, u32 base)
>   {
>   	struct intel_uncore *uncore = gt->uncore;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 15142e2a3b22..4bd64ab2b686 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -36,6 +36,7 @@ static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
>   
>   void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
>   void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt);
> +int intel_gt_init_mmio(struct intel_gt *gt);
>   int __must_check intel_gt_init_hw(struct intel_gt *gt);
>   int intel_gt_init(struct intel_gt *gt);
>   void intel_gt_driver_register(struct intel_gt *gt);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 67789df42be8..5fd5af4bc855 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -531,9 +531,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
>   	/* Try to make sure MCHBAR is enabled before poking at it */
>   	intel_setup_mchbar(dev_priv);
>   
> -	intel_uc_init_mmio(&dev_priv->gt.uc);
> -
> -	ret = intel_engines_init_mmio(&dev_priv->gt);
> +	ret = intel_gt_init_mmio(&dev_priv->gt);
>   	if (ret)
>   		goto err_uncore;
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
