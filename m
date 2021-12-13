Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B767472C83
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 13:43:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6008C10E827;
	Mon, 13 Dec 2021 12:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB3E10E827
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 12:43:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="238538243"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="238538243"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 04:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="603685083"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 13 Dec 2021 04:43:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Dec 2021 14:43:14 +0200
Date: Mon, 13 Dec 2021 14:43:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ybc/4ktIaLxKl6lJ@intel.com>
References: <20211213114106.296017-1-jani.nikula@intel.com>
 <20211213114106.296017-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211213114106.296017-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/cdclk: move struct
 intel_cdclk_funcs to intel_cdclk.c
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

On Mon, Dec 13, 2021 at 01:41:06PM +0200, Jani Nikula wrote:
> The funcs struct can be opaque, make it internal to intel_cdclk.c.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++++++++
>  drivers/gpu/drm/i915/i915_drv.h            | 12 +-----------
>  2 files changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c30cf8d2b835..249f81a80eb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -63,6 +63,17 @@
>   * dividers can be programmed correctly.
>   */
>  
> +struct intel_cdclk_funcs {
> +	void (*get_cdclk)(struct drm_i915_private *i915,
> +			  struct intel_cdclk_config *cdclk_config);
> +	void (*set_cdclk)(struct drm_i915_private *i915,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe);
> +	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
> +	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
> +	u8 (*calc_voltage_level)(int cdclk);
> +};
> +
>  void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
>  			   struct intel_cdclk_config *cdclk_config)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e2c0d69753b1..0112ae942664 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -291,6 +291,7 @@ struct intel_connector;
>  struct intel_encoder;
>  struct intel_atomic_state;
>  struct intel_cdclk_config;
> +struct intel_cdclk_funcs;
>  struct intel_cdclk_state;
>  struct intel_cdclk_vals;
>  struct intel_initial_plane_config;
> @@ -339,17 +340,6 @@ struct intel_color_funcs {
>  	void (*read_luts)(struct intel_crtc_state *crtc_state);
>  };
>  
> -struct intel_cdclk_funcs {
> -	void (*get_cdclk)(struct drm_i915_private *dev_priv,
> -			  struct intel_cdclk_config *cdclk_config);
> -	void (*set_cdclk)(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe);
> -	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
> -	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
> -	u8 (*calc_voltage_level)(int cdclk);
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
