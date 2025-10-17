Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7AEBE8CFF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 15:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC3710EBEE;
	Fri, 17 Oct 2025 13:22:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCktup4l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1E910EBEC;
 Fri, 17 Oct 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760707373; x=1792243373;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cNKfd2OUhLSNkBfbedo5lNbJ54QKExpQFHuoqCnG25E=;
 b=UCktup4lr7RPxtw9k85Y2kYm0KnagDa7yo7ZFMPW/p0y8WHHtJiW+1YP
 smm9B8o9XAnSoWkQMu0NryyPJ+TWrb/O4heMJfhNNiUmIjJEuNsAfPirU
 n3j8K7Jix1My+raTXZoWcTSjtP3qUjzhzvDIR3MbwgkLZTwJmvRZT/A8v
 HnqaWJSP5oPD8pgGkYYdaK03X9KN2APGyfa6DYBvp6a0u+F7IcId8P6I0
 Nw72qg/ZoM/SgG97rr/13iC/jjt3B9qn82wM2OQIOBpg2mnJhM2drTROU
 pKRaS6BGEaFQxg7kg25wLrGT8OL/6CRjdq+gbbgfovYw3CHAhVevo1IIz g==;
X-CSE-ConnectionGUID: dkQDxv7GR02O4+ndxK7Z8g==
X-CSE-MsgGUID: PLoGNFfmTsKmhYVi3E1q0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="66780572"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="66780572"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 06:22:53 -0700
X-CSE-ConnectionGUID: ZuR8LekdTl+FxwIPoSOdaA==
X-CSE-MsgGUID: nyyAMjW4R8K0HvUCj9F6Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="183143474"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 06:22:52 -0700
Date: Fri, 17 Oct 2025 16:22:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Naladala Ramanaidu <ramanaidu.naladala@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Subject: Re: [PATCH v1] drm/i915: Add fallback for CDCLK selection when
 min_cdclk is too high
Message-ID: <aPJDKDuuUWfL6FaU@intel.com>
References: <20251017114821.780466-1-ramanaidu.naladala@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251017114821.780466-1-ramanaidu.naladala@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Oct 17, 2025 at 05:18:21PM +0530, Naladala Ramanaidu wrote:
> In cases where the requested minimum CDCLK exceeds all available
> values for the current reference clock, the CDCLK selection logic
> previously returned 0. This could result coverity division or
> modulo by zero issue.
> 
> This change introduces a fallback mechanism that selects the last
> valid CDCLK value associated with the current reference clock. A
> warning is logged to indicate that the minimum requirement could
> not be satisfied, and a safe fallback value is used instead.
> 
> Fixes: Coverity CID 2628056
> 
> Signed-off-by: Naladala Ramanaidu <ramanaidu.naladala@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index e92e7fd9fd13..a90b602a40c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1551,17 +1551,21 @@ static int cdclk_divider(int cdclk, int vco, u16 waveform)
>  static int bxt_calc_cdclk(struct intel_display *display, int min_cdclk)
>  {
>  	const struct intel_cdclk_vals *table = display->cdclk.table;
> -	int i;
> +	int i, last_valid_cdclk = 0;
>  
> -	for (i = 0; table[i].refclk; i++)
> +	for (i = 0; table[i].refclk; i++) {
>  		if (table[i].refclk == display->cdclk.hw.ref &&
>  		    table[i].cdclk >= min_cdclk)
>  			return table[i].cdclk;
>  
> +		if (table[i].refclk == display->cdclk.hw.ref)
> +			last_valid_cdclk = table[i].cdclk;
> +	}
> +
>  	drm_WARN(display->drm, 1,
> -		 "Cannot satisfy minimum cdclk %d with refclk %u\n",
> -		 min_cdclk, display->cdclk.hw.ref);
> -	return 0;

Will never happen because we never pass in a min_cdclk that
high into this function.

At some point I was thinking of determining the max cdclk via
'calc_cdclk(INT_MAX)' to get rid of some of the magic numbers
in intel_update_max_cdclk(). But I think in some cases the table
will contain values >max_cdclk anyway, so that probably is
not going to fly anyway.

So without that I don't think we really need this much
complexity and you could just do:

- return 0;
+ return display->cdclk.max_cdclk_freq;

> +		 "Cannot satisfy minimum cdclk %d with refclk %u, falling back to %d\n",
> +		 min_cdclk, display->cdclk.hw.ref, last_valid_cdclk);
> +	return last_valid_cdclk;
>  }
>  
>  static int bxt_calc_cdclk_pll_vco(struct intel_display *display, int cdclk)
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
