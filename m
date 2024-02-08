Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AC484DCC1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 10:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E45910E083;
	Thu,  8 Feb 2024 09:24:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bj5jiJR/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7277910E083
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 09:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707384284; x=1738920284;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FB9qOX79JGNQOW/6rGSqIiH+Lg2SkTQWTNqsSa/QyWQ=;
 b=bj5jiJR/o9W94Hyh3UdrA35PnpMNSCOzxiByJ7OVXxxBVIHNJZo6W+EM
 lDwp98ZapctsVZN4UBsgv1rDpfX/iSC+Dssswn53jTsqAC41GqJ2VMo3r
 GkQJu7rDBBxZQMuKDgZdcuSUCDxyLqn3MnhxbpZ230tGhazN/xKmTFCdN
 zQ+bMJRTd5GdSPQxvijgSN3cp/TbmZZL3Dw67hfizO0q19Ba8gkHQGXLl
 BFbP3g3ZsifUd6SlH/QR5Q5XdjVcZjMs4BFjSRZJz1H/z3AQe0BpX+dup
 DeAnRM3/c8xmmpveEPhJ044DUfn1g8w7SmDo0YnKjZPZcWmhY1naHaNPU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="23660475"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; d="scan'208";a="23660475"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 01:24:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; 
   d="scan'208";a="1626949"
Received: from aavzirov-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.13])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 01:24:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [PATCH 1/1] drm/i915/display: On Xe2 always enable
 decompression with tile4
In-Reply-To: <20240202150602.430036-2-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240202150602.430036-1-juhapekka.heikkila@gmail.com>
 <20240202150602.430036-2-juhapekka.heikkila@gmail.com>
Date: Thu, 08 Feb 2024 11:24:35 +0200
Message-ID: <871q9ncnqk.fsf@intel.com>
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

On Fri, 02 Feb 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> With Xe2 always treat tile4 as if it was using flat ccs.
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 511dc1544854..43209909593f 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -948,6 +948,11 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
>  	if (DISPLAY_VER(dev_priv) == 13)
>  		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
>  
> +	if (GRAPHICS_VER(dev_priv) >= 20 &&

Hmh, I just got rid of *all* GRAPHICS_VER and variants under display/.

BR,
Jani.


> +	    fb->modifier == I915_FORMAT_MOD_4_TILED) {
> +		plane_ctl |= PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> +	}
> +
>  	return plane_ctl;
>  }

-- 
Jani Nikula, Intel
