Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B36F9D21DF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 09:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FEAA10E5FB;
	Tue, 19 Nov 2024 08:51:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ejAvqaN4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5CE10E5F5;
 Tue, 19 Nov 2024 08:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732006318; x=1763542318;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=by2CvSNBSrpTwWdIkia6qomkVjRNshRC0+Ct5507tKw=;
 b=ejAvqaN4GzwHhyQcxQLjdkeQuRStLOiW5C+j3O7yygIixQtuYIQF2mbb
 t9Dtu1HxnyUG8dFuJgyXAH9lg7FPWNUYF6UjMob1tN//Pw5f7NMkfn9g2
 AZXIaNZwKkrdFyx3KlbWOE0dAfC/1yn80zbtRoka1HY+GvdYVBjFWWoxd
 0EjATWTOBEzbCVk6DGFv1X2IYnU5bB4lMGat/EmR/WOT9hDC+xuGEQWSL
 02pD4R+JZRmcOywHnpNomYdRLCg8R1ga0A0RuiJYF7fWvboGF7OEinWWF
 vPrVvYfXt+swrfZQemXxJ6SWHU1iT+5Ave/dZRnwrwz+BJXJ53UDCD60Z g==;
X-CSE-ConnectionGUID: Pb/gXxGCS++JBDMhyPfAgQ==
X-CSE-MsgGUID: CsH0SKB3TiObPGEID6iOEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="32050751"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="32050751"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 00:51:58 -0800
X-CSE-ConnectionGUID: 4NMmpi2aRbyUSm2CbVcfTQ==
X-CSE-MsgGUID: bp/TdSLfR1u1qSWySGuXOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="94558838"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 00:51:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: Re: [RFC PATCH 4/4] drm/i915/xe3: disable FBC if PSR2 selective
 fetch is enabled
In-Reply-To: <20241118235325.353010-5-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241118235325.353010-1-vinod.govindapillai@intel.com>
 <20241118235325.353010-5-vinod.govindapillai@intel.com>
Date: Tue, 19 Nov 2024 10:51:52 +0200
Message-ID: <87ttc338t3.fsf@intel.com>
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

On Tue, 19 Nov 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> FBC dirty rect support and PSR2 selective fetch canno be enabled
> together. In xe3 driver enables the FBC dirty rect feature by
> default. So PSR2 is enabled, then mark that plane as FBC cannot
> be enabled. Later on we need to find a way to select between
> FBC and PSR2 based on amount of damaged areas.
>
> Bspec: 68881
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 01080171790f..e1d55f5f2938 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1346,9 +1346,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	 * Display 12+ is not supporting FBC with PSR2.
>  	 * Recommendation is to keep this combination disabled
>  	 * Bspec: 50422 HSD: 14010260002
> +	 *
> +	 * In Xe3, PSR2 selective fetch and FBC dirty rect feature cannot
> +	 * coexist. So if PSR2 selective fetch is supported then mark that
> +	 * FBC is not supported.
> +	 * TODO: Need a logic to decide between PSR2 and FBC Dirty rect
>  	 */
> -	if (IS_DISPLAY_VER(display, 12, 14) && crtc_state->has_sel_update &&
> -	    !crtc_state->has_panel_replay) {
> +	if (IS_DISPLAY_VER(display, 12, 14) && DISPLAY_VER(display) >= 30 &&

This will never be true.

BR,
Jani.

> +	    crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
>  		plane_state->no_fbc_reason = "PSR2 enabled";
>  		return 0;
>  	}

-- 
Jani Nikula, Intel
