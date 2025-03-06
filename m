Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A32A54866
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 11:50:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31F910E177;
	Thu,  6 Mar 2025 10:50:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kOLQiNdg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076F710E16D;
 Thu,  6 Mar 2025 10:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741258226; x=1772794226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Wyc0bIuufauI85MXt4gSS+/RQ9axyJe14USAJ8nP5Y=;
 b=kOLQiNdgD7QXQEHTf9GhyQS4xWGeGqu5KfGeo5OhApr8VCivIAmTpTB0
 FThmMdKJtEWZuEZS9QcPuTBUuI8yI7Nhs+zqwqUiL9fPR9ySETD9iOaiC
 bT27B7E3N7Fqw6sfH6JEumZayRJV+RoNgkr/fMuNdQo1xCzY34gI5ho5J
 Bw5hbyHzCjUnqp8gskyf/CVdNHx1TXiEOf+pu8FowjMRlDTqaAP0t7aMI
 Drymm9LOJjIMajXOr5AxrvacweFmBSFJuXbL4pH9ivgc/Whod/GiUURzk
 rOSnTTKDWuxSxGS/zoBKbDPMQxQirSWOSvmk5Ip8O0TjBO+fJsJydEBE1 g==;
X-CSE-ConnectionGUID: dQLXL27XQ9mz0dCRshKvTA==
X-CSE-MsgGUID: xnmCKkzwTt60Z3P2wn24Bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42392773"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="42392773"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:50:26 -0800
X-CSE-ConnectionGUID: XYENyoH/Q9S/FLZKkWivyA==
X-CSE-MsgGUID: 4xgVQF1TR32Ni6cRNUmHpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="123566559"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.151])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:50:22 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, 
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: Re: [PATCH v3 1/4] drm/i915: Skip harmful unregister steps if not
 registered
Date: Thu, 06 Mar 2025 11:50:19 +0100
Message-ID: <23884888.6Emhk5qWAg@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87ikomwj4f.fsf@intel.com>
References: <20250305191152.164615-6-janusz.krzysztofik@linux.intel.com>
 <20250305191152.164615-7-janusz.krzysztofik@linux.intel.com>
 <87ikomwj4f.fsf@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Thursday, 6 March 2025 11:25:52 CET Jani Nikula wrote:
> On Wed, 05 Mar 2025, Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> > Starting with commit ec3e00b4ee27 ("drm/i915: stop registering if
> > drm_dev_register() fails"), we return from i915_driver_register()
> > immediately if drm_dev_register() fails, skipping remaining registration
> > steps.  However, the _unregister() counterpart called at device remove
> > knows nothing about that skip and executes reverts of all those steps,
> > some of those reverts possibly added or modified later.  As a consequence,
> > a number of kernel warnings that taint the kernel are triggered:
> >
> > <3> [525.823143] i915 0000:00:02.0: [drm] *ERROR* Failed to register driver for
> > userspace access!
> > ...
> > <4> [525.831069] ------------[ cut here ]------------
> > <4> [525.831071] i915 0000:00:02.0: [drm] drm_WARN_ON(power_domains->init_wakere
> > f)
> > <4> [525.831095] WARNING: CPU: 6 PID: 3440 at drivers/gpu/drm/i915/display/intel
> > _display_power.c:2074 intel_power_domains_disable+0xc2/0xd0 [i915]
> > ...
> > <4> [525.831328] CPU: 6 UID: 0 PID: 3440 Comm: i915_module_loa Tainted: G     U
> >             6.14.0-rc1-CI_DRM_16076-g7a632b6798b6+ #1
> > ...
> > <4> [525.831334] RIP: 0010:intel_power_domains_disable+0xc2/0xd0 [i915]
> > ...
> > <4> [525.831483] Call Trace:
> > <4> [525.831484]  <TASK>
> > ...
> > <4> [525.831943]  i915_driver_remove+0x4b/0x140 [i915]
> > <4> [525.832028]  i915_pci_remove+0x1e/0x40 [i915]
> > <4> [525.832099]  pci_device_remove+0x3e/0xb0
> > <4> [525.832103]  device_remove+0x40/0x80
> > <4> [525.832107]  device_release_driver_internal+0x215/0x280
> > ...
> > <4> [525.947666] ------------[ cut here ]------------
> > <4> [525.947669] kobject: '(null)' (ffff88814f62a218): is not initialized, yet kobject_put() is being called.
> > <4> [525.947707] WARNING: CPU: 6 PID: 3440 at lib/kobject.c:734 kobject_put+0xe4/0x200
> > ...
> > <4> [525.947875] RIP: 0010:kobject_put+0xe4/0x200
> > ...
> > <4> [525.947909] Call Trace:
> > <4> [525.947911]  <TASK>
> > ...
> > <4> [525.947963]  intel_gt_sysfs_unregister+0x25/0x40 [i915]
> > <4> [525.948133]  intel_gt_driver_unregister+0x14/0x80 [i915]
> > <4> [525.948291]  i915_driver_remove+0x6c/0x140 [i915]
> > <4> [525.948411]  i915_pci_remove+0x1e/0x40 [i915]
> > ...
> > <4> [526.441186] ------------[ cut here ]------------
> > <4> [526.441191] kernfs: can not remove 'error', no directory
> > <4> [526.441211] WARNING: CPU: 1 PID: 3440 at fs/kernfs/dir.c:1684 kernfs_remove_by_name_ns+0xbc/0xc0
> > ...
> > <4> [526.441536] RIP: 0010:kernfs_remove_by_name_ns+0xbc/0xc0
> > ...
> > <4> [526.441578] Call Trace:
> > <4> [526.441581]  <TASK>
> > ...
> > <4> [526.441686]  sysfs_remove_bin_file+0x17/0x30
> > <4> [526.441691]  i915_gpu_error_sysfs_teardown+0x1d/0x30 [i915]
> > <4> [526.442226]  i915_teardown_sysfs+0x1c/0x60 [i915]
> > <4> [526.442369]  i915_driver_remove+0x9d/0x140 [i915]
> > <4> [526.442473]  i915_pci_remove+0x1e/0x40 [i915]
> > ...
> > <4> [526.685700] ------------[ cut here ]------------
> > <4> [526.685706] i915 0000:00:02.0: [drm] i915 raw-wakerefs=1 wakelocks=1 on cle
> > anup
> > <4> [526.685734] WARNING: CPU: 1 PID: 3440 at drivers/gpu/drm/i915/intel_runtime
> > _pm.c:443 intel_runtime_pm_driver_release+0x75/0x90 [i915]
> > ...
> > <4> [526.686090] RIP: 0010:intel_runtime_pm_driver_release+0x75/0x90 [i915]
> > ...
> > <4> [526.686294] Call Trace:
> > <4> [526.686296]  <TASK>
> > ...
> > <4> [526.687025]  i915_driver_release+0x7e/0xb0 [i915]
> > <4> [526.687243]  drm_dev_put.part.0+0x47/0x90
> > <4> [526.687250]  devm_drm_dev_init_release+0x13/0x30
> > <4> [526.687255]  devm_action_release+0x12/0x30
> > <4> [526.687261]  release_nodes+0x3a/0x120
> > <4> [526.687268]  devres_release_all+0x97/0xe0
> > <4> [526.687277]  device_unbind_cleanup+0x12/0x80
> > <4> [526.687282]  device_release_driver_internal+0x23a/0x280
> > ...
> >
> > A call to intel_power_domains_disable() that triggeres the drm_WARN_ON()
> > and takes another wakeref even if the one taken during driver register was
> > not released after device register error, was already there.  The WARN()
> > triggered by kernfs_remove_by_name_ns() from i915_teardown_sysfs()->
> > i915_gpu_error_sysfs_teardown(), formerly i915_teardown_error_capture(),
> > was also there.  A call to intel_gt_sysfs_unregister() that triggers the
> > WARN() from kobject_put() was added to intel_gt_driver_unregister() with
> > commit 69d6bf5c3754ff ("drm/i915/gt: Fix memory leaks in per-gt sysfs").
> >
> > Introduce a flag that indicates device registration status and raise it on
> > device registration success.  As a minimum (first step), when that flag is
> > found not set while unregistering the driver, jump over those reverts of
> > registration steps omitted after device registration failure that are not
> > ready for being called unconditionally (and trigger kernel warnings).
> >
> > In case of i915_gt_driver_unregister() called for each GT, omitting it
> > proved to introduce new issues.  Skip only its problematic
> > intel_gt_sysfs_unregister() sub-step.
> >
> > Other unregister steps seem to be safe but may still occur redundant in
> > that scenario -- that will be addressed in follow-up patches.
> >
> > v3: Based on Andi's commitment on introducing a flag, try to address
> >     Jani's "must find another way" by finding a better place and name for
> >     the flag (in hope that's what Jani had on mind),
> >   - split into a series of patches and limit the scope of the first (this)
> >     one to a minimum of omitting conditionally only those unregister
> >     (sub)steps that trigger kernel warnings when not registered.
> > v2: Check in _unregister whether the drm_dev_register has succeeded and
> >     skip some of the _unregister() steps. (Andi)
> >
> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt.c | 3 ++-
> >  drivers/gpu/drm/i915/i915_driver.c | 8 ++++++--
> >  drivers/gpu/drm/i915/i915_drv.h    | 2 ++
> >  3 files changed, 10 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 3d3b1ba76e2be..77eb9305a1ff8 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -783,7 +783,8 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
> >  {
> >  	intel_wakeref_t wakeref;
> >  
> > -	intel_gt_sysfs_unregister(gt);
> > +	if (gt->i915->do_unregister)
> > +		intel_gt_sysfs_unregister(gt);
> >  	intel_rps_driver_unregister(&gt->rps);
> >  	intel_gsc_fini(&gt->gsc);
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 613084fd00979..2caaeeab1f0f6 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -638,6 +638,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
> >  		return;
> >  	}
> >  
> > +	dev_priv->do_unregister = true;
> > +
> >  	i915_debugfs_register(dev_priv);
> >  	i915_setup_sysfs(dev_priv);
> >  
> > @@ -673,7 +675,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
> >  	i915_switcheroo_unregister(dev_priv);
> >  
> >  	intel_runtime_pm_disable(&dev_priv->runtime_pm);
> > -	intel_power_domains_disable(display);
> > +	if (dev_priv->do_unregister)
> > +		intel_power_domains_disable(display);
> 
> I still think we must find another way than adding a global
> ->do_unregister flag.
> 
> The i915 core to display interface needs to be unified with xe. This
> patch is counter-productive to that goal.

Thank you for clarification.

Have you seen my v1 of the changeset?  That was an attempt to resolve each 
issue individually, without adding the global flag.  In case of 
intel_power_domains_enable/disable(), I proposed to move it out of 
i915_driver_register/unregister() up one level, to i915_drv_probe/remove(), so 
it is called unconditionally, enabling power domains (releasing the wakeref) 
on probe regardless of device register result, then safely re-acquiring the 
wakeref on remove[1].  Would that work for you?

Thanks,
Janusz

[1] https://lore.kernel.org/dri-devel/20250206180927.2237256-6-janusz.krzysztofik@linux.intel.com/

> 
> 
> BR,
> Jani.
> 
> >  
> >  	intel_display_driver_unregister(display);
> >  
> > @@ -687,7 +690,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
> >  	i915_perf_unregister(dev_priv);
> >  	i915_pmu_unregister(dev_priv);
> >  
> > -	i915_teardown_sysfs(dev_priv);
> > +	if (dev_priv->do_unregister)
> > +		i915_teardown_sysfs(dev_priv);
> >  	drm_dev_unplug(&dev_priv->drm);
> >  
> >  	i915_gem_driver_unregister(dev_priv);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index ffc346379cc2c..0c6cbedaa71fe 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -184,6 +184,8 @@ struct drm_i915_private {
> >  	/* FIXME: Device release actions should all be moved to drmm_ */
> >  	bool do_release;
> >  
> > +	bool do_unregister;
> > +
> >  	/* i915 device parameters */
> >  	struct i915_params params;
> 
> 




