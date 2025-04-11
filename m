Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19823A8553A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 09:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25EDB10EB10;
	Fri, 11 Apr 2025 07:15:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VeOQ3yvX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752D710EB05;
 Fri, 11 Apr 2025 07:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744355751; x=1775891751;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5gmEMMaqoKgHJOTALaJ3fFxJYqIRBsTNERm8D6LQw7A=;
 b=VeOQ3yvXpBBhEqjVNn2hsVkLv2aIcTy2hCjCN5zTDT6Xq4qVEend/koE
 4MrSBsE6DmqPlaJB3c6BkYscupIQ0UGWHeWh/6MFl7w2UleB587not94Q
 rDvOxyzEcQLXl6i4sJIRxV9TCAuSom+tE+el2XzPvW02Kw3QhN3QyX6XM
 RqyZxVfYAoadH9HpV0w3I9quT4zXvWjzQDIrtKqa2WeexADUjoKnGgRTm
 1+n39v7Ns5RB4KJp7zcg2gbVdxAuiDFIBdqBHUi7OiORtm30QbuXQO8ND
 1QVQcj1an/wYWGO83uFYtrbPKSpJ6B23lMOVekSgeylwoGBg/mRlH0KCT g==;
X-CSE-ConnectionGUID: BmnhA13BQxu9zLGszntANw==
X-CSE-MsgGUID: APAyDVgtSje2LRmb+d/c/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45787736"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="45787736"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:15:50 -0700
X-CSE-ConnectionGUID: 3+9rOtYASmyKBYp210yebw==
X-CSE-MsgGUID: zK81rljgTb2E8PYuBgdt9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="134283536"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Apr 2025 00:15:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Apr 2025 10:15:46 +0300
Date: Fri, 11 Apr 2025 10:15:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: don't capture DERRMR for VLV/CHV
Message-ID: <Z_jBomYm-sqPpzjX@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
 <20250411070823.230909-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250411070823.230909-1-jani.nikula@intel.com>
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

On Fri, Apr 11, 2025 at 10:08:23AM +0300, Jani Nikula wrote:
> DERRMR isn't valid for VLV/CHV. Don't capture it for them.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index f5dc050a6344..5d07b6a9e59e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -2343,7 +2343,7 @@ intel_display_irq_snapshot_capture(struct intel_display *display)
>  	if (!snapshot)
>  		return NULL;
>  
> -	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20)
> +	if (DISPLAY_VER(display) >= 6 && DISPLAY_VER(display) < 20 && !HAS_GMCH(display))
>  		snapshot->derrmr = intel_de_read(display, DERRMR);
>  
>  	return snapshot;
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
