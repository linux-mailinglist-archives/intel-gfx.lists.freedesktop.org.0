Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C52B9DFD71
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:42:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA17210E695;
	Mon,  2 Dec 2024 09:42:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iurA/R2b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE5510E696;
 Mon,  2 Dec 2024 09:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733132562; x=1764668562;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+p0ClFdztuUsntN+ixs1sLkiHCQ8GkueH2DRCK/pnZI=;
 b=iurA/R2bCTk1MIH2brKY70/1s/RxxUxrKSDJG1EE1IRLoqwLu/biLo/O
 PAJ/V4H8MUq+MM1WEPqTg9vESmEBHjhBcD0etckjkqP4gjNv4O9aKzjog
 47dZTKpPfHNosYMCgUu0RxwZHPljsLhmEEqbPSYMBFV8tM4h1AS8jRM6Y
 rCKQKLqJmOzO778LGsWoPjF37+QraygpuOvzArpdayu2ZleJQQORsukEP
 mRQad45A4IDUoYZqFxr2D0+E+ZVJu9W8PA3SA2j6G1PER8KYgdRExdTCs
 QpXRLMMV/9JyYSFLDLJ0kwsxKNNQ6eDdhFAQC8CQ7P7nZealzIRCcssxZ A==;
X-CSE-ConnectionGUID: MDXUzgrxS3q26hO8UIch1A==
X-CSE-MsgGUID: w8A2b9clSLO5LNZ2WJ+2lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="50811096"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="50811096"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:42:42 -0800
X-CSE-ConnectionGUID: HYZajcBHQPmx0a244/JIoQ==
X-CSE-MsgGUID: LSWOxFKPTluCqxTCmoWJqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="123992888"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.77])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:42:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
In-Reply-To: <20241115160116.1436521-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
Date: Mon, 02 Dec 2024 11:42:26 +0200
Message-ID: <871pyq775p.fsf@intel.com>
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

On Fri, 15 Nov 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Initialize max_latency variable to LNL_PKG_C_LATENCY_MASK which helps
> to eliminate the else block and make the whole code a lot cleaner.
> While we are at it group the initialized variable together.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1a4c1fa24820..a49e8915346e 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2857,9 +2857,8 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
>  static void
>  skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
>  {
> -	u32 max_latency = 0;
> +	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_wake_time = 0;

Whoops. Please read your own commits through before sending.

BR,
Jani.

>  	u32 clear = 0, val = 0;
> -	u32 added_wake_time = 0;
>  
>  	if (DISPLAY_VER(i915) < 20)
>  		return;
> @@ -2870,9 +2869,6 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
>  			max_latency = LNL_PKG_C_LATENCY_MASK;
>  		added_wake_time = DSB_EXE_TIME +
>  			i915->display.sagv.block_time_us;
> -	} else {
> -		max_latency = LNL_PKG_C_LATENCY_MASK;
> -		added_wake_time = 0;
>  	}
>  
>  	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;

-- 
Jani Nikula, Intel
