Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B302993675
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 20:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620AF10E403;
	Mon,  7 Oct 2024 18:44:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AG9M38md";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83FC010E401;
 Mon,  7 Oct 2024 18:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728326683; x=1759862683;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=EyFhPhP40/KWOCVe1jJY/YW3g8eOPZHX2lclIOQrlkE=;
 b=AG9M38md/K9NHunV8oYu7S/MtPqGMqmrUzFIWAw2P3AZusiywk6vjQAJ
 Pfsfm/rje3JXx4KJD+Mxocp7sJofokhMktb9agMsPJMnY/ep4wmlXkzbD
 KbsWhDhp6rIJWZSV86LHI58vIHxZX5yB4E2CuwCVS25N+DIY5W8mYdwvH
 yj57Kv49tvMsF09XizOKyPzzCrBxcRMYafZxl9HA1yKVD9tNQW55C/eQ7
 txyHpGsNqENhLu+QAuC5Nxf1DY7nCeb5o0fxNrOavO4KFI5nPTBUzlQDN
 G382QUCn6E0M+RHJDq27z2YuMD4+VHZxRsk8xHiB7b+Qe0efYg4HsJzXE w==;
X-CSE-ConnectionGUID: RXz4mhopTJOcyS3JpMziJw==
X-CSE-MsgGUID: BarIXgMrT4WSwXdkgbwcDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27581090"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27581090"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:44:41 -0700
X-CSE-ConnectionGUID: B5/acrLITOOoCmj2x4HALA==
X-CSE-MsgGUID: QrgyGv5kTUuvt7Kj4EN8mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80360474"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:44:40 -0700
Date: Mon, 7 Oct 2024 21:45:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 1/2] drm/xe: Separate the d3cold and non-d3cold runtime
 PM handling
Message-ID: <ZwQsNDhqq6mGkOPS@ideak-desk.fi.intel.com>
References: <20241007140531.1044630-1-imre.deak@intel.com>
 <BL1PR11MB54456F054673E415F0A65698E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL1PR11MB54456F054673E415F0A65698E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
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

On Mon, Oct 07, 2024 at 09:28:52PM +0300, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre Deak
> Sent: Monday, October 7, 2024 7:06 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: [PATCH 1/2] drm/xe: Separate the d3cold and non-d3cold runtime PM handling
> >
> > For clarity separate the d3cold and non-d3cold runtime PM handling. The
> > only change in behavior is disabling polling later during runtime
> > resume. This shouldn't make a difference, since the poll disabling is
> > handled from a work, which could run at any point wrt. the runtime
> > resume handler. The work will also require a runtime PM reference,
> > syncing it with the resume handler.
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> It seems a bit weird to me that we're enabling hpd polling during the suspend
> path and disabling it during the resume path, especially given the second patch's
> commit message mentioning that HPD interrupts are getting disabled in the
> suspend path.

Yes, the above summary is correct: interrupts must be disabled while the
device is runtime suspended, so polling should be used instead to detect
display hotplug events. Accordingly runtime resume reverses this,
disabling polling and enabling interrupts.

> However, I just looked, and it seems like this is the way it has been
> since the beginning, so I'm going to trust that it's supposed to be this way.
> 
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Thanks.

> -Jonathan Cavitt
> 
> > ---
> >  drivers/gpu/drm/xe/display/xe_display.c | 19 ++++++++++++++-----
> >  1 file changed, 14 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index ca00a365080fb..cb2449b7921ac 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -345,6 +345,9 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> >       intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> >
> >       intel_dmc_suspend(display);
> > +
> > +     if (runtime && has_display(xe))
> > +             intel_hpd_poll_enable(xe);
> >  }
> >
> >  void xe_display_pm_suspend(struct xe_device *xe)
> > @@ -387,8 +390,10 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
> >       if (!xe->info.probe_display)
> >               return;
> >
> > -     if (xe->d3cold.allowed)
> > +     if (xe->d3cold.allowed) {
> >               __xe_display_pm_suspend(xe, true);
> > +             return;
> > +     }
> >
> >       intel_hpd_poll_enable(xe);
> >  }
> > @@ -453,9 +458,11 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
> >               intel_display_driver_resume(xe);
> >               drm_kms_helper_poll_enable(&xe->drm);
> >               intel_display_driver_enable_user_access(xe);
> > -             intel_hpd_poll_disable(xe);
> >       }
> >
> > +     if (has_display(xe))
> > +             intel_hpd_poll_disable(xe);
> > +
> >       intel_opregion_resume(display);
> >
> >       if (!runtime)
> > @@ -474,10 +481,12 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
> >       if (!xe->info.probe_display)
> >               return;
> >
> > -     intel_hpd_poll_disable(xe);
> > -
> > -     if (xe->d3cold.allowed)
> > +     if (xe->d3cold.allowed) {
> >               __xe_display_pm_resume(xe, true);
> > +             return;
> > +     }
> > +
> > +     intel_hpd_poll_disable(xe);
> >  }
> >
> >
> > --
> > 2.44.2
> >
> >
