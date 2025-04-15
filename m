Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A03A1A89647
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 10:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A1410E686;
	Tue, 15 Apr 2025 08:17:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LaSr1X4j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A14A10E686
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Apr 2025 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744705028; x=1776241028;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7qvg2Il73Tg4I41I1EjqSmgZzzxH9ctpfroNgvrYDKk=;
 b=LaSr1X4jc5Dr283fmrFnEHcfDgCRDiTFVmo8qk/fZj84qe6cYOOa4A39
 YDPoSPdB9ocKuSQTat19Ap1Hh63vQNawp6e4Cr7FtS8mLnz8tzvHaWMqh
 R9mSLLXxZggvQkjIZA3/hIP4UP3A4QXG7YB3nYSNWlhPJNSZzH9+4kdrl
 dm6koctAeIzAb4HnNNgCFw2DuABzeGGBDi0uJy/ZX5ABpi35HGnYoMGSU
 oOWv9+s55Gps2qzBvefayg5ONibrxwBNzO9GP8xZMa3hpumwAfoE9Rb0E
 o/qg1HaOahIE0ukxUiHUATIALRr4bMXRVQhlRYbhCVY/1q/hVhV/KaYow g==;
X-CSE-ConnectionGUID: jMgwgzLvTnmIehck0TxNFQ==
X-CSE-MsgGUID: orqtaue9QjS/KnYPZYPmcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="45434943"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="45434943"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 01:17:06 -0700
X-CSE-ConnectionGUID: Lgl/ryUtRDO8GJuL7NjBtQ==
X-CSE-MsgGUID: xu3SQpipRCGJ95tHhLt+Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="161030254"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 01:17:05 -0700
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
Date: Tue, 15 Apr 2025 11:17:01 +0300
Message-ID: <87plhdsute.fsf@intel.com>
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

Thanks, pushed to din.

BR,
Jani.

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
