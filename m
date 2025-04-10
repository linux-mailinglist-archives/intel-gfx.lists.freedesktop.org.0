Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56103A84964
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 18:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C470F10EA01;
	Thu, 10 Apr 2025 16:16:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LyKKreTj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444AB10E9FF;
 Thu, 10 Apr 2025 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744301793; x=1775837793;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lpkTuHksKGwniVTZP6cRCga2KuXGrhP52czhPCqzj5A=;
 b=LyKKreTjPBF5vQH1zHtMnR8cER5vZkSp5RaEelJVIVEJL83mo9O2SswU
 q035a9YiWOzfc5LHLkJCtbYHe86vGDf0AeU4VNdK0UMs1THBc8DZeSUgJ
 2WHPG2V8IsCE1StB9jiLMc26iLQSWBh27HX8b4uXn8wCeNsvZWuXS0y0I
 bt65hYMZ+zjFzJ8n8UT+DbGCwmKmGjNuJWoB0vY5n9N5Nre51+ZjZv4tu
 5CHLHBM/ZhUfPMiHJWufKZPyzj4zF3BOKWX3Y42+71NDEtrJMkOEk0Pil
 2cDXoYEta4919GKgK4OXiyumlS/BazTP6z9Nf7t4RvjhsvCJednrAlU86 w==;
X-CSE-ConnectionGUID: /dqeXkSMT/yh4/m4kYrbCw==
X-CSE-MsgGUID: 2+03eQwcSNy/D7Bmp40Wvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="49489810"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="49489810"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 09:16:33 -0700
X-CSE-ConnectionGUID: UN8RqzxcTxqELNq2yTIh8g==
X-CSE-MsgGUID: kkEud/7qSk+kHtO33i41/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="134124952"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Apr 2025 09:16:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Apr 2025 19:16:29 +0300
Date: Thu, 10 Apr 2025 19:16:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 3/5] drm/i915: stop recording IER in error capture
Message-ID: <Z_fu3fm0b35BrZm1@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
 <d91b9668369bec152cea2576c45acf15db809df5.1744208554.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d91b9668369bec152cea2576c45acf15db809df5.1744208554.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 09, 2025 at 05:23:45PM +0300, Jani Nikula wrote:
> With pre-ilk GEN2_IER capture moved to gtier[0], the remaining IER
> aren't all that relevant. Stop capturing them.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 8 --------
>  drivers/gpu/drm/i915/i915_gpu_error.h | 1 -
>  2 files changed, 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 64c760e7b7ee..50cd0c433e6d 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -729,7 +729,6 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
>  static void err_print_gt_display(struct drm_i915_error_state_buf *m,
>  				 struct intel_gt_coredump *gt)
>  {
> -	err_printf(m, "IER: 0x%08x\n", gt->ier);

I don't think the tools should care about this being there.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
>  }
>  
> @@ -1775,13 +1774,6 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
>  
>  	if (DISPLAY_VER(i915) >= 6 && DISPLAY_VER(i915) < 20)
>  		gt->derrmr = intel_uncore_read(uncore, DERRMR);
> -
> -	if (GRAPHICS_VER(i915) >= 8)
> -		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
> -	else if (IS_VALLEYVIEW(i915))
> -		gt->ier = intel_uncore_read(uncore, VLV_IER);
> -	else if (HAS_PCH_SPLIT(i915))
> -		gt->ier = intel_uncore_read(uncore, DEIER);
>  }
>  
>  /* Capture all other registers that GuC doesn't capture. */
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 749e1c55613e..ac55603a81d7 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -146,7 +146,6 @@ struct intel_gt_coredump {
>  	/* Generic register state */
>  	u32 eir;
>  	u32 pgtbl_er;
> -	u32 ier;
>  	u32 gtier[6], ngtier;
>  	u32 forcewake;
>  	u32 error; /* gen6+ */
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
