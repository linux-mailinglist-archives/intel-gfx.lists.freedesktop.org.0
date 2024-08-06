Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D299495B6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 18:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3483410E3BA;
	Tue,  6 Aug 2024 16:40:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QrSpTYN9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B18F10E02A;
 Tue,  6 Aug 2024 16:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722962445; x=1754498445;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Szjecu8os5RDxE+j60wuM1kaRWvqouYxKr/EyH2KLN8=;
 b=QrSpTYN9YRfPkmy/CU0nQ+WkGoiEMg3rUbp12GJbEDwX9HyPP7yVRsDN
 ZSBEopifsBP0LeeYrgC87Vv8upMJ6+0wFofKFbEx7gyVw7BEQ52vrQPmU
 fjGR/AaZ+fmJgjuZRjCViDXY4x6TnZe7ZsgURwjIsg23Yz12DYk8kOspY
 2oJQbznb9V/EFJT8i31eI6IVTtQWjh6TFU8BA9/XYMuLlvIXnAwW+Kk8S
 F0MbKj52nYILMlV6WxkKln6YT0pJGePaYOWvEOo1Edn6mgHkWz6zkWv/2
 y2Vc6uzBL0Z6JTpGKHwLw+blp51o/oshHh7TqZ6PIvG6IYCPttA1RAdPg Q==;
X-CSE-ConnectionGUID: KyI8geh2Q7eRHGxxSzVb4Q==
X-CSE-MsgGUID: 6qA3BxXOR/+UVBU8aK2OmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="32399121"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="32399121"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 09:40:45 -0700
X-CSE-ConnectionGUID: oDIY2BstQZeJahLyeZCXbg==
X-CSE-MsgGUID: v2N2pxEUQTiVI3xIDmDHLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="61204819"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 09:40:43 -0700
Date: Tue, 6 Aug 2024 19:41:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
Message-ID: <ZrJSHdb7bu90VnJr@ideak-desk.fi.intel.com>
References: <20240806085513.3051107-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240806085513.3051107-1-arun.r.murthy@intel.com>
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

On Tue, Aug 06, 2024 at 02:25:13PM +0530, Arun R Murthy wrote:
> HPD is interrupt based and on runtime suspend change it to polling as
> HPD is not a wakeup event. A worker thread is scheduled for doing this
> polling and it keeps polling for HPD live status on an internval of 10s.
> On runtime resume disable polling and fallback to interrupt mechanism.
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pm.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index 9f3c14fd9f33..d952b06ebfb4 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -22,6 +22,7 @@
>  #include "xe_pcode.h"
>  #include "xe_trace.h"
>  #include "xe_wa.h"
> +#include "intel_hotplug.h"
>  
>  /**
>   * DOC: Xe Power Management
> @@ -378,6 +379,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
>  		if (err)
>  			goto out;
>  	}
> +	/* Enable hpd polling on runtime suspend */
> +	intel_hpd_poll_enable(xe);
>  
>  	xe_irq_suspend(xe);
>  
> @@ -427,6 +430,9 @@ int xe_pm_runtime_resume(struct xe_device *xe)
>  
>  	xe_irq_resume(xe);
>  
> +	/* Disable hpd polling on runtime resume */
> +	intel_hpd_poll_disable(xe);

This should be handled in xe_display_pm_resume() (likewise enabling
polling in xe_display_pm_suspend()), in fact it's already called there.
Also this is missing the xe->info.enable_display check and polling
shouldn't be enabled when system (vs. runtime) suspending.

Not sure why the display is suspended/resumed only if d3cold is allowed,
for many of the display s/r steps at least it doesn't make sense to me.
For now moving the d3cold check within
xe_display_pm_suspend()/resume() and enabling/disabling polling
regardless of that flag would be the simplest imo.

> +
>  	for_each_gt(gt, xe, id)
>  		xe_gt_resume(gt);
>  
> -- 
> 2.25.1
> 
