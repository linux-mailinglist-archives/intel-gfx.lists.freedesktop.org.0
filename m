Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FEC554A5A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 14:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397AC10E230;
	Wed, 22 Jun 2022 12:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD5C210E230
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 12:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655902509; x=1687438509;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=M9MfF473vtLu1I+PwCAbqaPIALHYUWUVIvEcM5r7ceU=;
 b=bJQRVBACOHU73xZkfT1eSg86ob5eWsbQ6H0H3f5E7QxURrVDqeSyruyv
 Yu9TLs1TwMLH7TJrml87oDTHwfl/7ZYRcESpxLwkKrjigHZ2RdP5EpXfo
 sgLy9gmrK/GoWMlOHSrGvWLb/sZaAKyr5JMoSE0RVrHtch7wZAcE98php
 XEvBwdctxvMarAO79zLEyVmWKzAv+ekwKOZ0Nmk6dMfFQ8SWb5gib+QH3
 FKZOgbFXwNIEJp4ZUDM/IR3N9CKfhOR795W48l99i5KOOdLXepo4OiQna
 KBCktQ40+LS2s2TUvXamStki6x3ajNxlQw/rO5Qp07e5kAqctNjwdLmjh Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="280453793"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="280453793"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 05:55:09 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="592172973"
Received: from snowacki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.111])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 05:55:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Ewins,
 Jon" <jon.ewins@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "Nilawar, Badal" <badal.nilawar@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>, "Sundaresan,
 Sujaritha" <sujaritha.sundaresan@intel.com>
In-Reply-To: <DM4PR11MB52480BDD4014D227789713F4E2B39@DM4PR11MB5248.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
 <20220621123516.370479-5-tilak.tangudu@intel.com>
 <0f1834aa89ed4f6b89db4ee7eacdbd55@intel.com>
 <DM4PR11MB52480BDD4014D227789713F4E2B39@DM4PR11MB5248.namprd11.prod.outlook.com>
Date: Wed, 22 Jun 2022 15:55:03 +0300
Message-ID: <87zgi4rh7c.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 21 Jun 2022, "Tangudu, Tilak" <tilak.tangudu@intel.com> wrote:
>> -----Original Message-----
>> From: Gupta, Anshuman <anshuman.gupta@intel.com>
>> Sent: Tuesday, June 21, 2022 7:47 PM
>> To: Tangudu, Tilak <tilak.tangudu@intel.com>; intel-gfx@lists.freedesktop.org;
>> Ewins, Jon <jon.ewins@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
>> Belgaumkar, Vinay <vinay.belgaumkar@intel.com>; Wilson, Chris P
>> <chris.p.wilson@intel.com>; Dixit, Ashutosh <ashutosh.dixit@intel.com>;
>> Nilawar, Badal <badal.nilawar@intel.com>; Roper, Matthew D
>> <matthew.d.roper@intel.com>; Gupta, saurabhg
>> <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
>> <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
>> <sujaritha.sundaresan@intel.com>
>> Subject: RE: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
>> 
>> 
>> 
>> > -----Original Message-----
>> > From: Tangudu, Tilak <tilak.tangudu@intel.com>
>> > Sent: Tuesday, June 21, 2022 6:05 PM
>> > To: intel-gfx@lists.freedesktop.org; Ewins, Jon <jon.ewins@intel.com>;
>> > Vivi, Rodrigo <rodrigo.vivi@intel.com>; Belgaumkar, Vinay
>> > <vinay.belgaumkar@intel.com>; Wilson, Chris P
>> > <chris.p.wilson@intel.com>; Dixit, Ashutosh
>> > <ashutosh.dixit@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
>> > Gupta, Anshuman <anshuman.gupta@intel.com>; Tangudu, Tilak
>> > <tilak.tangudu@intel.com>; Roper, Matthew D
>> > <matthew.d.roper@intel.com>; Gupta, saurabhg
>> > <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
>> > <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
>> > <sujaritha.sundaresan@intel.com>
>> > Subject: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
>> >
>> > Added is_intel_rpm_allowed function to query the runtime_pm status and
>> > disllow during suspending and resuming.
>> This seems a hack,
>> Not sure if we have better way to handle it.
>> May be check this in intel_pm_runtime_{get,put} to keep entire code simple ?
> Yes, that would be simple without code refactoring.
> Checked the same with Chris, he suggested unbalancing of wakeref might popup
> If used at intel_pm_runtime_{get,put}  . So used like this,
>  @Wilson, Chris P , Please comment .
> @Vivi, Rodrigo , Any suggestion ?

One option would be to track this in intel_wakeref_t, i.e. _get flags
the case in the returned wakeref and _put skips in that case.

BR,
Jani.


>  
>> >
>> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 15 +++++++++++++++
>> > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
>> >  2 files changed, 16 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
>> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
>> > index 6ed5786bcd29..3759a8596084 100644
>> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
>> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
>> > @@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct
>> > intel_runtime_pm *rpm)  }
>> >
>> >  #endif
>> > +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm) {
>> > +return rpm->kdev->power.runtime_status; }
>> This is racy in principal, we need a kdev->power lock here.
>> Regards,
>> Anshuman Gupta.
>> > +
>> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm) { int
>> > +rpm_status;
>> > +
>> > +rpm_status = intel_runtime_pm_status(rpm); if (rpm_status ==
>> > +RPM_RESUMING || rpm_status ==
>> > RPM_SUSPENDING)
>> > +return false;
>> > +else
>> > +return true;
>> > +}
>> >
>> >  static void
>> >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock)
>> > diff -- git a/drivers/gpu/drm/i915/intel_runtime_pm.h
>> > b/drivers/gpu/drm/i915/intel_runtime_pm.h
>> > index d9160e3ff4af..99418c3a934a 100644
>> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
>> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
>> > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
>> > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
>> > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
>> > intel_runtime_pm *rpm);  void intel_runtime_pm_driver_release(struct
>> > intel_runtime_pm *rpm);
>> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
>> >
>> >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
>> > intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm
>> > *rpm);
>> > --
>> > 2.25.1
>> 
>

-- 
Jani Nikula, Intel Open Source Graphics Center
