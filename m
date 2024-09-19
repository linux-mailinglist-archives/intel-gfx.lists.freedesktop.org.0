Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F0397CDC5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 20:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D28610E761;
	Thu, 19 Sep 2024 18:42:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOAB/NUe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A2710E761;
 Thu, 19 Sep 2024 18:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726771367; x=1758307367;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uXFvK9JaQcZiW0iJyiy185Pxi5lPeR6y9UqBsr5hUYg=;
 b=YOAB/NUeSw6sebC07XJGbrwMpYvszb6BIMBL0zLi4CmPhfoPdnxA6hb4
 9caB1ZsqFU1fbC0167S4Yps8BLtT72ExIz1h2RnKYDcxlzr777cHs6dR4
 cR/kOiekrgD6Jkg8f8bk/lZFCbWMmUttJXqwktjijMH19EMdaXO+Lue2x
 GX10ezJAAeA0gbbuilA4o2MToCGvUBIAXsD8hZIluiQau5aGF5mqOrTbx
 HZOZ5jsC4BIssiAjNl7WE4Njhk+mvFQoadzyflOpOfAFQ1h5MiZceLPGm
 IPH9SLcXJmH0gE7MeBf0EzCuOUMiBzVBZjSBgwz8aaC4Kz3gfez/JV/C/ g==;
X-CSE-ConnectionGUID: +dT9V7npRFSP4x83DyqZmA==
X-CSE-MsgGUID: GuFaqQFyQx2la7qzf7VWjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="51169021"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="51169021"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 11:42:47 -0700
X-CSE-ConnectionGUID: tWIE4sYsS/ejNtNlRFmWIg==
X-CSE-MsgGUID: 4BgPGuTLS/OmCYxB2FK5FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70160669"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 11:42:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 21:42:43 +0300
Date: Thu, 19 Sep 2024 21:42:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 14/15] drm/i915/display: Consider ultrajoiner for
 computing maxdotclock
Message-ID: <ZuxwoxdVfnd9oviN@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-15-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-15-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Sep 18, 2024 at 08:13:42PM +0530, Ankit Nautiyal wrote:
> Use the check for ultrajoiner while computing maxdotclock.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 044f91359c42..b1dc44f9fa88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8197,8 +8197,11 @@ static int max_dotclock(struct drm_i915_private *i915)
>  {
>  	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
>  
> +	if (HAS_ULTRAJOINER(i915))
> +		max_dotclock *= 4;
> +
>  	/* icl+ might use joiner */
> -	if (HAS_BIGJOINER(i915))
> +	else if (HAS_BIGJOINER(i915))

I'd probably write that as 'HAS_BIGJOINER || HAS_UNCOMPRESSED_JOINER'
just to reduce our dependency on the subtle detail that all current
uncompressed joiner capable hardware is also bigjoiner capable.

In fact, technically that isn't even true because bigjoiner
depends on dsc which can (at least theoretically) be fused
odd. Perhaps we also want to include a has_dsc check in
HAS_BIGJOINER() and HAS_ULTRAJOINER()...


>  		max_dotclock *= 2;
>  
>  	return max_dotclock;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
