Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C7FA84959
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 18:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD8F910E9F4;
	Thu, 10 Apr 2025 16:13:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nuGOBiAY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC22110E9F4;
 Thu, 10 Apr 2025 16:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744301604; x=1775837604;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rLZELZQl0b7Owyjkpc7O/HD3G6DNgzFwgdEdcFO6l5o=;
 b=nuGOBiAYrhr+U1xVMS5WIR8caBhrlspnwioeXxoXTWve8lm/2av+IYsj
 XjnQ07EnY+cGBhPeF8yC+ZGmuPpD4BHIDAfJtM069YxND+tg0mcSZiSmL
 bOrzRSwYaHqRGlKqsTFjGUSis7/CRgl/BvH0ZrM3FuGK2098PrPtuVwFM
 Qz4+DCk98BUfxlBZDECzO+dBt8SmxE1UijorHrW2KopHZ3SQW/HWMUqtV
 l665YfQ61/U0r0jvXChITFEZWam1vACv422Zc1a7ouC63WME+RVQgWxdJ
 63nYskiCAxjNLvoTcAbdAbYbkpjDTO175ADcGiNrhgaBvb14ihZNi+LWN w==;
X-CSE-ConnectionGUID: 68neHuCLRG+tANpqphjTHw==
X-CSE-MsgGUID: AsdbhhNeQqGTGEZxknWJkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="49489549"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="49489549"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 09:13:24 -0700
X-CSE-ConnectionGUID: xAnKWvTwR8uPXWH6O7jsGQ==
X-CSE-MsgGUID: BpDLhUGXQKeNnPO3fYf6wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="134124320"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Apr 2025 09:13:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Apr 2025 19:13:21 +0300
Date: Thu, 10 Apr 2025 19:13:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/5] drm/i915: use 32-bit access for gen2 irq registers
Message-ID: <Z_fuIXiq4cFUa5NU@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
 <274bcad720011919be268846e7791fc5a9766753.1744208554.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <274bcad720011919be268846e7791fc5a9766753.1744208554.git.jani.nikula@intel.com>
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

On Wed, Apr 09, 2025 at 05:23:43PM +0300, Jani Nikula wrote:
> We've previously switched from 16-bit to 32-bit access for gen2 irq
> registers, but one was left behind. Fix it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index a6613eed3398..cf31e8fecd8d 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1782,8 +1782,6 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
>  		gt->ier = intel_uncore_read(uncore, VLV_IER);
>  	else if (HAS_PCH_SPLIT(i915))
>  		gt->ier = intel_uncore_read(uncore, DEIER);
> -	else if (GRAPHICS_VER(i915) == 2)
> -		gt->ier = intel_uncore_read16(uncore, GEN2_IER);
>  	else
>  		gt->ier = intel_uncore_read(uncore, GEN2_IER);
>  }
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
