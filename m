Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4290691F0E2
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 10:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0FA610E044;
	Tue,  2 Jul 2024 08:17:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iVpnATot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA5E10E044;
 Tue,  2 Jul 2024 08:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719908269; x=1751444269;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7Abr2jlRD3GhlRACobq9P2jrfUD5/1pAP5hdHaH3j+s=;
 b=iVpnATot8Z6xTxJ6c8fXwEhjmIMQeH3/3n4XyblUCI7Qp5XLjq0Th+96
 oXZJ+k2tOmRxMtdOLE7pSaCKrW0sSZjLW3rC28m1u3zGVkUiChVnT/9nW
 iMa1oR8UEOCTilFNgO0bPpyjCfKbtX1BZ9cBlEBo/ZEyrTPgTRVnSAjHw
 2Io7fQCycOj4cHbYrhs3t4ZY7o6nga40j6NBSOXoQOCc6eYp82vPs76ho
 kL6EbStAmvsJiET4ShxamnJT94flf7LUuFRN4ZhDEmwof9pOg/6AcGV+L
 uIJqWYzDlTgu77wUI6i9MQ5QSh3D3jtenlv/ahBGBhEXTbHbX5DF+xHj/ g==;
X-CSE-ConnectionGUID: vWSzDSTnREiexe+Z8ZZU6Q==
X-CSE-MsgGUID: 7h+UudNHTw+JC+Jy+v2Ihg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="16732911"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="16732911"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:17:48 -0700
X-CSE-ConnectionGUID: MZ8rbIqYQja6k14aRER+7g==
X-CSE-MsgGUID: vqumQpCsRpyLHY3dmpcFig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46554594"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:17:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915: disable fbc due to Wa_16023588340
In-Reply-To: <20240701132754.101832-4-matthew.auld@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240701132754.101832-3-matthew.auld@intel.com>
 <20240701132754.101832-4-matthew.auld@intel.com>
Date: Tue, 02 Jul 2024 11:17:42 +0300
Message-ID: <87ikxo9pi1.fsf@intel.com>
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

On Mon, 01 Jul 2024, Matthew Auld <matthew.auld@intel.com> wrote:
> On BMG-G21 we need to disable fbc due to complications around the WA.
>
> v2:
>  - Try to handle with i915_drv.h and compat layer. (Rodrigo)
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c          | 5 +++++
>  drivers/gpu/drm/i915/i915_drv.h                   | 2 ++
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 5 +++++
>  3 files changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 67116c9f1464..60131de77b4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1237,6 +1237,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> +	if (DISPLAY_NEEDS_WA_16023588340(i915)) {
> +		plane_state->no_fbc_reason = "Wa_16023588340";
> +		return 0;
> +	}
> +
>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>  	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
>  		plane_state->no_fbc_reason = "VT-d enabled";
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d7723dd11c80..816a01fda3fe 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -762,4 +762,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>  				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>  
> +#define DISPLAY_NEEDS_WA_16023588340(i915)	false
> +

Display feature macros don't belong in i915_drv.h.

BR,
Jani.

>  #endif
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 2feedddf1e40..a4256144dff7 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -15,6 +15,9 @@
>  #include "i915_utils.h"
>  #include "intel_runtime_pm.h"
>  #include "xe_device_types.h"
> +#include "xe_wa.h"
> +
> +#include <generated/xe_wa_oob.h>
>  
>  static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  {
> @@ -120,6 +123,8 @@ struct i915_sched_attr {
>  
>  #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
>  
> +#define DISPLAY_NEEDS_WA_16023588340(xe)	XE_WA(xe_root_mmio_gt(xe), 16023588340)
> +
>  #ifdef CONFIG_ARM64
>  /*
>   * arm64 indirectly includes linux/rtc.h,

-- 
Jani Nikula, Intel
