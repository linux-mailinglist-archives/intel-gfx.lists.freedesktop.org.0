Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2F9A6D8AF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 11:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82E210E2D3;
	Mon, 24 Mar 2025 10:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVj/nPA+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7228C10E250
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Mar 2025 10:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742813726; x=1774349726;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=J05ppLwk5reC6/uCugpHE1tVmGxJrbCWZy33NMCNw4Y=;
 b=HVj/nPA+Ohbo8dCEpSUsk2iknIEl7OW50z5xXPP0+mRkO9k+LHNVlxkf
 x7PcleJ2XS7vKuG0QYo1sl7va8U8ixMfhfcx2xeVa8XEcrRJDrg1pcO+c
 lSoNLfg+AEPvGtYGR9/BshqNguzU5ELgRBUF0Ld2tolCfTFZ+qEpqb6Yj
 Z6rbHb5fuIvyY2XGvhq1v1mWEFgtApZYEo6wYXVw0wgmz/gdwTx36cbBs
 jUbBhZiU8l9P74FKE8EwEO+zVJGspqo0VRPhW79AC26qCKfGOs0EOoXqe
 yxqZkRoFQqQsBxvXDXdJa4AZ8Zw+WSmu3tUs0zeFcRI5LEEu+H+h6C5Aq g==;
X-CSE-ConnectionGUID: ZhsWwf1OS72rgNUOgTIbtQ==
X-CSE-MsgGUID: zneTUL1tQ3exkdcIwTd33w==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="66478493"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="66478493"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 03:55:24 -0700
X-CSE-ConnectionGUID: qXV3xdHYSseA8mnURoo8cA==
X-CSE-MsgGUID: Q2L3mDG1SyiKl8WMQx9TAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124467245"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 03:55:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>, Imre Deak
 <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/display: Add link rate and lane count to
 i915_display_info
In-Reply-To: <20250318220401.3904871-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250318220401.3904871-1-khaled.almahallawy@intel.com>
Date: Mon, 24 Mar 2025 12:55:18 +0200
Message-ID: <87y0wuaeax.fsf@intel.com>
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

On Tue, 18 Mar 2025, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
> Adding link rate and lane count information to i915_display_info makes it
> easier and faster to access this data compared to checking kernel logs.
> This is particularly beneficial for individuals who are not familiar with
> i915 in the following scenarios:
>
> * Debugging DP tunnel bandwidth usage in the Thunderbolt driver.
> * During USB4 certification, it is necessary to know the link rate used by
>   the monitor to prove that the DP tunnel can handle required rates.
> * In PHY CTS, when the connector probes are not mounted correctly,
>   some display lanes may not appear in the DP Oscilloscope, leading to CTS
>   failures.
>
> This change provides validation teams with an easy way to identify and
> troubleshoot issues.
>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index fdedf65bee53..bda7751472e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -551,9 +551,10 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  	seq_printf(m, "\tpipe__mode=" DRM_MODE_FMT "\n",
>  		   DRM_MODE_ARG(&crtc_state->hw.pipe_mode));
>  
> -	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d\n",
> +	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d, port_clock=%d, lane_count=%d\n",
>  		   DRM_RECT_ARG(&crtc_state->pipe_src),
> -		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp);
> +		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp,
> +		   crtc_state->port_clock, crtc_state->lane_count);

Maybe deserves to be a separate line instead of bundling it with pipe
src etc?

Also, lane_count is bound to be 0 for a lot of outputs where it's
irrelevant.

BR,
Jani.

>  
>  	intel_scaler_info(m, crtc);

-- 
Jani Nikula, Intel
