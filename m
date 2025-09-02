Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31800B3FDD1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 13:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFE810E66F;
	Tue,  2 Sep 2025 11:32:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YxYmkKFy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9DA710E66E;
 Tue,  2 Sep 2025 11:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756812762; x=1788348762;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QoBna7Y+ZScQpA8mvZ80PfEHfiPCCxMQeCNKgob8FzA=;
 b=YxYmkKFy6in79wOPQNGL0QRxXpPzVRWTbwckftq8cZmkmQuZSpqw2VWH
 T5xptzvU73iJ4Ol5u0qd0tMyPfKjYuI0iyumUNd7efOK0DD14gwRUpzqU
 6mVMlgy9dLEpfgDRCO+wzxrZlX0lKDUZf1P5VewbC3ZBe7PtonQC3PpFG
 8ikWGBk3MDnI+1Ap9cgS38cwq1txZVEHdoMUsdk4Tqzq80zHnCHB+2jbC
 BJiwzpndQZ7ozqHi+ioE2IpQj7X/haFxnGbdtxMhs+AEvHUl7HL7sr38e
 Qro5wLDmnRQDIG3mBQZyIrzg+Mh4ue44RmTtMSqGNtLswPLd3f+a31g3R Q==;
X-CSE-ConnectionGUID: wgxYl3qfQ4mtvuSApHxtQg==
X-CSE-MsgGUID: 32vVfXJ1TpaELt80eoiW/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="58115929"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="58115929"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 04:32:42 -0700
X-CSE-ConnectionGUID: fq4BpWR7TTaXOvvSVcds7w==
X-CSE-MsgGUID: emOXXh/vTV6iZVmoUcztmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175631492"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 04:32:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vinod.govindapillai@intel.com, Uma
 Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction
 for ADL+
In-Reply-To: <20250902113538.269338-2-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902113538.269338-1-uma.shankar@intel.com>
 <20250902113538.269338-2-uma.shankar@intel.com>
Date: Tue, 02 Sep 2025 14:32:36 +0300
Message-ID: <d3e3b81650fc0206f6d5f238e72c1340c5171c8e@intel.com>
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

On Tue, 02 Sep 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> FBC restriction where FBC is disabled for non-modulo 4 plane size
> (including plane size + yoffset) is fixed from ADL onwards in h/w.
> WA:22010751166
>
> Relax the restriction for the same.
>
> v2: Update the macro for display version check (Vinod)
>
> Credits-to: Vidya Srinivas <vidya.srinivas@intel.com>

Credits-to: is not a trailer we should be using. What does it mean?

The common ways are either:

Suggested-by: N.N.

or a combo of:

Co-developed-by: N.N.
Signed-off-by: N.N.

Whichever the case may be.


BR,
Jani.


> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index d4c5deff9cbe..9e097ed80bd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1550,14 +1550,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
>  	 * and screen flicker.
>  	 */
> -	if (DISPLAY_VER(display) >= 9 &&
> +	if (IS_DISPLAY_VER(display, 9, 12) &&
>  	    plane_state->view.color_plane[0].y & 3) {
>  		plane_state->no_fbc_reason = "plane start Y offset misaligned";
>  		return 0;
>  	}
>  
>  	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> -	if (DISPLAY_VER(display) >= 11 &&
> +	if (IS_DISPLAY_VER(display, 9, 12) &&
>  	    (plane_state->view.color_plane[0].y +
>  	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
>  		plane_state->no_fbc_reason = "plane end Y offset misaligned";

-- 
Jani Nikula, Intel
