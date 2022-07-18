Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45205789D7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 20:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50AF310EAEA;
	Mon, 18 Jul 2022 18:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0472310EAEA
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jul 2022 18:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658170471; x=1689706471;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=heFZq/xuL45QE3a3A6SPnydT12ufskQrPCZ5L/0hIe0=;
 b=PxqONu6iRBZGM6w9Lk7irvqXBl4hEidOncwVqNauKHDcuXt7PDAQWruu
 kX6CZXVysi1X3q8AQ1S9XC9lVPXAn6ez0hBqVWXOwG5zCqFC7DLiwW+fG
 GMezVwgi0b4ZJ3BsJIRVUkHpti+R6UvGUiZXcEvDzbFUd6jTQIRh7iHwX
 6BXeV/kcneN/VF5svP9D24l+cB/htyCFN9N/CJr/vD/nZHs+7WolUaRHn
 qW9a9AhlSXeOdORdpS9fzgV24wK1Mq3kEg+JFsMSCZUq4Xp2TTE7e1M+k
 t3U8S4fp1E+qZ423fEyNZERpBmUZ4lbnG2sazoVQeYOLnegYQKIIcYFNr Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="266077657"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="266077657"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 11:54:20 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="924457615"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 11:54:20 -0700
Date: Mon, 18 Jul 2022 11:54:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <YtWsW+q+soTMtHgi@mdroper-desk1.amr.corp.intel.com>
References: <20220718183424.149988-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220718183424.149988-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 18, 2022 at 11:34:24AM -0700, Anusha Srivatsa wrote:
> gen11_gu_misc_irq_handler() does not do anything tile specific.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 73cebc6aa650..c304af777d58 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2669,10 +2669,10 @@ gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
>  }
>  
>  static void
> -gen11_gu_misc_irq_handler(struct intel_gt *gt, const u32 iir)
> +gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
>  {
>  	if (iir & GEN11_GU_MISC_GSE)
> -		intel_opregion_asle_intr(gt->i915);
> +		intel_opregion_asle_intr(i915);
>  }
>  
>  static inline u32 gen11_master_intr_disable(void __iomem * const regs)
> @@ -2740,7 +2740,7 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
>  
>  	gen11_master_intr_enable(regs);
>  
> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
>  
>  	pmu_irq_stats(i915, IRQ_HANDLED);
>  
> @@ -2805,7 +2805,7 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
>  
>  	dg1_master_intr_enable(regs);
>  
> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
>  
>  	pmu_irq_stats(i915, IRQ_HANDLED);
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
