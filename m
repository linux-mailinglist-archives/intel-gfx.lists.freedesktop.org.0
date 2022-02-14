Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A6E4B5B7C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 21:53:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D83210E2ED;
	Mon, 14 Feb 2022 20:53:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4840810E2ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 20:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644871983; x=1676407983;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HBwx+NQAYWGS0xMdILMF/nyzAgdxWHEEGvjvBbcw2yQ=;
 b=d50Ln3Sjm61ZStGnzlJiGCHSiV6WdMYv0nDhBDXkD6BftvEW+vYuH1gJ
 KHqOlrt13FKyxm83b6lVVKOEZ/v3bIjlB0i20Kn+5T9o85Lf+N5QbZnj9
 qfFtZADcOViIa39akR9w9rAPLNDeKO8z2HRbHn/vXMQbWZNb4IRdDSArG
 PlKwrP61qRTmEXj2KS0+Gri8La9nwD4/n38LHHrMkGzdqrROs51WUHxRE
 hFqr0rkcDkhtOQOXOtdD78Era2Qcl0X5LYIALTxNkFsF5snmm/BsbN8Yh
 TCYl3lZQWNbXCDJv17kQ/f7u18zzGu1jfqRjpvNTRG+t0G8qoPd0JY4g3 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="249013561"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="249013561"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 12:53:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="496022055"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 14 Feb 2022 12:53:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 22:52:59 +0200
Date: Mon, 14 Feb 2022 22:52:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YgrBKynMQfRLKKrs@intel.com>
References: <cover.1644850884.git.jani.nikula@intel.com>
 <961d790b9eacad248fa7ac7d1dcf6179f543dccd.1644850884.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <961d790b9eacad248fa7ac7d1dcf6179f543dccd.1644850884.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/fbdev: add
 intel_fbdev_to_framebuffer() helper
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

On Mon, Feb 14, 2022 at 05:02:06PM +0200, Jani Nikula wrote:
> Wrap accessing struct intel_fbdev guts in a helper.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_fbdev.c           | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_fbdev.h           | 7 +++++++
>  3 files changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f4de004d470f..b0bcf4d54a74 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -16,6 +16,7 @@
>  #include "intel_dp_mst.h"
>  #include "intel_drrs.h"
>  #include "intel_fbc.h"
> +#include "intel_fbdev.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdmi.h"
>  #include "intel_pm.h"
> @@ -124,9 +125,8 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>  	struct drm_framebuffer *drm_fb;
>  
>  #ifdef CONFIG_DRM_FBDEV_EMULATION
> -	if (dev_priv->fbdev && dev_priv->fbdev->helper.fb) {
> -		fbdev_fb = to_intel_framebuffer(dev_priv->fbdev->helper.fb);
> -
> +	fbdev_fb = intel_fbdev_to_framebuffer(dev_priv->fbdev);

The "_to_" implies to me that this is just some kind of cast,
which it is not. So I would drop the "_to_".

Otherwise the series seems fine
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	if (fbdev_fb) {
>  		seq_printf(m, "fbcon size: %d x %d, depth %d, %d bpp, modifier 0x%llx, refcount %d, obj ",
>  			   fbdev_fb->base.width,
>  			   fbdev_fb->base.height,
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 41d279db2be6..3ef683916ba6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -680,3 +680,11 @@ void intel_fbdev_restore_mode(struct drm_device *dev)
>  	if (drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper) == 0)
>  		intel_fbdev_invalidate(ifbdev);
>  }
> +
> +struct intel_framebuffer *intel_fbdev_to_framebuffer(struct intel_fbdev *fbdev)
> +{
> +	if (!fbdev || !fbdev->helper.fb)
> +		return NULL;
> +
> +	return to_intel_framebuffer(fbdev->helper.fb);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
> index de7c84250eb5..8e86c08d544f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
> @@ -10,6 +10,8 @@
>  
>  struct drm_device;
>  struct drm_i915_private;
> +struct intel_fbdev;
> +struct intel_framebuffer;
>  
>  #ifdef CONFIG_DRM_FBDEV_EMULATION
>  int intel_fbdev_init(struct drm_device *dev);
> @@ -19,6 +21,7 @@ void intel_fbdev_fini(struct drm_i915_private *dev_priv);
>  void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
>  void intel_fbdev_output_poll_changed(struct drm_device *dev);
>  void intel_fbdev_restore_mode(struct drm_device *dev);
> +struct intel_framebuffer *intel_fbdev_to_framebuffer(struct intel_fbdev *fbdev);
>  #else
>  static inline int intel_fbdev_init(struct drm_device *dev)
>  {
> @@ -48,6 +51,10 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
>  static inline void intel_fbdev_restore_mode(struct drm_device *dev)
>  {
>  }
> +static inline struct intel_framebuffer *intel_fbdev_to_framebuffer(struct intel_fbdev *fbdev)
> +{
> +	return NULL;
> +}
>  #endif
>  
>  #endif /* __INTEL_FBDEV_H__ */
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
