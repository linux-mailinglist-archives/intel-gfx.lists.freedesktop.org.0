Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1844E673B2F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 15:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F6610E94A;
	Thu, 19 Jan 2023 14:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2F210E94A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 14:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674137164; x=1705673164;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=R45qdNAqbl1FOzoBiOIfv6/mqpr5/TVG0hNdM3GbYeQ=;
 b=dezv9NL4ix5NkhwG2os6WrQDrdu3Bn4aPN4r/spZSkBz6CYsIEBqDy2O
 7piQVB7K1xIqUp9I20ajDmFvYi5hhLJwX2BrHBB2yynPgv8FMq0YGVKN0
 wkmqi4NeWeUe03cDrXxfIPwvX5VxAG8ptC4RMoDvg6n9lHNk+4pARtJmq
 2EE8ij3O5KC3WKRaf9O1FhrowlXm+RnGywuj/DM6+C3LFVrGYpKYabqnr
 yha3qw8QP2JZNpXYT9tpvEEU1Xf0qrBI5RVlL76MSOkKylZGEdp0eCO+t
 +cGbDtG6AVLacBZ0syK4tXWWAhlnxRDuCMhbC7RC58h0zRsIEUPKMS34c A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="305660394"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="305660394"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 06:06:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="905524742"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="905524742"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.29.143])
 ([10.213.29.143])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 06:06:02 -0800
Message-ID: <fc3fe491-92c5-2512-f9a5-476a7efe4fe1@intel.com>
Date: Thu, 19 Jan 2023 15:06:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230119095808.28004-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230119095808.28004-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Pass drm_i915_private as
 param to i915 funcs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19.01.2023 10:58, Nirmoy Das wrote:
> For i915 functions pass struct drm_i915_private directly instead of
> struct drm_device.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

It could be good start for boring refactoring :) of similar cases, for 
example:
intel_fbdev_restore_mode
intel_fbdev_set_suspend

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 8 ++++----
>   drivers/gpu/drm/i915/display/intel_fbdev.h   | 8 ++++----
>   drivers/gpu/drm/i915/i915_driver.c           | 4 +++-
>   4 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c38a54efedbe..7584f65c6a7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8999,7 +8999,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>   	 * enabled. We do it last so that the async config cannot run
>   	 * before the connectors are registered.
>   	 */
> -	intel_fbdev_initial_config_async(&i915->drm);
> +	intel_fbdev_initial_config_async(i915);
>   
>   	/*
>   	 * We need to coordinate the hotplugs with the asynchronous
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 19f3b5d92a55..c2c52f8e5887 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -547,9 +547,9 @@ static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
>   		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
>   }
>   
> -void intel_fbdev_initial_config_async(struct drm_device *dev)
> +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
>   {
> -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
> +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>   
>   	if (!ifbdev)
>   		return;
> @@ -686,9 +686,9 @@ void intel_fbdev_output_poll_changed(struct drm_device *dev)
>   		drm_fb_helper_hotplug_event(&ifbdev->helper);
>   }
>   
> -void intel_fbdev_restore_mode(struct drm_device *dev)
> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv)
>   {
> -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
> +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>   
>   	if (!ifbdev)
>   		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
> index 0e95e9472fa3..04fd523a5023 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
> @@ -15,12 +15,12 @@ struct intel_framebuffer;
>   
>   #ifdef CONFIG_DRM_FBDEV_EMULATION
>   int intel_fbdev_init(struct drm_device *dev);
> -void intel_fbdev_initial_config_async(struct drm_device *dev);
> +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv);
>   void intel_fbdev_unregister(struct drm_i915_private *dev_priv);
>   void intel_fbdev_fini(struct drm_i915_private *dev_priv);
>   void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
>   void intel_fbdev_output_poll_changed(struct drm_device *dev);
> -void intel_fbdev_restore_mode(struct drm_device *dev);
> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv);
>   struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
>   #else
>   static inline int intel_fbdev_init(struct drm_device *dev)
> @@ -28,7 +28,7 @@ static inline int intel_fbdev_init(struct drm_device *dev)
>   	return 0;
>   }
>   
> -static inline void intel_fbdev_initial_config_async(struct drm_device *dev)
> +static inline void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
>   {
>   }
>   
> @@ -48,7 +48,7 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
>   {
>   }
>   
> -static inline void intel_fbdev_restore_mode(struct drm_device *dev)
> +static inline void intel_fbdev_restore_mode(struct drm_i915_private *i915)
>   {
>   }
>   static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 6469c7c1e154..cd6069c1762d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1071,7 +1071,9 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
>    */
>   static void i915_driver_lastclose(struct drm_device *dev)
>   {
> -	intel_fbdev_restore_mode(dev);
> +	struct drm_i915_private *i915 = to_i915(dev);
> +
> +	intel_fbdev_restore_mode(i915);
>   
>   	vga_switcheroo_process_delayed_switch();
>   }

