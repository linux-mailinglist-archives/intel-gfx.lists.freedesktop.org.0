Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9DCA8495D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 18:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879FE10E9FE;
	Thu, 10 Apr 2025 16:15:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQhWxMyH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB1710E9FE;
 Thu, 10 Apr 2025 16:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744301718; x=1775837718;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qMMcVBYU/T8xja6/z20cQy3SvpPyEIU2r7Fm7SqJw8c=;
 b=ZQhWxMyHtFj1Pa9/pkzqgbrv+enPTepKhMOthmyeS6MpkLiuz3mukQgP
 EaWYVp3DXUbR3DNghjrzEQmoOV5YGopubu7NeHO2dikI/QaOVKtUXg5Cr
 6xMagBq9zMvv4i7yBuWGb5wZRStB//dShUy2BtUFq9nXLnJsSCLmSpuLT
 Nseo2WslhR7NMz21cgrlKU9bQwIIesorviBuWAsrGAvaM0UC2NKhsm3Fo
 Sybd+YQwSHgHf/YgrjXPITml35rJVyfqLoBkghZz1tedMwhOphHCzdjqM
 /DLDrMhkEdWRQGIKcZZndF+BLpHL8TgnntIu56mUizcylmLVbdy47nn+Z g==;
X-CSE-ConnectionGUID: rAg1ar2xTlutf3J1LKitjg==
X-CSE-MsgGUID: piT8R1rHTruqjCuWnUvRjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="49489704"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="49489704"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 09:15:18 -0700
X-CSE-ConnectionGUID: 9cbcYuG2T26X/2ZiDbzDsg==
X-CSE-MsgGUID: rihx2bkIQ8C2D3ZpO/QRpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="134124658"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Apr 2025 09:15:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Apr 2025 19:15:15 +0300
Date: Thu, 10 Apr 2025 19:15:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/5] drm/i915: record GEN2_IER in gtier[0] for pre-ilk
 error capture
Message-ID: <Z_fuk5FZhf-4rhN1@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
 <5f908dd866fa61b1b1abc17813b32918129f1d82.1744208554.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5f908dd866fa61b1b1abc17813b32918129f1d82.1744208554.git.jani.nikula@intel.com>
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

On Wed, Apr 09, 2025 at 05:23:44PM +0300, Jani Nikula wrote:
> In pre-ilk platforms the engine interrupts live in GEN2_IER. Capture it
> as part of gtier instead of display.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index cf31e8fecd8d..64c760e7b7ee 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1782,8 +1782,6 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
>  		gt->ier = intel_uncore_read(uncore, VLV_IER);
>  	else if (HAS_PCH_SPLIT(i915))
>  		gt->ier = intel_uncore_read(uncore, DEIER);
> -	else
> -		gt->ier = intel_uncore_read(uncore, GEN2_IER);
>  }
>  
>  /* Capture all other registers that GuC doesn't capture. */
> @@ -1822,6 +1820,9 @@ static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
>  	} else if (HAS_PCH_SPLIT(i915)) {
>  		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
>  		gt->ngtier = 1;
> +	} else {
> +		gt->gtier[0] = intel_uncore_read(uncore, GEN2_IER);
> +		gt->ngtier = 1;
>  	}
>  
>  	gt->eir = intel_uncore_read(uncore, EIR);
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
