Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F5690D251
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 15:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566FD10E69E;
	Tue, 18 Jun 2024 13:49:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HKiQMt2i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CFD10E6A2;
 Tue, 18 Jun 2024 13:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718718560; x=1750254560;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ldu8y7PyV+NSqKBiJbMz2jbn8we3ONeEZPUU7TewjJI=;
 b=HKiQMt2i90P9CL8rt32SlDivt5wbMhqR79bXf5W87oav8gosdcVyQSC0
 VU3xROL2NvMDOCqAmdGnrNnEJCu0YAEmFMcRE4qI1tI8MHF9/14naeNFJ
 jZnJsZdxi/Wc45OL6buqW8iIL8oeCsltq3QTM+CmDu+5WeFePdh35AnbZ
 /zr+o24D5rYWFUyYy1aIogGWC5M4QL4FFZ3IkebJIYejkcf2eiRIlMWKL
 m10O+bOM7davHBr1vD4zsvN4onQvvZqlia7vpmXe78Gv7MyYkVFtL9CKx
 oqFBOpJVvTndzh9d+LlvhQdUlOcbVO9+UtBXpW6zKZiS0NJmrQ3Taf525 w==;
X-CSE-ConnectionGUID: TKY1YOvwT/2AovNnf49s3A==
X-CSE-MsgGUID: nZ+gk4rQT7C95W6GqpwTNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26717383"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="26717383"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 06:49:07 -0700
X-CSE-ConnectionGUID: +dKoufjVR++lWIp4EXhmew==
X-CSE-MsgGUID: 7L4pYUGXSrOI+DPxte1qdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41659496"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 06:49:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 3/3] drm/xe: Use the encoder suspend helper also used
 by the i915 driver
In-Reply-To: <20240618125255.4080303-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240618125255.4080303-1-imre.deak@intel.com>
 <20240618125255.4080303-3-imre.deak@intel.com>
Date: Tue, 18 Jun 2024 16:49:00 +0300
Message-ID: <87tthqfjjn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 18 Jun 2024, Imre Deak <imre.deak@intel.com> wrote:
> Use the suspend encoders helper which is also used by the i915 driver.
> This fixes an issue in the xe driver where the encoder
> suspend_complete() hook is not called and was an overlook when this hook
> was added in commit b61fad5f7e5d ("drm/i915/tc: Call TypeC port
> flush_work/cleanup without modeset locks held") for i915, but not added
> to the xe driver (which was still in a separate source tree at the above
> point).
>
> v2: Fix checkpatch warn in commit log. (Rodrigo)
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 18 ++----------------
>  1 file changed, 2 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 78cccbe289475..8b83dcff72e17 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -23,6 +23,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> +#include "intel_encoder.h"
>  #include "intel_fbdev.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
> @@ -270,21 +271,6 @@ void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
>  		gen11_de_irq_postinstall(xe);
>  }
>  
> -static void intel_suspend_encoders(struct xe_device *xe)
> -{
> -	struct drm_device *dev = &xe->drm;
> -	struct intel_encoder *encoder;
> -
> -	if (has_display(xe))
> -		return;
> -
> -	drm_modeset_lock_all(dev);
> -	for_each_intel_encoder(dev, encoder)
> -		if (encoder->suspend)
> -			encoder->suspend(encoder);
> -	drm_modeset_unlock_all(dev);
> -}
> -
>  static bool suspend_to_idle(void)
>  {
>  #if IS_ENABLED(CONFIG_ACPI_SLEEP)
> @@ -315,7 +301,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>  
>  	intel_hpd_cancel_work(xe);
>  
> -	intel_suspend_encoders(xe);
> +	intel_encoder_suspend_all(&xe->display);
>  
>  	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);

-- 
Jani Nikula, Intel
