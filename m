Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FEFBAFF2D
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 12:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16DC10E2FD;
	Wed,  1 Oct 2025 10:03:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LT0N9p9U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B051B10E2FD;
 Wed,  1 Oct 2025 10:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759312989; x=1790848989;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cHS2RXmzL2AzgEqpGNujieqIZp6XHP0iJHkVHrGIF+M=;
 b=LT0N9p9UbyyN/7qcXW9W1tNk4Ij/yS686/Dt8HthQFfVFx2uhnMySs4e
 oCJm7qKaaofbMYjkksA2tsQsCK2wKwOEZVcbA/rz5i/5HNuhg79DRclhb
 du4KeKQiDq80EdBabJ1F8SHCb8vPz23qxGfxeF11fpTiFuOlr9sArexKT
 +Al7Gq97/60k1Qchpfn7wKV/xLyzfzYUFTS7IVy4iJzMO6w/tCkjJYD85
 SjjSKmGMCsurTJ7jlcixvi6xKNGVWY3jrkeHxAEx6e2mr2wgW9rqCySVD
 QAXNfabCKe03nKDm4lkpdhfynTTh0K0BiY5ZcjwzowaiJqIOR3TDQ5fZt g==;
X-CSE-ConnectionGUID: Oqv8p2i+Q56EvUK4XLTJFQ==
X-CSE-MsgGUID: rIdsbbAfThajZgAwSfvEkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="60619079"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="60619079"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:03:09 -0700
X-CSE-ConnectionGUID: 3IiD1nTzQcWDgpT9M8BObA==
X-CSE-MsgGUID: HG+A9/kPQK24RrX0Fp1Erw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178799314"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:03:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ucas.demarchi@intel.com,
 kunal1.joshi@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v2] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
In-Reply-To: <20251001081209.272607-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001081209.272607-1-vinod.govindapillai@intel.com>
Date: Wed, 01 Oct 2025 13:03:03 +0300
Message-ID: <09f6e8b565bfbecc38f5978bde824192924a1bc4@intel.com>
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

On Wed, 01 Oct 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> wa_22014263786 is not applicable to the BMG and hence exclude it
> from the wa.
>
> v2: Limit this wa to display verion 11 to 14, drop DG2 from the
>     exclusion list, use intel_display_wa (Lucas)
>
> Bspec: 74212, 66624
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
>  drivers/gpu/drm/i915/display/intel_fbc.c        |  3 +--
>  3 files changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 31cd2c9cd488..7ca238725e30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -52,6 +52,16 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
>  	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
>  }
>  
> +/*
> + * Wa_22014263786:
> + * Fixes: Screen flicker with FBC and Package C state enabled
> + * Workaround: Forced SLB invalidation before start of new frame.
> + */
> +static bool intel_display_needs_wa_22014263786(struct intel_display *display)
> +{
> +	return DISPLAY_VERx100(display) >= 1100 && DISPLAY_VERx100(display) < 1401;

IS_DISPLAY_VERx100(display, 1100, 1400)

Also I'm not sure if we really need separate functions for one-liners
like this. The documentation could be in the switch case too? *shrug*.

BR,
Jani.

> +}
> +
>  /*
>   * Wa_14011503117:
>   * Fixes: Before enabling the scaler DE fatal error is masked
> @@ -67,6 +77,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  		return intel_display_needs_wa_16025573575(display);
>  	case INTEL_DISPLAY_WA_14011503117:
>  		return DISPLAY_VER(display) == 13;
> +	case INTEL_DISPLAY_WA_22014263786:
> +		return intel_display_needs_wa_22014263786(display);
>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index abc1df83f066..3644e8e2b724 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -25,6 +25,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_14011503117,
> +	INTEL_DISPLAY_WA_22014263786,
>  };
>  
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 0d380c825791..9607fdcb0cc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -933,8 +933,7 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  
> -	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
> -	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
> +	if (intel_display_wa(display, 22014263786))
>  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);

-- 
Jani Nikula, Intel
