Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA823B4FCFA
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:29:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1E710E73E;
	Tue,  9 Sep 2025 13:29:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCqduplp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F0010E73D;
 Tue,  9 Sep 2025 13:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757424586; x=1788960586;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cnm5QV8EXDPWoLKn4Him13jALBRIl+2wvG317WSeU3I=;
 b=fCqduplp51ewcR8jrdUdpTQJ4ALFzmRqBeObaZo3hxSaNWaFbA6PaTnm
 jxJcIthIOn3CCja1i4cFDP5zzwtScf1APHsLvhf20o2wt7L7hpKQaoG81
 YSHzZ5VTb8p02U/858YfohQnQCWgpwHQsYPsLQr0FEFgc4pFYM4dD1fo4
 xWdd9AAfzNU67Ph4Y9MJV7tHOIDblKmISxUGWEHyrkkOauBj+qS5z6wdr
 rHCzgIm/spcXcSbskl5sY+2sCBp+IjGH3hJ5wz4gkU1W/AY+GE7oEFNxt
 9mCybCpvDcAYpuiLYw3ifgpFIQmai9s0kg7Lp1SeF1S8wrD9F+INZ/6GL A==;
X-CSE-ConnectionGUID: 9HI8bmkyRmmjyEd9fLyO5w==
X-CSE-MsgGUID: zfsQNW3iTN6bNsyllmPWqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="63344076"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="63344076"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:29:46 -0700
X-CSE-ConnectionGUID: /3hcvz5iRMCvIW6Bcov3cA==
X-CSE-MsgGUID: fbRH5BkCRJ6RsGcFAi5udg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="177381105"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.181])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:29:43 -0700
Date: Tue, 9 Sep 2025 16:29:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 00/12] drm/i915: vlv clock cleanups
Message-ID: <aMArwlpXAoA60Q-0@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Aug 19, 2025 at 03:53:30PM +0300, Jani Nikula wrote:
> Rebase and resend of [1].
> 
> [1] https://lore.kernel.org/r/cover.1754385408.git.jani.nikula@intel.com
> 
> Jani Nikula (12):
>   drm/i915: add vlv_clock_get_gpll()
>   drm/i915: add vlv_clock_get_czclk()
>   drm/i915: add vlv_clock_get_hrawclk()
>   drm/i915: make vlv_get_cck_clock_hpll() static
>   drm/i915: add vlv_clock_get_cdclk()
>   drm/i915: make vlv_get_cck_clock() static
>   drm/i915: rename vlv_get_hpll_vco() to vlv_clock_get_hpll_vco()
>   drm/i915: cache the results in vlv_clock_get_hpll_vco() and use it
>     more
>   drm/i915: remove intel_update_czclk() as unnecessary
>   drm/i915: log HPLL frequency similar to CZCLK
>   drm/i915: move hpll and czclk caching under display
>   drm/i915: split out vlv_clock.[ch]
> 
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 29 ++----
>  drivers/gpu/drm/i915/display/intel_display.c  | 61 -------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  6 --
>  .../gpu/drm/i915/display/intel_display_core.h |  5 ++
>  .../drm/i915/display/intel_display_driver.c   |  1 -
>  drivers/gpu/drm/i915/display/vlv_clock.c      | 89 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/vlv_clock.h      | 38 ++++++++

Ideally that should live in soc/

I think we could even link it separately to both i915 and
the (eventual) display module since they don't actually
need to share anything (apart from the sideband mailbox
interface). Would avoid having to add anything for this
stuff into the inter module interface.

And as mentioned in the reply to one of the patches the
vlv_iosf_sb_get/put() stuff is now quite messy. So that
probably needs another cleanup pass to make the interface
actually sensible.

I guess all of that could be done/thought about later though,
so for now the series is:
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  3 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 11 ++-
>  drivers/gpu/drm/i915/i915_drv.h               |  3 -
>  drivers/gpu/drm/xe/xe_device_types.h          |  6 --
>  12 files changed, 148 insertions(+), 105 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.c
>  create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.h
> 
> -- 
> 2.47.2

-- 
Ville Syrjälä
Intel
