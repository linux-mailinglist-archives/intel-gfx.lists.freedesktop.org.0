Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0070346F28E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:55:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA5010E1D7;
	Thu,  9 Dec 2021 17:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7515210E1D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:55:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238109922"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="238109922"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:55:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="480428433"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 09 Dec 2021 09:55:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 19:55:24 +0200
Date: Thu, 9 Dec 2021 19:55:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbJDDBO7r121Y6IM@intel.com>
References: <cover.1639068649.git.jani.nikula@intel.com>
 <5f410f0fa5fe469895c1bfbe68aa92511053d5fa.1639068649.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5f410f0fa5fe469895c1bfbe68aa92511053d5fa.1639068649.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/cdclk: turn around i915_drv.h
 and intel_cdclk.h dependency
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

On Thu, Dec 09, 2021 at 06:51:25PM +0200, Jani Nikula wrote:
> intel_cdclk.h only needs i915_drv.h for struct intel_cdclk_config. Move
> the definition to intel_cdclk.h and turn the includes around to avoid
> including i915_drv.h from other headers.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c | 1 +
>  drivers/gpu/drm/i915/display/intel_cdclk.h  | 6 +++++-
>  drivers/gpu/drm/i915/i915_drv.h             | 6 +-----
>  3 files changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index b4e7ac51aa31..ff17bec7a67d 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -34,6 +34,7 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_plane_helper.h>
>  
> +#include "i915_drv.h"
>  #include "intel_atomic.h"
>  #include "intel_cdclk.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 50b93226517e..e11db06a81c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -8,7 +8,6 @@
>  
>  #include <linux/types.h>
>  
> -#include "i915_drv.h"
>  #include "intel_display.h"
>  #include "intel_global_state.h"
>  
> @@ -16,6 +15,11 @@ struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc_state;
>  
> +struct intel_cdclk_config {
> +	unsigned int cdclk, vco, ref, bypass;
> +	u8 voltage_level;
> +};
> +
>  struct intel_cdclk_state {
>  	struct intel_global_state base;
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e36aea6453c2..a198f7e075d9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -65,6 +65,7 @@
>  #include "i915_utils.h"
>  
>  #include "display/intel_bios.h"
> +#include "display/intel_cdclk.h"
>  #include "display/intel_display.h"
>  #include "display/intel_display_power.h"
>  #include "display/intel_dmc.h"
> @@ -625,11 +626,6 @@ struct i915_virtual_gpu {
>  	u32 caps;
>  };
>  
> -struct intel_cdclk_config {
> -	unsigned int cdclk, vco, ref, bypass;
> -	u8 voltage_level;
> -};
> -
>  struct i915_selftest_stash {
>  	atomic_t counter;
>  	struct ida mock_region_instances;
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
