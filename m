Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51356A842C2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 14:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D197A10E97A;
	Thu, 10 Apr 2025 12:14:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="etlqQj1F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6090610E97A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Apr 2025 12:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744287294; x=1775823294;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yLeThZMPg+N9+x8UOj9DjmmBwHi/k9KLVJJFv0qgVz4=;
 b=etlqQj1FxZpgGSCwnscfeC1f5wAiIP0Ke/JFf0mf5HRrpacRG6zYtM/d
 HesxCq7+aawprK9h43l3eSS8viCNvJ/svt3u9UZDS9wxtapWGXNIuBjVv
 MbZjanOOqvA6RXVLq9CdO+fTLlIhDpQ+gpq+IuHUsgSjagLe8ekxiqhuY
 DOomRDstyet4Byane89EZ91jsa3Ihm4inJ1FF1PikoTnP2HuQnBAKVyNr
 eu+QlXEdpG/yvvt4WiHW8r7Vz+kZ4ZNAG+vYO6BXRp+KR8gqKvwqN7Kd5
 7QNLSLRywDTaYL0/hw6vCgmfsEUlF1XKbeM/UHLXijeGTQuxhkE0+n5U7 Q==;
X-CSE-ConnectionGUID: P+MrYIt9Q6KyQLdXB4d8qQ==
X-CSE-MsgGUID: U4TcjCqJS3yG405KKV63uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="49605071"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="49605071"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:14:53 -0700
X-CSE-ConnectionGUID: YfiSsusZSWe2ggDnbao9Sw==
X-CSE-MsgGUID: 5om9dQ3eQAa07FVJnlb5vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="129734106"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:14:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>, Imre Deak
 <imre.deak@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: Add link rate and lane count to
 i915_display_info
In-Reply-To: <20250409230214.963999-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250409230214.963999-1-khaled.almahallawy@intel.com>
Date: Thu, 10 Apr 2025 15:14:47 +0300
Message-ID: <87ecy0usaw.fsf@intel.com>
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

On Wed, 09 Apr 2025, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
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
> v3: separate output line (Jani)
>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

->lane_count is not relevant for all crtc's, but not a big deal.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 8f1f95637e09..ff7419ca7d56 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -555,6 +555,8 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  	seq_printf(m, "\tpipe src=" DRM_RECT_FMT ", dither=%s, bpp=%d\n",
>  		   DRM_RECT_ARG(&crtc_state->pipe_src),
>  		   str_yes_no(crtc_state->dither), crtc_state->pipe_bpp);
> +	seq_printf(m, "\tport_clock=%d, lane_count=%d\n",
> +		   crtc_state->port_clock, crtc_state->lane_count);
>  
>  	intel_scaler_info(m, crtc);

-- 
Jani Nikula, Intel
