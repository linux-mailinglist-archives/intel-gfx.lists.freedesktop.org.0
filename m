Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FA479EBF8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 17:03:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1ADA10E24C;
	Wed, 13 Sep 2023 15:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E1D810E0D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 15:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694617405; x=1726153405;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Wl7tGoCC6xKjz9uuklXO5/1DQT93O29g9S2vnwjaJDk=;
 b=ZsKyvtldgJ3IXVzsvTHphkfH3tJoaYgJJ0dN/Q+glzkBZEVFW0uHV0V8
 KkB57M4R7jFlXrR7i70H72Qw/4IL4TBi2k720QYGuc50Tl6Urh109cia+
 3ScyHEBoclGRa0KntfR3A/87HpqZMJ4ooX9yC4q8QL05b0Nlxb+FlfEjT
 bzqQK5uAfOWVLxXNcf/nsQf4Uty4hzmtMDn+uu/QmmdY/YVTZSqLPLAsS
 GTiie1TH+U83fDcfbb9eT7SIc5ja/7UtgYMgEhYLthCrcdfDhZERm61/U
 jPfrtdN6fzwSI2pHYoZH8D/LYO4o5PIMNHGW3Cu6ecp+eMFVZc/rHRPc3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="378594752"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="378594752"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 08:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="693874202"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="693874202"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 08:01:28 -0700
Date: Wed, 13 Sep 2023 18:01:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
 Jouni Hogander <jouni.hogander@intel.com>
Message-ID: <ZQHO27saUO4Dikup@ideak-desk.fi.intel.com>
References: <20230913100430.3433969-1-jouni.hogander@intel.com>
 <87pm2mwaa5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pm2mwaa5.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove runtime suspended boolean
 from intel_runtime_pm struct
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

On Wed, Sep 13, 2023 at 03:02:58PM +0300, Jani Nikula wrote:
> On Wed, 13 Sep 2023, Jouni Högander <jouni.hogander@intel.com> wrote:
> > It's not necessary to carry separate suspended status information in
> > intel_runtime_pm struct as this information is already in underlying device
> > structure. Remove it and use pm_runtime_suspended() to obtain suspended
> > status information when needed.
> 
> I started wondering if this is racy, and my conclusion is that it's
> "less" racy than the original. rpm->suspended gets toggled in the middle
> of the suspend/resume sequences. So it could be halfway. Dunno if
> anything *after* those toggles depends on the state having been changed
> already; didn't find any. Maybe Imre has a better idea.
> 
> Also, pm_runtime_suspended() seems more reliable when suspend/resume
> fails.

The flag was added in the initial runtime PM enabling patch to detect
MMIO accesses while runtime suspended, looks like pm_runtime_suspended()
would've worked ok already at that point.

I wondered how the above detection would change in the system suspend /
resume handlers but that looks ok as well with the disable_depth check
in pm_runtime_suspended():
Reviewed-by: Imre Deak <imre.deak@intel.com>

> Acked-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> >
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
> >  drivers/gpu/drm/i915/i915_driver.c                 | 3 ---
> >  drivers/gpu/drm/i915/i915_gpu_error.c              | 2 +-
> >  drivers/gpu/drm/i915/intel_runtime_pm.c            | 1 -
> >  drivers/gpu/drm/i915/intel_runtime_pm.h            | 4 ++--
> >  5 files changed, 4 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 68cf5e6b0b46..889bb26009a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -216,7 +216,7 @@ bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
> >  	struct i915_power_well *power_well;
> >  	bool is_enabled;
> >  
> > -	if (dev_priv->runtime_pm.suspended)
> > +	if (pm_runtime_suspended(dev_priv->drm.dev))
> >  		return false;
> >  
> >  	is_enabled = true;
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index f8dbee7a5af7..cd98ee740976 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1569,8 +1569,6 @@ static int intel_runtime_suspend(struct device *kdev)
> >  	if (root_pdev)
> >  		pci_d3cold_disable(root_pdev);
> >  
> > -	rpm->suspended = true;
> > -
> >  	/*
> >  	 * FIXME: We really should find a document that references the arguments
> >  	 * used below!
> > @@ -1621,7 +1619,6 @@ static int intel_runtime_resume(struct device *kdev)
> >  	disable_rpm_wakeref_asserts(rpm);
> >  
> >  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> > -	rpm->suspended = false;
> >  
> >  	root_pdev = pcie_find_root_port(pdev);
> >  	if (root_pdev)
> > diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> > index 4008bb09fdb5..a60bab177c55 100644
> > --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> > +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> > @@ -1972,7 +1972,7 @@ static void capture_gen(struct i915_gpu_coredump *error)
> >  	struct drm_i915_private *i915 = error->i915;
> >  
> >  	error->wakelock = atomic_read(&i915->runtime_pm.wakeref_count);
> > -	error->suspended = i915->runtime_pm.suspended;
> > +	error->suspended = pm_runtime_suspended(i915->drm.dev);
> >  
> >  	error->iommu = i915_vtd_active(i915);
> >  	error->reset_count = i915_reset_count(&i915->gpu_error);
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 6d8e5e5c0cba..8743153fad87 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -652,7 +652,6 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
> >  
> >  	rpm->kdev = kdev;
> >  	rpm->available = HAS_RUNTIME_PM(i915);
> > -	rpm->suspended = false;
> >  	atomic_set(&rpm->wakeref_count, 0);
> >  
> >  	init_intel_runtime_pm_wakeref(rpm);
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > index 764b183ae452..f79cda7a2503 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > @@ -6,6 +6,7 @@
> >  #ifndef __INTEL_RUNTIME_PM_H__
> >  #define __INTEL_RUNTIME_PM_H__
> >  
> > +#include <linux/pm_runtime.h>
> >  #include <linux/types.h>
> >  
> >  #include "intel_wakeref.h"
> > @@ -43,7 +44,6 @@ struct intel_runtime_pm {
> >  	atomic_t wakeref_count;
> >  	struct device *kdev; /* points to i915->drm.dev */
> >  	bool available;
> > -	bool suspended;
> >  	bool irqs_enabled;
> >  	bool no_wakeref_tracking;
> >  
> > @@ -110,7 +110,7 @@ intel_rpm_wakelock_count(int wakeref_count)
> >  static inline void
> >  assert_rpm_device_not_suspended(struct intel_runtime_pm *rpm)
> >  {
> > -	WARN_ONCE(rpm->suspended,
> > +	WARN_ONCE(pm_runtime_suspended(rpm->kdev),
> >  		  "Device suspended during HW access\n");
> >  }
> 
> -- 
> Jani Nikula, Intel
