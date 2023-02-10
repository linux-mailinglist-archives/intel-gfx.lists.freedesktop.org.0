Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E36691F03
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 13:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD3210E278;
	Fri, 10 Feb 2023 12:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3DB10E278
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 12:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676031706; x=1707567706;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hHYufwv+ZnpXDwZ+wwqU10/XByD+QGuiCGsJ0dmGJI8=;
 b=b6HcM260US0l3DAMxsaLjMHu2KLPNETKqM5u2QG52cCr8/jeiAGZ7LP2
 avw2I585LlFOp2G7uGZdGS2VyODrAduaIB5E+2vmdMs3HXujvK5wYZQwh
 IlfHuoUepjOzTKY481rHc1yPZefXYyg0yQvcWJfkPEsnjjKNp4GzbXSO4
 jey3epPKQaUSRb8TnhoXaSP3QtXB0gMJZ0BMi7iuYfcmksVoaNSYOa2Uv
 uypEP/WPv5ixpM2/rcW8vsgVguDdW/NB1NI//YS3FcjsiHQzvxOkFLqm/
 E2+7ovgtJ9NrsyeYvRF4YeBdZftmlaL41/OpJ8Ky7JW68twdFjA5vi2y4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="328095948"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="328095948"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 04:21:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="913520255"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="913520255"
Received: from mleshin-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.48.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 04:21:44 -0800
Date: Fri, 10 Feb 2023 13:21:42 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+Y21jAdUlobK3dC@ashyti-mobl2.lan>
References: <20230119095808.28004-1-nirmoy.das@intel.com>
 <87k01iaizc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87k01iaizc.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Thu, Jan 19, 2023 at 12:58:47PM +0200, Jani Nikula wrote:
> On Thu, 19 Jan 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
> > For i915 functions pass struct drm_i915_private directly instead of
> > struct drm_device.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> but maybe let's wait until we've synced up with drm-misc-next to avoid
> the unnecessary conflict in drm-tip and linux-next?

can we push it now? Do you want me to take care of it?

Andi

> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_fbdev.c   | 8 ++++----
> >  drivers/gpu/drm/i915/display/intel_fbdev.h   | 8 ++++----
> >  drivers/gpu/drm/i915/i915_driver.c           | 4 +++-
> >  4 files changed, 12 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index c38a54efedbe..7584f65c6a7e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8999,7 +8999,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
> >  	 * enabled. We do it last so that the async config cannot run
> >  	 * before the connectors are registered.
> >  	 */
> > -	intel_fbdev_initial_config_async(&i915->drm);
> > +	intel_fbdev_initial_config_async(i915);
> >  
> >  	/*
> >  	 * We need to coordinate the hotplugs with the asynchronous
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > index 19f3b5d92a55..c2c52f8e5887 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > @@ -547,9 +547,9 @@ static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
> >  		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
> >  }
> >  
> > -void intel_fbdev_initial_config_async(struct drm_device *dev)
> > +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
> >  {
> > -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
> > +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
> >  
> >  	if (!ifbdev)
> >  		return;
> > @@ -686,9 +686,9 @@ void intel_fbdev_output_poll_changed(struct drm_device *dev)
> >  		drm_fb_helper_hotplug_event(&ifbdev->helper);
> >  }
> >  
> > -void intel_fbdev_restore_mode(struct drm_device *dev)
> > +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv)
> >  {
> > -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
> > +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
> >  
> >  	if (!ifbdev)
> >  		return;
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
> > index 0e95e9472fa3..04fd523a5023 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
> > @@ -15,12 +15,12 @@ struct intel_framebuffer;
> >  
> >  #ifdef CONFIG_DRM_FBDEV_EMULATION
> >  int intel_fbdev_init(struct drm_device *dev);
> > -void intel_fbdev_initial_config_async(struct drm_device *dev);
> > +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv);
> >  void intel_fbdev_unregister(struct drm_i915_private *dev_priv);
> >  void intel_fbdev_fini(struct drm_i915_private *dev_priv);
> >  void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
> >  void intel_fbdev_output_poll_changed(struct drm_device *dev);
> > -void intel_fbdev_restore_mode(struct drm_device *dev);
> > +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv);
> >  struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
> >  #else
> >  static inline int intel_fbdev_init(struct drm_device *dev)
> > @@ -28,7 +28,7 @@ static inline int intel_fbdev_init(struct drm_device *dev)
> >  	return 0;
> >  }
> >  
> > -static inline void intel_fbdev_initial_config_async(struct drm_device *dev)
> > +static inline void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
> >  {
> >  }
> >  
> > @@ -48,7 +48,7 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
> >  {
> >  }
> >  
> > -static inline void intel_fbdev_restore_mode(struct drm_device *dev)
> > +static inline void intel_fbdev_restore_mode(struct drm_i915_private *i915)
> >  {
> >  }
> >  static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 6469c7c1e154..cd6069c1762d 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1071,7 +1071,9 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
> >   */
> >  static void i915_driver_lastclose(struct drm_device *dev)
> >  {
> > -	intel_fbdev_restore_mode(dev);
> > +	struct drm_i915_private *i915 = to_i915(dev);
> > +
> > +	intel_fbdev_restore_mode(i915);
> >  
> >  	vga_switcheroo_process_delayed_switch();
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
