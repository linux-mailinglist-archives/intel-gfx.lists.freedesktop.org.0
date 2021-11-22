Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96272458D9D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 12:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E9806E09F;
	Mon, 22 Nov 2021 11:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE536E156
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 11:41:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="258589386"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="258589386"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:41:22 -0800
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="508915691"
Received: from calebjia-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.255.37.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:41:21 -0800
Date: Mon, 22 Nov 2021 06:41:19 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YZuB32c18T/settw@intel.com>
References: <20211122111504.223248-1-jani.nikula@intel.com>
 <20211122111504.223248-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211122111504.223248-4-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dsi: split out icl_dsi.h
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

On Mon, Nov 22, 2021 at 01:15:04PM +0200, Jani Nikula wrote:
> Follow the convention of corresponding .h for .c.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

for the series

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       |  1 +
>  drivers/gpu/drm/i915/display/icl_dsi.h       | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_crtc.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c |  1 +
>  drivers/gpu/drm/i915/display/intel_dsi.h     |  5 -----
>  5 files changed, 18 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/icl_dsi.h
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 2f15b322d78f..5781e9fac8b4 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -28,6 +28,7 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_mipi_dsi.h>
>  
> +#include "icl_dsi.h"
>  #include "intel_atomic.h"
>  #include "intel_backlight.h"
>  #include "intel_combo_phy.h"
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.h b/drivers/gpu/drm/i915/display/icl_dsi.h
> new file mode 100644
> index 000000000000..b4861b56b5b2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#ifndef __ICL_DSI_H__
> +#define __ICL_DSI_H__
> +
> +struct drm_i915_private;
> +struct intel_crtc_state;
> +
> +void icl_dsi_init(struct drm_i915_private *i915);
> +void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
> +
> +#endif /* __ICL_DSI_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index eb5444f90e77..243d5cc29734 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -14,7 +14,7 @@
>  
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> -
> +#include "icl_dsi.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_color.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2ffed63dd498..b2d51cd79d6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -73,6 +73,7 @@
>  #include "g4x_dp.h"
>  #include "g4x_hdmi.h"
>  #include "i915_drv.h"
> +#include "icl_dsi.h"
>  #include "intel_acpi.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
> index dd913ad35232..a3a906cb097e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -166,11 +166,6 @@ static inline u16 intel_dsi_encoder_ports(struct intel_encoder *encoder)
>  	return enc_to_intel_dsi(encoder)->ports;
>  }
>  
> -/* icl_dsi.c */
> -void icl_dsi_init(struct drm_i915_private *dev_priv);
> -void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
> -
> -/* intel_dsi.c */
>  int intel_dsi_bitrate(const struct intel_dsi *intel_dsi);
>  int intel_dsi_tlpx_ns(const struct intel_dsi *intel_dsi);
>  enum drm_panel_orientation
> -- 
> 2.30.2
> 
