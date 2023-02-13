Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 254A3695267
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802C010E72A;
	Mon, 13 Feb 2023 20:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16A6C10E72F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 20:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676321778; x=1707857778;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Pjm2X28eaDb+ICCm7GokmSPv17gZK+iLpy6Sff+nyPs=;
 b=cQq022X/CLxLU1IgGvZzJxcgqTla61a3Nuxga6mRu2tSBrScQn4FWMa3
 gKe0kVSyLIw4u0Qs0xd/lEbtcXotq4N3mKULjP1gjEnYh/hMw+/EFui4t
 t8LPaj55j6EL7MV6qrxSb3vy2HVQz7QiLnOJSdeEiEoP6waQU5Z/lhxfC
 5jhsTK4bWSHusciOTsq27r4YrPOnSMgYZyhSgMI4kh8yPRjLScET+miL2
 4HWTx/lGD9Utu2mN+/2DDcNO9R1YqG4MBYP1NMl1MKVMkf4D0Eze+yOsA
 UygGcN1lH/vo6vOW7fI32KJrnYp4b3xPCPnh+kkkjCilhsim8j2riELO+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393399729"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="393399729"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:56:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="670974217"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="670974217"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga007.fm.intel.com with SMTP; 13 Feb 2023 12:56:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Feb 2023 22:56:14 +0200
Date: Mon, 13 Feb 2023 22:56:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+qj7ibPlTQ6wjZA@intel.com>
References: <cover.1676317696.git.jani.nikula@intel.com>
 <bf599011039d7b2fb6f0522b44113d2d2ed0b44e.1676317696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bf599011039d7b2fb6f0522b44113d2d2ed0b44e.1676317696.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915: rename intel_pm_types.h ->
 display/intel_wm_types.h
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

On Mon, Feb 13, 2023 at 10:00:02PM +0200, Jani Nikula wrote:
> The file was never really about pm types, and now it's even more
> obvious. Move under display as intel_wm_types.h.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h           | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h          | 2 +-
>  .../drm/i915/{intel_pm_types.h => display/intel_wm_types.h} | 6 +++---
>  drivers/gpu/drm/i915/display/skl_watermark.h                | 2 +-
>  4 files changed, 6 insertions(+), 6 deletions(-)
>  rename drivers/gpu/drm/i915/{intel_pm_types.h => display/intel_wm_types.h} (93%)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 52614fff0d76..b870f7f47f2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -25,7 +25,7 @@
>  #include "intel_global_state.h"
>  #include "intel_gmbus.h"
>  #include "intel_opregion.h"
> -#include "intel_pm_types.h"
> +#include "intel_wm_types.h"
>  
>  struct drm_i915_private;
>  struct drm_property;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6e94be7c3e7f..748b0cd411fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -53,7 +53,7 @@
>  #include "intel_display_limits.h"
>  #include "intel_display_power.h"
>  #include "intel_dpll_mgr.h"
> -#include "intel_pm_types.h"
> +#include "intel_wm_types.h"
>  
>  struct drm_printer;
>  struct __intel_global_objs_state;
> diff --git a/drivers/gpu/drm/i915/intel_pm_types.h b/drivers/gpu/drm/i915/display/intel_wm_types.h
> similarity index 93%
> rename from drivers/gpu/drm/i915/intel_pm_types.h
> rename to drivers/gpu/drm/i915/display/intel_wm_types.h
> index 93152537b420..bac2b6fdc5d0 100644
> --- a/drivers/gpu/drm/i915/intel_pm_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_wm_types.h
> @@ -3,8 +3,8 @@
>   * Copyright © 2021 Intel Corporation
>   */
>  
> -#ifndef __INTEL_PM_TYPES_H__
> -#define __INTEL_PM_TYPES_H__
> +#ifndef __INTEL_WM_TYPES_H__
> +#define __INTEL_WM_TYPES_H__
>  
>  #include <linux/types.h>
>  
> @@ -73,4 +73,4 @@ static inline bool skl_ddb_entry_equal(const struct skl_ddb_entry *e1,
>  	return false;
>  }
>  
> -#endif /* __INTEL_PM_TYPES_H__ */
> +#endif /* __INTEL_WM_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> index f03fd991b189..f91a3d4ddc07 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -10,7 +10,7 @@
>  
>  #include "intel_display_limits.h"
>  #include "intel_global_state.h"
> -#include "intel_pm_types.h"
> +#include "intel_wm_types.h"
>  
>  struct drm_i915_private;
>  struct intel_atomic_state;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
