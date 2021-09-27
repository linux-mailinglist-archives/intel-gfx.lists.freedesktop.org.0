Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3774191A8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 11:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A166E838;
	Mon, 27 Sep 2021 09:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF896E838
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 09:38:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10119"; a="221242380"
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="221242380"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 02:38:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="553127940"
Received: from susuale1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.36.178])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 02:38:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
In-Reply-To: <20210915054338.29869-1-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210915054338.29869-1-vandita.kulkarni@intel.com>
Date: Mon, 27 Sep 2021 12:38:50 +0300
Message-ID: <87fstqs6hh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix the dsc check while
 selecting min_cdclk
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

On Wed, 15 Sep 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> The right parameter that selects second dsc engine is dsc_split.
> Hence use dsc_split instead of slice_count while selecting the
> cdclk in order to accommodate 1ppc limitaion of vdsc.
>
> Fixes: fe01883fdcef ("drm/i915: Get proper min cdclk if vDSC enabled")
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Sorry for the delay!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 9aec17b33819..3a1cdb3937aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2140,13 +2140,11 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>  
>  	/*
> -	 * VDSC engine can process only 1 pixel per Cd clock.
> -	 * In case VDSC is used and max slice count == 1,
> -	 * max supported pixel clock should be 100% of CD clock.
> -	 * Then do min_cdclk and pixel clock comparison to get cdclk.
> +	 * When we decide to use only one VDSC engine, since
> +	 * each VDSC operates with 1 ppc throughput, pixel clock
> +	 * cannot be higher than the VDSC clock (cdclk)
>  	 */
> -	if (crtc_state->dsc.compression_enable &&
> -	    crtc_state->dsc.slice_count == 1)
> +	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
>  		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
>  
>  	/*

-- 
Jani Nikula, Intel Open Source Graphics Center
