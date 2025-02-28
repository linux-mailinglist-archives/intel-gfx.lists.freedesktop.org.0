Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48715A49C26
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 15:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9DEB10ECBA;
	Fri, 28 Feb 2025 14:37:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOwlX+tH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC97A10ECCA;
 Fri, 28 Feb 2025 14:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740753450; x=1772289450;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=+mHknmHgltSfrl29/OCW6hKROWP7f+Pu/GIGwJkyBPg=;
 b=AOwlX+tHhqPbAPSCVYHPhzVbjnB6oN2l6zB9BJ6uVLKRVOuue7tsbu99
 lGIwT4fV4JsUvBtPMJdNRw851j97bvNAztI2Jp1wsy6DcLqqHZjrgH0cm
 FAyFqze5pmy9zBTESeNjFjT8JCjvx8VMlQibA5G51y1dEUIJqG6jfxNwU
 4VESNQg2TTEk+FyT6AqHh/b4FcVx1AEdTW6utoCcXDh3/MGv+J5VadLHz
 YFxu3iTPwlwkng4T7kaQ+Z1lLNGdhiO9b315u8U/zVziejwZs6G7HQ8nq
 EIPFwTkTrrWyyLWyZoNwqkwwMNJnLt3Hl+k7QqAOP1ys7ft1KkdLuFluh A==;
X-CSE-ConnectionGUID: kA2Xh/E8TaGp9y58/9yLpg==
X-CSE-MsgGUID: M9gyS2o+TCeT/Go8LAxP7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41569987"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41569987"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 06:37:30 -0800
X-CSE-ConnectionGUID: 6OeLPxcvSkmrTjjPdn9lPA==
X-CSE-MsgGUID: 0bT9lpFhQrKcW1P+mJn3Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117336314"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.24])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 06:37:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/plane: convert intel_atomic_plane.[ch] to
 struct intel_display
In-Reply-To: <20250228142539.3216960-2-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250228142539.3216960-1-jani.nikula@intel.com>
 <20250228142539.3216960-2-jani.nikula@intel.com>
Date: Fri, 28 Feb 2025 16:37:26 +0200
Message-ID: <87wmda16ft.fsf@intel.com>
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

On Fri, 28 Feb 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> Going forward, struct intel_display is the main display device data
> pointer. Convert intel_atomic_plane.[ch] to struct intel_display.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 79 +++++++++----------
>  1 file changed, 39 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 181ad7468d85..4f1ad57ca5ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -42,7 +42,6 @@
>  
>  #include "gem/i915_gem_object.h"
>  #include "i915_config.h"
> -#include "i915_drv.h"
>  #include "i915_scheduler_types.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_atomic_plane.h"
> @@ -57,6 +56,7 @@
>  #include "skl_universal_plane.h"
>  #include "skl_watermark.h"
>  
> +

Hrmh, it annoys me when other people do this, but it annoys me even more
when I do it. *facepalm*.


-- 
Jani Nikula, Intel
