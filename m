Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C4A4DCCE5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A6510E715;
	Thu, 17 Mar 2022 17:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC37C10E712
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647539423; x=1679075423;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=y0gbt+gWtYyS4i13ONHal6pzWNEopf5NIGAIsSvrzDg=;
 b=K17KgV0ubHAGQPRzlcJoaPlsAFZ8isPgCNz8SYn0Px4xIntxwve05fY9
 g+D5lduZkyYfr78VV+cy3GjYvfY2LXhXvWoVggUk4hUoR8bYfoqhmZiwG
 SaRObTRqzQ0/2VRqpKj1GzQDTvGWUNgEOds50t5WMNv11gDdq0IMP4ZHk
 PmsRns3zOfvh23QOi6qqFi42IDOiUu+zrEoVhp90DkCNBKNDUQCch+Qjc
 KiRe5CsIqTIehclOWm4tvyFpHfT/clXGJqG1d6IXWwc7eJo+jfEs+260F
 lMwRS4SU2YvJ4X0+yqZ024uSWrPQrUmhyBfrvxt8qMEmvlpMJHMmM2iFV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343369812"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343369812"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:50:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="513513093"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 17 Mar 2022 10:50:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:50:17 +0200
Date: Thu, 17 Mar 2022 19:50:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YjN02ff81NR8EPFI@intel.com>
References: <20220311100639.114685-1-jani.nikula@intel.com>
 <20220311100639.114685-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220311100639.114685-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: include uapi/drm/i915_drm.h
 directly where needed
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 11, 2022 at 12:06:39PM +0200, Jani Nikula wrote:
> Remove the uapi/drm/i915_drm.h include from drm/i915_drm.h, and stop
> being a proxy for uapi/drm/i915_drm.h. Include uapi/drm/i915_drm.h and
> drm/i915_drm.h only where needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks sensible to me. Series is 
Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_lmem.c     | 2 ++
>  drivers/gpu/drm/i915/gem/i915_gem_region.c   | 2 ++
>  drivers/gpu/drm/i915/intel_memory_region.c   | 2 ++
>  drivers/gpu/drm/i915/intel_memory_region.h   | 2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 2 --
>  include/drm/i915_drm.h                       | 2 +-
>  6 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> index 444f8268b9c5..ede084f36ca9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> @@ -3,6 +3,8 @@
>   * Copyright � 2019 Intel Corporation
>   */
>  
> +#include <uapi/drm/i915_drm.h>
> +
>  #include "intel_memory_region.h"
>  #include "gem/i915_gem_region.h"
>  #include "gem/i915_gem_lmem.h"
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> index c9b2e8b91053..f4fbae2f9dcc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> @@ -3,6 +3,8 @@
>   * Copyright � 2019 Intel Corporation
>   */
>  
> +#include <uapi/drm/i915_drm.h>
> +
>  #include "intel_memory_region.h"
>  #include "i915_gem_region.h"
>  #include "i915_drv.h"
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 1c841f68169a..ded78b83e0b5 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -5,6 +5,8 @@
>  
>  #include <linux/prandom.h>
>  
> +#include <uapi/drm/i915_drm.h>
> +
>  #include "intel_memory_region.h"
>  #include "i915_drv.h"
>  #include "i915_ttm_buddy_manager.h"
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
> index 21dcbd620758..bbc35ec5c090 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.h
> +++ b/drivers/gpu/drm/i915/intel_memory_region.h
> @@ -10,7 +10,7 @@
>  #include <linux/mutex.h>
>  #include <linux/io-mapping.h>
>  #include <drm/drm_mm.h>
> -#include <drm/i915_drm.h>
> +#include <uapi/drm/i915_drm.h>
>  
>  struct drm_i915_private;
>  struct drm_i915_gem_object;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index 598840b73dfa..92b00b4de240 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -3,8 +3,6 @@
>   * Copyright(c) 2020, Intel Corporation. All rights reserved.
>   */
>  
> -#include <drm/i915_drm.h>
> -
>  #include "i915_drv.h"
>  
>  #include "intel_pxp.h"
> diff --git a/include/drm/i915_drm.h b/include/drm/i915_drm.h
> index afbf3ef5643e..7adce327c1c2 100644
> --- a/include/drm/i915_drm.h
> +++ b/include/drm/i915_drm.h
> @@ -26,7 +26,7 @@
>  #ifndef _I915_DRM_H_
>  #define _I915_DRM_H_
>  
> -#include <uapi/drm/i915_drm.h>
> +#include <linux/types.h>
>  
>  /* For use by IPS driver */
>  unsigned long i915_read_mch_val(void);
> -- 
> 2.30.2

-- 
Ville Syrj�l�
Intel
