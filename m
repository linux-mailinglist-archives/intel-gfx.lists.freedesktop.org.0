Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D665BA7A1C8
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 13:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB8610E223;
	Thu,  3 Apr 2025 11:21:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/KhuqMs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14AA910E223
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Apr 2025 11:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743679276; x=1775215276;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rF/UuKJxatKHxV7b9OePo4tqguRWs1PVGxjbGrBE9GI=;
 b=n/KhuqMsP96Fu9kAQsyGEMqtFLasZHRK1rH6N2Rga7WhaxT8BP6Ds8SI
 HLPdrkOROavxgjP5IJZkHs1fs7bLKqNirv4f/6ABKhJ2U6kw6vz3tO3nw
 zzCm2/Fe3ue9QtTD/mjRLPA4gX1MOXLG4hiQbeP+nB+CbAENr9MWXgpNO
 H9YWT5Z2Y3E8kCWC77jKoTJpsHgDbeX6kpuizl05DBnE3zfBi64Y4WJnW
 pY6siqgKBZ0Y6iD4xRRrSkOHO+AH7M9PWcbddcV77ZqaWYREJcKM0Vd6a
 VDMdFAn0xx1wEZ/NzoBBtrdSsQDwcpVY/86u9agJFmvS1NAYlb4n8UBDO g==;
X-CSE-ConnectionGUID: YntvW/V0T7ufF1ga/QuAbQ==
X-CSE-MsgGUID: Je7XDaAsTcqqPrz7wv6+Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44964658"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="44964658"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 04:21:15 -0700
X-CSE-ConnectionGUID: GvYRG1kDQHuQ1/8lzuxTKQ==
X-CSE-MsgGUID: ATZPdupGQp+G1w0lVcDOAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="132105311"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 04:21:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>, Imre Deak
 <imre.deak@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Add link rate and lane count to
 i915_display_info
In-Reply-To: <20250401205431.502423-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250401205431.502423-1-khaled.almahallawy@intel.com>
Date: Thu, 03 Apr 2025 14:21:11 +0300
Message-ID: <87jz811oew.fsf@intel.com>
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

On Tue, 01 Apr 2025, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
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
> v2: separate seq_printf line (Jani)
>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 4c784bb7e14b..44df22bd7a18 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -552,9 +552,11 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  	seq_printf(m, "\tpipe__mode=" DRM_MODE_FMT "\n",
>  		   DRM_MODE_ARG(&crtc_state->hw.pipe_mode));
>  
> -	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d\n",
> +	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d",
>  		   DRM_RECT_ARG(&crtc_state->pipe_src),
>  		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp);
> +	seq_printf(m, ", port_clock=%d, lane_count=%d\n",
> +		   crtc_state->port_clock, crtc_state->lane_count);

I did mean separate *output* line, not just source line.

>  
>  	intel_scaler_info(m, crtc);

-- 
Jani Nikula, Intel
