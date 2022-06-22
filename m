Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C53C554A56
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 14:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0609D1133CA;
	Wed, 22 Jun 2022 12:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFDD1133CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 12:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655902385; x=1687438385;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=z+pRrKADkf5Pzwb5K4w7f/f+/j2mm77gQDnBeSFq0s8=;
 b=Skm5di51jOr6Iaborv3kSWoUMSKaKxxSnH/1cSfopUPFAW/bss42qgCw
 abs0MTaxvdiuEqtqFZZfQ39LeYVOtN3Asapi/fnTxBG6lLWxmRghZEWH9
 e/2DDpbb5SgT6H7qM1Xgmv8vP6e4j9KaIvImZ/TUQxSKLAclmWkvPBfgV
 4CTpOumfK230ywxmAavBmySxQghxROUhWI8xKphQLpUVYLSYasJN5lk2M
 3LfDdeujJNZByWJeN/EeGIwd95jqtZn93qv1McvH2TljSJb8wqksziQbG
 lgO03m1zmfI+MskWmlhqF5r2fjeSotKIf0ZPABNEJx9UBLXUjDeSM1+G2 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="269127126"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="269127126"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 05:53:05 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="644181638"
Received: from snowacki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.111])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 05:53:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tilak Tangudu <tilak.tangudu@intel.com>,
 intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
In-Reply-To: <20220621123516.370479-6-tilak.tangudu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
 <20220621123516.370479-6-tilak.tangudu@intel.com>
Date: Wed, 22 Jun 2022 15:52:59 +0300
Message-ID: <8735fwsvv8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: Guard rpm helpers in gt
 helpers functions
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

On Tue, 21 Jun 2022, Tilak Tangudu <tilak.tangudu@intel.com> wrote:
> Guard rpm helpers in gt_sanitize and intel_gt_set_wedged
> with is_intel_rpm_allowed
>
> Acquire rpm wakeref for higherlevel function i915_gem_resume
>
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c | 12 ++++++------
>  drivers/gpu/drm/i915/gt/intel_reset.c | 10 +++++++---
>  drivers/gpu/drm/i915/i915_driver.c    |  4 +++-
>  3 files changed, 16 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index be99b01a0984..9857b91194b7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -163,12 +163,14 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
>  {
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
> -	intel_wakeref_t wakeref;
> +	intel_wakeref_t wakeref = 0;

We've got intel_wakeref_t to hide what it actually is. You shouldn't
assume you can assign 0 to it or use wakeref in an if condition. You
should treat it as opaque. You should assume the typedef could be
switched to a struct and you shouldn't have to change the code using it.

BR,
Jani.

>  
>  	GT_TRACE(gt, "force:%s", str_yes_no(force));
>  
>  	/* Use a raw wakeref to avoid calling intel_display_power_get early */
> -	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> +	if (is_intel_rpm_allowed(gt->uncore->rpm))
> +		wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> +
>  	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
>  
>  	intel_gt_check_clock_frequency(gt);
> @@ -207,7 +209,8 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
>  	intel_rps_sanitize(&gt->rps);
>  
>  	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
> -	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
> +	if (wakeref)
> +		intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>  }
>  
>  void intel_gt_pm_fini(struct intel_gt *gt)
> @@ -226,7 +229,6 @@ int intel_gt_resume(struct intel_gt *gt)
>  		return err;
>  
>  	GT_TRACE(gt, "\n");
> -
>  	/*
>  	 * After resume, we may need to poke into the pinned kernel
>  	 * contexts to paper over any damage caused by the sudden suspend.
> @@ -259,10 +261,8 @@ int intel_gt_resume(struct intel_gt *gt)
>  
>  	for_each_engine(engine, gt, id) {
>  		intel_engine_pm_get(engine);
> -
>  		engine->serial++; /* kernel context lost */
>  		err = intel_engine_resume(engine);
> -
>  		intel_engine_pm_put(engine);
>  		if (err) {
>  			drm_err(&gt->i915->drm,
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index c8e05b48c14f..55a1fd38c7c4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -901,12 +901,14 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
>  
>  void intel_gt_set_wedged(struct intel_gt *gt)
>  {
> -	intel_wakeref_t wakeref;
> +	intel_wakeref_t wakeref = 0;
>  
>  	if (test_bit(I915_WEDGED, &gt->reset.flags))
>  		return;
>  
> -	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> +	if (is_intel_rpm_allowed(gt->uncore->rpm))
> +		wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> +
>  	mutex_lock(&gt->reset.mutex);
>  
>  	if (GEM_SHOW_DEBUG()) {
> @@ -926,7 +928,9 @@ void intel_gt_set_wedged(struct intel_gt *gt)
>  	__intel_gt_set_wedged(gt);
>  
>  	mutex_unlock(&gt->reset.mutex);
> -	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
> +
> +	if (wakeref)
> +		intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>  }
>  
>  static bool __intel_gt_unset_wedged(struct intel_gt *gt)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d26dcca7e654..60f6fcc6b71d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1263,6 +1263,7 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
>  static int i915_drm_resume(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> +	intel_wakeref_t wakeref;
>  	int ret;
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> @@ -1303,7 +1304,8 @@ static int i915_drm_resume(struct drm_device *dev)
>  	if (HAS_DISPLAY(dev_priv))
>  		drm_mode_config_reset(dev);
>  
> -	i915_gem_resume(dev_priv);
> +	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
> +		i915_gem_resume(dev_priv);
>  
>  	intel_modeset_init_hw(dev_priv);
>  	intel_init_clock_gating(dev_priv);

-- 
Jani Nikula, Intel Open Source Graphics Center
