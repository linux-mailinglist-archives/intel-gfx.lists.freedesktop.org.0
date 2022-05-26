Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E677B5353C9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 21:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B47310E0FD;
	Thu, 26 May 2022 19:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E21A210E0FD
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 19:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653592148; x=1685128148;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=PS77Fk23XMCri4b5BtFTZTet5pl8u0SEC1QGhgwyPcM=;
 b=W2/iKQkwp3xfX+fyToZe8wsfQDtcorEinoUgmWPm+lV9hw8ScOvUDl3D
 YeRUT27WxRXy2V3iwnQoYkFTcUEVDsIbMnY9ScdIqTMpLXwKgql8iRYH0
 T8yGA0h+LBz5ykz5cY4IwEyp+IwVY3GFXEajDap53aPVgqyhOeeGSh9je
 j9bH/mzFXUPe3KPf3Sar8xwOoWBMr92vbk9cPJ3HLnhZqefkQq2CBZ67F
 WUZZ5AxqoFiXqoKj1jMWL0LafRVlnB9ZpyEVoXiW0qq13kcaV2DVvRXox
 +z1ZZxXU6Tx/RSZGxU+FYO0lwJ3M0zeHYB1PSE/WbSpmgzVXs4QoijxJA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="299598197"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="299598197"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 12:09:08 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="821412079"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.229.76])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 12:09:08 -0700
Date: Thu, 26 May 2022 12:09:07 -0700
Message-ID: <87pmk06rho.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <bdd33a4c-f0a9-1855-8c6b-c4895bbc363d@linux.intel.com>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>	<e4c5f650a41fa7955c3ddabbb32846b3fafb3134.1651261886.git.ashutosh.dixit@intel.com>	<bdd33a4c-f0a9-1855-8c6b-c4895bbc363d@linux.intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Expose per-gt RPS defaults
 in sysfs
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
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 May 2022 00:53:23 -0700, Tvrtko Ursulin wrote:
>
> On 29/04/2022 20:56, Ashutosh Dixit wrote:
> > Create a gt/gtN/.defaults directory (similar to
> > engine/<engine-name>/.defaults) to expose default parameter values for each
> > gt in sysfs. Populate the .defaults directory with RPS parameter default
> > values in order to allow userspace to revert to default values when needed.
> >
> > This patch adds the following sysfs files to gt/gtN/.defaults:
> > * default_min_freq_mhz
> > * default_max_freq_mhz
> > * default_boost_freq_mhz
>
> Possibly an uninformed question - max will not be the existing rp0, min
> rpN, and boost I don't know?

This is actually the case at present (with boost also RP0). However, PVC
also sets min to RP0 (instead of RPn).

And then there is a completely different scheme being considered for GuC
where min = max = boost = "-1" where -1 denotes a "default managed by
firmware". For it is not clear why i915 should set these min/max in FW
(which is autonomous and can better manage the freq control algorithm)
especially when these controls are exposed to userspace in sysfs.

This patch was written because user space was asking a control to restore
all RPS parameters to their default values. Then Chris suggested doing the
same for gt sysfs as what we do for the engine sysfs, expose default values
in sysfs and have userspace restore them when needed.

> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_gt_sysfs.c    | 10 ++--
> >   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h    |  6 +++
> >   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 51 +++++++++++++++++++++
> >   drivers/gpu/drm/i915/gt/intel_gt_types.h    | 10 ++++
> >   drivers/gpu/drm/i915/gt/intel_rps.c         |  3 ++
> >   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 +++++--
> >   6 files changed, 87 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> > index 9e4ebf53379b..d651ccd0ab20 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> > @@ -22,11 +22,6 @@ bool is_object_gt(struct kobject *kobj)
> >	return !strncmp(kobj->name, "gt", 2);
> >   }
> >   -static struct intel_gt *kobj_to_gt(struct kobject *kobj)
> > -{
> > -	return container_of(kobj, struct intel_gt, sysfs_gt);
> > -}
> > -
> >   struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
> >					    const char *name)
> >   {
> > @@ -101,6 +96,10 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
> >				 gt->i915->sysfs_gt, "gt%d", gt->info.id))
> >		goto exit_fail;
> >   +	gt->sysfs_defaults = kobject_create_and_add(".defaults",
> > &gt->sysfs_gt);
> > +	if (!gt->sysfs_defaults)
> > +		goto exit_fail;
> > +
> >	intel_gt_sysfs_pm_init(gt, &gt->sysfs_gt);
> >		return;
> > @@ -113,5 +112,6 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
> >     void intel_gt_sysfs_unregister(struct intel_gt *gt)
> >   {
> > +	kobject_put(gt->sysfs_defaults);
>
> Is this needed - won't below clean it up?

Child kobject's take a reference on their parents so child kobjects need a
kobject_put before the parent kobject_put to free the memory allocated for
the parent (i.e. doing a kobject_put on the parent will not automatically
free all the child kobjects).

> >	kobject_put(&gt->sysfs_gt);
> >   }
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> > index a99aa7e8b01a..6232923a420d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> > @@ -10,6 +10,7 @@
> >   #include <linux/kobject.h>
> >     #include "i915_gem.h" /* GEM_BUG_ON() */
> > +#include "intel_gt_types.h"
> >     struct intel_gt;
> >   @@ -22,6 +23,11 @@ intel_gt_create_kobj(struct intel_gt *gt,
> >		     struct kobject *dir,
> >		     const char *name);
> >   +static inline struct intel_gt *kobj_to_gt(struct kobject *kobj)
> > +{
> > +	return container_of(kobj, struct intel_gt, sysfs_gt);
> > +}
> > +
> >   void intel_gt_sysfs_register(struct intel_gt *gt);
> >   void intel_gt_sysfs_unregister(struct intel_gt *gt);
> >   struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > index ab91e9cf9deb..5a191973322e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > @@ -726,6 +726,51 @@ static const struct attribute *media_perf_power_attrs[] = {
> >	NULL
> >   };
> >   +static ssize_t
> > +default_min_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> > +{
> > +	struct intel_gt *gt = kobj_to_gt(kobj->parent);
> > +
> > +	return sysfs_emit(buf, "%d\n", gt->rps_defaults.min_freq);
> > +}
> > +
> > +static struct kobj_attribute default_min_freq_mhz =
> > +__ATTR(rps_min_freq_mhz, 0444, default_min_freq_mhz_show, NULL);
> > +
> > +static ssize_t
> > +default_max_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> > +{
> > +	struct intel_gt *gt = kobj_to_gt(kobj->parent);
> > +
> > +	return sysfs_emit(buf, "%d\n", gt->rps_defaults.max_freq);
> > +}
> > +
> > +static struct kobj_attribute default_max_freq_mhz =
> > +__ATTR(rps_max_freq_mhz, 0444, default_max_freq_mhz_show, NULL);
> > +
> > +static ssize_t
> > +default_boost_freq_mhz_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> > +{
> > +	struct intel_gt *gt = kobj_to_gt(kobj->parent);
> > +
> > +	return sysfs_emit(buf, "%d\n", gt->rps_defaults.boost_freq);
> > +}
> > +
> > +static struct kobj_attribute default_boost_freq_mhz =
> > +__ATTR(rps_boost_freq_mhz, 0444, default_boost_freq_mhz_show, NULL);
> > +
> > +static const struct attribute * const rps_defaults_attrs[] = {
> > +	&default_min_freq_mhz.attr,
> > +	&default_max_freq_mhz.attr,
> > +	&default_boost_freq_mhz.attr,
> > +	NULL
> > +};
> > +
> > +static int add_rps_defaults(struct intel_gt *gt)
> > +{
> > +	return sysfs_create_files(gt->sysfs_defaults, rps_defaults_attrs);
> > +}
> > +
> >   static int intel_sysfs_rps_init(struct intel_gt *gt, struct kobject *kobj,
> >				const struct attribute * const *attrs)
> >   {
> > @@ -775,4 +820,10 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
> >				 "failed to create add gt%u media_perf_power_attrs sysfs (%pe)\n",
> >				 gt->info.id, ERR_PTR(ret));
> >	}
> > +
> > +	ret = add_rps_defaults(gt);
> > +	if (ret)
> > +		drm_warn(&gt->i915->drm,
> > +			 "failed to add gt%u rps defaults (%pe)\n",
> > +			 gt->info.id, ERR_PTR(ret));
> >   }
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > index edd7a3cf5f5f..8b696669b846 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > @@ -62,6 +62,12 @@ enum intel_steering_type {
> >	NUM_STEERING_TYPES
> >   };
> >   +struct intel_rps_defaults {
> > +	u32 min_freq;
> > +	u32 max_freq;
> > +	u32 boost_freq;
> > +};
> > +
> >   enum intel_submission_method {
> >	INTEL_SUBMISSION_RING,
> >	INTEL_SUBMISSION_ELSP,
> > @@ -227,6 +233,10 @@ struct intel_gt {
> >		/* gt/gtN sysfs */
> >	struct kobject sysfs_gt;
> > +
> > +	/* sysfs defaults per gt */
> > +	struct intel_rps_defaults rps_defaults;
> > +	struct kobject *sysfs_defaults;

> And not sure I am liking the mix of embedded and allocated kobjects.. Why
> we couldn't have it uniform?

We could use an embedded sysfs_defaults kobject but it is more code, the
simplest code pattern is to use an allocated kobject (the kernel takes care
of everything in this case).

There were two reasons for the embedded sysfs_gt kobject: (a) it had
default attributes (default_groups) and (b) embedded allows using
container_of() to get to the gt (see kobj_to_gt()).

Still talking to Andi about whether we need default attributes for
sysfs_defaults too and if that happens we'll need to convert this to an
embedded kobject too. But otherwise I prefer to leave this as is (and imo
promoting multiple valid code patterns should be fine).

> >   };
> >     enum intel_gt_scratch_field {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> > index 6b68b40ebff0..6f2461e12409 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> > @@ -1976,7 +1976,9 @@ void intel_rps_init(struct intel_rps *rps)
> >		/* Derive initial user preferences/limits from the hardware limits
> > */
> >	rps->max_freq_softlimit = rps->max_freq;
> > +	rps_to_gt(rps)->rps_defaults.max_freq = rps->max_freq_softlimit;
> >	rps->min_freq_softlimit = rps->min_freq;
> > +	rps_to_gt(rps)->rps_defaults.min_freq = rps->min_freq_softlimit;
> >		/* After setting max-softlimit, find the overclock max freq */
> >	if (GRAPHICS_VER(i915) == 6 || IS_IVYBRIDGE(i915) || IS_HASWELL(i915)) {
> > @@ -1994,6 +1996,7 @@ void intel_rps_init(struct intel_rps *rps)
> >		/* Finally allow us to boost to max by default */
> >	rps->boost_freq = rps->max_freq;
> > +	rps_to_gt(rps)->rps_defaults.boost_freq = rps->boost_freq;
> >	rps->idle_freq = rps->min_freq;
> >		/* Start in the middle, from here we will autotune based on
> > workload */
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> > index 2df31af70d63..cefd864c84eb 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> > @@ -547,20 +547,24 @@ static int slpc_set_softlimits(struct intel_guc_slpc *slpc)
> >	 * unless they have deviated from defaults, in which case,
> >	 * we retain the values and set min/max accordingly.
> >	 */
> > -	if (!slpc->max_freq_softlimit)
> > +	if (!slpc->max_freq_softlimit) {
> >		slpc->max_freq_softlimit = slpc->rp0_freq;
> > -	else if (slpc->max_freq_softlimit != slpc->rp0_freq)
> > +		slpc_to_gt(slpc)->rps_defaults.max_freq = slpc->max_freq_softlimit;
> > +	} else if (slpc->max_freq_softlimit != slpc->rp0_freq) {
> >		ret = intel_guc_slpc_set_max_freq(slpc,
> >						  slpc->max_freq_softlimit);
> > +	}
> >		if (unlikely(ret))
> >		return ret;
> >   -	if (!slpc->min_freq_softlimit)
> > +	if (!slpc->min_freq_softlimit) {
> >		slpc->min_freq_softlimit = slpc->min_freq;
> > -	else if (slpc->min_freq_softlimit != slpc->min_freq)
> > +		slpc_to_gt(slpc)->rps_defaults.min_freq = slpc->min_freq_softlimit;
> > +	} else if (slpc->min_freq_softlimit != slpc->min_freq) {
> >		return intel_guc_slpc_set_min_freq(slpc,
> >						   slpc->min_freq_softlimit);
> > +	}
> >		return 0;
> >   }
> > @@ -606,8 +610,11 @@ static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
> >	slpc->rp1_freq = intel_gpu_freq(rps, caps.rp1_freq);
> >	slpc->min_freq = intel_gpu_freq(rps, caps.min_freq);
> >   -	if (!slpc->boost_freq)
> > +	/* Boost freq is RP0, unless already set */
> > +	if (!slpc->boost_freq) {
> >		slpc->boost_freq = slpc->rp0_freq;
> > +		slpc_to_gt(slpc)->rps_defaults.boost_freq = slpc->boost_freq;
> > +	}
>
> Not liking that there are two places which set each of the default. Is it
> that there are GuC and non-GuC paths which initialize the parent struct? Is
> there a way to set the defaults at one common place after either branch has
> run?

Basically the RPS (non-GuC) and SLPC (Guc) are independent algorithms with
independent data structs. So I think we would need to set the default
inside those RPS and SLPC "modules" (or files).

My approach was to "capture" the defaults in places in the code where they
are set (since the values sometimes change later even during the course of
initialization). The issue with doing it this way is that we don't
necessarily clearly see what those defaults are, they are just set at the
right place in the code. So that is something we can debate about.

So an alternative would be to e.g. set defaults in rps_set_defaults() and
slpc_set_defaults() functions (which would use explicit knowledge of what
those defaults are). So I would be open to this if you think that's a
better way to go. I think these functions can just be called during the
course of RPS or SLPC initialization so I don't really see the need for
doing it from a common place.

Thanks,
Ashutosh

PS: I have now sent out a new series for these patches, latest rev here:
https://patchwork.freedesktop.org/series/104423/
