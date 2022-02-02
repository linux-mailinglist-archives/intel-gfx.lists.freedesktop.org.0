Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6833E4A7003
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F9010E317;
	Wed,  2 Feb 2022 11:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C793210E2EC
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643801512; x=1675337512;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q1UxSIRSHVo5sowgq0N6AYrz7PyaX1zca4GgKWaUzhI=;
 b=Vb5pqbL08PjsmLX+USRj/DhpzC9FCPfQu5W+xL/YqjpcRDlezJXEc33X
 0OHuw464UuHrR+G6Tkrfm3KILpu8uwOdGcPGUyXSXMcpXCdTQtWObvjcz
 7MRyM+Dh7SGLCbb8/Yo1t56MRbMxihEFRHbXCIwAJ8awYyhF5bJ3Dgh/J
 k+dNfZL7Fh1HFT3wok7OudP8OriyyJheCmLgKEO8bOJ2W8UxTFqjTyQZs
 an/4iEL5oQwadPsJdEZNMrzibT4yd7IZ8mKOhEQzILrqZrfI0ke/SGTUX
 SQvsWIf79nCph7J4JBP796tvOg7XD1NviMY97GhkX9xGy598Xw7rKWC73 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="248116790"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="248116790"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:31:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="583399621"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 02 Feb 2022 03:31:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Feb 2022 13:31:48 +0200
Date: Wed, 2 Feb 2022 13:31:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YfprpC2XQSs7WbJu@intel.com>
References: <20220202112509.1886660-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220202112509.1886660-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/vga: switch to use VGA
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

On Wed, Feb 02, 2022 at 01:25:08PM +0200, Jani Nikula wrote:
> The video/vga.h has macros for the VGA registers. Switch to use them.
> 
> v2: Use direct 0x01 instead of the confusing VGA_SEQ_CLOCK_MODE (Ville)
> 
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> index fa779f7ea415..b5d058404c14 100644
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
> +	outb(0x01, VGA_SEQ_I);
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
