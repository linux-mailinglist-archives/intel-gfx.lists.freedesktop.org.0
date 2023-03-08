Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671246B14B8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 23:03:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F0110E727;
	Wed,  8 Mar 2023 22:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DE110E727
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 22:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678313020; x=1709849020;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ATTV6lbJFIMNd5pzYZYODt5HF06CCg/qCmMn5SsFTgQ=;
 b=cgq/+4eAcmzaT6W7zMZLA8Ea0ldIPrA8HBFR7O8EF7ZUeoRsTzzzHyus
 Yr0oLq2fJYG+GI8x1jbJP87UjEtrYWRRkuc05b2Z+hR2tIoGsNTGQgTIs
 2yf+5cwZJTwtFBxs0e5IscaLodqAj4gCWwhK+cRJLA1iSGosLtc9uetKL
 Xbxu74v7NDLI5RbRcZbZUyfZlYbFpuKtB4t0fLXk0+1Z1ABob0tFD3NYZ
 BoRWIdzldWohvaiJNqjHuyk74mhhs7Bb+3VZ9GcENQ8fnKlBf1MoHHxdC
 mbYH/sqJ8846e7IxjqiPaP5fKup9Ol/tKloAhATqrOjrmdO74heTC8oDf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="401117606"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="401117606"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 14:03:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="670488117"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="670488117"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 08 Mar 2023 14:03:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Mar 2023 00:03:19 +0200
Date: Thu, 9 Mar 2023 00:03:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <ZAkGJw5ZNgvuS01d@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230308165859.235520-1-rodrigo.vivi@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Restore dsparb_lock.
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 11:58:58AM -0500, Rodrigo Vivi wrote:
> uncore->lock only protects the forcewake domain itself,
> not the register accesses.
> 
> uncore's _fw alternatives are for cases where the domains
> are not needed because we are sure that they are already
> awake.
> 
> So the move towards the uncore's _fw alternatives seems
> right, however using the uncore-lock to protect the dsparb
> registers seems an abuse of the uncore-lock.
> 
> Let's restore the previous individual lock and try to get
> rid of the direct uncore accesses from the display code.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c            | 13 ++-----------
>  drivers/gpu/drm/i915/display/intel_display_core.h |  3 +++
>  drivers/gpu/drm/i915/i915_driver.c                |  1 +
>  3 files changed, 6 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index caef72d38798..8fe0b5c63d3a 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -1771,16 +1771,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
>  
>  	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
>  
> -	/*
> -	 * uncore.lock serves a double purpose here. It allows us to
> -	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
> -	 * it protects the DSPARB registers from getting clobbered by
> -	 * parallel updates from multiple pipes.
> -	 *
> -	 * intel_pipe_update_start() has already disabled interrupts
> -	 * for us, so a plain spin_lock() is sufficient here.
> -	 */

I was wondering if we need to preserve the comment about irqs,
but since this is the only place using this lock, and it's never
called from an irq handler a non-irq disabling spinlock will suffice
anyway.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> -	spin_lock(&uncore->lock);
> +	spin_lock(&dev_priv->display.wm.dsparb_lock);
>  
>  	switch (crtc->pipe) {
>  	case PIPE_A:
> @@ -1840,7 +1831,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
>  
>  	intel_uncore_posting_read_fw(uncore, DSPARB);
>  
> -	spin_unlock(&uncore->lock);
> +	spin_unlock(&dev_priv->display.wm.dsparb_lock);
>  }
>  
>  #undef VLV_FIFO
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index fdab7bb93a7d..68c6bfb91dbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -253,6 +253,9 @@ struct intel_wm {
>  	 */
>  	struct mutex wm_mutex;
>  
> +	/* protects DSPARB registers on pre-g4x/vlv/chv */
> +	spinlock_t dsparb_lock;
> +
>  	bool ipc_enabled;
>  };
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index a53fd339e2cc..c78e36444a12 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -223,6 +223,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	mutex_init(&dev_priv->display.pps.mutex);
>  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
>  	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
>  
>  	i915_memcpy_init_early(dev_priv);
>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
