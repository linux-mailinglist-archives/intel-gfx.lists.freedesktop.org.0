Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A2B485198
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 12:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D79010E14D;
	Wed,  5 Jan 2022 11:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B8310E14D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 11:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641380711; x=1672916711;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=uVKCplYwcg+q/RAJycXbB/bfcxIwQ1awgIRM8Dv9pzI=;
 b=SLejmBj8+MWDb2uDG04tHOsZTuDn9ygiWAsjm2N4b1gmnVTTFymYL7dW
 NK8ciwuuuclnHqPrlbhR7pl5mylyFgp/FdCYHRcGhglro9GW0iu1dM01U
 Ds6mcJMnHIWjtnwYL77NmiujQ7vKeo7cxVroZjygmF8QlcqsNZd8xD4UP
 LMC5cdrWW0SWdph/kU73WFHbXq+0hE8NTeu6Yi10Zr8UvyrD5YsrVUR9C
 Eo3lpjCwg4xcRlrL2wOxPCTd7kcFu7mCXubGlp3xaXBRBFkBYyQfsJQD3
 qLffnbCfo1g05w4GaV5eJwfInsZx6ZGrqky/gtbwl2uSkdiT9dhwYcMMf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="328762874"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="328762874"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 03:05:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="472456513"
Received: from jwebb-mobl1.ger.corp.intel.com (HELO [10.213.202.78])
 ([10.213.202.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 03:05:09 -0800
Message-ID: <4f090abf-3bcd-0253-d9f9-2a385aa11bb6@linux.intel.com>
Date: Wed, 5 Jan 2022 11:05:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220105102131.988791-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220105102131.988791-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop including i915_irq.h from
 i915_drv.h
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


On 05/01/2022 10:21, Jani Nikula wrote:
> Only include i915_irq.h where actually needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c          | 1 +
>   drivers/gpu/drm/i915/display/intel_display_trace.h | 1 +
>   drivers/gpu/drm/i915/gt/intel_rps.c                | 1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c             | 1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c         | 1 +
>   drivers/gpu/drm/i915/i915_drv.h                    | 1 -
>   6 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 16c3ca66d9f0..08ee3e17ee5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -12,6 +12,7 @@
>   #include <drm/drm_plane_helper.h>
>   #include <drm/drm_vblank_work.h>
>   
> +#include "i915_irq.h"
>   #include "i915_vgpu.h"
>   #include "i9xx_plane.h"
>   #include "icl_dsi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> index 4043e1276383..f05f0f9b5103 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -13,6 +13,7 @@
>   #include <linux/tracepoint.h>
>   
>   #include "i915_drv.h"
> +#include "i915_irq.h"
>   #include "intel_crtc.h"
>   #include "intel_display_types.h"
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 54e7df788dbf..bd35e45d3aaa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -6,6 +6,7 @@
>   #include <drm/i915_drm.h>
>   
>   #include "i915_drv.h"
> +#include "i915_irq.h"
>   #include "intel_breadcrumbs.h"
>   #include "intel_gt.h"
>   #include "intel_gt_clock_utils.h"
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 6e228343e8cb..0c52d1652e8b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -12,6 +12,7 @@
>   #include "intel_guc_ads.h"
>   #include "intel_guc_submission.h"
>   #include "i915_drv.h"
> +#include "i915_irq.h"
>   
>   /**
>    * DOC: GuC
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index ac0931f0374b..7b0b43e87244 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -7,6 +7,7 @@
>   
>   #include "gt/intel_gt.h"
>   #include "i915_drv.h"
> +#include "i915_irq.h"
>   #include "i915_memcpy.h"
>   #include "intel_guc_log.h"
>   
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index beeb42a14aae..3967748ba347 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -106,7 +106,6 @@
>   #include "i915_scheduler.h"
>   #include "gt/intel_timeline.h"
>   #include "i915_vma.h"
> -#include "i915_irq.h"
>   
>   
>   /* General customization:
> 
