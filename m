Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BEDAB9E50
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 16:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9050510EAE2;
	Fri, 16 May 2025 14:12:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U0nvp6za";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41EA10EAD6;
 Fri, 16 May 2025 14:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747404721; x=1778940721;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=AvM2uunAy6JucqTjjZLDxhB5DG5kYvtMa01ROep+x8g=;
 b=U0nvp6zaXdwszq+MuWp0bMvKyrHZRmc9DRRZyD6DOC9vTyaw/SOKyPwk
 R+mLgGHphKiVDZbufX5q/Iofa7vfojA/Quqgq0LYjWe9ww3dvqG33zaIU
 c/41EYp+UJvDRz2/CVE1WE6txXaquOaxD6Jk23ESxfeJQYvSq2MoLG+ik
 3eTnCIHcf2+lF7zdqMH9a/FcqauRhpcuSVpYAMmLzKSvuzR1gBCnRgOUc
 g7UBbFKjfpQHLVznV0OAFgUFuKeJu64ZaonMkLaQ9XRcY2aNrWV8NAp6u
 Sf0hHfnXMD5QR5qQeXfFBP11LkLr1TCyrz/KMU38+r6nhl33MZjEx1ptb w==;
X-CSE-ConnectionGUID: FGCCLh/7T9+ESFjndYgpig==
X-CSE-MsgGUID: zGIUxFI8QT6/JSg27+r9lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49483884"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49483884"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:12:00 -0700
X-CSE-ConnectionGUID: pU2HpdqeQh2YCGbhIuvy5A==
X-CSE-MsgGUID: jb8X2wPjScW1sLrsEu6Hhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143668867"
Received: from slindbla-desk.ger.corp.intel.com (HELO [10.245.245.176])
 ([10.245.245.176])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:11:59 -0700
Message-ID: <d2b77fac-6c5c-48a5-9955-223f3e29be7a@intel.com>
Date: Fri, 16 May 2025 15:11:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] drm/i915/display: move hotplug.dp_wq init from xe and
 i915 to display
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1747397638.git.jani.nikula@intel.com>
 <4730167548a40dc2abe38cd084809b74de988f1a.1747397638.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <4730167548a40dc2abe38cd084809b74de988f1a.1747397638.git.jani.nikula@intel.com>
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

On 16/05/2025 13:16, Jani Nikula wrote:
> The workqueue init and destroy belongs in display. Move it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   .../gpu/drm/i915/display/intel_display_driver.c  | 11 ++++++++++-
>   drivers/gpu/drm/i915/i915_driver.c               | 13 +------------
>   drivers/gpu/drm/xe/display/xe_display.c          | 16 +---------------
>   3 files changed, 12 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 411fe7b918a7..e40f1935323a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -243,10 +243,16 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>   
>   	intel_dmc_init(display);
>   
> +	display->hotplug.dp_wq = alloc_ordered_workqueue("intel-dp", 0);
> +	if (!display->hotplug.dp_wq) {
> +		ret = -ENOMEM;
> +		goto cleanup_vga_client_pw_domain_dmc;
> +	}
> +
>   	display->wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
>   	if (!display->wq.modeset) {
>   		ret = -ENOMEM;
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_wq_dp;
>   	}
>   
>   	display->wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
> @@ -296,6 +302,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>   	destroy_workqueue(display->wq.flip);
>   cleanup_wq_modeset:
>   	destroy_workqueue(display->wq.modeset);
> +cleanup_wq_dp:
> +	destroy_workqueue(display->hotplug.dp_wq);
>   cleanup_vga_client_pw_domain_dmc:
>   	intel_dmc_fini(display);
>   	intel_power_domains_driver_remove(display);
> @@ -631,6 +639,7 @@ void intel_display_driver_remove_noirq(struct intel_display *display)
>   
>   	intel_gmbus_teardown(display);
>   
> +	destroy_workqueue(display->hotplug.dp_wq);
>   	destroy_workqueue(display->wq.flip);
>   	destroy_workqueue(display->wq.modeset);
>   	destroy_workqueue(display->wq.cleanup);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 5c69d14a7673..950b7ad8d675 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -115,8 +115,6 @@ static const struct drm_driver i915_drm_driver;
>   
>   static int i915_workqueues_init(struct drm_i915_private *dev_priv)
>   {
> -	struct intel_display *display = dev_priv->display;
> -
>   	/*
>   	 * The i915 workqueue is primarily used for batched retirement of
>   	 * requests (and thus managing bo) once the task has been completed
> @@ -135,10 +133,6 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
>   	if (dev_priv->wq == NULL)
>   		goto out_err;
>   
> -	display->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
> -	if (!display->hotplug.dp_wq)
> -		goto out_free_wq;
> -
>   	/*
>   	 * The unordered i915 workqueue should be used for all work
>   	 * scheduling that do not require running in order, which used
> @@ -147,12 +141,10 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
>   	 */
>   	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", 0, 0);
>   	if (dev_priv->unordered_wq == NULL)
> -		goto out_free_dp_wq;
> +		goto out_free_wq;
>   
>   	return 0;
>   
> -out_free_dp_wq:
> -	destroy_workqueue(display->hotplug.dp_wq);
>   out_free_wq:
>   	destroy_workqueue(dev_priv->wq);
>   out_err:
> @@ -163,10 +155,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
>   
>   static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
>   {
> -	struct intel_display *display = dev_priv->display;
> -
>   	destroy_workqueue(dev_priv->unordered_wq);
> -	destroy_workqueue(display->hotplug.dp_wq);
>   	destroy_workqueue(dev_priv->wq);
>   }
>   
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 9513b03847a8..b0f5624177bd 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -83,14 +83,6 @@ static void unset_display_features(struct xe_device *xe)
>   	xe->drm.driver_features &= ~(DRIVER_MODESET | DRIVER_ATOMIC);
>   }
>   
> -static void display_destroy(struct drm_device *dev, void *dummy)
> -{
> -	struct xe_device *xe = to_xe_device(dev);
> -	struct intel_display *display = xe->display;
> -
> -	destroy_workqueue(display->hotplug.dp_wq);
> -}
> -
>   /**
>    * xe_display_create - create display struct
>    * @xe: XE device instance
> @@ -105,15 +97,9 @@ static void display_destroy(struct drm_device *dev, void *dummy)
>   int xe_display_create(struct xe_device *xe)
>   {
>   	/* TODO: Allocate display dynamically. */
> -	struct intel_display *display = &xe->__display;
> -
>   	xe->display = &xe->__display;
>   
> -	display->hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
> -	if (!display->hotplug.dp_wq)
> -		return -ENOMEM;
> -
> -	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
> +	return 0;
>   }
>   
>   static void xe_display_fini_early(void *arg)

