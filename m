Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF1396BB51
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 13:54:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDCCE10E1D3;
	Wed,  4 Sep 2024 11:54:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FqGCzXaf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DD510E03F;
 Wed,  4 Sep 2024 11:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725450870; x=1756986870;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=8qmkaeqakhFtnTHnygvdIhzp7DeQb/ccuxbh0Ba4p8o=;
 b=FqGCzXaf3e/9UL6Wb2JyCBeBkAGx1IL4eOFkZVAYzUijL18IIrbz8hO9
 ErhX3ZvM88KmslTLvZRHq7TTd0x6wgLjry6v6V5k2opLVgKpxptUvAKap
 7EoTBxVdbmT3ftZPn5zauOOU9/0l1S5ZvIB8jo/8l62ghjIW3JGNwvItQ
 8dq6EcHOI/ePdTtzUvVzS/8etTNKVwR5OQT7SEirKUVsOz6U5jg2x7Cnm
 75VGZMy0Zi/mxrzvmOUMq7vCWdhD1ZcIwJCCRmR4iIYtII9Xy0OFxGGEk
 vzLQQ3y+sLfCUWhTgfKS7Kvr6cDyju4AN8EeOpteIX2kNTlQvdtAovV8h A==;
X-CSE-ConnectionGUID: +PJALvMJRkuJ7DOiWNtNwg==
X-CSE-MsgGUID: tEkoOLufSRSR0jW07gWz6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23970879"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="23970879"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 04:54:30 -0700
X-CSE-ConnectionGUID: bBYKCbLbT0mYV5arheZzpw==
X-CSE-MsgGUID: jnQdMQ/XSaGpq33/V2Ka6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="70044865"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 04:54:27 -0700
Date: Wed, 4 Sep 2024 14:54:50 +0300
From: Imre Deak <imre.deak@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH v3] drm/i915/display: Fix BMG CCS modifiers
Message-ID: <ZthKitcktaEq8VnR@ideak-desk.fi.intel.com>
References: <20240902074021.459480-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240902074021.459480-1-juhapekka.heikkila@gmail.com>
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

On Mon, Sep 02, 2024 at 10:40:21AM +0300, Juha-Pekka Heikkila wrote:
> Let I915_FORMAT_MOD_4_TILED_BMG_CCS show up as supported modifier
> 
> Fixes: 97c6efb36497 ("drm/i915/display: Plane capability for 64k phys alignment")
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9452cad41d07..17d4c880ecc4 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>  	if (gen12_plane_has_mc_ccs(i915, plane_id))
>  		caps |= INTEL_PLANE_CAP_CCS_MC;
>  
> +	if (DISPLAY_VER(i915) >= 14 && IS_DGFX(i915))
> +		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
> +

With the simplification in plane_has_modifier() discussed earlier
removing the BMG/LNL checks as a follow-up this looks ok:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  	return caps;
>  }
>  
> -- 
> 2.45.2
> 
