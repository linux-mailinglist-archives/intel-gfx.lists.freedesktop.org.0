Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F51F3F6265
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 18:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63A489FDB;
	Tue, 24 Aug 2021 16:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6587C89FDB
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 16:10:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="281060865"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="281060865"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 09:10:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="455653369"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 24 Aug 2021 09:09:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Aug 2021 19:09:58 +0300
Date: Tue, 24 Aug 2021 19:09:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YSUZ1keUjJJk4yy4@intel.com>
References: <20210823093645.10464-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210823093645.10464-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fdi: make intel_fdi_link_freq()
 return int
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

On Mon, Aug 23, 2021 at 12:36:45PM +0300, Jani Nikula wrote:
> The unsigned doesn't help us here.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fdi.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_fdi.h | 4 +---
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 970a57369b05..13f8ba4c9188 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -95,7 +95,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
>  	}
>  }
>  
> -u32 intel_fdi_link_freq(struct drm_i915_private *i915,
> +int intel_fdi_link_freq(struct drm_i915_private *i915,
>  			const struct intel_crtc_state *pipe_config)
>  {
>  	if (HAS_DDI(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
> index fd63a6a53fca..2c8ffd9ceaed 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
> @@ -6,15 +6,13 @@
>  #ifndef _INTEL_FDI_H_
>  #define _INTEL_FDI_H_
>  
> -#include <linux/types.h>
> -
>  struct drm_i915_private;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_encoder;
>  
>  #define I915_DISPLAY_CONFIG_RETRY 1
> -u32 intel_fdi_link_freq(struct drm_i915_private *i915,
> +int intel_fdi_link_freq(struct drm_i915_private *i915,
>  			const struct intel_crtc_state *pipe_config);
>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
>  			   struct intel_crtc_state *pipe_config);
> -- 
> 2.20.1

-- 
Ville Syrjälä
Intel
