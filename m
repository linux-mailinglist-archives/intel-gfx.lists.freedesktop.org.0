Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D31FE6965B6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 15:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E76B10E8DE;
	Tue, 14 Feb 2023 14:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB23910E8E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 14:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676383503; x=1707919503;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=5hu/bOEIGsDcqFLIWeIikqiz23LsMrS199rylF8/cBM=;
 b=TN+prAWZKFvIKjtd8GopWuJgI6NO//41fLMc26GHfsoNgguMSzm/4JOI
 Tg60B040pyAgn/rIdTvQn+Nwq0X9j7HEwop4YA7glFVjE1+nt0i1QlIef
 Nh/izwDWvEQmjcmic7N11TIrQhDL/dYivpCyNsbNjMc4AkMccChYqPVye
 iliT92/GlBOal44aWUJc7I7ksVxLBBeRRdi37I6ZNOkV+Lg98eZDQ3W8j
 f2dpVFddlqeL2w+YvGoYhuzVss3RLm5sh2y42ngjfSVm7I+ws09c7jxMr
 IqrncGBYJO3nygysFU1jki/LKHlobrc7UfnndaeEzkVUrTuatd2eAu/hW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329789978"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="329789978"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 06:05:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="843175499"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="843175499"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 06:05:01 -0800
Date: Tue, 14 Feb 2023 16:04:57 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+uVCfwM5oTrDpE+@ideak-desk.fi.intel.com>
References: <20230208114300.3123934-1-imre.deak@intel.com>
 <20230208114300.3123934-3-imre.deak@intel.com>
 <87h6votx8v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h6votx8v.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: Move display power
 initialization during driver probing later
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 14, 2023 at 11:25:04AM +0200, Jani Nikula wrote:
> On Wed, 08 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> > Determining whether the display engine is present on a platform happens
> > only in intel_device_info_runtime_init(). Initializing the display power
> > functionality depends on this condition, so move
> > intel_power_domains_init() later after the runtime init function has
> > been called.
> >
> > The next patch fixing platforms without display, depends on this patch.
> >
> 
> It's pretty hard to review we aren't using any of the power domain stuff
> before the intel_power_domains_init() call. What happens if we do?

That shouldn't happen before the HW state is read out in
intel_power_domains_init_hw(). I can't see anything calling the display power
get/put/is_enabled functions before that, but it would be good to ensure this.
So how about also adding:

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7222502a760cc..7014e1770f57a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -213,6 +213,9 @@ bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 	struct i915_power_well *power_well;
 	bool is_enabled;
 
+	drm_WARN_ON(&dev_priv->drm,
+		    dev_priv->display.power.domains.init_state < I915_POWER_DOMAINS_INITIALIZING);
+
 	if (dev_priv->runtime_pm.suspended)
 		return false;
 
@@ -488,6 +491,9 @@ __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *power_well;
 
+	drm_WARN_ON(&dev_priv->drm,
+		    power_domains->init_state < I915_POWER_DOMAINS_INITIALIZING);
+
 	if (intel_display_power_grab_async_put_ref(dev_priv, domain))
 		return;
 
@@ -1880,7 +1886,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 {
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 
-	power_domains->initializing = true;
+	power_domains->init_state = I915_POWER_DOMAINS_INITIALIZING;
 
 	if (DISPLAY_VER(i915) >= 11) {
 		icl_display_core_init(i915, resume);
@@ -1924,7 +1930,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 	}
 	intel_power_domains_sync_hw(i915);
 
-	power_domains->initializing = false;
+	power_domains->init_state = I915_POWER_DOMAINS_INITIALIZED;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 2154d900b1aad..0d9aba94bae01 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -133,7 +133,11 @@ struct i915_power_domains {
 	 * Power wells needed for initialization at driver init and suspend
 	 * time are on. They are kept on until after the first modeset.
 	 */
-	bool initializing;
+	enum {
+		I915_POWER_DOMAINS_UNINITIALIZED,
+		I915_POWER_DOMAINS_INITIALIZING,
+		I915_POWER_DOMAINS_INITIALIZED,
+	} init_state;
 	bool display_core_suspended;
 	int power_well_count;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8710dd41ffd4c..66df7a733afb9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1208,7 +1208,7 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 	 * During driver initialization/resume we can avoid restoring the
 	 * part of the HW/SW state that will be inited anyway explicitly.
 	 */
-	if (dev_priv->display.power.domains.initializing)
+	if (dev_priv->display.power.domains.init_state < I915_POWER_DOMAINS_INITIALIZED)
 		return;
 
 	intel_hpd_init(dev_priv);

> I approve of the change, but I can't in good faith claim I checked this.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
> >  drivers/gpu/drm/i915/i915_driver.c           | 7 -------
> >  2 files changed, 5 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 166662ade593c..b3e7ed3866cde 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8634,6 +8634,10 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
> >  		goto cleanup_bios;
> >  
> >  	/* FIXME: completely on the wrong abstraction layer */
> > +	ret = intel_power_domains_init(i915);
> > +	if (ret < 0)
> > +		goto cleanup_vga;
> > +
> >  	intel_power_domains_init_hw(i915, false);
> >  
> >  	if (!HAS_DISPLAY(i915))
> > @@ -8676,6 +8680,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
> >  cleanup_vga_client_pw_domain_dmc:
> >  	intel_dmc_ucode_fini(i915);
> >  	intel_power_domains_driver_remove(i915);
> > +cleanup_vga:
> >  	intel_vga_unregister(i915);
> >  cleanup_bios:
> >  	intel_bios_driver_remove(i915);
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 13bf4fe52f9fe..fe2870a6ae631 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -251,9 +251,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> >  	intel_detect_pch(dev_priv);
> >  
> >  	intel_pm_setup(dev_priv);
> > -	ret = intel_power_domains_init(dev_priv);
> > -	if (ret < 0)
> > -		goto err_gem;
> >  	intel_irq_init(dev_priv);
> >  	intel_init_display_hooks(dev_priv);
> >  	intel_init_clock_gating_hooks(dev_priv);
> > @@ -262,10 +259,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> >  
> >  	return 0;
> >  
> > -err_gem:
> > -	i915_gem_cleanup_early(dev_priv);
> > -	intel_gt_driver_late_release_all(dev_priv);
> > -	i915_drm_clients_fini(&dev_priv->clients);
> >  err_rootgt:
> >  	intel_region_ttm_device_fini(dev_priv);
> >  err_ttm:
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
