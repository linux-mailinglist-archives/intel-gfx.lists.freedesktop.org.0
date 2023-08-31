Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4721378F110
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 18:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF7C10E6A3;
	Thu, 31 Aug 2023 16:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC07610E6A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 16:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693498705; x=1725034705;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vEgQPgKv0tYL/gLIGroQilGQ4jhOMJlr9uyNzPubI4c=;
 b=j1DTfofN9aL0R+XqoJnp0Y636y1raOBToZ9gUbUPZdahvPOOmu+9T34N
 ySKrb+wYmA+37sZgPCgW5FJ28Wr6TdkUrsXOQXVJ6q7CDiTciHBfxs4St
 Iv5k6hcx3A+WVap7yIurrVUUvPGlXed6//3+m90nuJPv0dSapyriyw11/
 uAOIZH/lBK8iO9+tM+XU8kaXKv9eI3xwJjW0poeV84Zi/PzYDLsLuY+Fr
 4jRgJ9KtClKdqMgGMEJvMyCxCG4tzcRqUguyb0pmcs1RJIxd3lD6796lR
 m0ZkghBlPfsMr6GiHiXVfcXqivqZA55o+WD0sZYTjh6a3PuC1nqMCsy2z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="406984238"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="406984238"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 09:17:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="716415324"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="716415324"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 09:17:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230821180619.650007-15-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
 <20230821180619.650007-15-matthew.d.roper@intel.com>
Date: Thu, 31 Aug 2023 19:16:55 +0300
Message-ID: <875y4vjifc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 21 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index a408ec2d3958..4566c95da1ca 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -20,6 +20,7 @@
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  #include "skl_watermark.h"
> +#include "gt/intel_gt.h"
>  #include "pxp/intel_pxp.h"
>  
>  static const u32 skl_plane_formats[] = {
> @@ -2169,8 +2170,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>  				 enum pipe pipe, enum plane_id plane_id)
>  {
>  	/* Wa_14017240301 */
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
> +	    IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
>  		return false;

This seems to be the only user of IS_GFX_GT_IP_STEP() under display/,
and it kind of seems wrong to have display code check for GT
versions. Is there a clean way to move this out of display?

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
