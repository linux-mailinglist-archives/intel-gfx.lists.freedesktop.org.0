Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FA0995463
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 18:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06EA10E20B;
	Tue,  8 Oct 2024 16:27:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOloNdOC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB5B10E20B;
 Tue,  8 Oct 2024 16:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728404827; x=1759940827;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=tfKV+k7ZhUYGwZA9AsEEnK610AwkOjy9RSBi0Uz42Sg=;
 b=AOloNdOCqg7EIiYY0MkWRH4YRhgTk8urr+cz4fVSjN0wpzLVqHFFtEEk
 DyyyS+CbMHu+KEauKHluzkJzcBi2YtJ9yyKMSQetAf3QoIiv09VLxKFB8
 Wv1c6pz5QiS0Ska/oH2tzHuzmAU8yjZs9/Zg2c3AtvF7uOO3/mQsjVmDu
 aSkHKvQujSvYkN2SJwqqB7or9YeVVOWM0EW2kaBcnIoRcCwfivTa4bJJX
 3J1WwKBp6ZFvk3uwXWL/Oj47GFl2IiU46nwKNvNucqaBpTPki4BaAvibA
 1pnlcg/GlhypfA9nDZD0JcZQu3HmFnZ6hOy++k6mHU0W0vxUTMVCYyuJY Q==;
X-CSE-ConnectionGUID: w2ToVmNpR1u1hzgEOatphg==
X-CSE-MsgGUID: AbKcmKr7Qt+REjFUEuo2tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27750816"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="27750816"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 09:27:07 -0700
X-CSE-ConnectionGUID: Kht/89t9Qvm9wtByYK0xIQ==
X-CSE-MsgGUID: F0wAC0iwSSO10XMTBfpFEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="75996009"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 09:27:05 -0700
Date: Tue, 8 Oct 2024 19:27:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/31] drm/xe/display: Spin-off xe_display runtime/d3cold
 sequences
Message-ID: <ZwVddnF8yDxvdFM1@ideak-desk.fi.intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-11-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240924204222.246862-11-rodrigo.vivi@intel.com>
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

On Tue, Sep 24, 2024 at 04:35:31PM -0400, Rodrigo Vivi wrote:
> No functional change. This patch only splits the xe_display_pm
> suspend/resume functions in the regular suspend/resume from the
> runtime/d3cold ones.
> 
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 68 ++++++++++++++++---------
>  1 file changed, 45 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index be431d9907df..a4705a452adb 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -308,8 +308,41 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
>  	}
>  }
>  
> -/* TODO: System and runtime suspend/resume sequences will be sanitized as a follow-up. */
> -static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> +static void xe_display_to_d3cold(struct xe_device *xe)
> +{
> +	struct intel_display *display = &xe->display;
> +
> +	/* We do a lot of poking in a lot of registers, make sure they work properly. */
> +	intel_power_domains_disable(xe);
> +
> +	xe_display_flush_cleanup_work(xe);
> +
> +	intel_hpd_cancel_work(xe);

This cancels a work synchronously that takes a runtime PM reference, so
it could dead-lock. I know that xe adds a way to get an RPM reference in
the runtime suspend/resume handlers, not sure if that's a good approach
in general. Also, not sure if it's ok to to drop all interrupts - in
intel_hpd_cancel_work() - here that got raised before runtime suspend,
instead of handling them as expected. So I think intel_hpd_cancel_work()
shouldn't be called here.

> +
> +	intel_opregion_suspend(display, PCI_D3cold);
> +
> +	intel_dmc_suspend(display);
> +}
> +
> +static void xe_display_from_d3cold(struct xe_device *xe)
> +{
> +	struct intel_display *display = &xe->display;
> +
> +	intel_dmc_resume(display);
> +
> +	if (has_display(xe))
> +		drm_mode_config_reset(&xe->drm);

The above is the counterpart of intel_encoder_suspend_all() which is
only called during system suspend.

> +
> +	intel_display_driver_init_hw(xe);
> +
> +	intel_hpd_init(xe);
> +
> +	intel_opregion_resume(display);
> +
> +	intel_power_domains_enable(xe);
> +}
> +
> +void xe_display_pm_suspend(struct xe_device *xe)
>  {
>  	struct intel_display *display = &xe->display;
>  	bool s2idle = suspend_to_idle();
> @@ -321,10 +354,10 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>  	 * properly.
>  	 */
>  	intel_power_domains_disable(xe);
> -	if (!runtime)
> -		intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
>  
> -	if (!runtime && has_display(xe)) {
> +	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> +
> +	if (has_display(xe)) {
>  		drm_kms_helper_poll_disable(&xe->drm);
>  		intel_display_driver_disable_user_access(xe);
>  		intel_display_driver_suspend(xe);
> @@ -334,7 +367,7 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>  
>  	intel_hpd_cancel_work(xe);
>  
> -	if (!runtime && has_display(xe)) {
> +	if (has_display(xe)) {
>  		intel_display_driver_suspend_access(xe);
>  		intel_encoder_suspend_all(&xe->display);
>  	}
> @@ -344,11 +377,6 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>  	intel_dmc_suspend(display);
>  }
>  
> -void xe_display_pm_suspend(struct xe_device *xe)
> -{
> -	__xe_display_pm_suspend(xe, false);
> -}
> -
>  void xe_display_pm_shutdown(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> @@ -379,7 +407,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
>  		return;
>  
>  	if (xe->d3cold.allowed)
> -		__xe_display_pm_suspend(xe, true);
> +		xe_display_to_d3cold(xe);
>  
>  	intel_hpd_poll_enable(xe);
>  }
> @@ -405,7 +433,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
>  	intel_power_domains_resume(xe);
>  }
>  
> -static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
> +void xe_display_pm_resume(struct xe_device *xe)
>  {
>  	struct intel_display *display = &xe->display;
>  
> @@ -419,12 +447,12 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
>  
>  	intel_display_driver_init_hw(xe);
>  
> -	if (!runtime && has_display(xe))
> +	if (has_display(xe))
>  		intel_display_driver_resume_access(xe);
>  
>  	intel_hpd_init(xe);
>  
> -	if (!runtime && has_display(xe)) {
> +	if (has_display(xe)) {
>  		intel_display_driver_resume(xe);
>  		drm_kms_helper_poll_enable(&xe->drm);
>  		intel_display_driver_enable_user_access(xe);
> @@ -433,17 +461,11 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
>  
>  	intel_opregion_resume(display);
>  
> -	if (!runtime)
> -		intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
> +	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
>  
>  	intel_power_domains_enable(xe);
>  }
>  
> -void xe_display_pm_resume(struct xe_device *xe)
> -{
> -	__xe_display_pm_resume(xe, false);
> -}
> -
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> @@ -452,7 +474,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
>  	intel_hpd_poll_disable(xe);
>  
>  	if (xe->d3cold.allowed)
> -		__xe_display_pm_resume(xe, true);
> +		xe_display_from_d3cold(xe);
>  }
>  
>  
> -- 
> 2.46.0
> 
