Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F04A0A963C6
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 11:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF3010E193;
	Tue, 22 Apr 2025 09:14:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4rFo9rO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A80A910E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Apr 2025 09:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745313256; x=1776849256;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=J8bg3xJRy+lun+MR/puA4UGIw3Nk+vSOchqXoNf3SWg=;
 b=g4rFo9rOioT3PpdR/RIwTmBZ+FYNjiqTNbI4kilPA7PrrbD7vFUDnXkF
 ldmCEvEGuU0cVbPWmn28nUBGv13h3nm6f7Le94KKcLkxrBa4OfvsE5Dmk
 NQ2Cu8jL6ygE923GpCX1odAV7lwAOYyofn8oTlyFEJhiCrZR7S7BetJ+i
 D2JSs1outNcfdjeaOzn/g5fTqByAkBKeDUMFjnjXo7ja8LhcUcciKVKX2
 5srIkyUvE1QEJhg1u2HHgZC97TVojVtbXTcI0AcN2g8onLW32Twq/Wdsg
 +rU48TXcIUMPHdEioxOaSfPH9ysuFmrDreRhIFNGEyY9TIh9d3SVLHwxH Q==;
X-CSE-ConnectionGUID: QIsuQhLzSmuectDxf8dG/Q==
X-CSE-MsgGUID: JyZVnomBQkuqXp15PkjjTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="50665479"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="50665479"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 02:13:35 -0700
X-CSE-ConnectionGUID: EBBFJOFQSIGFV1Gx1HW0iQ==
X-CSE-MsgGUID: g15CMGRgRxiY/TGy6jj+gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="132848399"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.98])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 02:13:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Julia Filipchuk <julia.filipchuk@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: John Harrison <John.C.Harrison@intel.com>, Julia Filipchuk
 <julia.filipchuk@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
In-Reply-To: <20250418233918.2217759-1-julia.filipchuk@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250418233918.2217759-1-julia.filipchuk@intel.com>
Date: Tue, 22 Apr 2025 12:13:30 +0300
Message-ID: <87ikmw1rut.fsf@intel.com>
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

On Fri, 18 Apr 2025, Julia Filipchuk <julia.filipchuk@intel.com> wrote:
> For newer platforms (post DG2) hardware intentionally stalls on
> submisstion of concurrent RCS and CCS of different address spaces. With
> this workaround GuC will never schedule such conlicting contexts;
> preventing detection of a stall as a hang.
>
> GuC specs recommend to enable this for all platforms starting from MTL
> supporting CCS.
>
> Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.h     | 8 ++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c | 9 ++++++---
>  2 files changed, 14 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 998ca029b73a..2f86b2291826 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -24,6 +24,14 @@ struct drm_printer;
>  	 GRAPHICS_VER_FULL((gt)->i915) >= (from) && \
>  	 GRAPHICS_VER_FULL((gt)->i915) <= (until)))
>  
> +/*
> + * Check that the GT is a graphics GT and has atleast minimum IP version.
> + */
> +#define IS_GFX_GT_IP_ATLEAST(gt, from) ( \
> +	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
> +	((gt)->type != GT_MEDIA && \
> +	 GRAPHICS_VER_FULL((gt)->i915) >= (from)))
> +
>  /*
>   * Check that the GT is a media GT and has an IP version within the
>   * specified range (inclusive).
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 9df80c325fc1..70c83c1588e9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -313,8 +313,12 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  	 *
>  	 * The same WA bit is used for both and 22011391025 is applicable to
>  	 * all DG2.
> +	 *
> +	 * Platforms post DG2 prevent behavior in hardware. This is implicitly
> +	 * enabled to give guc management over CCS scheduling.
>  	 */
> -	if (IS_DG2(gt->i915))
> +	if (IS_DG2(gt->i915) ||
> +	    (CCS_MASK(gt) && IS_GFX_GT_IP_ATLEAST(gt, IP_VER(12, 70))))
>  		flags |= GUC_WA_DUAL_QUEUE;

	GRAPHICS_VER_FULL((gt)->i915) >= IP_VER(12, 70)

You don't need an extra macro for a single use case that is covered by
existing macros.

BR,
Jani.


>  
>  	/* Wa_22011802037: graphics version 11/12 */
> @@ -322,8 +326,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  		flags |= GUC_WA_PRE_PARSER;
>  
>  	/*
> -	 * Wa_22012727170
> -	 * Wa_22012727685
> +	 * Wa_22012727170 Wa_22012727685
>  	 */
>  	if (IS_DG2_G11(gt->i915))
>  		flags |= GUC_WA_CONTEXT_ISOLATION;

-- 
Jani Nikula, Intel
