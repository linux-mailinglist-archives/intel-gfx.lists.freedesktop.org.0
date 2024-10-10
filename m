Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8DB998191
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 11:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE4910E897;
	Thu, 10 Oct 2024 09:08:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mMpVDYPz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2DA10E897;
 Thu, 10 Oct 2024 09:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728551291; x=1760087291;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=4E7MeKkO35nIVhCciAZsME4F54Bs7wXiOIQlcBNUYyo=;
 b=mMpVDYPzXUDiaFsKlyyAsoTzPoxUIvyIdTcv/1OPYvcn7+n/DW8kLqH6
 GvHvft4mO/O+Mi0qbbENgHJru8tEyt8L8xGrLnwgZomHsZvmru0scxZ8R
 VHzh+sFJywEeuBfLxRon1YgTvItqrXnIlk4Mf5sG+vlC08TdJYxc02JTN
 coVRb2TWQEvfeWmeQM4LrRZ1Yu46HF0IU4t5Clm6eAkM5Z6YuRlxhVCdL
 OHrNoa6Ldzxp7OlT1xk0TxROZFUZr/tflMcpB9V6ZUQICdPPRucLkOq5v
 uZvFKWCOwk0O/Xfxrwd5kttiXQkn7pL/vq45+ZqZf/E9l+4vQaOHQM2A9 g==;
X-CSE-ConnectionGUID: uaN+yQyWR3CsDD2a25BnCA==
X-CSE-MsgGUID: GrPDyWkOQe+5D/sI3IYG7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15520184"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="15520184"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 02:08:11 -0700
X-CSE-ConnectionGUID: TreIWoDJRmub8JDCUfg2PQ==
X-CSE-MsgGUID: j43dgolgQ/G14elddKwlhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76434808"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 02:08:09 -0700
Date: Thu, 10 Oct 2024 12:08:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime
 suspended''
Message-ID: <ZweZlhsiQko_AFDQ@ideak-desk.fi.intel.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
 <20241009194358.1321200-2-imre.deak@intel.com>
 <CH0PR11MB5444908185C8687D0C8F07CBE57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
 <Zwb0-AgbO3LyH-3o@ideak-desk.fi.intel.com>
 <CH0PR11MB5444A6ECAD3B5768022C4CC7E57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CH0PR11MB5444A6ECAD3B5768022C4CC7E57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
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

On Thu, Oct 10, 2024 at 12:59:43AM +0300, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, October 9, 2024 2:26 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime suspended
> >
> > On Wed, Oct 09, 2024 at 11:35:56PM +0300, Cavitt, Jonathan wrote:
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Imre Deak
> > > Sent: Wednesday, October 9, 2024 12:44 PM
> > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime suspended
> > > >
> > > > If the device is runtime suspended the eDP panel power is also off.
> > > > Ignore a short HPD on eDP if the device is suspended accordingly,
> > > > instead of checking the panel power state via the PPS registers for the
> > > > same purpose. The latter involves runtime resuming the device
> > > > unnecessarily, in a frequent scenario where the panel generates a
> > > > spurious short HPD after disabling the panel power and the device is
> > > > runtime suspended.
> > > >
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c                   | 5 ++++-
> > > >  drivers/gpu/drm/i915/intel_runtime_pm.h                   | 8 +++++++-
> > > >  drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h | 8 ++++++++
> > > >  3 files changed, 19 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index fbb096be02ade..3eff35dd59b8a 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -85,6 +85,7 @@
> > > >  #include "intel_pch_display.h"
> > > >  #include "intel_pps.h"
> > > >  #include "intel_psr.h"
> > > > +#include "intel_runtime_pm.h"
> > > >  #include "intel_quirks.h"
> > > >  #include "intel_tc.h"
> > > >  #include "intel_vdsc.h"
> > > > @@ -6054,7 +6055,9 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
> > > >       u8 dpcd[DP_RECEIVER_CAP_SIZE];
> > > >
> > > >       if (dig_port->base.type == INTEL_OUTPUT_EDP &&
> > > > -         (long_hpd || !intel_pps_have_panel_power_or_vdd(intel_dp))) {
> > > > +         (long_hpd ||
> > > > +          intel_runtime_pm_suspended(&i915->runtime_pm) ||
> > > > +          !intel_pps_have_panel_power_or_vdd(intel_dp))) {
> > >
> > > From what I'm reading, I'm fairly certain that
> > > "i915->runtime_pm->kdev" is equivalent to "i915->drm.dev".
> > > At least, this seems to be the case according to this comment on
> > > the intel_runtime_pm struct in intel_runtime_pm.h:
> > >
> > > "       struct device *kdev; /* points to i915->drm.dev */"
> > >
> > > So, "intel_runtime_pm_suspended(&i915->runtime_pm)" seems
> > > to be logically equivalent to
> > > "pm_runtime_suspended(i915->drm.dev)", which would mean we
> > > wouldn't need to declare the new helper function
> > > "intel_runtime_pm_suspended" as both want to operate
> > > pm_runtime_suspended on the same relative path for their target
> > > drm device.
> > >
> > > Though, perhaps I'm missing some other reasons we would want
> > > the additional helper function besides,
> >
> > Yes, I was surprised too but drivers/gpu/drm/i915/intel_runtime_pm.h is
> > not included by xe, even when drivers/gpu/drm/i915/display is built for
> > it. IIUC for this and other headers the xe specific ones will be
> > included instead from drivers/gpu/drm/xe/compat-i915-headers. Some of
> > these in turn like i915_irq.h will revert back including the original
> > one from drivers/gpu/drm/i915.
> 
> Sorry, let me clarify.  When I said "perhaps I'm missing some other
> reasons we would want the additional helper function", I was
> referring to intel_runtime_pm_suspended as a whole, not just the
> mirror in compat-i915-headers.
> 
> Basically, my question was why we use intel_runtime_pm_suspended,
> when pm_runtime_suspended, at least at first glance, would also work
> by itself?

I think all use of the driver's runtime PM interface - i.e. all runtime
PM calls outside of intel_runtime_pm.c - should happen via the
intel_runtime_pm struct pointer, which is opaque for the caller.

> -Jonathan Cavitt
> 
> >
> > > so I won't block on this:
> > >
> > > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > -Jonathan Cavitt
> > >
> > > >               /*
> > > >                * vdd off can generate a long/short pulse on eDP which
> > > >                * would require vdd on to handle it, and thus we
> > > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > index 126f8320f86eb..e22669d61e954 100644
> > > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > @@ -96,10 +96,16 @@ intel_rpm_wakelock_count(int wakeref_count)
> > > >       return wakeref_count >> INTEL_RPM_WAKELOCK_SHIFT;
> > > >  }
> > > >
> > > > +static inline bool
> > > > +intel_runtime_pm_suspended(struct intel_runtime_pm *rpm)
> > > > +{
> > > > +     return pm_runtime_suspended(rpm->kdev);
> > > > +}
> > > > +
> > > >  static inline void
> > > >  assert_rpm_device_not_suspended(struct intel_runtime_pm *rpm)
> > > >  {
> > > > -     WARN_ONCE(pm_runtime_suspended(rpm->kdev),
> > > > +     WARN_ONCE(intel_runtime_pm_suspended(rpm),
> > > >                 "Device suspended during HW access\n");
> > > >  }
> > > >
> > > > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> > > > index cba587ceba1b6..274042bff1bec 100644
> > > > --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> > > > +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> > > > @@ -20,6 +20,14 @@ static inline void enable_rpm_wakeref_asserts(void *rpm)
> > > >  {
> > > >  }
> > > >
> > > > +static inline bool
> > > > +intel_runtime_pm_suspended(struct xe_runtime_pm *pm)
> > > > +{
> > > > +     struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> > > > +
> > > > +     return pm_runtime_suspended(xe->drm.dev);
> > > > +}
> > > > +
> > > >  static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
> > > >  {
> > > >       struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> > > > --
> > > > 2.44.2
> > > >
> > > >
> >
