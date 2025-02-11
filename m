Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5233EA30AF2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 13:01:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A86310E69A;
	Tue, 11 Feb 2025 12:00:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJ/9ZK9X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F9910E69A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 12:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739275240; x=1770811240;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FzPJ0Yz16Qka6k8ssPoQdYXksoYxO5wlcL53aPSJaPc=;
 b=BJ/9ZK9XRkAVmCPBsRX/vM2DiC0frj8dqxSNf/0HbITQjpRTVYYtWFgB
 AsDUT/XmpDCtRxDicnUKWiBkyCOwDbSKt/bBlDgrJKNfjVjcpf2cmCZ01
 E32eHEo90xGNLgrtH+IxpBegn8gMl+O+a5uutL39ttYgwaSK8mUYLB1OX
 hJmaRR2rY3qfcdL+lGzeNx3BSL2tkqkr10OKb14NXHAlC7R+m4wQOONMg
 7+aVXY2CJdZfTBWyC8oEtU7LAQ6XGksxY00eJ6djAhfxgavOMxGaTeDA2
 8HdZnqkQpUQdK0Uh9z3rnmveQr/UXBiKeOs1R0IlnuyOEpGm1Zd1BFubb A==;
X-CSE-ConnectionGUID: SY4xSvT7TBCOphT4GsW0mg==
X-CSE-MsgGUID: lp2apOK3STqE0zAnUNiGQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="42726521"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="42726521"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:00:39 -0800
X-CSE-ConnectionGUID: ebiXoV/FQFiSIRxIzddwXQ==
X-CSE-MsgGUID: ThHlU8YcRf2QeKm4TjwGLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149669851"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:00:38 -0800
Date: Tue, 11 Feb 2025 14:01:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915: Get rid of the _unchecked() runime pm stuff
Message-ID: <Z6s7-iqzVMSWMFXt@ideak-desk.fi.intel.com>
References: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
 <20250211000135.6096-5-ville.syrjala@linux.intel.com>
 <87ed043iy2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ed043iy2.fsf@intel.com>
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

On Tue, Feb 11, 2025 at 11:54:29AM +0200, Jani Nikula wrote:
> On Tue, 11 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Seem to me that intel_runtime_pm.c already handles the
> > CONFIG_DRM_I915_DEBUG_RUNTIME_PM=n case perfectly fine
> > internally, so I don't understand why it's being leaked into
> > all the callers as well. Get rid of all this the externally
> > visible _unchecked() stuff.
> 
> I think I've sent a similar patch in the past, and I think Imre
> explained the rationale was that passing the wakeref around for
> non-debug builds increases code size by 1k or something.

Yes, in non-debug builds the

intel_runtime_pm_put(rpm, wakeref) calls are converted to
intel_runtime_pm_put_unchecked(rpm),

and the

intel_display_power_put(display, domain, wakeref) calls are converted to
intel_display_power_put_unchecked(display, domain).

The rational was that these are called from many (184) places, thus
saving ~2.5kB in code.

> Yet this optimization makes the code harder to read.

Ok, agree with this one and I'm not sure if the optimization justifies
it. I think the same could be achieved simpler (only a wakeref pointer
passed to intel_display_power_put(), deducing both display and domain
from the wakeref), so on the patch:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> I'm a bit divided on this one.
> 
> Cc: Imre
> 
> 
> BR,
> Jani.
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    | 24 ---------------
> >  .../drm/i915/display/intel_display_power.h    | 30 -------------------
> >  drivers/gpu/drm/i915/intel_gvt.c              |  3 --
> >  drivers/gpu/drm/i915/intel_runtime_pm.c       | 19 ------------
> >  drivers/gpu/drm/i915/intel_runtime_pm.h       |  9 ------
> >  5 files changed, 85 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index d93f43d145a9..20296ab450bf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -809,7 +809,6 @@ intel_display_power_flush_work_sync(struct intel_display *display)
> >  	drm_WARN_ON(display->drm, power_domains->async_put_wakeref);
> >  }
> >  
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  /**
> >   * intel_display_power_put - release a power domain reference
> >   * @display: display device instance
> > @@ -829,29 +828,6 @@ void intel_display_power_put(struct intel_display *display,
> >  	__intel_display_power_put(display, domain);
> >  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> >  }
> > -#else
> > -/**
> > - * intel_display_power_put_unchecked - release an unchecked power domain reference
> > - * @display: display device instance
> > - * @domain: power domain to reference
> > - *
> > - * This function drops the power domain reference obtained by
> > - * intel_display_power_get() and might power down the corresponding hardware
> > - * block right away if this is the last reference.
> > - *
> > - * This function is only for the power domain code's internal use to suppress wakeref
> > - * tracking when the corresponding debug kconfig option is disabled, should not
> > - * be used otherwise.
> > - */
> > -void intel_display_power_put_unchecked(struct intel_display *display,
> > -				       enum intel_display_power_domain domain)
> > -{
> > -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> > -
> > -	__intel_display_power_put(display, domain);
> > -	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
> > -}
> > -#endif
> >  
> >  void
> >  intel_display_power_get_in_set(struct intel_display *display,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index a3a5c1be8bab..52b8a89b96eb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -195,7 +195,6 @@ void __intel_display_power_put_async(struct intel_display *display,
> >  				     intel_wakeref_t wakeref,
> >  				     int delay_ms);
> >  void intel_display_power_flush_work(struct intel_display *display);
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  void intel_display_power_put(struct intel_display *display,
> >  			     enum intel_display_power_domain domain,
> >  			     intel_wakeref_t wakeref);
> > @@ -215,35 +214,6 @@ intel_display_power_put_async_delay(struct intel_display *display,
> >  {
> >  	__intel_display_power_put_async(display, domain, wakeref, delay_ms);
> >  }
> > -#else
> > -void intel_display_power_put_unchecked(struct intel_display *display,
> > -				       enum intel_display_power_domain domain);
> > -
> > -static inline void
> > -intel_display_power_put(struct intel_display *display,
> > -			enum intel_display_power_domain domain,
> > -			intel_wakeref_t wakeref)
> > -{
> > -	intel_display_power_put_unchecked(display, domain);
> > -}
> > -
> > -static inline void
> > -intel_display_power_put_async(struct intel_display *display,
> > -			      enum intel_display_power_domain domain,
> > -			      intel_wakeref_t wakeref)
> > -{
> > -	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, -1);
> > -}
> > -
> > -static inline void
> > -intel_display_power_put_async_delay(struct intel_display *display,
> > -				    enum intel_display_power_domain domain,
> > -				    intel_wakeref_t wakeref,
> > -				    int delay_ms)
> > -{
> > -	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, delay_ms);
> > -}
> > -#endif
> >  
> >  void
> >  intel_display_power_get_in_set(struct intel_display *display,
> > diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
> > index dae9dce7d1b3..164be5b8acb3 100644
> > --- a/drivers/gpu/drm/i915/intel_gvt.c
> > +++ b/drivers/gpu/drm/i915/intel_gvt.c
> > @@ -310,10 +310,7 @@ EXPORT_SYMBOL_NS_GPL(__intel_context_do_pin, "I915_GVT");
> >  EXPORT_SYMBOL_NS_GPL(__intel_context_do_unpin, "I915_GVT");
> >  EXPORT_SYMBOL_NS_GPL(intel_ring_begin, "I915_GVT");
> >  EXPORT_SYMBOL_NS_GPL(intel_runtime_pm_get, "I915_GVT");
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  EXPORT_SYMBOL_NS_GPL(intel_runtime_pm_put, "I915_GVT");
> > -#endif
> > -EXPORT_SYMBOL_NS_GPL(intel_runtime_pm_put_unchecked, "I915_GVT");
> >  EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_for_reg, "I915_GVT");
> >  EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_get, "I915_GVT");
> >  EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_put, "I915_GVT");
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 8d9f4c410546..070bafb0a460 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -322,24 +322,6 @@ intel_runtime_pm_put_raw(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
> >  	__intel_runtime_pm_put(rpm, wref, false);
> >  }
> >  
> > -/**
> > - * intel_runtime_pm_put_unchecked - release an unchecked runtime pm reference
> > - * @rpm: the intel_runtime_pm structure
> > - *
> > - * This function drops the device-level runtime pm reference obtained by
> > - * intel_runtime_pm_get() and might power down the corresponding
> > - * hardware block right away if this is the last reference.
> > - *
> > - * This function exists only for historical reasons and should be avoided in
> > - * new code, as the correctness of its use cannot be checked. Always use
> > - * intel_runtime_pm_put() instead.
> > - */
> > -void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm)
> > -{
> > -	__intel_runtime_pm_put(rpm, INTEL_WAKEREF_DEF, true);
> > -}
> > -
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  /**
> >   * intel_runtime_pm_put - release a runtime pm reference
> >   * @rpm: the intel_runtime_pm structure
> > @@ -353,7 +335,6 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
> >  {
> >  	__intel_runtime_pm_put(rpm, wref, true);
> >  }
> > -#endif
> >  
> >  /**
> >   * intel_runtime_pm_enable - enable runtime pm
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > index 7428bd8fa67f..6eee55e3ff0b 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > @@ -204,16 +204,7 @@ intel_wakeref_t intel_runtime_pm_get_raw(struct intel_runtime_pm *rpm);
> >  	for ((wf) = intel_runtime_pm_get_if_active(rpm); (wf); \
> >  	     intel_runtime_pm_put((rpm), (wf)), (wf) = NULL)
> >  
> > -void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm);
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref);
> > -#else
> > -static inline void
> > -intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
> > -{
> > -	intel_runtime_pm_put_unchecked(rpm);
> > -}
> > -#endif
> >  void intel_runtime_pm_put_raw(struct intel_runtime_pm *rpm, intel_wakeref_t wref);
> >  
> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> 
> -- 
> Jani Nikula, Intel
