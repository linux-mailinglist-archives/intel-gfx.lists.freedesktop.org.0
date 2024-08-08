Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FF594B92C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 10:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B1A110E07F;
	Thu,  8 Aug 2024 08:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SwX1guj6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4169610E07F;
 Thu,  8 Aug 2024 08:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723106465; x=1754642465;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PyFdy1dX8/GAgdM4NByhBpGpxG9LDk0hQyvSOglOTUs=;
 b=SwX1guj6HSoQrmSfelY/1Tyb0HvLMFPSAtpsOdeYiA98anU3D6F4ja8M
 ozZ5RS1lcSzalrRUszKjME3ZrfHkIiZVFJfPiG0g4f9ObKWrPsQr3XBDE
 9g2i7FFBySrckLfEBcC4+nrSpgnNjZcVFua8RSJIX9LaS9ou3YV31zzy9
 Cex95yU221PDfMq2Aj/zxVH9IyU41JuFDKaUTRj6W3P6Bx15I193fR/8Y
 6+sf9T16NimWYFccSbfAdq31RG8tS73OSIiV+YXSA5w/k69fUXoIXo06p
 OicIYTRhp6dvWi74UlJsNNGwUhKSYzBIZOI4DbIUq5rRPuOuIKG0XUPQV Q==;
X-CSE-ConnectionGUID: 2SwdxME3S+C/O9bA4D3owA==
X-CSE-MsgGUID: l+LT6keMTwmWnsok2HunBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="24980529"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="24980529"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 01:41:04 -0700
X-CSE-ConnectionGUID: 84zcm5vvQeqFzQZI4gNBPg==
X-CSE-MsgGUID: nnDG+yLdTkmsQq1CtxuSgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="61542124"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.162])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 01:41:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
In-Reply-To: <ZrOBMidgsZB28P6h@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240806085513.3051107-1-arun.r.murthy@intel.com>
 <ZrJSHdb7bu90VnJr@ideak-desk.fi.intel.com>
 <IA0PR11MB73075A16A0CF48FBCF8AF5C0BAB82@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZrOBMidgsZB28P6h@ideak-desk.fi.intel.com>
Date: Thu, 08 Aug 2024 11:40:58 +0300
Message-ID: <87cymj4db9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 07 Aug 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, Aug 07, 2024 at 12:15:33PM +0300, Murthy, Arun R wrote:
>> 
>> > -----Original Message-----
>> > From: Deak, Imre <imre.deak@intel.com>
>> > Sent: Tuesday, August 6, 2024 10:11 PM
>> > To: Murthy, Arun R <arun.r.murthy@intel.com>
>> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> > Subject: Re: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
>> >
>> > On Tue, Aug 06, 2024 at 02:25:13PM +0530, Arun R Murthy wrote:
>> > > HPD is interrupt based and on runtime suspend change it to polling as
>> > > HPD is not a wakeup event. A worker thread is scheduled for doing this
>> > > polling and it keeps polling for HPD live status on an internval of 10s.
>> > > On runtime resume disable polling and fallback to interrupt mechanism.
>> > >
>> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/xe/xe_pm.c | 6 ++++++
>> > >  1 file changed, 6 insertions(+)
>> > >
>> > > diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
>> > > index 9f3c14fd9f33..d952b06ebfb4 100644
>> > > --- a/drivers/gpu/drm/xe/xe_pm.c
>> > > +++ b/drivers/gpu/drm/xe/xe_pm.c
>> > > @@ -22,6 +22,7 @@
>> > >  #include "xe_pcode.h"
>> > >  #include "xe_trace.h"
>> > >  #include "xe_wa.h"
>> > > +#include "intel_hotplug.h"
>> > >
>> > >  /**
>> > >   * DOC: Xe Power Management
>> > > @@ -378,6 +379,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
>> > >             if (err)
>> > >                     goto out;
>> > >     }
>> > > +   /* Enable hpd polling on runtime suspend */
>> > > +   intel_hpd_poll_enable(xe);
>> > >
>> > >     xe_irq_suspend(xe);
>> > >
>> > > @@ -427,6 +430,9 @@ int xe_pm_runtime_resume(struct xe_device *xe)
>> > >
>> > >     xe_irq_resume(xe);
>> > >
>> > > +   /* Disable hpd polling on runtime resume */
>> > > +   intel_hpd_poll_disable(xe);
>> >
>> > This should be handled in xe_display_pm_resume() (likewise enabling polling in
>> > xe_display_pm_suspend()), in fact it's already called there.
>>
>> In xe_display_pm_suspend we have drm_kms_helper_poll_disable and it disables
>> output polling.
>
> What I meant is that intel_hpd_poll_disable() is already called in
> xe_display_pm_resume(), which you would call now twice during runtime
> resume if d3cold is allowed.
>
> drm_kms_helper_poll_disable() in xe_display_pm_suspend() should be
> called only during system suspend, which is another thing to fix there.
>
>> Moreover we don't have the functions defined for enable/disable_hpd
>> defined in connector_ops which is referenced by
>> drm_kms_helper_poll_enable/disable.
>> 
>> What we need is on runtime_suspend the poll work should be
>> enabled so that hotplug can be detected and can come out of runtime_suspend.
>> The same poll work is not required on system suspend.
>
> All the display related suspend/resume handling is done already in
> xe_display_pm_suspend()/resume() or in xe_display.c in general, both for
> runtime and system suspend/resume. The reason for that is to keep the
> display specific parts separate from the generic/higher-level device
> suspend/resume handling in xe_pm.c. New display specific things added
> should keep this separation.

I'll keep repeating here too: We should aim to move all of this under
i915/display, and not duplicate it in i915 and xe specific code.

BR,
Jani.



>
>> > Also this is missing the xe->info.enable_display check and polling shouldn't be
>> > enabled when system (vs. runtime) suspending.
>> Probably HAS_DISPLAY can be added before calling this intel_hpd_poll_enable.
>> 
>> Thanks and Regards,
>> Arun R Murthy
>> --------------------
>> >
>> > Not sure why the display is suspended/resumed only if d3cold is allowed, for
>> > many of the display s/r steps at least it doesn't make sense to me.
>> > For now moving the d3cold check within
>> > xe_display_pm_suspend()/resume() and enabling/disabling polling regardless of
>> > that flag would be the simplest imo.
>> >
>> > > +
>> > >     for_each_gt(gt, xe, id)
>> > >             xe_gt_resume(gt);
>> > >
>> > > --
>> > > 2.25.1
>> > >

-- 
Jani Nikula, Intel
