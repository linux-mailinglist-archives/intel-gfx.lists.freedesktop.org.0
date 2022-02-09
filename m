Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB6B4AEF7A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 11:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A85210E1CD;
	Wed,  9 Feb 2022 10:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341DD10E1CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 10:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644403413; x=1675939413;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gXPoOuq6rvgP+QSyH+/7QDilylNHxY476D9UQc6mjUg=;
 b=h/znB/eG8pX8T5YHvrCvHw5UDhdNY922Z1E0PmJF8XVerKGgr0CzZZQM
 5+cUTPFvZCAjU54WjfHNeBFqJuhDUxlmjeIb0njv6omMnf5wrVQvG4uiD
 X7BgxTh6HXKKWZWoEVRrVJpLAfpgaFi+iooNNKqDisA1+Gwb/CSYwyy0W
 A4/Y+Cdmk7sNn7FD0XGc5OJu+J3LAZX4hTvH8PSQIJAOlGz1E92AnfvOu
 EVIh+YbM4muPGit/NCvldVUfCLUpuBx2ZLP+vyhGTkMWvXiRt+uSff5Gr
 BDK4fMDXQWi6FJboNJ0EeVhSLf2VnYBIThhWT3+aoD1lkABN2KJ9u94h/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="248936281"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="248936281"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 02:43:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="525942087"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 09 Feb 2022 02:43:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 12:43:29 +0200
Date: Wed, 9 Feb 2022 12:43:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YgOa0VnsuOgsXd2T@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
 <68cf44fab55c047253c3ed87f8afcf0a86fa157a.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <68cf44fab55c047253c3ed87f8afcf0a86fa157a.1643896905.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/color: hide struct
 intel_color_funcs
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

On Thu, Feb 03, 2022 at 04:02:28PM +0200, Jani Nikula wrote:
> The struct is only needed in intel_color.c, move it there.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 19 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h            | 20 +-------------------
>  2 files changed, 20 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index de3ded1e327a..8f8b34b60f27 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -28,6 +28,25 @@
>  #include "intel_dpll.h"
>  #include "vlv_dsi_pll.h"
>  
> +struct intel_color_funcs {
> +	int (*color_check)(struct intel_crtc_state *crtc_state);
> +	/*
> +	 * Program double buffered color management registers during
> +	 * vblank evasion. The registers should then latch during the
> +	 * next vblank start, alongside any other double buffered registers
> +	 * involved with the same commit.
> +	 */
> +	void (*color_commit)(const struct intel_crtc_state *crtc_state);
> +	/*
> +	 * Load LUTs (and other single buffered color management
> +	 * registers). Will (hopefully) be called during the vblank
> +	 * following the latching of any double buffered registers
> +	 * involved with the same commit.
> +	 */
> +	void (*load_luts)(const struct intel_crtc_state *crtc_state);
> +	void (*read_luts)(struct intel_crtc_state *crtc_state);
> +};
> +
>  #define CTM_COEFF_SIGN	(1ULL << 63)
>  
>  #define CTM_COEFF_1_0	(1ULL << 32)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 5a1615c02971..cac18b57808e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -115,6 +115,7 @@ struct intel_cdclk_config;
>  struct intel_cdclk_funcs;
>  struct intel_cdclk_state;
>  struct intel_cdclk_vals;
> +struct intel_color_funcs;
>  struct intel_connector;
>  struct intel_crtc;
>  struct intel_dp;
> @@ -320,25 +321,6 @@ struct drm_i915_wm_disp_funcs {
>  	int (*compute_global_watermarks)(struct intel_atomic_state *state);
>  };
>  
> -struct intel_color_funcs {
> -	int (*color_check)(struct intel_crtc_state *crtc_state);
> -	/*
> -	 * Program double buffered color management registers during
> -	 * vblank evasion. The registers should then latch during the
> -	 * next vblank start, alongside any other double buffered registers
> -	 * involved with the same commit.
> -	 */
> -	void (*color_commit)(const struct intel_crtc_state *crtc_state);
> -	/*
> -	 * Load LUTs (and other single buffered color management
> -	 * registers). Will (hopefully) be called during the vblank
> -	 * following the latching of any double buffered registers
> -	 * involved with the same commit.
> -	 */
> -	void (*load_luts)(const struct intel_crtc_state *crtc_state);
> -	void (*read_luts)(struct intel_crtc_state *crtc_state);
> -};
> -
>  struct intel_hotplug_funcs {
>  	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
>  };
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
