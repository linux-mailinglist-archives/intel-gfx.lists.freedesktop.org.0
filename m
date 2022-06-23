Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1B05584C9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 19:49:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E93C10E063;
	Thu, 23 Jun 2022 17:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB74910E063
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 17:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656006554; x=1687542554;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yEn0AlqILYPw/ipp3GhfZYQSdzGMUwWgxQ0n2SbBJoA=;
 b=WXKqzgWx+41dkiZEYW8b/7pcCQT/yOFyJhogCsS7r6hlXoqd1QeH50IM
 j8r+N9qKt0B97uYBTr8SP6pEUpjrwvvL8A6IhdHgLQshmPSth7Do8cqwO
 /1tRQcQYBBrHq3lEZDlzKiHN8DReIV2VgriYn4ToFpwHE8nt/UwznBRWQ
 D7WKghmfH6MOTz8kGcUSfEku5kuyQh14vzCMewh02MktVg7WDlTC1hhlW
 D5BbhWz7azT5gFo1xdJ81aQ2GENIkONNPNASHasKQ+HhrjfoM+bov3v89
 HyOgoE7q1r9rUNETZeoOwXTe+jLubiTwfPN4k5aQcEmWm9gAHVjn1UFh1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="281523326"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="281523326"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 10:49:14 -0700
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="644855349"
Received: from anefedov-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 10:49:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
In-Reply-To: <DM4PR11MB5248CEEF733FACCE6543C5AFE2B59@DM4PR11MB5248.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
 <20220621123516.370479-5-tilak.tangudu@intel.com>
 <0f1834aa89ed4f6b89db4ee7eacdbd55@intel.com>
 <DM4PR11MB52480BDD4014D227789713F4E2B39@DM4PR11MB5248.namprd11.prod.outlook.com>
 <87zgi4rh7c.fsf@intel.com> <YrN+QL4K0zRMA8Ey@intel.com>
 <DM4PR11MB5248CEEF733FACCE6543C5AFE2B59@DM4PR11MB5248.namprd11.prod.outlook.com>
Date: Thu, 23 Jun 2022 20:49:04 +0300
Message-ID: <87v8srmfsf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
 helper
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 23 Jun 2022, "Tangudu, Tilak" <tilak.tangudu@intel.com> wrote:
>> -----Original Message-----
>> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Sent: Thursday, June 23, 2022 2:11 AM
>> To: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Tangudu, Tilak <tilak.tangudu@intel.com>; Gupta, Anshuman
>> <anshuman.gupta@intel.com>; intel-gfx@lists.freedesktop.org; Ewins, Jon
>> <jon.ewins@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>;
>> Wilson, Chris P <chris.p.wilson@intel.com>; Dixit, Ashutosh
>> <ashutosh.dixit@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
>> Roper, Matthew D <matthew.d.roper@intel.com>; Gupta, saurabhg
>> <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
>> <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
>> <sujaritha.sundaresan@intel.com>; Deak, Imre <imre.deak@intel.com>
>> Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
>> helper
>> 
>> On Wed, Jun 22, 2022 at 03:55:03PM +0300, Jani Nikula wrote:
>> > On Tue, 21 Jun 2022, "Tangudu, Tilak" <tilak.tangudu@intel.com> wrote:
>> > >> -----Original Message-----
>> > >> From: Gupta, Anshuman <anshuman.gupta@intel.com>
>> > >> Sent: Tuesday, June 21, 2022 7:47 PM
>> > >> To: Tangudu, Tilak <tilak.tangudu@intel.com>;
>> > >> intel-gfx@lists.freedesktop.org; Ewins, Jon <jon.ewins@intel.com>;
>> > >> Vivi, Rodrigo <rodrigo.vivi@intel.com>; Belgaumkar, Vinay
>> > >> <vinay.belgaumkar@intel.com>; Wilson, Chris P
>> > >> <chris.p.wilson@intel.com>; Dixit, Ashutosh
>> > >> <ashutosh.dixit@intel.com>; Nilawar, Badal
>> > >> <badal.nilawar@intel.com>; Roper, Matthew D
>> > >> <matthew.d.roper@intel.com>; Gupta, saurabhg
>> > >> <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
>> > >> <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
>> > >> <sujaritha.sundaresan@intel.com>
>> > >> Subject: RE: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
>> > >> helper
>> > >>
>> > >>
>> > >>
>> > >> > -----Original Message-----
>> > >> > From: Tangudu, Tilak <tilak.tangudu@intel.com>
>> > >> > Sent: Tuesday, June 21, 2022 6:05 PM
>> > >> > To: intel-gfx@lists.freedesktop.org; Ewins, Jon
>> > >> > <jon.ewins@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
>> > >> > Belgaumkar, Vinay <vinay.belgaumkar@intel.com>; Wilson, Chris P
>> > >> > <chris.p.wilson@intel.com>; Dixit, Ashutosh
>> > >> > <ashutosh.dixit@intel.com>; Nilawar, Badal
>> > >> > <badal.nilawar@intel.com>; Gupta, Anshuman
>> > >> > <anshuman.gupta@intel.com>; Tangudu, Tilak
>> > >> > <tilak.tangudu@intel.com>; Roper, Matthew D
>> > >> > <matthew.d.roper@intel.com>; Gupta, saurabhg
>> > >> > <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
>> > >> > <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
>> > >> > <sujaritha.sundaresan@intel.com>
>> > >> > Subject: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
>> > >> > helper
>> > >> >
>> > >> > Added is_intel_rpm_allowed function to query the runtime_pm
>> > >> > status and disllow during suspending and resuming.
>> > >> This seems a hack,
>> > >> Not sure if we have better way to handle it.
>> > >> May be check this in intel_pm_runtime_{get,put} to keep entire code
>> simple ?
>> > > Yes, that would be simple without code refactoring.
>> > > Checked the same with Chris, he suggested unbalancing of wakeref
>> > > might popup If used at intel_pm_runtime_{get,put}  . So used like
>> > > this,  @Wilson, Chris P , Please comment .
>> > > @Vivi, Rodrigo , Any suggestion ?
>> >
>> > One option would be to track this in intel_wakeref_t, i.e. _get flags
>> > the case in the returned wakeref and _put skips in that case.
>
> @Jani Nikula 
>
> I did not understand the suggestion, Can you please elaborate ?
> Did you mean below or something more ? please help clarify.

The code below will lead to get/put inbalance if is_intel_rpm_allowed()
status changes between the get/put calls. I don't know how likely that
is, but if it happens it's nasty.

intel_wakeref_t is depot_stack_handle_t, which is actually just u32. We
already abuse -1 value to not track wakeref (when
CONFIG_DRM_I915_DEBUG_RUNTIME_PM=n or track_intel_runtime_pm_wakeref()
fails.

It's a bit of a hack, but we could have __intel_runtime_pm_get() early
return -2 as the wakeref when !is_intel_rpm_allowed(), and
intel_runtime_pm_put() (both versions for both kconfig option values!)
ignore the put when the passed in wakeref == -2.

This requires no changes in the calling code anywhere, even though the
implementation is a hack. A pedantically correct implementation would
turn intel_wakeref_t into a struct that wraps depot_stack_handle_t
inside, and has a separate field for validity, but that probably has a
non-trivial code size penalty.


BR,
Jani.


>
> 8< ------------------------------
> linux-desk:~/Code/drm-tip$ git diff
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 3759a8596084..ce272c569a89 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -369,12 +369,16 @@ static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
>                                                      runtime_pm);
>         int ret;
>
> +       if (!is_intel_rpm_allowed(rpm))
> +               goto out:
> +
>         ret = pm_runtime_get_sync(rpm->kdev);
>         drm_WARN_ONCE(&i915->drm, ret < 0,
>                       "pm_runtime_get_sync() failed: %d\n", ret);
>
>         intel_runtime_pm_acquire(rpm, wakelock);
>
> +out:
>         return track_intel_runtime_pm_wakeref(rpm);
>  }
>
> @@ -505,6 +509,9 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
>
>         untrack_intel_runtime_pm_wakeref(rpm, wref);
>
> +       if (!is_intel_rpm_allowed(rpm))
> +               return;
> +
>         intel_runtime_pm_release(rpm, wakelock);
>
>         pm_runtime_mark_last_busy(kdev);
> ----------------------------------------------------------  >8
>
> Thanks
> Tilak
>> 
>> yeap, this seems to be the quick path at this moment...
>> 
>> Imre, do you see any other quick option?
>> 
>> In general I don't like much the big wakeref infra we end up creating here
>> because all of the historical unbalanced cases we got.
>> We should be able to get something cleaner and use the rpm infra as other
>> drivers are using, or improve in the rpm side itself whatever we feel that we
>> are missing to deal with these cases.
>> 
>> But back to this specific case/usage here we might need to duplicate some
>> functions to be called just from the inside the resuming/suspending path...
>> and/or moving the gets & puts upper on the stack...
>> 
>> The quick hacks will solve our short term problems and continue bloating our
>> rpm infra.
>> 
>> >
>> > BR,
>> > Jani.
>> >
>> >
>> > >
>> > >> >
>> > >> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
>> > >> > ---
>> > >> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 15 +++++++++++++++
>> > >> > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
>> > >> >  2 files changed, 16 insertions(+)
>> > >> >
>> > >> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
>> > >> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
>> > >> > index 6ed5786bcd29..3759a8596084 100644
>> > >> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
>> > >> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
>> > >> > @@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct
>> > >> > intel_runtime_pm *rpm)  }
>> > >> >
>> > >> >  #endif
>> > >> > +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm)
>> > >> > +{ return rpm->kdev->power.runtime_status; }
>> > >> This is racy in principal, we need a kdev->power lock here.
>> > >> Regards,
>> > >> Anshuman Gupta.
>> > >> > +
>> > >> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm) { int
>> > >> > +rpm_status;
>> > >> > +
>> > >> > +rpm_status = intel_runtime_pm_status(rpm); if (rpm_status ==
>> > >> > +RPM_RESUMING || rpm_status ==
>> > >> > RPM_SUSPENDING)
>> > >> > +return false;
>> > >> > +else
>> > >> > +return true;
>> > >> > +}
>> > >> >
>> > >> >  static void
>> > >> >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool
>> > >> > wakelock) diff -- git a/drivers/gpu/drm/i915/intel_runtime_pm.h
>> > >> > b/drivers/gpu/drm/i915/intel_runtime_pm.h
>> > >> > index d9160e3ff4af..99418c3a934a 100644
>> > >> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
>> > >> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
>> > >> > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
>> > >> > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
>> > >> > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
>> > >> > intel_runtime_pm *rpm);  void
>> > >> > intel_runtime_pm_driver_release(struct
>> > >> > intel_runtime_pm *rpm);
>> > >> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
>> > >> >
>> > >> >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm
>> > >> > *rpm); intel_wakeref_t intel_runtime_pm_get_if_in_use(struct
>> > >> > intel_runtime_pm *rpm);
>> > >> > --
>> > >> > 2.25.1
>> > >>
>> > >
>> >
>> > --
>> > Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
