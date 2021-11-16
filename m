Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 916F5453A47
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 20:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B726E054;
	Tue, 16 Nov 2021 19:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD0D6E054;
 Tue, 16 Nov 2021 19:39:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="221025085"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="221025085"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 11:39:08 -0800
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="506590970"
Received: from mramya-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.219.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 11:39:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211116174818.2128062-2-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211116174818.2128062-1-matthew.d.roper@intel.com>
 <20211116174818.2128062-2-matthew.d.roper@intel.com>
Date: Tue, 16 Nov 2021 21:39:03 +0200
Message-ID: <874k8b28mg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/dg2:
 s/DISP_STEPPING/DISPLAY_STEPPING/
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 16 Nov 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> Commit cd0fcf5af791 ("drm/i915: rename DISP_STEPPING->DISPLAY_STEP and
> GT_STEPPING->GT_STEP") renamed all platforms' display stepping tests,
> but the DG2 patches were still in-flight at that time and did not
> incorporate the new naming scheme.  Rename DG2's macro now for
> consistency with other platforms.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 6f9f20a10c0c..b3404041294d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1598,7 +1598,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>  
> -#define IS_DG2_DISP_STEP(__i915, since, until) \
> +#define IS_DG2_DISPLAY_STEP(__i915, since, until) \
>  	(IS_DG2(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))

-- 
Jani Nikula, Intel Open Source Graphics Center
