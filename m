Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622D15A0E7A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 12:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57DEE11A5C0;
	Thu, 25 Aug 2022 10:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3B811AED5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 10:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661424715; x=1692960715;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=UPmENuaKeSDrk/JLAdXH5UsIaAASi7hJE9oxPVI4kzg=;
 b=CDX/kaXd7a03VNE65xqrOxpLEptv9ZFOhcqSyrugMLGHdAbNNBK6GjNE
 xO7wOnjFigEznekVJTGoNxWfhLxV43Je1y4xoM9c7A/y0MDLXtBJ6t/Pt
 Ol2il8jHVzrAQphwvyfc70liDLUaxrmlT9TsqKlRqlaE1NEbA0IgpZchk
 fOX4iS8CQy3ZJ3JXJMuJgX966biJNA++AWltYB/HPRh9KVftHVBGx/hb6
 4CyGW9BcprpepTVeGLshf5qbYEZVZapVzs/wo77gYiicw7M9ejyqTYt2U
 movwkSxLH2MCJQ2+HMrLEpgQlnk+gBymarcP2wLI2nIsE2WScsVhnqPbD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="273962697"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="273962697"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 03:51:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="670932318"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 03:51:54 -0700
Date: Thu, 25 Aug 2022 13:51:50 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <YwdURvTR2xakrFK0@ideak-desk.fi.intel.com>
References: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
 <Yvzj6otIylJ8nwoJ@ideak-desk.fi.intel.com>
 <MWHPR11MB19353E66246E6D9CB5F021D4B2709@MWHPR11MB1935.namprd11.prod.outlook.com>
 <MWHPR11MB193572EF5A173CC9F42861DDB2709@MWHPR11MB1935.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MWHPR11MB193572EF5A173CC9F42861DDB2709@MWHPR11MB1935.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 23, 2022 at 03:56:56PM +0300, Golani, Mitulkumar Ajitkumar wrote:
> > Hi Imre,
> >
> > > On Fri, Aug 12, 2022 at 10:17:24AM +0530, Mitul Golani wrote:
> > > > While executing i915_selftest, wakeref imbalance warning is seen
> > > > with i915_selftest failure.
> > > >
> > > > When device is already suspended, wakeref is acquired by
> > > > disable_rpm_wakeref_asserts and rpm ownership is transferred back to
> > > > core. During this case wakeref_count will not be zero.
> > > > Once driver is unregistered, this wakeref is released with
> > > > enable_rpm_wakeref_asserts and balancing wakeref_count acquired by
> > > > driver.
> > > >
> > > > This patch will fix the warning callstack by adding check if device
> > > > is already suspended and rpm ownership transfer is going on.
> > > >
> > > > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_driver.c | 8 +++++++-
> > > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > > b/drivers/gpu/drm/i915/i915_driver.c
> > > > index deb8a8b76965..6530a8680cfd 100644
> > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > @@ -1670,7 +1670,13 @@ static int intel_runtime_resume(struct device
> > > > *kdev)
> > > >
> > > >   drm_dbg(&dev_priv->drm, "Resuming device\n");
> > > >
> > > > - drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> > > >wakeref_count));
> > > > + /*
> > > > +  * When device is already suspended, Wakeref is acquired by
> > > disable_rpm_wakeref_asserts
> > > > +  * and rpm ownership is transferred back to core. During this case
> > > wakeref_count will
> > > > +  * not be zero. Once driver is unregistered, this wakeref is
> > > > +released
> > > with
> > > > +  * enable_rpm_wakeref_asserts and balancing wakeref_count
> > > acquired by driver.
> > > > +  */
> > > > + drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> > > >wakeref_count) &&
> > > > +!rpm->suspended);
> > >
> > > I can't see how disable/enable_rpm_wakeref_asserts() can lead to this
> > > WARN. They are always called in pairs both in intel_runtime_suspend()
> > > and intel_runtime_resume(), leaving rpm->wakeref_count unchanged.
> > >
> > > The root cause is probably somewhere else, incrementing
> > > rpm->wakeref_count without runtime resuming the device.
> > >
> > > The WARN() condition is corret, we shouldn't get here with a non-zero
> > > wakeref_count. rpm->suspended - set in intel_runtime_suspend() and
> > > cleared in intel_runtime_resume() - should be always false here, so
> > > the above change would just disable the WARN in all cases.
> > >
> > Yes, in case of DG2, after device is suspended, i915_driver_remove
> > is being called.  Here driver is taking wakeref with
> > disable_rpm_wakeref_asserts when device was not resumed.

> >
> > As per logs,
> > [  395.872971] i915 0000:03:00.0: [drm:intel_runtime_suspend [i915]]
> > Suspending device ...
> > [  403.553235] i915_driver_remove: START wakeref=0 [  403.553288]
> > i915_driver_remove: before unregister i915 wakeref=65537 (Wakeref Taken)
> > [  403.566086] i915 0000:03:00.0: [drm:intel_runtime_resume [i915]]
> > Resuming device (Later Resuming Device)
> >
> > Pushed new change with :
> > https://patchwork.freedesktop.org/series/107211/#rev5
> >
> Also when compared DG2 logs with ADLP working logs,
> Already 1 wakeref was taken by DMC firmware(i915/adlp_dmc_ver2_16.bin (v2.16)), in-case of DG2 looks to be missing.
> To support other targets and to prevent consecutive resuming device added following check,
> if (i915->runtime_pm.suspended && !atomic_read(&i915->runtime_pm.wakeref_count))
> 
> ADLP Logs:
> ---------------
> [   99.502434] i915_driver_probe: START wakeref=0
> [  713.979074] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/adlp_dmc_ver2_16.bin (v2.16)
> [  102.455766] i915_driver_probe: END wakeref=65538
> ...
> [  103.448570] i915_driver_remove: START wakeref=65537
> [  103.448587] i915_driver_remove: before unregister i915 wakeref=131074 -> (disable_rpm_wakeref_assert)
> [  103.585886] i915_driver_remove: END wakeref=0
> 
> DG2 Logs:
> -------------
> [ 1271.704314] i915_driver_probe: START wakeref=0
> [  383.050984] i915 0000:03:00.0: [drm] Finished loading DMC firmware i915/dg2_dmc_ver2_07.bin (v2.7)
> [ 1272.021133] i915_driver_probe: END wakeref=1
> ...
> [  395.883531] i915 0000:03:00.0: [drm:intel_runtime_suspend [i915]] Device suspended
> ...
> [ 1291.450841] i915_driver_remove: START wakeref=0
> [ 1291.450877] i915_driver_remove: before unregister i915 wakeref=65537 -> (disable_rpm_wakeref_assert)
> [ 1291.603281] i915_driver_remove: END wakeref=0

Still not sure what's going. Both i915_pci_probe() and
i915_pci_remove()->i915_driver_remove() is called with a runtime PM
reference - taken at local_pci_probe() and pci_device_remove() - and so
the device should be runtime resumed at those points.

> > > >   disable_rpm_wakeref_asserts(rpm);
> > > >
> > > >   intel_opregion_notify_adapter(dev_priv, PCI_D0);
> > > > --
> > > > 2.25.1
> > > >
