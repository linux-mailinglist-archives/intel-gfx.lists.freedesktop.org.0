Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E044B158C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 19:51:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 571E410E952;
	Thu, 10 Feb 2022 18:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80E410E954
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 18:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644519067; x=1676055067;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NQUojKSqYIo0gC/3v2i9UJxQPwwd1hQElyCRsLayPRo=;
 b=SwXixkRa5V8EOhvQYAAqnqvpheQnxD5Oz6myetKTH69UBoWrsnb6M52r
 t4vFXmW4kHftJveHLQPufU47/J7qRBsi2PMC4/op6s+15NCnaK0Udno6U
 PlXG2P9AE2TaVQP943ZxZmGTlfBJOK+17ae4iwU0agvYF5LqcQoJ3qa72
 CzwgoFU0DC4RQth1zXQkvuyxqguhQkYnpgm/USke/NJvNcG+A8r/H0lsd
 e1l3RibplahZvqfKeCYm3glTG91hffDs5IZZp5YjfQ1GA+pw3FaPsPW+3
 5+CgrWCxM2iksrbbD3qf3QhLILXHtep93TjJTAtNoSvRVVT/B1gUYttdC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249514244"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249514244"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 10:51:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="485844603"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 10:51:07 -0800
Date: Thu, 10 Feb 2022 10:51:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <YgVemUgixMuqZEMU@mdroper-desk1.amr.corp.intel.com>
References: <20220210164430.299456-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220210164430.299456-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
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

On Thu, Feb 10, 2022 at 08:44:30AM -0800, Anusha Srivatsa wrote:
> DMC_DEBUGU3 changes from DG1+

This looks to be the same thing as the patch that Chuansheng Liu sent:

https://patchwork.freedesktop.org/patch/473272/?series=99942&rev=1


Matt

> 
> Bspec: 49788
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 ++++--
>  drivers/gpu/drm/i915/i915_reg.h                      | 1 +
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f4de004d470f..87fc4b9b7b93 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -474,8 +474,10 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
>  		 * reg for DC3CO debugging and validation,
>  		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
>  		 */
> -		seq_printf(m, "DC3CO count: %d\n",
> -			   intel_de_read(dev_priv, DMC_DEBUG3));
> +		if (IS_DGFX(dev_priv))
> +			seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, DG1_DMC_DEBUG3));
> +		else
> +			seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, DMC_DEBUG3));
>  	} else {
>  		dc5_reg = IS_BROXTON(dev_priv) ? BXT_DMC_DC3_DC5_COUNT :
>  						 SKL_DMC_DC3_DC5_COUNT;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 87c92314ee26..802962e3977c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5633,6 +5633,7 @@
>  #define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
>  
>  #define DMC_DEBUG3		_MMIO(0x101090)
> +#define DG1_DMC_DEBUG3		_MMIO(0x13415C)
>  
>  /* Display Internal Timeout Register */
>  #define RM_TIMEOUT		_MMIO(0x42060)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
