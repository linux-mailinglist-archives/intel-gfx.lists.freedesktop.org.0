Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3760E960367
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 09:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 165C510E044;
	Tue, 27 Aug 2024 07:40:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F4XWbbUF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F2B10E044;
 Tue, 27 Aug 2024 07:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724744438; x=1756280438;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pyCUaUOZ88bu1kCFPoI67+3r2SrdaKePTo5v+ckGMjw=;
 b=F4XWbbUFSuTpDTynPZz6qQbWesO57E/opcQxvpQXuqopYnOzLOJ4UHEg
 oKEPox44NjLTl8r8Xq2YjW0AlC0NKwHWq7BBjiP+yDajT8SidHXPw8/A4
 +R5Hk6wOE/JzKWhheJQsTy+nYPEUNQkwm8VKUJyAPLrccjiEGaiLJdSrp
 9ilqu92gmRmEmbdlrE8VT9S6bf97zvS/WgFXcPT+SYO8hKZDLiplCIuY9
 D07tLXMN5gprXGpEuSmMosUC830WOAH75IVhdDmUdZkvoqLkxCo6og2/X
 uzWOj4+9b45PbV3cYtE/xlmWime0ne5wGzf0e/3BLCuMy//3a4TMCm6mq A==;
X-CSE-ConnectionGUID: B2vZsoWqQwWZMLOOW4czww==
X-CSE-MsgGUID: 0JQfYe7PS72oD8XIP5e1tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23364772"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="23364772"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 00:40:38 -0700
X-CSE-ConnectionGUID: 8JxUVqb6TWGsytTmZZO/Wg==
X-CSE-MsgGUID: NOC6IQ06QT+EW1HREFZ43w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="85962357"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 00:40:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/i915/display: BMG supports UHBR13.5
In-Reply-To: <20240827064047.132278-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240827064047.132278-1-arun.r.murthy@intel.com>
Date: Tue, 27 Aug 2024 10:40:33 +0300
Message-ID: <87a5gy1ki6.fsf@intel.com>
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

On Tue, 27 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> UHBR20 is not supported by battlemage and the maximum link rate
> supported is UHBR13.5
>
> HSD: 16023263677
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 789c2f78826d..3232ec4b2889 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -528,6 +528,10 @@ static void
>  intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  {
>  	/* The values must be in increasing order */
> +	static const int bmg_rates[] = {
> +		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
> +		810000,	1000000, 1350000,
> +	};
>  	static const int mtl_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
>  		810000,	1000000, 2000000,
> @@ -558,8 +562,13 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  		    intel_dp->source_rates || intel_dp->num_source_rates);
>  
>  	if (DISPLAY_VER(dev_priv) >= 14) {
> -		source_rates = mtl_rates;
> -		size = ARRAY_SIZE(mtl_rates);
> +		if (IS_DGFX(dev_priv)) {

Why dgfx instead of bmg? Should be explained in commit message at the
very least.

BR,
Jani.

> +			source_rates = bmg_rates;
> +			size = ARRAY_SIZE(bmg_rates);
> +		} else {
> +			source_rates = mtl_rates;
> +			size = ARRAY_SIZE(mtl_rates);
> +		}
>  		max_rate = mtl_max_source_rate(intel_dp);
>  	} else if (DISPLAY_VER(dev_priv) >= 11) {
>  		source_rates = icl_rates;

-- 
Jani Nikula, Intel
