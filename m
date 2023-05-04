Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4356F6E84
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 17:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A5A10E120;
	Thu,  4 May 2023 15:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F310F10E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 15:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683212520; x=1714748520;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9Kg3ux7ozAfF4viVnUCKJHKG9rUPwpJ3uEth7FI/pyc=;
 b=JJINBc4K3cIpbf1SK8QOsESungcdcY3qCXo2Wk7R0qBgjG1FAQxQbmFT
 i7RRmn+z+HmE5P5OPREt0IPG5RQeZxpBoA/0kP9ebJb6OYfy8Ifk4W3zP
 WQCutMDgbeDRXB2QH5ROB1Kn8WQWL9OC1ch2z3bxoiwOo7AoxwpVWirYU
 hf3x6bBnHibRFGiQWxvdHTwl8YdTdu7R4ZyAxDrp+hMrDC0QumcmntU25
 MxNXkOWnAiIXM6zYDkgB6fHjCafErxMm2Z5g3fX8vnM8kdMBVEuS7LKgj
 9ofsIljUJEGNkBQ4Oc/Xzdo01sP1siPjbW6+3nlXxH+8ahlLOYmANb47u Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="328575759"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="328575759"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 08:00:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="766614580"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="766614580"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga004.fm.intel.com with SMTP; 04 May 2023 08:00:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 18:00:06 +0300
Date: Thu, 4 May 2023 18:00:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPIdiJxRLyteyud@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-12-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-12-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 11/12] drm/i915: Factor out a helper for
 handling atomic modeset locks/state
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

On Thu, May 04, 2023 at 02:10:47AM +0300, Imre Deak wrote:
> This patch simplifying the handling of modeset locks and atomic state
> for an atomic commit is based on
> 
> https://lore.kernel.org/all/20210715184954.7794-2-ville.syrjala@linux.intel.com/
> 
> adding the helper to i915. I find this approach preferrable than
> open-coding the corresponding steps (fixed for me an atomic
> state reset during a DEADLK retry, which I missed in the open-coded
> version) and also better than the existing
> DRM_MODESET_LOCK_ALL_BEGIN/END macros for the reasons described in the
> above original patchset.
> 
> This change takes the helper into use only for atomic commits during DDI
> hotplug handling, as a preparation for a follow-up patch adding a
> similar commit started from the same spot. Other places doing a
> driver-internal atomic commit is to be converted by a follow-up
> patchset.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 17 ++-----
>  .../gpu/drm/i915/display/intel_modeset_lock.c | 50 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_modeset_lock.h | 33 ++++++++++++
>  4 files changed, 87 insertions(+), 14 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_lock.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_lock.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 9af76e376ca91..ef6feb2aad2ad 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -263,6 +263,7 @@ i915-y += \
>  	display/intel_hti.o \
>  	display/intel_load_detect.o \
>  	display/intel_lpe_audio.o \
> +	display/intel_modeset_lock.o \
>  	display/intel_modeset_verify.o \
>  	display/intel_modeset_setup.o \
>  	display/intel_overlay.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 55f36d9d509c6..eb391fff0f1be 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -63,6 +63,7 @@
>  #include "intel_hti.h"
>  #include "intel_lspcon.h"
>  #include "intel_mg_phy_regs.h"
> +#include "intel_modeset_lock.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
>  #include "intel_quirks.h"
> @@ -4400,26 +4401,14 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
>  
>  	state = intel_encoder_hotplug(encoder, connector);
>  
> -	drm_modeset_acquire_init(&ctx, 0);
> -
> -	for (;;) {
> +	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret) {
>  		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
>  			ret = intel_hdmi_reset_link(encoder, &ctx);
>  		else
>  			ret = intel_dp_retrain_link(encoder, &ctx);
> -
> -		if (ret == -EDEADLK) {
> -			drm_modeset_backoff(&ctx);
> -			continue;
> -		}
> -
> -		break;
>  	}
>  
> -	drm_modeset_drop_locks(&ctx);
> -	drm_modeset_acquire_fini(&ctx);
> -	drm_WARN(encoder->base.dev, ret,
> -		 "Acquiring modeset locks failed with %i\n", ret);
> +	drm_WARN_ON(encoder->base.dev, ret);
>  
>  	/*
>  	 * Unpowered type-c dongles can take some time to boot and be
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_lock.c b/drivers/gpu/drm/i915/display/intel_modeset_lock.c
> new file mode 100644
> index 0000000000000..8fb6fd849a75d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_lock.c
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#include <drm/drm_modeset_lock.h>
> +
> +#include "intel_display_types.h"
> +#include "intel_modeset_lock.h"
> +
> +void _intel_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
> +			       struct intel_atomic_state *state,
> +			       unsigned int flags, int *ret)
> +{
> +	drm_modeset_acquire_init(ctx, flags);
> +
> +	if (state)
> +		state->base.acquire_ctx = ctx;
> +
> +	*ret = -EDEADLK;
> +}
> +
> +bool _intel_modeset_lock_loop(int *ret)
> +{
> +	if (*ret == -EDEADLK) {
> +		*ret = 0;
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
> +void _intel_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
> +			     struct intel_atomic_state *state,
> +			     int *ret)
> +{
> +	if (*ret == -EDEADLK) {
> +		if (state)
> +			drm_atomic_state_clear(&state->base);
> +
> +		*ret = drm_modeset_backoff(ctx);
> +		if (*ret == 0) {
> +			*ret = -EDEADLK;
> +			return;
> +		}
> +	}
> +
> +	drm_modeset_drop_locks(ctx);
> +	drm_modeset_acquire_fini(ctx);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_lock.h b/drivers/gpu/drm/i915/display/intel_modeset_lock.h
> new file mode 100644
> index 0000000000000..edb5099bcd99c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_lock.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_MODESET_LOCK_H__
> +#define __INTEL_MODESET_LOCK_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_modeset_acquire_ctx;
> +struct intel_atomic_state;
> +
> +void _intel_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
> +			       struct intel_atomic_state *state,
> +			       unsigned int flags,
> +			       int *ret);
> +bool _intel_modeset_lock_loop(int *ret);
> +void _intel_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
> +			     struct intel_atomic_state *state,
> +			     int *ret);
> +
> +/*
> + * Note that one must always use "continue" rather than
> + * "break" or "return" to handle errors within the
> + * intel_modeset_lock_ctx_retry() block.
> + */
> +#define intel_modeset_lock_ctx_retry(ctx, state, flags, ret) \
> +	for (_intel_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
> +	     _intel_modeset_lock_loop(&(ret)); \
> +	     _intel_modeset_lock_end((ctx), (state), &(ret)))
> +
> +#endif /* __INTEL_MODESET_LOCK_H__ */
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
