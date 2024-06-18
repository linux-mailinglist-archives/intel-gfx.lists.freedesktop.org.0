Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1946290C8F2
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 13:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7238810E63F;
	Tue, 18 Jun 2024 11:19:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Da6H7m7O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E16010E630;
 Tue, 18 Jun 2024 11:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718709548; x=1750245548;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=A3ytfMRbqVMxH9cTRrdXhMFiiHn/SEwxFjo8jlcslhc=;
 b=Da6H7m7OtjJKY56DPJkgq/w0p2nnKyR7PP3gK9dx5ge2s/t7gL2j+ybS
 dlqdsEONkMlNxn19KnXhQ4BGesEteNklXK/qOCl8Ii0evca3qRav/JkBK
 tGoIB/z8eYlrVtyVaflXu58aI1zjNOkrz6XHwV1aPdm4MPdi4uQGveFfm
 PIXJ2wwTLDwHY9kHMnqZBzSCY9Ul3BR0hcggwci4aZRDzn1sKFRjt3gMe
 GdGY6Jjm8X9QaxwDHy/7XOs3yYodI+gygRpykSl5rCC7GuL+gigUVq4C2
 qNzqGo5e3wK4MVeiKlt3eHndr1XUx/L4FXxfk0grW4ggd/IsGCiM+mMWE A==;
X-CSE-ConnectionGUID: RQ/xfK7QQYawT7HWuHDP9Q==
X-CSE-MsgGUID: B4lNEVkfT8aTdSOWTs/oZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19359346"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="19359346"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:19:07 -0700
X-CSE-ConnectionGUID: tXfD+fY9QUOJ8JauUvnMwg==
X-CSE-MsgGUID: 1xNxxBigSm6dxl21xC/ITQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="78976332"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:19:06 -0700
Date: Tue, 18 Jun 2024 14:19:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915: Pass intel_display to the encoder
 suspend/shutdown helpers
Message-ID: <ZnFtM5zQuXxw4mTz@ideak-desk.fi.intel.com>
References: <20240617170356.4000251-1-imre.deak@intel.com>
 <20240617170356.4000251-2-imre.deak@intel.com>
 <87frtahb8z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87frtahb8z.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 18, 2024 at 12:05:16PM +0300, Jani Nikula wrote:
> On Mon, 17 Jun 2024, Imre Deak <imre.deak@intel.com> wrote:
> > Pass intel_display to the encoder suspend/shutdown helpers instead of
> > drm_i915_private for better isolation. This assumes that HAS_DISPLAY()
> > will also take an intel_display parameter in the future (or that the
> > HAS_DISPLAY() check will be moved to a caller of these functions).
> 
> You can already do that! HAS_DISPLAY() takes either i915 or display. So
> maybe make that change now.

Ah the _Generic() magic, nice! Will change this.

> In the future, only display code should have HAS_DISPLAY() anyway, not
> i915 or xe core. It's not an option that the caller does the checks.

Ok.

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_encoder.c | 22 +++++++++++---------
> >  drivers/gpu/drm/i915/display/intel_encoder.h |  7 +++----
> >  drivers/gpu/drm/i915/i915_driver.c           |  6 +++---
> >  3 files changed, 18 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> > index 8a1dccb893a37..8e73d18a522d4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> > +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> > @@ -38,8 +38,9 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
> >  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
> >  }
> >  
> > -void intel_encoder_suspend_all(struct drm_i915_private *i915)
> > +void intel_encoder_suspend_all(struct intel_display *display)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(display->drm);
> >  	struct intel_encoder *encoder;
> >  
> >  	if (!HAS_DISPLAY(i915))
> > @@ -49,19 +50,20 @@ void intel_encoder_suspend_all(struct drm_i915_private *i915)
> >  	 * TODO: check and remove holding the modeset locks if none of
> >  	 * the encoders depends on this.
> >  	 */
> > -	drm_modeset_lock_all(&i915->drm);
> > -	for_each_intel_encoder(&i915->drm, encoder)
> > +	drm_modeset_lock_all(display->drm);
> > +	for_each_intel_encoder(display->drm, encoder)
> >  		if (encoder->suspend)
> >  			encoder->suspend(encoder);
> > -	drm_modeset_unlock_all(&i915->drm);
> > +	drm_modeset_unlock_all(display->drm);
> >  
> > -	for_each_intel_encoder(&i915->drm, encoder)
> > +	for_each_intel_encoder(display->drm, encoder)
> >  		if (encoder->suspend_complete)
> >  			encoder->suspend_complete(encoder);
> >  }
> >  
> > -void intel_encoder_shutdown_all(struct drm_i915_private *i915)
> > +void intel_encoder_shutdown_all(struct intel_display *display)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(display->drm);
> >  	struct intel_encoder *encoder;
> >  
> >  	if (!HAS_DISPLAY(i915))
> > @@ -71,13 +73,13 @@ void intel_encoder_shutdown_all(struct drm_i915_private *i915)
> >  	 * TODO: check and remove holding the modeset locks if none of
> >  	 * the encoders depends on this.
> >  	 */
> > -	drm_modeset_lock_all(&i915->drm);
> > -	for_each_intel_encoder(&i915->drm, encoder)
> > +	drm_modeset_lock_all(display->drm);
> > +	for_each_intel_encoder(display->drm, encoder)
> >  		if (encoder->shutdown)
> >  			encoder->shutdown(encoder);
> > -	drm_modeset_unlock_all(&i915->drm);
> > +	drm_modeset_unlock_all(display->drm);
> >  
> > -	for_each_intel_encoder(&i915->drm, encoder)
> > +	for_each_intel_encoder(display->drm, encoder)
> >  		if (encoder->shutdown_complete)
> >  			encoder->shutdown_complete(encoder);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> > index e6cd74576f78e..3fa5589f0b1ce 100644
> > --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> > +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> > @@ -6,8 +6,7 @@
> >  #ifndef __INTEL_ENCODER_H__
> >  #define __INTEL_ENCODER_H__
> >  
> > -struct drm_i915_private;
> > -
> 
> Ah, this is why you missed the superfluous space. ;)
> 
> BR,
> Jani.
> 
> > +struct intel_display;
> >  struct intel_encoder;
> >  
> >  void intel_encoder_link_check_init(struct intel_encoder *encoder,
> > @@ -15,7 +14,7 @@ void intel_encoder_link_check_init(struct intel_encoder *encoder,
> >  void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms);
> >  void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
> >  
> > -void intel_encoder_suspend_all(struct drm_i915_private *i915);
> > -void intel_encoder_shutdown_all(struct drm_i915_private *i915);
> > +void intel_encoder_suspend_all(struct intel_display *display);
> > +void intel_encoder_shutdown_all(struct intel_display *display);
> >  
> >  #endif /* __INTEL_ENCODER_H__ */
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index e9e38ed246f66..fb8e9c2fcea53 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -956,8 +956,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> >  	if (HAS_DISPLAY(i915))
> >  		intel_display_driver_suspend_access(i915);
> >  
> > -	intel_encoder_suspend_all(i915);
> > -	intel_encoder_shutdown_all(i915);
> > +	intel_encoder_suspend_all(&i915->display);
> > +	intel_encoder_shutdown_all(&i915->display);
> >  
> >  	intel_dmc_suspend(i915);
> >  
> > @@ -1040,7 +1040,7 @@ static int i915_drm_suspend(struct drm_device *dev)
> >  	if (HAS_DISPLAY(dev_priv))
> >  		intel_display_driver_suspend_access(dev_priv);
> >  
> > -	intel_encoder_suspend_all(dev_priv);
> > +	intel_encoder_suspend_all(&dev_priv->display);
> >  
> >  	/* Must be called before GGTT is suspended. */
> >  	intel_dpt_suspend(dev_priv);
> 
> -- 
> Jani Nikula, Intel
