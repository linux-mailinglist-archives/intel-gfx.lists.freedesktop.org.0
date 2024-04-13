Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9906B8A3962
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Apr 2024 02:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B55F410F328;
	Sat, 13 Apr 2024 00:35:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RhitWNGb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2AD10F328
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Apr 2024 00:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712968521; x=1744504521;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hr3jWi73Wqu8xZvrUBcRiTAukjCTjyz09hrvYbuDmRU=;
 b=RhitWNGbcx86+2dT1/wUHfnyxeUtRLxatsxzzHdSmMmgeVK3EIxlF5re
 OI7f2WYhezbqYJp60vNzLtnRzdTPQpPvEaaMLGjqjdNlSexn8DYkerZvE
 W7gqlYD93FU6rHB4pqyZve9ZQmTtTQWTkMFSyPEA9tAjKiFETjatnc7pA
 SZBmfxHDnzG4gokwwIms1NxjRIP7FnZ9d5korXz9G7dCCflIJ8KaTwGqp
 LKsjMKvCBvtN3EaFGrKHoGzjsw7WY7xHLIpgbYQ9j1YlZu5KFRjXQIhkM
 qsjw05nm8k6r/yOF1RTp7jWts49TcF6EWd994y+Ro6mPf0O7eiB2x73If w==;
X-CSE-ConnectionGUID: npodDIpYS7iy7RPnBn3/ag==
X-CSE-MsgGUID: vsGygVOYRvuAVBVBZBtsTQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8659594"
X-IronPort-AV: E=Sophos;i="6.07,197,1708416000"; 
   d="scan'208";a="8659594"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 17:35:16 -0700
X-CSE-ConnectionGUID: WtWKLmy9TOW9IJHr+nNVdQ==
X-CSE-MsgGUID: Jpb7+d2bQyyJrdSVa1ZieQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,197,1708416000"; d="scan'208";a="21308737"
Received: from orsosgc001.jf.intel.com (HELO orsosgc001.intel.com)
 ([10.165.21.138])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 17:35:16 -0700
Date: Fri, 12 Apr 2024 17:35:15 -0700
Message-ID: <85frvqt7zw.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: <intel-gfx@lists.freedesktop.org>, Badal Nilawar <badal.nilawar@intel.com>,
 Andi Shyti <andi.shyti@intel.com>
Subject: Re: [PATCH] drm/i915: Don't enable hwmon for selftests
In-Reply-To: <Zhe_sRPLB7Dn7-tO@intel.com>
References: <20240410042855.130262-1-ashutosh.dixit@intel.com>	<ZhZ7NsyBtQjnE8HE@intel.com>	<85pluwjxir.wl-ashutosh.dixit@intel.com>	<Zhe_sRPLB7Dn7-tO@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-redhat-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
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

On Thu, 11 Apr 2024 03:47:13 -0700, Ville Syrj=E4l=E4 wrote:
>
> On Wed, Apr 10, 2024 at 10:09:32PM -0700, Dixit, Ashutosh wrote:
> > On Wed, 10 Apr 2024 04:42:46 -0700, Ville Syrj=E4l=E4 wrote:
> > >
> > > On Tue, Apr 09, 2024 at 09:28:55PM -0700, Ashutosh Dixit wrote:
> > > > There are no hwmon selftests so there is no need to enable hwmon for
> > > > selftests. So enable hwmon only for real driver load.
> > > >
> > > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
> > > > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > >
> > > Why are we adding duct tape instead of fixing it properly?
> >
> > Yeah pretty much what I said here myself:
> >
> > https://patchwork.freedesktop.org/patch/588585/?series=3D132243&rev=3D1=
#comment_1071014
> >
> > The issue has been difficult to root-cause. My last effort can be seen =
here:
> >
> > https://patchwork.freedesktop.org/patch/584859/?series=3D131630&rev=3D1=
#comment_1067888
> >
> > Though Badal went further and saw that occasionaly the memory would get
> > freed first and hwmon would get unregistered as much as 2 seconds later,
> > which will cause the crash if anyone touched hwmon sysfs in those final=
 2
> > seconds. So not sure what is causing that 2 second delay.
>
> Sounds like someone holding a sysfs file/etc. open. Should be trivial
> to do that by hand and see what happens.

I checked this out. We see the memory being released before hwmon even when
we don't access the sysfs, so it has norhing to do with holding a sysfs
file open. Holding a sysfs file open also takes a reference on the module
which will prevent the module from being unloaded, which is also what we
don't see.

So the reordering seems to be happening in devres itself occasionally for
some reason.

So anyway, I have submitted a new patch getting rid of devm and freeing
everything explicitly and verified that that fixes the issue:

https://patchwork.freedesktop.org/series/132400/

I have also update https://patchwork.freedesktop.org/series/132400/ with
more details.

Regards,
Ashutosh

>
> >
> > I am not sure if it is worth root-causing further. I am pretty sure if =
we
> > get rid of the devm_ stuff, that will fix the issue too. So if this pat=
ch
> > is not acceptable, we could just go that route (get rid of devm_ in hwm=
on).
> >
> >
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_driver.c | 16 ++++++++++++++--
> > > >  1 file changed, 14 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i=
915/i915_driver.c
> > > > index 9ee902d5b72c..6fa6d2c8109f 100644
> > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > @@ -94,6 +94,7 @@
> > > >  #include "i915_memcpy.h"
> > > >  #include "i915_perf.h"
> > > >  #include "i915_query.h"
> > > > +#include "i915_selftest.h"
> > > >  #include "i915_suspend.h"
> > > >  #include "i915_switcheroo.h"
> > > >  #include "i915_sysfs.h"
> > > > @@ -589,6 +590,15 @@ static void i915_driver_hw_remove(struct drm_i=
915_private *dev_priv)
> > > >		pci_disable_msi(pdev);
> > > >  }
> > > >
> > > > +static bool is_selftest(void)
> > > > +{
> > > > +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> > > > +	return i915_selftest.live || i915_selftest.perf || i915_selftest.=
mock;
> > > > +#else
> > > > +	return false;
> > > > +#endif
> > > > +}
> > > > +
> > > >  /**
> > > >   * i915_driver_register - register the driver with the rest of the=
 system
> > > >   * @dev_priv: device private
> > > > @@ -624,7 +634,8 @@ static void i915_driver_register(struct drm_i91=
5_private *dev_priv)
> > > >
> > > >	intel_pxp_debugfs_register(dev_priv->pxp);
> > > >
> > > > -	i915_hwmon_register(dev_priv);
> > > > +	if (!is_selftest())
> > > > +		i915_hwmon_register(dev_priv);
> > > >
> > > >	intel_display_driver_register(dev_priv);
> > > >
> > > > @@ -660,7 +671,8 @@ static void i915_driver_unregister(struct drm_i=
915_private *dev_priv)
> > > >	for_each_gt(gt, dev_priv, i)
> > > >		intel_gt_driver_unregister(gt);
> > > >
> > > > -	i915_hwmon_unregister(dev_priv);
> > > > +	if (!is_selftest())
> > > > +		i915_hwmon_unregister(dev_priv);
> > > >
> > > >	i915_perf_unregister(dev_priv);
> > > >	i915_pmu_unregister(dev_priv);
> > > > --
> > > > 2.41.0
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>
> --
> Ville Syrj=E4l=E4
> Intel
