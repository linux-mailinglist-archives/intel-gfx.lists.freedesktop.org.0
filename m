Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E488746510C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127DA6EA38;
	Wed,  1 Dec 2021 15:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC47E6EA38
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:11:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236295842"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236295842"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:11:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="654815110"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 01 Dec 2021 07:11:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:11:35 +0200
Date: Wed, 1 Dec 2021 17:11:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YaeQp6vnx4naRJym@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
 <50359b38c0eabe262ff31c9ec35c97aa5dfb7fef.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <50359b38c0eabe262ff31c9ec35c97aa5dfb7fef.1638366969.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 03/10] drm/i915/crtc: rename
 intel_get_crtc_for_plane() to intel_crtc_for_plane()
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

On Wed, Dec 01, 2021 at 03:57:05PM +0200, Jani Nikula wrote:
> The "get" in the name implies reference counting, remove it. This also
> makes the function conform to naming style.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
>  drivers/gpu/drm/i915/intel_pm.c                    | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8009bcfa1a38..036f9be3045d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1797,7 +1797,7 @@ intel_crtc_for_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  }
>  
>  static inline struct intel_crtc *
> -intel_get_crtc_for_plane(struct drm_i915_private *dev_priv, enum i9xx_plane_id plane)
> +intel_crtc_for_plane(struct drm_i915_private *dev_priv, enum i9xx_plane_id plane)
>  {
>  	return dev_priv->plane_to_crtc_mapping[plane];
>  }
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index fadcd8af5452..ed760627aa6f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2357,7 +2357,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
>  		fifo_size = i830_get_fifo_size(dev_priv, PLANE_A);
>  	else
>  		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_A);
> -	crtc = intel_get_crtc_for_plane(dev_priv, PLANE_A);
> +	crtc = intel_crtc_for_plane(dev_priv, PLANE_A);
>  	if (intel_crtc_active(crtc)) {
>  		const struct drm_display_mode *pipe_mode =
>  			&crtc->config->hw.pipe_mode;
> @@ -2387,7 +2387,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
>  		fifo_size = i830_get_fifo_size(dev_priv, PLANE_B);
>  	else
>  		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_B);
> -	crtc = intel_get_crtc_for_plane(dev_priv, PLANE_B);
> +	crtc = intel_crtc_for_plane(dev_priv, PLANE_B);
>  	if (intel_crtc_active(crtc)) {
>  		const struct drm_display_mode *pipe_mode =
>  			&crtc->config->hw.pipe_mode;
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
