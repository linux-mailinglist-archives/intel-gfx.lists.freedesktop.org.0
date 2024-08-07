Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B42194A999
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 16:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B02B10E532;
	Wed,  7 Aug 2024 14:13:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fIv92sKV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D42310E533;
 Wed,  7 Aug 2024 14:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723040035; x=1754576035;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=u1qKFZ+XMlYRQzHiJ27ZT0v+50wh6Yp6fP+LYGpCe9s=;
 b=fIv92sKVWZwUqSwwNvTW7Yh+cLA3DSzOBVNbBka8kJMDpUqlwskw7szn
 v6BisqHWRal6SVK0/2C1ptbnVPBDZMExEUIziS1Q1QotIeYGOB0NWRrHv
 U6beVclDCj3PqyF+iRoeogRDadJq4UWs2MKT/jhhVHmA7hECgvhZakjLB
 9N0Aoczt6QLRdZcmS5mF0dt5G+1VvmXzGOptXsFUaAJDQ/GUa05S3eHz2
 wik/H3vqDRW2WsROqgbAZXMMEgGh1gZLx9Zcs49NYZkLt1/rk//OZ2vxi
 sr/ofWXfGTbzbems4wo3zv8hSVfVSMsqGN5+M/XedPhS2vFBiKyGvBTLD g==;
X-CSE-ConnectionGUID: AxmudsCUTHWRyMLUmRI3rA==
X-CSE-MsgGUID: af7wMbktSEOpjvaFdbPZ9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="20990379"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="20990379"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:13:54 -0700
X-CSE-ConnectionGUID: +HpbU9Y+T7Cjl85NeyFkrA==
X-CSE-MsgGUID: oW4DfImOT4qNYWjSokk8vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="57418135"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:13:53 -0700
Date: Wed, 7 Aug 2024 17:14:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
Message-ID: <ZrOBMidgsZB28P6h@ideak-desk.fi.intel.com>
References: <20240806085513.3051107-1-arun.r.murthy@intel.com>
 <ZrJSHdb7bu90VnJr@ideak-desk.fi.intel.com>
 <IA0PR11MB73075A16A0CF48FBCF8AF5C0BAB82@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA0PR11MB73075A16A0CF48FBCF8AF5C0BAB82@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Wed, Aug 07, 2024 at 12:15:33PM +0300, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Tuesday, August 6, 2024 10:11 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
> >
> > On Tue, Aug 06, 2024 at 02:25:13PM +0530, Arun R Murthy wrote:
> > > HPD is interrupt based and on runtime suspend change it to polling as
> > > HPD is not a wakeup event. A worker thread is scheduled for doing this
> > > polling and it keeps polling for HPD live status on an internval of 10s.
> > > On runtime resume disable polling and fallback to interrupt mechanism.
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/xe/xe_pm.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> > > index 9f3c14fd9f33..d952b06ebfb4 100644
> > > --- a/drivers/gpu/drm/xe/xe_pm.c
> > > +++ b/drivers/gpu/drm/xe/xe_pm.c
> > > @@ -22,6 +22,7 @@
> > >  #include "xe_pcode.h"
> > >  #include "xe_trace.h"
> > >  #include "xe_wa.h"
> > > +#include "intel_hotplug.h"
> > >
> > >  /**
> > >   * DOC: Xe Power Management
> > > @@ -378,6 +379,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
> > >             if (err)
> > >                     goto out;
> > >     }
> > > +   /* Enable hpd polling on runtime suspend */
> > > +   intel_hpd_poll_enable(xe);
> > >
> > >     xe_irq_suspend(xe);
> > >
> > > @@ -427,6 +430,9 @@ int xe_pm_runtime_resume(struct xe_device *xe)
> > >
> > >     xe_irq_resume(xe);
> > >
> > > +   /* Disable hpd polling on runtime resume */
> > > +   intel_hpd_poll_disable(xe);
> >
> > This should be handled in xe_display_pm_resume() (likewise enabling polling in
> > xe_display_pm_suspend()), in fact it's already called there.
>
> In xe_display_pm_suspend we have drm_kms_helper_poll_disable and it disables
> output polling.

What I meant is that intel_hpd_poll_disable() is already called in
xe_display_pm_resume(), which you would call now twice during runtime
resume if d3cold is allowed.

drm_kms_helper_poll_disable() in xe_display_pm_suspend() should be
called only during system suspend, which is another thing to fix there.

> Moreover we don't have the functions defined for enable/disable_hpd
> defined in connector_ops which is referenced by
> drm_kms_helper_poll_enable/disable.
> 
> What we need is on runtime_suspend the poll work should be
> enabled so that hotplug can be detected and can come out of runtime_suspend.
> The same poll work is not required on system suspend.

All the display related suspend/resume handling is done already in
xe_display_pm_suspend()/resume() or in xe_display.c in general, both for
runtime and system suspend/resume. The reason for that is to keep the
display specific parts separate from the generic/higher-level device
suspend/resume handling in xe_pm.c. New display specific things added
should keep this separation.

> > Also this is missing the xe->info.enable_display check and polling shouldn't be
> > enabled when system (vs. runtime) suspending.
> Probably HAS_DISPLAY can be added before calling this intel_hpd_poll_enable.
> 
> Thanks and Regards,
> Arun R Murthy
> --------------------
> >
> > Not sure why the display is suspended/resumed only if d3cold is allowed, for
> > many of the display s/r steps at least it doesn't make sense to me.
> > For now moving the d3cold check within
> > xe_display_pm_suspend()/resume() and enabling/disabling polling regardless of
> > that flag would be the simplest imo.
> >
> > > +
> > >     for_each_gt(gt, xe, id)
> > >             xe_gt_resume(gt);
> > >
> > > --
> > > 2.25.1
> > >
