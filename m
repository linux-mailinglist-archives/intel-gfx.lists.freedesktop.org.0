Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 265499DB7C6
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 13:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF2B810E457;
	Thu, 28 Nov 2024 12:35:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dBPURNRN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F21BC10E45E;
 Thu, 28 Nov 2024 12:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732797311; x=1764333311;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=b6TyWahLzw7Dh0kMZ+SQsPaoiINpH0Ja94X46LDnIq4=;
 b=dBPURNRNlzfVo21a+YVM1yoUzVAAMWWPmArBuzSoYLTRWEhQUU3w2dO+
 FtIlomdnG1cEdnO+BNmvbS3J1KnsxS8H80s/ml5q6cn2emfKb/AfKbpyb
 xu6JxMMevgIRFxBDKcezpxpOKskOX4IPpv5MLjBp6JIyFumu2bHusCXpI
 rrNKqQl8ftwYb5Wa6UdRfSrAvgLsOErLyITjQd2STNCF6EUlsvsdQix74
 ieAE61zntCOeTOrVzq5DvOvzU8pWD+s7ywk729M6fqIbIDleCnH2sHvTk
 llUoLNC93QxKr2zYyDlOHOE6VrUDMzlvchc0Qj1CYmeJR/XZMnDW1ChvZ w==;
X-CSE-ConnectionGUID: VWYJnVRdSLyy7BGzTaXgtg==
X-CSE-MsgGUID: BkjAUqUkSZq5anlENjXU0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="32395933"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="32395933"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 04:35:10 -0800
X-CSE-ConnectionGUID: DSOItkJ0R/qnao8UFk6vUQ==
X-CSE-MsgGUID: DHyNsHxLQvaSfrq4w73GdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92155384"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 04:35:10 -0800
Date: Thu, 28 Nov 2024 14:35:47 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/7] drm/i915/display: simplify conditional compilation
 on runtime PM debug
Message-ID: <Z0hjo8xx1D6cwp0Q@ideak-desk.fi.intel.com>
References: <cover.1732727056.git.jani.nikula@intel.com>
 <566defd545f4ea021b0baa1e62d506befbf68a91.1732727056.git.jani.nikula@intel.com>
 <Z0himvZ-5JqTlSpU@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z0himvZ-5JqTlSpU@ideak-desk.fi.intel.com>
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

On Thu, Nov 28, 2024 at 02:31:22PM +0200, Imre Deak wrote:
> On Wed, Nov 27, 2024 at 07:06:02PM +0200, Jani Nikula wrote:
> > Simplify conditional compilation on CONFIG_DRM_I915_DEBUG_RUNTIME_PM.
> > Hide it all inside intel_display_power.c.
> > 
> > This will unnecessarily pass in the wakeref also when debug is disabled,
> > but it should not matter a whole lot.
> 
> Ftr: there are a lot of callers of these functions and so this change
> removing the optimization increases the code by >1kB in the non-debug
> build:
> 
> $ size ~/i915-opt.ko  ~/i915-noopt.ko
>    text	   data	    bss	    dec	    hex	filename
> 3346869	 325789	   7680	3680338	 382852	/home/imre/i915-opt.ko
> 3345708	 325773	   7680	3679161	 3823b9	/home/imre/i915-noopt.ko

sorry, confused up the image names, correctly it is:

$ size ~/i915-opt.ko  ~/i915-noopt.ko
   text	   data	    bss	    dec	    hex	filename
3345708	 325773	   7680	3679161	 3823b9	/home/imre/i915-opt.ko
3346869	 325789	   7680	3680338	 382852	/home/imre/i915-noopt.ko

> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    | 49 +++++++++-------
> >  .../drm/i915/display/intel_display_power.h    | 56 +++----------------
> >  2 files changed, 37 insertions(+), 68 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 59dee2dc0552..fe94ef310f6b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -706,10 +706,10 @@ intel_display_power_put_async_work(struct work_struct *work)
> >   * The power down is delayed by @delay_ms if this is >= 0, or by a default
> >   * 100 ms otherwise.
> >   */
> > -void __intel_display_power_put_async(struct drm_i915_private *i915,
> > -				     enum intel_display_power_domain domain,
> > -				     intel_wakeref_t wakeref,
> > -				     int delay_ms)
> > +static void __intel_display_power_put_async(struct drm_i915_private *i915,
> > +					    enum intel_display_power_domain domain,
> > +					    intel_wakeref_t wakeref,
> > +					    int delay_ms)
> >  {
> >  	struct i915_power_domains *power_domains = &i915->display.power.domains;
> >  	struct intel_runtime_pm *rpm = &i915->runtime_pm;
> > @@ -750,6 +750,27 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
> >  	intel_runtime_pm_put(rpm, wakeref);
> >  }
> >  
> > +void intel_display_power_put_async(struct drm_i915_private *i915,
> > +				   enum intel_display_power_domain domain,
> > +				   intel_wakeref_t wakeref)
> > +{
> > +	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
> > +		wakeref = INTEL_WAKEREF_DEF;
> > +
> > +	__intel_display_power_put_async(i915, domain, wakeref, -1);
> > +}
> > +
> > +void intel_display_power_put_async_delay(struct drm_i915_private *i915,
> > +					 enum intel_display_power_domain domain,
> > +					 intel_wakeref_t wakeref,
> > +					 int delay_ms)
> > +{
> > +	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
> > +		wakeref = INTEL_WAKEREF_DEF;
> > +
> > +	__intel_display_power_put_async(i915, domain, wakeref, delay_ms);
> > +}
> > +
> >  /**
> >   * intel_display_power_flush_work - flushes the async display power disabling work
> >   * @i915: i915 device instance
> > @@ -807,7 +828,6 @@ intel_display_power_flush_work_sync(struct drm_i915_private *i915)
> >  	drm_WARN_ON(&i915->drm, power_domains->async_put_wakeref);
> >  }
> >  
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  /**
> >   * intel_display_power_put - release a power domain reference
> >   * @dev_priv: i915 device instance
> > @@ -818,6 +838,7 @@ intel_display_power_flush_work_sync(struct drm_i915_private *i915)
> >   * intel_display_power_get() and might power down the corresponding hardware
> >   * block right away if this is the last reference.
> >   */
> > +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  void intel_display_power_put(struct drm_i915_private *dev_priv,
> >  			     enum intel_display_power_domain domain,
> >  			     intel_wakeref_t wakeref)
> > @@ -826,21 +847,9 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
> >  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> >  }
> >  #else
> > -/**
> > - * intel_display_power_put_unchecked - release an unchecked power domain reference
> > - * @dev_priv: i915 device instance
> > - * @domain: power domain to reference
> > - *
> > - * This function drops the power domain reference obtained by
> > - * intel_display_power_get() and might power down the corresponding hardware
> > - * block right away if this is the last reference.
> > - *
> > - * This function is only for the power domain code's internal use to suppress wakeref
> > - * tracking when the correspondig debug kconfig option is disabled, should not
> > - * be used otherwise.
> > - */
> > -void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
> > -				       enum intel_display_power_domain domain)
> > +void intel_display_power_put(struct drm_i915_private *dev_priv,
> > +			     enum intel_display_power_domain domain,
> > +			     intel_wakeref_t wakeref)
> >  {
> >  	__intel_display_power_put(dev_priv, domain);
> >  	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index 688f3b60b5c5..c6bd4f122487 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -190,60 +190,20 @@ intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
> >  intel_wakeref_t
> >  intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
> >  				   enum intel_display_power_domain domain);
> > -void __intel_display_power_put_async(struct drm_i915_private *i915,
> > -				     enum intel_display_power_domain domain,
> > -				     intel_wakeref_t wakeref,
> > -				     int delay_ms);
> >  void intel_display_power_flush_work(struct drm_i915_private *i915);
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > +
> >  void intel_display_power_put(struct drm_i915_private *dev_priv,
> >  			     enum intel_display_power_domain domain,
> >  			     intel_wakeref_t wakeref);
> > -static inline void
> > -intel_display_power_put_async(struct drm_i915_private *i915,
> > -			      enum intel_display_power_domain domain,
> > -			      intel_wakeref_t wakeref)
> > -{
> > -	__intel_display_power_put_async(i915, domain, wakeref, -1);
> > -}
> >  
> > -static inline void
> > -intel_display_power_put_async_delay(struct drm_i915_private *i915,
> > -				    enum intel_display_power_domain domain,
> > -				    intel_wakeref_t wakeref,
> > -				    int delay_ms)
> > -{
> > -	__intel_display_power_put_async(i915, domain, wakeref, delay_ms);
> > -}
> > -#else
> > -void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
> > -				       enum intel_display_power_domain domain);
> > +void intel_display_power_put_async(struct drm_i915_private *i915,
> > +				   enum intel_display_power_domain domain,
> > +				   intel_wakeref_t wakeref);
> >  
> > -static inline void
> > -intel_display_power_put(struct drm_i915_private *i915,
> > -			enum intel_display_power_domain domain,
> > -			intel_wakeref_t wakeref)
> > -{
> > -	intel_display_power_put_unchecked(i915, domain);
> > -}
> > -
> > -static inline void
> > -intel_display_power_put_async(struct drm_i915_private *i915,
> > -			      enum intel_display_power_domain domain,
> > -			      intel_wakeref_t wakeref)
> > -{
> > -	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, -1);
> > -}
> > -
> > -static inline void
> > -intel_display_power_put_async_delay(struct drm_i915_private *i915,
> > -				    enum intel_display_power_domain domain,
> > -				    intel_wakeref_t wakeref,
> > -				    int delay_ms)
> > -{
> > -	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, delay_ms);
> > -}
> > -#endif
> > +void intel_display_power_put_async_delay(struct drm_i915_private *i915,
> > +					 enum intel_display_power_domain domain,
> > +					 intel_wakeref_t wakeref,
> > +					 int delay_ms);
> >  
> >  void
> >  intel_display_power_get_in_set(struct drm_i915_private *i915,
> > -- 
> > 2.39.5
> > 
