Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FAA9B7B19
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 13:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140F010E881;
	Thu, 31 Oct 2024 12:50:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZ+mqHqL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 112A010E881;
 Thu, 31 Oct 2024 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730379058; x=1761915058;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ahSvmo2s6PelfRH9svvACCzSWB83L/eWLdNprqRS35A=;
 b=jZ+mqHqLOdb5Tf22x6ZPEEXb1R/n/EaEIdV+P/KY0zNA6W+iuSVuU+CK
 BbZfRayZ7xD+dVIG314eXY5qvVE1g1DDwKROJGsTEeZHOM9vPw5GDwWqB
 zyOZ9235sXPrHk7cXLTfZ3Kh3F1GyskpSmwK9+c+piSfA4hWaC8g9eP8s
 X/x8c4lj2i3nWq46hDCNhjrciudrXRqIQlf3677+7eI0p0dFRuTXNNg/0
 UjWX7v/tEPFMfS51IYo0RYBPBHNCHGPEZK+PBqIB9TJJ5vY0qkH6kg2ns
 oHT7fcbst685eub9Tg0W424iSs4u/Lh43pnGz+p5tephlGnoBrUJnSj5w Q==;
X-CSE-ConnectionGUID: 3nxU4QKeTwmhxzYvd/gJLw==
X-CSE-MsgGUID: GIa7ma6vQGqRyWF9P7e/Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="40687638"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="40687638"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:50:58 -0700
X-CSE-ConnectionGUID: I85sVsDDQTOjoLrFygk2Sw==
X-CSE-MsgGUID: G8ZS+GERTA+YEXo0eYSeSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="113465672"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:50:56 -0700
Date: Thu, 31 Oct 2024 14:50:53 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/display: add intel_display_conversion.c to
 hide stuff better
Message-ID: <ZyN9LdA6yGjtWuQy@black.fi.intel.com>
References: <cover.1730374470.git.jani.nikula@intel.com>
 <f08d3740e464b52bffd80b344e8abf5b1fda975c.1730374470.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f08d3740e464b52bffd80b344e8abf5b1fda975c.1730374470.git.jani.nikula@intel.com>
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

On Thu, Oct 31, 2024 at 01:38:33PM +0200, Jani Nikula wrote:
> The __to_intel_display() generics require the definition of struct
> drm_i915_private i.e. inclusion of i915_drv.h. Add
> intel_display_conversion.c with a __i915_to_display() function to do the
> conversion without the intel_display_conversion.h having an implicit
> dependency on i915_drv.h.
> 
> The long term goal is to remove __to_intel_display() and the
> intel_display_conversion.[ch] files altoghether, and this is merely a
> transitional step to make the dependencies on i915_drv.h explicit.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                           | 1 +
>  drivers/gpu/drm/i915/display/intel_display_conversion.c | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_display_conversion.h | 9 +++++++--
>  drivers/gpu/drm/xe/Makefile                             | 1 +
>  4 files changed, 18 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_conversion.c
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index ac47d7e988fc..43686d843ef7 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -237,6 +237,7 @@ i915-y += \
>  	display/intel_crtc_state_dump.o \
>  	display/intel_cursor.o \
>  	display/intel_display.o \
> +	display/intel_display_conversion.o \
>  	display/intel_display_driver.o \
>  	display/intel_display_irq.o \
>  	display/intel_display_params.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/drivers/gpu/drm/i915/display/intel_display_conversion.c
> new file mode 100644
> index 000000000000..bdd947f5ccd8
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright © 2024 Intel Corporation */
> +
> +#include "i915_drv.h"
> +
> +struct intel_display *__i915_to_display(struct drm_i915_private *i915)
> +{
> +	return &i915->display;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.h b/drivers/gpu/drm/i915/display/intel_display_conversion.h
> index ad8545c8055d..790d0be698dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_conversion.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_conversion.h
> @@ -8,14 +8,19 @@
>  #ifndef __INTEL_DISPLAY_CONVERSION__
>  #define __INTEL_DISPLAY_CONVERSION__
>  
> +struct drm_i915_private;
> +struct intel_display;
> +
> +struct intel_display *__i915_to_display(struct drm_i915_private *i915);
> +
>  /*
>   * Transitional macro to optionally convert struct drm_i915_private * to struct
>   * intel_display *, also accepting the latter.
>   */
>  #define __to_intel_display(p)						\
>  	_Generic(p,							\
> -		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
> -		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
> +		 const struct drm_i915_private *: __i915_to_display((struct drm_i915_private *)(p)), \
> +		 struct drm_i915_private *: __i915_to_display((struct drm_i915_private *)(p)), \
>  		 const struct intel_display *: (p),			\
>  		 struct intel_display *: (p))

Perhaps,

#define TYPE_ENTRY(type, x)	\
	const type: x,		\
	type: x

May snip the duplication.

Raag
