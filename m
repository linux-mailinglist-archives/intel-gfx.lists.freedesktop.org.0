Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0981B2332
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 11:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D19B26E8F4;
	Tue, 21 Apr 2020 09:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DA16E8F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 09:49:04 +0000 (UTC)
IronPort-SDR: mOmwecl9NYTh31YbY3+idi56uDPiEslSAFFVRq/r1tgDZWKijzJmLVfAjKgCJdYReVYpM35kwK
 EoQNq64nZyLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 02:49:04 -0700
IronPort-SDR: VUiOMeJS9MhKrbqN2ONsWWtyoejVxhJVjjdHVLjkhJXNFimgYsZ9uDRDcwKFGWEDlaj6oGtVcX
 4Ikx+zfp4rxw==
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="279578776"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 02:49:02 -0700
Date: Tue, 21 Apr 2020 12:48:09 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200421094809.GB29723@ideak-desk.fi.intel.com>
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200406112800.23762-19-pankaj.laxminarayan.bharadiya@intel.com>
 <87imhtz1hz.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87imhtz1hz.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 18/18] drm/i915/runtime_pm: Prefer drm_WARN*
 over WARN*
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 21, 2020 at 11:28:24AM +0300, Jani Nikula wrote:
> 
> Imre, please check the one question inline.
> 
> On Mon, 06 Apr 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> > struct drm_device specific drm_WARN* macros include device information
> > in the backtrace, so we know what device the warnings originate from.
> >
> > Prefer drm_WARN* over WARN*.
> >
> > Conversion is done with below semantic patch:
> >
> > @@
> > identifier func, T;
> > @@
> > func(struct intel_runtime_pm *T,...) {
> > + struct drm_i915_private *i915 = container_of(T, struct drm_i915_private, runtime_pm);
> > <+...
> > (
> > -WARN(
> > +drm_WARN(&i915->drm,
> > ...)
> > |
> > -WARN_ON(
> > +drm_WARN_ON(&i915->drm,
> > ...)
> > |
> > -WARN_ONCE(
> > +drm_WARN_ONCE(&i915->drm,
> > ...)
> > |
> > -WARN_ON_ONCE(
> > +drm_WARN_ON_ONCE(&i915->drm,
> > ...)
> > )
> > ...+>
> >
> > }
> >
> > Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 39 ++++++++++++++++++-------
> >  1 file changed, 28 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index ad719c9602af..31ccd0559c55 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -116,6 +116,9 @@ track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
> >  static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
> >  					     depot_stack_handle_t stack)
> >  {
> > +	struct drm_i915_private *i915 = container_of(rpm,
> > +						     struct drm_i915_private,
> > +						     runtime_pm);
> 
> Is this a dependency we want to add? Should struct intel_runtime_pm be
> allowed to be elsewhere than struct i915?

For convenience a pointer to intel_runtime_pm is stored in intel_uncore
and intel_wakeref, but there is only one instance of it. So looks ok to
me to use container_of() on the pointer.

> 
> BR,
> Jani.
> 
> >  	unsigned long flags, n;
> >  	bool found = false;
> >  
> > @@ -134,9 +137,9 @@ static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
> >  	}
> >  	spin_unlock_irqrestore(&rpm->debug.lock, flags);
> >  
> > -	if (WARN(!found,
> > -		 "Unmatched wakeref (tracking %lu), count %u\n",
> > -		 rpm->debug.count, atomic_read(&rpm->wakeref_count))) {
> > +	if (drm_WARN(&i915->drm, !found,
> > +		     "Unmatched wakeref (tracking %lu), count %u\n",
> > +		     rpm->debug.count, atomic_read(&rpm->wakeref_count))) {
> >  		char *buf;
> >  
> >  		buf = kmalloc(PAGE_SIZE, GFP_NOWAIT | __GFP_NOWARN);
> > @@ -355,10 +358,14 @@ intel_runtime_pm_release(struct intel_runtime_pm *rpm, int wakelock)
> >  static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
> >  					      bool wakelock)
> >  {
> > +	struct drm_i915_private *i915 = container_of(rpm,
> > +						     struct drm_i915_private,
> > +						     runtime_pm);
> >  	int ret;
> >  
> >  	ret = pm_runtime_get_sync(rpm->kdev);
> > -	WARN_ONCE(ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
> > +	drm_WARN_ONCE(&i915->drm, ret < 0,
> > +		      "pm_runtime_get_sync() failed: %d\n", ret);
> >  
> >  	intel_runtime_pm_acquire(rpm, wakelock);
> >  
> > @@ -539,6 +546,9 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
> >   */
> >  void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
> >  {
> > +	struct drm_i915_private *i915 = container_of(rpm,
> > +						     struct drm_i915_private,
> > +						     runtime_pm);
> >  	struct device *kdev = rpm->kdev;
> >  
> >  	/*
> > @@ -565,7 +575,8 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
> >  
> >  		pm_runtime_dont_use_autosuspend(kdev);
> >  		ret = pm_runtime_get_sync(kdev);
> > -		WARN(ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
> > +		drm_WARN(&i915->drm, ret < 0,
> > +			 "pm_runtime_get_sync() failed: %d\n", ret);
> >  	} else {
> >  		pm_runtime_use_autosuspend(kdev);
> >  	}
> > @@ -580,11 +591,14 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
> >  
> >  void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
> >  {
> > +	struct drm_i915_private *i915 = container_of(rpm,
> > +						     struct drm_i915_private,
> > +						     runtime_pm);
> >  	struct device *kdev = rpm->kdev;
> >  
> >  	/* Transfer rpm ownership back to core */
> > -	WARN(pm_runtime_get_sync(kdev) < 0,
> > -	     "Failed to pass rpm ownership back to core\n");
> > +	drm_WARN(&i915->drm, pm_runtime_get_sync(kdev) < 0,
> > +		 "Failed to pass rpm ownership back to core\n");
> >  
> >  	pm_runtime_dont_use_autosuspend(kdev);
> >  
> > @@ -594,12 +608,15 @@ void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
> >  
> >  void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
> >  {
> > +	struct drm_i915_private *i915 = container_of(rpm,
> > +						     struct drm_i915_private,
> > +						     runtime_pm);
> >  	int count = atomic_read(&rpm->wakeref_count);
> >  
> > -	WARN(count,
> > -	     "i915 raw-wakerefs=%d wakelocks=%d on cleanup\n",
> > -	     intel_rpm_raw_wakeref_count(count),
> > -	     intel_rpm_wakelock_count(count));
> > +	drm_WARN(&i915->drm, count,
> > +		 "i915 raw-wakerefs=%d wakelocks=%d on cleanup\n",
> > +		 intel_rpm_raw_wakeref_count(count),
> > +		 intel_rpm_wakelock_count(count));
> >  
> >  	untrack_all_intel_runtime_pm_wakerefs(rpm);
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
