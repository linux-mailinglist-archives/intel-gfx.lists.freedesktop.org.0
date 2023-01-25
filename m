Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 283D367AF09
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 10:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F1F10E760;
	Wed, 25 Jan 2023 09:59:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83F210E760
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 09:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674640738; x=1706176738;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Qu2AipRPM8Wg+43byjfn+buQGmAOPDt4U46mszrOynU=;
 b=BbA5YmSUrWpwu1YsXGA4WNlj71S3bgZIe9//NCfysMRcIhxHe/yHgzHw
 wdfhyXKqZpTx5cLgz0hMbHx8AngKnhpETorJI/4bqJPhEFwnNb91ka4WA
 fPDAdFjXJEnrXPw0OPQr45nOkKaZIx0voE8WVMwF6TNGwRbwrbwLiq6jr
 QzcXmKjRglhmGZ4Fv1TSx33H+M680sntThYyGdkQfgnzBExlps/fr7llG
 bzccl8mwborXR1qJCb/L7wyjpNW3qQuPWxUfBfkQCljEg6gddlZEBIiHD
 ShXmhcBoM1pWPhx9u4gR7XVZQv3rNoF1dLxW5uuh/ZhApXk+FgghEZkhr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="314423008"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="314423008"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 01:58:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="692903702"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="692903702"
Received: from ericnguy-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.123])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 01:58:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230125095603.17845-1-nirmoy.das@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230125095603.17845-1-nirmoy.das@intel.com>
Date: Wed, 25 Jan 2023 11:58:53 +0200
Message-ID: <87wn5b540y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Pass drm_i915_private
 as param to i915 funcs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Jan 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
> For i915 functions pass struct drm_i915_private directly instead of
> struct drm_device.
>
> v2: Use to_i915(dev) directly without alias(Andrzej).
>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c   | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_fbdev.h   | 8 ++++----
>  drivers/gpu/drm/i915/i915_driver.c           | 2 +-
>  4 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e37cca6b18c6..b014d8626ef7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9004,7 +9004,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>  	 * enabled. We do it last so that the async config cannot run
>  	 * before the connectors are registered.
>  	 */
> -	intel_fbdev_initial_config_async(&i915->drm);
> +	intel_fbdev_initial_config_async(i915);
>  
>  	/*
>  	 * We need to coordinate the hotplugs with the asynchronous
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 19f3b5d92a55..c2c52f8e5887 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -547,9 +547,9 @@ static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
>  		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
>  }
>  
> -void intel_fbdev_initial_config_async(struct drm_device *dev)
> +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
> +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;

In follow-up, rename those dev_privs to i915. ;)

BR,
Jani.

>  
>  	if (!ifbdev)
>  		return;
> @@ -686,9 +686,9 @@ void intel_fbdev_output_poll_changed(struct drm_device *dev)
>  		drm_fb_helper_hotplug_event(&ifbdev->helper);
>  }
>  
> -void intel_fbdev_restore_mode(struct drm_device *dev)
> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
> +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>  
>  	if (!ifbdev)
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
> index 0e95e9472fa3..04fd523a5023 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
> @@ -15,12 +15,12 @@ struct intel_framebuffer;
>  
>  #ifdef CONFIG_DRM_FBDEV_EMULATION
>  int intel_fbdev_init(struct drm_device *dev);
> -void intel_fbdev_initial_config_async(struct drm_device *dev);
> +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv);
>  void intel_fbdev_unregister(struct drm_i915_private *dev_priv);
>  void intel_fbdev_fini(struct drm_i915_private *dev_priv);
>  void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
>  void intel_fbdev_output_poll_changed(struct drm_device *dev);
> -void intel_fbdev_restore_mode(struct drm_device *dev);
> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv);
>  struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
>  #else
>  static inline int intel_fbdev_init(struct drm_device *dev)
> @@ -28,7 +28,7 @@ static inline int intel_fbdev_init(struct drm_device *dev)
>  	return 0;
>  }
>  
> -static inline void intel_fbdev_initial_config_async(struct drm_device *dev)
> +static inline void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
>  {
>  }
>  
> @@ -48,7 +48,7 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
>  {
>  }
>  
> -static inline void intel_fbdev_restore_mode(struct drm_device *dev)
> +static inline void intel_fbdev_restore_mode(struct drm_i915_private *i915)
>  {
>  }
>  static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 6469c7c1e154..0dd165a34dcd 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1071,7 +1071,7 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
>   */
>  static void i915_driver_lastclose(struct drm_device *dev)
>  {
> -	intel_fbdev_restore_mode(dev);
> +	intel_fbdev_restore_mode(to_i915(dev));
>  
>  	vga_switcheroo_process_delayed_switch();
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
