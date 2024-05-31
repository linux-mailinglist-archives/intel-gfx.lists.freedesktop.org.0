Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D308D6133
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18BE710E6B8;
	Fri, 31 May 2024 12:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RljpxejE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80CAE10E6B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 12:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157014; x=1748693014;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=S8QODjoHviQyQTO21hw1751w1OKXV+AuYXY/2pHJH1k=;
 b=RljpxejES5W3jicK9AFNNrOyfFhOJv1TOcIFyQHGbQyh1RX2iLYzHHQ+
 aFSdphd0bCieWPKlzI8DiAIXF8ZdZTpye9HVrZw2PVMxD1d9NeVg19bXD
 mqQRxLTKxCYUG2W1HXbc3AwdbfQ8Y0883dzDkHi08L/aLKLcq7Qjmv97B
 KJ6ikovv1k0ThSisT12REccpnyilYPnblMC6BRGM4tczEpopGjqOzKLru
 HYMCLFxrWRZxJhOxdxKcaeGxNGGr5qVoWCW6M6s1VtP7kNLBAn/I7zBD/
 9VyaIqluFBbRsycxMhZcGxKjQQQKiPacbq8ywm7Wqu+DrTcmuhm2JpHjv Q==;
X-CSE-ConnectionGUID: DYxcrBvxQNm/YiRlqWKApA==
X-CSE-MsgGUID: WAyPduZiTriRCSjtAQDNwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13865568"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13865568"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:03:33 -0700
X-CSE-ConnectionGUID: QxuFOdFHR2irSSQ22fkbxw==
X-CSE-MsgGUID: z1yfY+DHQGe3eqMTXhuYXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36136454"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 05:03:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 15:03:30 +0300
Date: Fri, 31 May 2024 15:03:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: drop unnecessary i915_reg.h includes
Message-ID: <Zlm8kqh3kwN9NLCm@intel.com>
References: <20240530100747.328631-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240530100747.328631-1-jani.nikula@intel.com>
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

On Thu, May 30, 2024 at 01:07:46PM +0300, Jani Nikula wrote:
> With the register header refactoring, some of the includes of i915_reg.h
> have become unnecessary. Remove.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/dvo_ns2501.c         | 1 -
>  drivers/gpu/drm/i915/display/intel_atomic.c       | 1 -
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 1 -
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c      | 1 -
>  drivers/gpu/drm/i915/display/intel_dsb.c          | 1 -
>  drivers/gpu/drm/i915/display/intel_sprite.c       | 1 -
>  drivers/gpu/drm/i915/display/intel_vdsc.c         | 1 -
>  7 files changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm/i915/display/dvo_ns2501.c
> index 1df212fb000e..21486008dae9 100644
> --- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
> +++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
> @@ -27,7 +27,6 @@
>   */
>  
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "intel_display_types.h"
>  #include "intel_dvo_dev.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 7a77ae3dc394..76aa10b6f647 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -35,7 +35,6 @@
>  #include <drm/drm_fourcc.h>
>  
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_cdclk.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index a2a827070c33..a4ce39a7f265 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -39,7 +39,6 @@
>  #include <drm/drm_fourcc.h>
>  
>  #include "i915_config.h"
> -#include "i915_reg.h"

That has sure spread into some weird places.

As it seems to build, the series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  #include "i9xx_plane_regs.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_cdclk.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> index a001232ad445..b146b4c46943 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> @@ -4,7 +4,6 @@
>   */
>  
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  
>  #include "intel_de.h"
>  #include "intel_display.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 4baaa92ceaec..bcc9de047fac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -6,7 +6,6 @@
>  
>  #include "i915_drv.h"
>  #include "i915_irq.h"
> -#include "i915_reg.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 36a253a19c74..e1c907f601da 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -39,7 +39,6 @@
>  #include <drm/drm_rect.h>
>  
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "i9xx_plane.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_de.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 17d6572f9d0a..d76e70846a8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -10,7 +10,6 @@
>  #include <drm/display/drm_dsc_helper.h>
>  
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
