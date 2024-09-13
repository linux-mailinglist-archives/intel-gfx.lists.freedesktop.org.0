Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7549B977908
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 08:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D6410EC78;
	Fri, 13 Sep 2024 06:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZxxVdmsV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1155210EC78;
 Fri, 13 Sep 2024 06:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726210606; x=1757746606;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=8/wDBU8wPGHUt6UYxzGsp5e8Ub+BkOKGWeATK2b6Q1k=;
 b=ZxxVdmsVDUpko80dLYL85ttD0v15fuKoqexvZAfBfl5r2FA5jE8e1NQ5
 cXmXdG3D15RmdtwSAklg4jAxiAsRLc99QwII5ND4xc7h6mT8ijxWobse+
 I8koCpSJIF1ZEHl6GqlxiUfIZbJxtVAVzWNd4nZ+AM5Uf81wK7alIEaMD
 zXSDtwfTlCFlqFduEb8Ot7ZxjjudoZn2ekeYBecoi58A4WbOkVcNdRafW
 S+33vxKvJdQUNt0D/tRaWPV89OZyrJOhKbVIKEetni//H897wZoikxBW9
 kBA2FnnRyFzJbcqt4gJHzfltKO28JU7r1TxUAzGItb+9HbcwHX5pxdKpQ Q==;
X-CSE-ConnectionGUID: wx0IlYv+S+mH9X8EHu2SnA==
X-CSE-MsgGUID: VEUQcq2iTXmK3d26KhxLNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="24974570"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="24974570"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 23:56:46 -0700
X-CSE-ConnectionGUID: msZSK05cQLGOkpwEzizakw==
X-CSE-MsgGUID: Dfja8zqiS+Cy9GjhR1GmwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="68266756"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 23:56:44 -0700
Date: Fri, 13 Sep 2024 09:57:07 +0300
From: Imre Deak <imre.deak@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: On plane capability check rely on
 display version
Message-ID: <ZuPiQ7B5jNtqXrhn@ideak-desk.fi.intel.com>
References: <20240912152432.867593-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240912152432.867593-1-juhapekka.heikkila@gmail.com>
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

On Thu, Sep 12, 2024 at 06:24:32PM +0300, Juha-Pekka Heikkila wrote:
> When check in display code for Xe2 ccs modifiers rely on display version
> along with separation of dgpu and igpu
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index c9038d239eb2..25de4ce356bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -477,12 +477,10 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>  	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
>  		return false;
>  
> -	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> -	    (GRAPHICS_VER(i915) < 20 || !IS_DGFX(i915)))
> +	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS && !IS_DGFX(i915))
>  		return false;
>  
> -	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS &&
> -	    (GRAPHICS_VER(i915) < 20 || IS_DGFX(i915)))
> +	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS && IS_DGFX(i915))
>  		return false;

Instead of the above platform checks, the required page size for all planes
could be explicitly specified by adding INTEL_PLANE_CAP_NEED4K_PHYS and
requiring this plane cap for the LNL_CCS modifier.

>  
>  	return true;
> -- 
> 2.45.2
> 
