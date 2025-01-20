Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF8CA16D8C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:42:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D0510E415;
	Mon, 20 Jan 2025 13:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E0DBFASJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C8D10E415;
 Mon, 20 Jan 2025 13:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737380543; x=1768916543;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2hw/STGV6kir8opY7E4awGOA/5IVy+M04KuZfQ7G1GQ=;
 b=E0DBFASJnFGZsM512YX8mUsg85k8Pw3vnkMY/skK4vBzOjAWm63U0J2k
 yQ3LotVlaSQWnoSO4aK6u5VP4aPyc2kBGCB7REIAvbosjCaVQUZHBHea2
 Z5MrJb2kqW5i6qtH4/3qi2s2vIomdQMpYUxnKHC67CP9zIabKJB2FXpiq
 zseY8NmL1otWG0XPDdX+A3p+CUKi4kVUp0lAaCrxDll3SqzCIy87Fmhyy
 jVcIuwI7UHxC7CPI5B25ndrPJ9FotWs2woQ/wkGremwCZVGT0DiNI6fXE
 HfMwopkHcvgr8ma4X/q1nlnsBexLVPj9emrZq9Kq7/0I+wWp26p0hqr3e Q==;
X-CSE-ConnectionGUID: GMFNGZWYT9GF2O0Bl5spmw==
X-CSE-MsgGUID: PNhdlRCuT6Kg6hWj7F0ttw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="55179790"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="55179790"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:42:18 -0800
X-CSE-ConnectionGUID: Ll3Jw95IReatFrk2GyvsXA==
X-CSE-MsgGUID: J4otNc3iQFGGGutBF04V1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="107060164"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.253])
 ([10.245.244.253])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:42:16 -0800
Message-ID: <90840106-de7b-4cf7-a74c-455146ddb2d9@linux.intel.com>
Date: Mon, 20 Jan 2025 14:42:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/xe: Use i915-display shutdown sequence directly
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
References: <20250117220943.506991-1-rodrigo.vivi@intel.com>
 <20250117220943.506991-3-rodrigo.vivi@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20250117220943.506991-3-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Hey,

Den 2025-01-17 kl. 23:09, skrev Rodrigo Vivi:
> Start the xe-i915-display reconciliation by using the same
> shutdown sequences.
> 
> v2: include the stubs for !CONFIG_DRM_XE_DISPLAY (Kunit)
> 
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_display.c | 48 +++++++------------------
>   drivers/gpu/drm/xe/display/xe_display.h | 10 +++---
>   drivers/gpu/drm/xe/xe_device.c          |  4 ++-
>   3 files changed, 22 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 4f60d7bd7742..e1ce9eb3332d 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -10,7 +10,6 @@
>   
>   #include <drm/drm_drv.h>
>   #include <drm/drm_managed.h>
> -#include <drm/drm_atomic_helper.h>
>   #include <drm/drm_probe_helper.h>
>   #include <uapi/drm/xe_drm.h>
>   
> @@ -369,32 +368,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
>   
>   void xe_display_pm_shutdown(struct xe_device *xe)
>   {
> -	struct intel_display *display = &xe->display;
> -
>   	if (!xe->info.probe_display)
>   		return;
>   
> -	intel_power_domains_disable(display);
> -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> -	if (has_display(xe)) {
> -		drm_kms_helper_poll_disable(&xe->drm);
> -		intel_display_driver_disable_user_access(display);
> -
> -		drm_atomic_helper_shutdown(display->drm);
> -	}
> -
> -	intel_dp_mst_suspend(display);
> -	intel_hpd_cancel_work(xe);
> +	intel_display_driver_shutdown(&xe->display);
> +}
>   
> -	if (has_display(xe))
> -		intel_display_driver_suspend_access(display);
> +void xe_display_pm_shutdown_noirq(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
>   
> -	intel_encoder_suspend_all(display);
> -	intel_encoder_shutdown_all(display);
> +	intel_display_driver_shutdown_noirq(&xe->display);
> +}
>   
> -	intel_opregion_suspend(display, PCI_D3cold);
> +void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
>   
> -	intel_dmc_suspend(display);
> +	intel_display_driver_shutdown_nogem(&xe->display);
>   }
>   
>   void xe_display_pm_runtime_suspend(struct xe_device *xe)
> @@ -439,21 +432,6 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
>   	intel_dmc_wl_flush_release_work(display);
>   }
>   
> -void xe_display_pm_shutdown_late(struct xe_device *xe)
> -{
> -	struct intel_display *display = &xe->display;
> -
> -	if (!xe->info.probe_display)
> -		return;
> -
> -	/*
> -	 * The only requirement is to reboot with display DC states disabled,
> -	 * for now leaving all display power wells in the INIT power domain
> -	 * enabled.
> -	 */
> -	intel_power_domains_driver_remove(display);
> -}
> -
>   void xe_display_pm_resume_early(struct xe_device *xe)
>   {
>   	struct intel_display *display = &xe->display;
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> index 233f81a26c25..a15ec29b862b 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -35,9 +35,10 @@ void xe_display_irq_reset(struct xe_device *xe);
>   void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
>   
>   void xe_display_pm_suspend(struct xe_device *xe);
> -void xe_display_pm_shutdown(struct xe_device *xe);
>   void xe_display_pm_suspend_late(struct xe_device *xe);
> -void xe_display_pm_shutdown_late(struct xe_device *xe);
> +void xe_display_pm_shutdown(struct xe_device *xe);
> +void xe_display_pm_shutdown_noirq(struct xe_device *xe);
> +void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
>   void xe_display_pm_resume_early(struct xe_device *xe);
>   void xe_display_pm_resume(struct xe_device *xe);
>   void xe_display_pm_runtime_suspend(struct xe_device *xe);
> @@ -69,9 +70,10 @@ static inline void xe_display_irq_reset(struct xe_device *xe) {}
>   static inline void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt) {}
>   
>   static inline void xe_display_pm_suspend(struct xe_device *xe) {}
> -static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
>   static inline void xe_display_pm_suspend_late(struct xe_device *xe) {}
> -static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
> +static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
> +static inline void xe_display_pm_shutdown_noirq(struct xe_device *xe) {}
> +static inline void xe_display_pm_shutdown_noaccel(struct xe_device *xe) {}
>   static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
>   static inline void xe_display_pm_resume(struct xe_device *xe) {}
>   static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> index 0966d9697caf..53cac055a2a9 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -934,10 +934,12 @@ void xe_device_shutdown(struct xe_device *xe)
>   
>   		xe_irq_suspend(xe);
>   
> +		xe_display_pm_shutdown_noirq(xe);
> +
>   		for_each_gt(gt, xe, id)
>   			xe_gt_shutdown(gt);
>   
> -		xe_display_pm_shutdown_late(xe);
> +		xe_display_pm_shutdown_noaccel(xe);
 From the xe point of view, it shouldn't matter whether we call the 
noirq part before or after gt shutdown. I like the integration into 
xe_device to be as simple as possible, so could we keep the single 
xe_display_pm_shutdown_late() call?

Which reminds me to send out xe_display simplification once more to do 
the same for init..
>   	} else {
>   		/* BOOM! */
>   		__xe_driver_flr(xe);
Completely unrelated, do you happen to know if we need to call 
encoder_suspend/shutdown in the FLR path, whether it affects logic not 
on the chip itself?

Cheers,
~Maarten

