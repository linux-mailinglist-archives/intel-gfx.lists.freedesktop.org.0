Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BC4896EC4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 14:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C61AF112A70;
	Wed,  3 Apr 2024 12:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ii6zXhYM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C7511268F;
 Wed,  3 Apr 2024 12:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712146561; x=1743682561;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=goLCLOZBNgA+svw0BeKJ+W5z6Acs9JCc8OcAPAz8F1Q=;
 b=ii6zXhYMWQWlOVFZ5cSiqlIXyVqXhaT8/0dLDzmr5ao3yFXhvITYHg5r
 nOy4qBYi3q0H91Qd2iUab7Aq2jQ59QX6gsnxbnWZtO71XDX6mc6LbDXqr
 ROdS8OCjYk2JtG8AWwZOjOKm3qqpCVFatEsRgevs3s4bDQe3YhfiY8KCJ
 xBo+pLxmeSfdkkNGhFmrCUFuNJfJmIFnP1R32Tnu2GbgLYIXYWdV8xYyp
 jWudKW4/OdY0IdEA4haIUMzGAg13kK8G8RnQG6NYwuq9GnYhiMJOPSTDf
 Iw/pn7oK5a6A6QXIZyRfjvfZemOmyQUkKOrmY45rtA1jU+BdmI+r4c3lG w==;
X-CSE-ConnectionGUID: VzYjGmO+QiGzIad8LOgL5A==
X-CSE-MsgGUID: JxV3Eo8SRwiapZLkjVpOxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="29851742"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="29851742"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 05:16:01 -0700
X-CSE-ConnectionGUID: 5ueAnYPhTzGdzJhypsXGkA==
X-CSE-MsgGUID: GBX6HQQvQDmpizS9Dyem/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="23115868"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.36.15])
 ([10.246.36.15])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 05:15:59 -0700
Message-ID: <04c2f0a1-dcda-4763-89a1-370db9d408f1@linux.intel.com>
Date: Wed, 3 Apr 2024 14:15:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 24/25] drm/i915/display: perform transient flush
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-25-balasubramani.vivekanandan@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240403112253.1432390-25-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

+Jouni

On 4/3/2024 1:22 PM, Balasubramani Vivekanandan wrote:
> From: Matthew Auld <matthew.auld@intel.com>
>
> Perform manual transient cache flush prior to flip and at the end of
> frontbuffer_flush. This is needed to ensure display engine doesn't see
> garbage if the surface is L3:XD dirty.
>
> Testcase: igt@xe-pat@display-vs-wb-transient
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
>   .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 ++
>   drivers/gpu/drm/i915/display/intel_tdf.h      | 25 +++++++++++++++++++
>   drivers/gpu/drm/xe/Makefile                   |  3 ++-
>   drivers/gpu/drm/xe/display/xe_tdf.c           | 13 ++++++++++
>   5 files changed, 45 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
>   create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index aed25890b6f5..0a720e9d12a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -110,6 +110,7 @@
>   #include "intel_sdvo.h"
>   #include "intel_snps_phy.h"
>   #include "intel_tc.h"
> +#include "intel_tdf.h"
>   #include "intel_tv.h"
>   #include "intel_vblank.h"
>   #include "intel_vdsc.h"
> @@ -7095,6 +7096,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>   
>   	intel_atomic_commit_fence_wait(state);
>   
> +	intel_td_flush(dev_priv);
> +
>   	drm_atomic_helper_wait_for_dependencies(&state->base);
>   	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
>   	intel_atomic_global_state_wait_for_dependencies(state);
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 2ea37c0414a9..4923c340a0b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -65,6 +65,7 @@
>   #include "intel_fbc.h"
>   #include "intel_frontbuffer.h"
>   #include "intel_psr.h"
> +#include "intel_tdf.h"
>   
>   /**
>    * frontbuffer_flush - flush frontbuffer
> @@ -93,6 +94,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
>   	trace_intel_frontbuffer_flush(i915, frontbuffer_bits, origin);
>   
>   	might_sleep();
> +	intel_td_flush(i915);
>   	intel_drrs_flush(i915, frontbuffer_bits);
>   	intel_psr_flush(i915, frontbuffer_bits, origin);
>   	intel_fbc_flush(i915, frontbuffer_bits, origin);
> diff --git a/drivers/gpu/drm/i915/display/intel_tdf.h b/drivers/gpu/drm/i915/display/intel_tdf.h
> new file mode 100644
> index 000000000000..353cde21f6c2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_tdf.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_TDF_H__
> +#define __INTEL_TDF_H__
> +
> +/*
> + * TDF (Transient-Data-Flush) is needed for Xe2+ where special L3:XD caching can
> + * be enabled through various PAT index modes. Idea is to use this caching mode
> + * when for example rendering onto the display surface, with the promise that
> + * KMD will ensure transient cache entries are always flushed by the time we do
> + * the display flip, since display engine is never coherent with CPU/GPU caches.
> + */
> +
> +struct drm_i915_private;
> +
> +#ifdef I915
> +static inline void intel_td_flush(struct drm_i915_private *i915) {}
> +#else
> +void intel_td_flush(struct drm_i915_private *i915);
> +#endif
> +
> +#endif
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index e5b1715f721e..401a4492c625 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -196,7 +196,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>   	display/xe_dsb_buffer.o \
>   	display/xe_fb_pin.o \
>   	display/xe_hdcp_gsc.o \
> -	display/xe_plane_initial.o
> +	display/xe_plane_initial.o \
> +	display/xe_tdf.o
>   
>   # SOC code shared with i915
>   xe-$(CONFIG_DRM_XE_DISPLAY) += \
> diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
> new file mode 100644
> index 000000000000..2c0d4e144e09
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/xe_tdf.c
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#include "xe_device.h"
> +#include "intel_display_types.h"
> +#include "intel_tdf.h"
> +
> +void intel_td_flush(struct drm_i915_private *i915)
> +{
> +	xe_device_td_flush(i915);
> +}
