Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 661528A11C8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 12:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0888D890EA;
	Thu, 11 Apr 2024 10:47:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Db+eHNYO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630AA10EFF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 10:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712832439; x=1744368439;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WboW6vC5aWt9K5Nfj86wnJX3a73gXes4OeexLrM441c=;
 b=Db+eHNYOqkP41zKvuFcEPuvcSU1njFQN5hF75eK45AHTOr7jQ9kMusKz
 jziDYcAf88xDItE+1BiFZTLCDNoqU7fCtqC8TC5vkH10REwqBg80jGG1k
 vIxwNK+Xuo82oFcRfteobjdENT65/KP8UXCHX1DGkDiWXN/WcZamvRSdS
 rQjKeoJbb0auW0w7KMyDaRXEfqox67RWsExA2kAKiDMyBf/UJwyJmRdBm
 awHXB/Mhe24W0g0gVJ2cWmfSoFa4okikAs0wQuNpHUuQIxISZhjzQQbPn
 TPbBnlBY/KXpsOD6e8BUG+5bYflFCJp06jwvXwwDhu75caAxrdsBFvAh/ g==;
X-CSE-ConnectionGUID: LKMAzrJOR2q3xG/vcMS72Q==
X-CSE-MsgGUID: A6+r8Me6QH6YT6SaUhcG6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="19385587"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="19385587"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 03:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827793460"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="827793460"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 11 Apr 2024 03:47:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Apr 2024 13:47:13 +0300
Date: Thu, 11 Apr 2024 13:47:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Badal Nilawar <badal.nilawar@intel.com>,
 Andi Shyti <andi.shyti@intel.com>
Subject: Re: [PATCH] drm/i915: Don't enable hwmon for selftests
Message-ID: <Zhe_sRPLB7Dn7-tO@intel.com>
References: <20240410042855.130262-1-ashutosh.dixit@intel.com>
 <ZhZ7NsyBtQjnE8HE@intel.com>
 <85pluwjxir.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <85pluwjxir.wl-ashutosh.dixit@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Apr 10, 2024 at 10:09:32PM -0700, Dixit, Ashutosh wrote:
> On Wed, 10 Apr 2024 04:42:46 -0700, Ville Syrjälä wrote:
> >
> > On Tue, Apr 09, 2024 at 09:28:55PM -0700, Ashutosh Dixit wrote:
> > > There are no hwmon selftests so there is no need to enable hwmon for
> > > selftests. So enable hwmon only for real driver load.
> > >
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
> > > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> >
> > Why are we adding duct tape instead of fixing it properly?
> 
> Yeah pretty much what I said here myself:
> 
> https://patchwork.freedesktop.org/patch/588585/?series=132243&rev=1#comment_1071014
> 
> The issue has been difficult to root-cause. My last effort can be seen here:
> 
> https://patchwork.freedesktop.org/patch/584859/?series=131630&rev=1#comment_1067888
> 
> Though Badal went further and saw that occasionaly the memory would get
> freed first and hwmon would get unregistered as much as 2 seconds later,
> which will cause the crash if anyone touched hwmon sysfs in those final 2
> seconds. So not sure what is causing that 2 second delay.

Sounds like someone holding a sysfs file/etc. open. Should be trivial
to do that by hand and see what happens.

> 
> I am not sure if it is worth root-causing further. I am pretty sure if we
> get rid of the devm_ stuff, that will fix the issue too. So if this patch
> is not acceptable, we could just go that route (get rid of devm_ in hwmon).
> 
> Thanks.
> --
> Ashutosh
> 
> > > ---
> > >  drivers/gpu/drm/i915/i915_driver.c | 16 ++++++++++++++--
> > >  1 file changed, 14 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index 9ee902d5b72c..6fa6d2c8109f 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -94,6 +94,7 @@
> > >  #include "i915_memcpy.h"
> > >  #include "i915_perf.h"
> > >  #include "i915_query.h"
> > > +#include "i915_selftest.h"
> > >  #include "i915_suspend.h"
> > >  #include "i915_switcheroo.h"
> > >  #include "i915_sysfs.h"
> > > @@ -589,6 +590,15 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
> > >		pci_disable_msi(pdev);
> > >  }
> > >
> > > +static bool is_selftest(void)
> > > +{
> > > +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> > > +	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
> > > +#else
> > > +	return false;
> > > +#endif
> > > +}
> > > +
> > >  /**
> > >   * i915_driver_register - register the driver with the rest of the system
> > >   * @dev_priv: device private
> > > @@ -624,7 +634,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
> > >
> > >	intel_pxp_debugfs_register(dev_priv->pxp);
> > >
> > > -	i915_hwmon_register(dev_priv);
> > > +	if (!is_selftest())
> > > +		i915_hwmon_register(dev_priv);
> > >
> > >	intel_display_driver_register(dev_priv);
> > >
> > > @@ -660,7 +671,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
> > >	for_each_gt(gt, dev_priv, i)
> > >		intel_gt_driver_unregister(gt);
> > >
> > > -	i915_hwmon_unregister(dev_priv);
> > > +	if (!is_selftest())
> > > +		i915_hwmon_unregister(dev_priv);
> > >
> > >	i915_perf_unregister(dev_priv);
> > >	i915_pmu_unregister(dev_priv);
> > > --
> > > 2.41.0
> >
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
