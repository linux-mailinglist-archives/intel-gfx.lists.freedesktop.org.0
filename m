Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86538489D05
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 17:03:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F16010F5BC;
	Mon, 10 Jan 2022 16:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF98A10F5BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 16:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641830592; x=1673366592;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=l2T/V2YAIWtY9KRs6CDNvHwGjLd0OGtRZl+XGMJALB0=;
 b=hJQQebizdZB7mjOJVUdRlmfCfQ9a939UlWlhiuHpRehI6tPVfcR8oF89
 n8+nssb6iq9t1BulY4BHv5tZ7wnd5swGPNVW7C/nyGuLFPBRHg9JJ/FH+
 5JHUImDqlfd4ORzfAfxapQ8uwt7UizemIT+bEPo4pR/b9+smG1ER8cOnu
 ly1uUqchfmX7YHMDb/GvFq5AB7JsLJGGvqOVh3KKcj3GJbgrSNw6QUyFs
 DnHZC5Qt/a9T2bTil1fpiO3LUFe2Kx2W14QSvozHowxrJ3y2kpZBQDhDn
 TUKNvcYwNpDxXjHkU5cpdM4RKugcUJgqOYgeW6pBgsixEpC79PRLUVG7a A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="230595967"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="230595967"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 08:03:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="514716329"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 10 Jan 2022 08:03:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Jan 2022 18:03:09 +0200
Date: Mon, 10 Jan 2022 18:03:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YdxYvXfkOgTFFg+s@intel.com>
References: <20220110095740.166078-1-jani.nikula@intel.com>
 <20220110095740.166078-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220110095740.166078-3-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/vga: switch to use VGA
 definitions from video/vga.h
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

On Mon, Jan 10, 2022 at 11:57:39AM +0200, Jani Nikula wrote:
> The video/vga.h has macros for the VGA registers. Switch to use them.
> 
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> index fa779f7ea415..43c12036c1fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -7,6 +7,7 @@
>  #include <linux/vgaarb.h>
>  
>  #include <drm/i915_drm.h>
> +#include <video/vga.h>
>  
>  #include "i915_drv.h"
>  #include "intel_de.h"
> @@ -34,9 +35,9 @@ void intel_vga_disable(struct drm_i915_private *dev_priv)
>  
>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> -	outb(SR01, VGA_SR_INDEX);
> -	sr1 = inb(VGA_SR_DATA);
> -	outb(sr1 | 1 << 5, VGA_SR_DATA);
> +	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I);

Not a huge fan of some of these defines since now I have
no idea what register this is selecting.

> +	sr1 = inb(VGA_SEQ_D);
> +	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
>  	vga_put(pdev, VGA_RSRC_LEGACY_IO);
>  	udelay(300);
>  
> @@ -92,7 +93,7 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i915)
>  	 * and error messages.
>  	 */
>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> -	outb(inb(VGA_MSR_READ), VGA_MSR_WRITE);
> +	outb(inb(VGA_MIS_R), VGA_MIS_W);
>  	vga_put(pdev, VGA_RSRC_LEGACY_IO);
>  }
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
