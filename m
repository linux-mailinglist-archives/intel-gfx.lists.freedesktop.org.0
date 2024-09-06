Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC2F96EED5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 11:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFBC10E9B6;
	Fri,  6 Sep 2024 09:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SlzuUVXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A0C10E9B6;
 Fri,  6 Sep 2024 09:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725613927; x=1757149927;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=U5IXA7TLa3tr1ZQ2/L7uLlALBUEsX0k4Kqo/tQLConc=;
 b=SlzuUVXlLJ7WqYmn++aEbUmhOogjZfQZFZhlNIi9sjHtZqUUgRrnMhOg
 QwhjGkCqcfjJ0AQJxknQwysi14ti4Xbya+UAK1VrgD4l7qJLRddozB2OY
 uD6jAsbzP6llkfyj8u7jFJC3yuJXUzT7va5EzI+0QscKoAlh6vDNCBKe6
 eU4833msS7l2a4AW8tJDWmJyJr/eDrRPWIanqz+jTWdXa9bOxnJqvyZMC
 LOTvWZygEc7DZmjTOg6gbsL5F+vn4wlRRSCmf0/xCqMDxkDQqKzXKeCp3
 a7wn7wDo4R3rDwBD+nzc54DWkp/vVhXEyCpT6xVlMx49oX+ubr+ZoBO4Q w==;
X-CSE-ConnectionGUID: YIk6OzwbQBCiX28EjT6+dg==
X-CSE-MsgGUID: nLjdhhRgRfOJfkulSp6ciA==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24166522"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24166522"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 02:12:07 -0700
X-CSE-ConnectionGUID: FusSOyCaRLWyZqZBEcbSAw==
X-CSE-MsgGUID: EnBK/E64TimtbWmec/aXCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70698452"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.27])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 02:12:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 5/5] drm/i915: Add Wa_14021768792 as per WA framework
In-Reply-To: <20240905115505.3629087-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
 <20240905115505.3629087-6-ankit.k.nautiyal@intel.com>
Date: Fri, 06 Sep 2024 12:11:57 +0300
Message-ID: <877cbpno2q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 05 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Modify the condition for WA as per Xe WA framework.

Please don't. This won't work in the future. See [1].

BR,
Jani.


[1] https://lore.kernel.org/r/87frqdnp09.fsf@intel.com


>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_wa.h | 2 ++
>  drivers/gpu/drm/xe/display/xe_display_wa.c      | 5 +++++
>  drivers/gpu/drm/xe/xe_wa_oob.rules              | 1 +
>  4 files changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f55a85f04ce5..4496ba30d64d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -75,6 +75,7 @@
>  #include "intel_display_driver.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -3436,8 +3437,7 @@ int bmg_can_bypass_m_n_limit(struct intel_display *display,
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (DISPLAY_VER(display) != 14 || !IS_DGFX(i915) ||
> -	    !IS_DISPLAY_STEP(display, STEP_C0, STEP_FOREVER))
> +	if (!intel_display_needs_wa_14021768792(i915))
>  		return false;
>  
>  	if (pipe != PIPE_A)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index be644ab6ae00..10c1b5787d05 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -14,8 +14,10 @@ void intel_display_wa_apply(struct drm_i915_private *i915);
>  
>  #ifdef I915
>  static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
> +static inline bool intel_display_needs_wa_14021768792(struct drm_i915_private *i915) { return false; }
>  #else
>  bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
> +bool intel_display_needs_wa_14021768792(struct drm_i915_private *i915);
>  #endif
>  
>  #endif
> diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
> index 68e3d1959ad6..c4728e61e190 100644
> --- a/drivers/gpu/drm/xe/display/xe_display_wa.c
> +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
> @@ -14,3 +14,8 @@ bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
>  {
>  	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
>  }
> +
> +bool intel_display_needs_wa_14021768792(struct drm_i915_private *i915)
> +{
> +	return XE_WA(xe_root_mmio_gt(i915), 14021768792);
> +}
> diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
> index 920ca5060146..a7cc2c2d98d0 100644
> --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> @@ -37,3 +37,4 @@
>  16023588340	GRAPHICS_VERSION(2001)
>  14019789679	GRAPHICS_VERSION(1255)
>  		GRAPHICS_VERSION_RANGE(1270, 2004)
> +14021768792	PLATFORM(BATTLEMAGE), GRAPHICS_STEP(C0, FOREVER)

-- 
Jani Nikula, Intel
