Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC37AB9E8E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 16:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5238010EADD;
	Fri, 16 May 2025 14:25:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qum2OYeT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781D010EADC;
 Fri, 16 May 2025 14:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747405505; x=1778941505;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=4xeVoWbZsjDcnCFQqFhgqaKnfSwpoT6fOtGiqlrPDo4=;
 b=Qum2OYeTQmD0qKCR2OSWHwN1mIfZgN9pwjl+Ais5XrgbNn73ZRkDmVeU
 3Q11Ock5vp3z8gWdKV19aTmgmSYKX/rz4+Ehbz71uaFAgCCZ/4tXwv530
 nPezc24YgeuGrqECICvZ5si+uE3f0AiqtOOIll748E8EPo0+jpsp/Lqzm
 CD8b7MUev3awl2B/VTDmHzctYhbHRJDkT5xRUdCcPRCNIvSpOji5B1AQX
 IiyjXXFhKF5gNwjg+ZgNFurYJxfartVkbG7vn34Do8aM3J1EW2T4H03fi
 z66AAHQ7ujWKC9REKbvi81y1DTyfs7sEQVrX/xAUK6yV0Xwiuo0Ij6hcR Q==;
X-CSE-ConnectionGUID: caV2MKMBSlSoK/sKeFrlLA==
X-CSE-MsgGUID: ZNzA5KOQSvSYcXobbThpoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49485029"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49485029"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:25:01 -0700
X-CSE-ConnectionGUID: F7VhCQwYTdiYWaQdj9NZWg==
X-CSE-MsgGUID: vqPNJARASGSpuuY01KqbEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143672603"
Received: from slindbla-desk.ger.corp.intel.com (HELO [10.245.245.176])
 ([10.245.245.176])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:25:00 -0700
Message-ID: <75eda3ed-3e75-4715-ae83-fcf48fbc49fa@intel.com>
Date: Fri, 16 May 2025 15:24:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] drm/xe/display: move xe->display initialization to
 xe_display_probe()
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
References: <cover.1747397638.git.jani.nikula@intel.com>
 <6c3075739d84cecea258d686c3ef38455a61191c.1747397638.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <6c3075739d84cecea258d686c3ef38455a61191c.1747397638.git.jani.nikula@intel.com>
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
> The future goal is to have intel_display_device_probe() create struct
> intel_display. As the first step, postpone xe->display initialization
> right before that call. This is the same location as in i915.
> 
> There's a subtle functional change here: xe->display will now be
> initialized only if xe->info.probe_display.
> 
> The xe_display_create() function becomes empty, and can be removed. Move
> its documentation to xe_display_probe()
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/drm/xe/display/xe_display.c | 33 +++++++++++--------------
>   drivers/gpu/drm/xe/display/xe_display.h |  4 ---
>   drivers/gpu/drm/xe/xe_device.c          |  4 ---
>   3 files changed, 14 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index b0f5624177bd..c35444637620 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -83,25 +83,6 @@ static void unset_display_features(struct xe_device *xe)
>   	xe->drm.driver_features &= ~(DRIVER_MODESET | DRIVER_ATOMIC);
>   }
>   
> -/**
> - * xe_display_create - create display struct
> - * @xe: XE device instance
> - *
> - * Initialize all fields used by the display part.
> - *
> - * TODO: once everything can be inside a single struct, make the struct opaque
> - * to the rest of xe and return it to be xe->display.
> - *
> - * Returns: 0 on success
> - */
> -int xe_display_create(struct xe_device *xe)
> -{
> -	/* TODO: Allocate display dynamically. */
> -	xe->display = &xe->__display;
> -
> -	return 0;
> -}
> -
>   static void xe_display_fini_early(void *arg)
>   {
>   	struct xe_device *xe = arg;
> @@ -524,6 +505,17 @@ static void display_device_remove(struct drm_device *dev, void *arg)
>   	intel_display_device_remove(display);
>   }
>   
> +/**
> + * xe_display_probe - probe display and create display struct
> + * @xe: XE device instance
> + *
> + * Initialize all fields used by the display part.
> + *
> + * TODO: once everything can be inside a single struct, make the struct opaque
> + * to the rest of xe and return it to be xe->display.
> + *
> + * Returns: 0 on success
> + */
>   int xe_display_probe(struct xe_device *xe)
>   {
>   	struct pci_dev *pdev = to_pci_dev(xe->drm.dev);
> @@ -533,6 +525,9 @@ int xe_display_probe(struct xe_device *xe)
>   	if (!xe->info.probe_display)
>   		goto no_display;
>   
> +	/* TODO: Allocate display dynamically. */
> +	xe->display = &xe->__display;
> +
>   	display = intel_display_device_probe(pdev);
>   
>   	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, display);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> index 46e14f8dee28..e533aa4750bc 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -15,8 +15,6 @@ struct drm_driver;
>   bool xe_display_driver_probe_defer(struct pci_dev *pdev);
>   void xe_display_driver_set_hooks(struct drm_driver *driver);
>   
> -int xe_display_create(struct xe_device *xe);
> -
>   int xe_display_probe(struct xe_device *xe);
>   
>   int xe_display_init_early(struct xe_device *xe);
> @@ -46,8 +44,6 @@ static inline int xe_display_driver_probe_defer(struct pci_dev *pdev) { return 0
>   static inline void xe_display_driver_set_hooks(struct drm_driver *driver) { }
>   static inline void xe_display_driver_remove(struct xe_device *xe) {}
>   
> -static inline int xe_display_create(struct xe_device *xe) { return 0; }
> -
>   static inline int xe_display_probe(struct xe_device *xe) { return 0; }
>   
>   static inline int xe_display_init_early(struct xe_device *xe) { return 0; }
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> index d4b6e623aa48..660b0c5126dc 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -491,10 +491,6 @@ struct xe_device *xe_device_create(struct pci_dev *pdev,
>   	if (err)
>   		goto err;
>   
> -	err = xe_display_create(xe);
> -	if (WARN_ON(err))
> -		goto err;
> -
>   	return xe;
>   
>   err:

