Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5522A460DA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:27:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A962A10E915;
	Wed, 26 Feb 2025 13:27:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXajMJUA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 809DD10E911;
 Wed, 26 Feb 2025 13:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740576431; x=1772112431;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5pk7w6Z23fhHqGYwZdYrr6Z0eSSkkznCUIUq6Fe6A4o=;
 b=NXajMJUAwaBjYVh5I2EkhvNhAPOR2u0OH/nku3MqhwpWz3aa4wbYNL52
 BuPRQv823+zMcgA+jhE/wbUaBpmFpuvOZSWO97uIWhuTQnu7SchHKmG+I
 BYIbmfDWxjcQLxN3mbx5d0gWAvV0tmrnSJWcZrq71OIdrxBSziHwRu9rS
 p2PKsbh4FP7QsmAXNmpgnrmCSLPkKhFygi8KX05+o4+2djabrX9jRQZXT
 k/LHhlDbt84+ATyLHZ7Yq7X7jwPdGg9EYhynd1BbZlEHbeW95vFccsB+D
 5WZsx1wZqFrGipqxy6IBk5xN/SP5/gvuwpFPJHWnrYi3uhAZz33Yz6LTI Q==;
X-CSE-ConnectionGUID: 4Zoq3gyRRNOXT2g16Hx0BQ==
X-CSE-MsgGUID: xSvA7WSASyu4/GPHLyX24g==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="44243690"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="44243690"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:27:11 -0800
X-CSE-ConnectionGUID: wbYNG+NKSTmGtEgMOxvjjw==
X-CSE-MsgGUID: sbg96qyYTkuPTi5SmT2Wrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121950783"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:27:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:27:07 +0200
Date: Wed, 26 Feb 2025 15:27:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 08/20] drm/i915/display: Enable MSA Ignore Timing PAR
 only when in not fixed_rr mode
Message-ID: <Z78WqyOtIE4bT-fR@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-9-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:05AM +0530, Ankit Nautiyal wrote:
> MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
> refresh rate.
> 
> Currently for link training we depend on flipline to decide whether we
> want to ignore the msa timings. With fixed refresh rate we will still
> fill the flipline in all cases whether panel supports VRR or not.
> 
> Change the condition for link training to ignore the msa timings if
> vrr.in_range.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 3cc06c916017..549e4ebd9404 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -725,7 +725,7 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>  					    const struct intel_crtc_state *crtc_state)
>  {
>  	intel_dp_link_training_set_mode(intel_dp,
> -					crtc_state->port_clock, crtc_state->vrr.flipline);
> +					crtc_state->port_clock, crtc_state->vrr.in_range);

I think one thing we are perhaps missing is the readout of
vrr.in_range. But we can't really read that out during driver
load since we don't have the connector information read in yet.
So if we do end up doing a modeset during initial_commit() we'll
clear the MSA ignore bit. But I guess the GOP probably wouldn't
even set that bit.

Where things can go wrong is when we do enable actual VRR mode
and there hasn't been any modesets since the initial_commit().
We might not have to perform a full modeset to enable VRR, and
thus we would never set the MSA ignore bit.

So I think we will need some kind of fastset support for this
DPCD write after all. Though we'd only have to do it on the
first real commit when we clear the inherited flag.

But this is a pre-existing problem so not something we have
to deal with this in this patch. Just something to put on the
TODO list...

This patch is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
>  
>  void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
