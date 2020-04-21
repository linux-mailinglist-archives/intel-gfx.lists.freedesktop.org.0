Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4811C1B218D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 10:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B8EE89F35;
	Tue, 21 Apr 2020 08:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C3E89F35
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 08:28:29 +0000 (UTC)
IronPort-SDR: tDOlM7Xepaw1+zwr/25oK4Aw4C37ZRdbpvhZvwm83EZtkx2DQVAiRULHAhjiKc3dSAPPBhG6m5
 kL9pOvZmZ8gg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 01:28:29 -0700
IronPort-SDR: uu8KCpIktaF30Gz737/HBuwjmGXmKha6vsIsgW2sURQJAcSulKNNhQacl9nVFoFpEp4smsOgcw
 KIQhIp9C2gPQ==
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="429451623"
Received: from parkernx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.46.80])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 01:28:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 intel-gfx@lists.freedesktop.org, imre.deak@intel.com
In-Reply-To: <20200406112800.23762-19-pankaj.laxminarayan.bharadiya@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200406112800.23762-19-pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 21 Apr 2020 11:28:24 +0300
Message-ID: <87imhtz1hz.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Imre, please check the one question inline.

On Mon, 06 Apr 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> struct drm_device specific drm_WARN* macros include device information
> in the backtrace, so we know what device the warnings originate from.
>
> Prefer drm_WARN* over WARN*.
>
> Conversion is done with below semantic patch:
>
> @@
> identifier func, T;
> @@
> func(struct intel_runtime_pm *T,...) {
> + struct drm_i915_private *i915 = container_of(T, struct drm_i915_private, runtime_pm);
> <+...
> (
> -WARN(
> +drm_WARN(&i915->drm,
> ...)
> |
> -WARN_ON(
> +drm_WARN_ON(&i915->drm,
> ...)
> |
> -WARN_ONCE(
> +drm_WARN_ONCE(&i915->drm,
> ...)
> |
> -WARN_ON_ONCE(
> +drm_WARN_ON_ONCE(&i915->drm,
> ...)
> )
> ...+>
>
> }
>
> Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 39 ++++++++++++++++++-------
>  1 file changed, 28 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index ad719c9602af..31ccd0559c55 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -116,6 +116,9 @@ track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
>  static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
>  					     depot_stack_handle_t stack)
>  {
> +	struct drm_i915_private *i915 = container_of(rpm,
> +						     struct drm_i915_private,
> +						     runtime_pm);

Is this a dependency we want to add? Should struct intel_runtime_pm be
allowed to be elsewhere than struct i915?

BR,
Jani.

>  	unsigned long flags, n;
>  	bool found = false;
>  
> @@ -134,9 +137,9 @@ static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
>  	}
>  	spin_unlock_irqrestore(&rpm->debug.lock, flags);
>  
> -	if (WARN(!found,
> -		 "Unmatched wakeref (tracking %lu), count %u\n",
> -		 rpm->debug.count, atomic_read(&rpm->wakeref_count))) {
> +	if (drm_WARN(&i915->drm, !found,
> +		     "Unmatched wakeref (tracking %lu), count %u\n",
> +		     rpm->debug.count, atomic_read(&rpm->wakeref_count))) {
>  		char *buf;
>  
>  		buf = kmalloc(PAGE_SIZE, GFP_NOWAIT | __GFP_NOWARN);
> @@ -355,10 +358,14 @@ intel_runtime_pm_release(struct intel_runtime_pm *rpm, int wakelock)
>  static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
>  					      bool wakelock)
>  {
> +	struct drm_i915_private *i915 = container_of(rpm,
> +						     struct drm_i915_private,
> +						     runtime_pm);
>  	int ret;
>  
>  	ret = pm_runtime_get_sync(rpm->kdev);
> -	WARN_ONCE(ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
> +	drm_WARN_ONCE(&i915->drm, ret < 0,
> +		      "pm_runtime_get_sync() failed: %d\n", ret);
>  
>  	intel_runtime_pm_acquire(rpm, wakelock);
>  
> @@ -539,6 +546,9 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
>   */
>  void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>  {
> +	struct drm_i915_private *i915 = container_of(rpm,
> +						     struct drm_i915_private,
> +						     runtime_pm);
>  	struct device *kdev = rpm->kdev;
>  
>  	/*
> @@ -565,7 +575,8 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>  
>  		pm_runtime_dont_use_autosuspend(kdev);
>  		ret = pm_runtime_get_sync(kdev);
> -		WARN(ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
> +		drm_WARN(&i915->drm, ret < 0,
> +			 "pm_runtime_get_sync() failed: %d\n", ret);
>  	} else {
>  		pm_runtime_use_autosuspend(kdev);
>  	}
> @@ -580,11 +591,14 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>  
>  void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
>  {
> +	struct drm_i915_private *i915 = container_of(rpm,
> +						     struct drm_i915_private,
> +						     runtime_pm);
>  	struct device *kdev = rpm->kdev;
>  
>  	/* Transfer rpm ownership back to core */
> -	WARN(pm_runtime_get_sync(kdev) < 0,
> -	     "Failed to pass rpm ownership back to core\n");
> +	drm_WARN(&i915->drm, pm_runtime_get_sync(kdev) < 0,
> +		 "Failed to pass rpm ownership back to core\n");
>  
>  	pm_runtime_dont_use_autosuspend(kdev);
>  
> @@ -594,12 +608,15 @@ void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
>  
>  void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
>  {
> +	struct drm_i915_private *i915 = container_of(rpm,
> +						     struct drm_i915_private,
> +						     runtime_pm);
>  	int count = atomic_read(&rpm->wakeref_count);
>  
> -	WARN(count,
> -	     "i915 raw-wakerefs=%d wakelocks=%d on cleanup\n",
> -	     intel_rpm_raw_wakeref_count(count),
> -	     intel_rpm_wakelock_count(count));
> +	drm_WARN(&i915->drm, count,
> +		 "i915 raw-wakerefs=%d wakelocks=%d on cleanup\n",
> +		 intel_rpm_raw_wakeref_count(count),
> +		 intel_rpm_wakelock_count(count));
>  
>  	untrack_all_intel_runtime_pm_wakerefs(rpm);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
