Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3529D4E33
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 14:59:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE01810E964;
	Thu, 21 Nov 2024 13:59:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GWUiN3LX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88DA10E1D7;
 Thu, 21 Nov 2024 13:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732197561; x=1763733561;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fJjkGxlc0OAAeq3jpwhWD5jeeikC1qRnmsKRbeN2FAQ=;
 b=GWUiN3LXXTzYj4T8wiqriBcvkNC0aAu++JHUGsJwcTsHVN7iz/TyKnwT
 gQRY37N+F3M/mm8t6Hzar7oUWsffgoA2Ct95LqsUDw4t00uk0EcdeBteg
 vrXeH7P7GZPQEGGbZLOmpwREaNcAvkevdjHScpVYNk4vn/C+ohpuf6x1a
 0411kmQKa6V8CqTmOq1QPtgQuJQjnkAUr1ikw5KLrDqsilz8z1pguhB7Y
 eu+1ZsNUbLMQBI0caXGm8GEil5R/JqOGsoX2d9QQOHLC1RrTLienNyIzu
 d2AWF2ItGbJTVRtp5kAzL7/W2CJllnoviBf60HjDxF0HeX10wpSpRP3b8 g==;
X-CSE-ConnectionGUID: KaIMZBgiSeWJQkFV0VfvuA==
X-CSE-MsgGUID: MfR5TxFTRXi6oZHEf9Zaow==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="36090143"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="36090143"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 05:59:21 -0800
X-CSE-ConnectionGUID: iyNvjXbFSMqxxhhyj4jMkg==
X-CSE-MsgGUID: F5l8PBMaSEeqbCN+kSPGTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="95328031"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 05:59:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH] drm/i915/display: Don't allow odd ypan or ysize with
 semiplanar format
In-Reply-To: <20241119172544.861424-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241119172544.861424-1-juhapekka.heikkila@gmail.com>
Date: Thu, 21 Nov 2024 15:59:15 +0200
Message-ID: <87v7wgzo0c.fsf@intel.com>
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

On Tue, 19 Nov 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> Disable support for odd panning and size in y direction when running
> on display version 3x and using semiplanar formats.
>
> Bspec: 68903
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index d89630b2d5c1..a61eeaa7640c 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1030,6 +1030,11 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
>  		     DISPLAY_VERx100(i915) == 3000) &&
>  		     src_x % 2 != 0)
>  			hsub = 2;
> +
> +		if (DISPLAY_VERx100(i915) >= 3000 &&
> +		    DISPLAY_VERx100(i915) <= 3500)

x100 is only needed if the last two digits are non-zero, right?

IS_DISPLAY_VER()?

BR,
Jani.

> +			vsub = 2;
> +
>  	} else {
>  		hsub = fb->format->hsub;
>  		vsub = fb->format->vsub;

-- 
Jani Nikula, Intel
