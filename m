Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A87EB86527
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B7310E8DC;
	Thu, 18 Sep 2025 17:50:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jix9IBU8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C914810E8DB;
 Thu, 18 Sep 2025 17:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217842; x=1789753842;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OS5TRtiJCHHeIalRDSGEuOo9YowxsmhWxOr6v5/rGQ8=;
 b=Jix9IBU82Vyl3x/vb5TpIPR5xBDHT1ubqcv4UCa41PiqMal2z7v/l4WK
 QjmPvLYv04Re1ZUGa3lpdsvTmHPDmAuX6KvQQiPVzjkZmU4vN8sjXy0tG
 kW1/NbWZ0/ruVbWXZm4GS2GLTV709QagSynBiD0uvnx8lZXBS2G4uVY3S
 FD/rlizcQP+7fxnoGDqjNy91IvlIG0wQoR6s2QmnaPt8p/YiXatRFihzT
 FEVSB4Z6tBnthlhty9jVKbhGH3fUEKjmblVkbx82EnBjvW0Y6AHOF6qrO
 4ndJtBVYzcg7hxVn81WIXShiIkAXXD8veNE2D5bcs9jGB/igyrahUmUj/ A==;
X-CSE-ConnectionGUID: Mr6e3zCITdWXMO2RE2snfw==
X-CSE-MsgGUID: HHVBh+u0TG6ATvGy8nouHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60672385"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="60672385"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:50:42 -0700
X-CSE-ConnectionGUID: JpX3KGqsRn6HLmSheiaC+Q==
X-CSE-MsgGUID: kUv17GXIT7i2ALObEHUtzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="180034513"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:50:40 -0700
Date: Thu, 18 Sep 2025 20:50:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 10/10] drm/i915/fbdev: drop dependency on display in
 i915 specific code
Message-ID: <aMxGbS1ippNd9C7q@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <a2faad2b47c63ea773a96b2885fb759602374264.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a2faad2b47c63ea773a96b2885fb759602374264.1758184771.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Sep 18, 2025 at 11:41:00AM +0300, Jani Nikula wrote:
> This code is in fact i915 driver core rather than display specific. Stop
> using struct intel_display, and drop the dependency on display headers.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 8af409bff0f0..56b145841473 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -8,13 +8,10 @@
>  #include "gem/i915_gem_lmem.h"
>  
>  #include "i915_drv.h"
> -#include "intel_display_core.h"
> -#include "intel_display_types.h"
>  #include "intel_fbdev_fb.h"
>  
>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
>  {
> -	struct intel_display *display = to_intel_display(drm);
>  	struct drm_i915_private *dev_priv = to_i915(drm);
>  	struct drm_i915_gem_object *obj;
>  
> @@ -31,7 +28,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
>  		 *
>  		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
>  		 */
> -		if (!display->platform.meteorlake && size * 2 < dev_priv->dsm.usable_size)
> +		if (!IS_METEORLAKE(dev_priv) && size * 2 < dev_priv->dsm.usable_size)

I have some old stuff [1] to rework the logic around stolen vs. not
usage here. But I suppose I'll need to rethink some of it if/when I
find the time to revisit that stuff...

In the meantine
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

[1] https://patchwork.freedesktop.org/series/135800/

>  			obj = i915_gem_object_create_stolen(dev_priv, size);
>  		if (IS_ERR(obj))
>  			obj = i915_gem_object_create_shmem(dev_priv, size);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
