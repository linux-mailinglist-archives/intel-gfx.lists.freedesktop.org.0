Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1879A5CD3F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:08:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EB5710E2B2;
	Tue, 11 Mar 2025 18:08:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SSqtEVGg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5107810E654;
 Tue, 11 Mar 2025 18:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716533; x=1773252533;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+0tXmWfLeOTktSYfH9M51jPsjYMyqkt/cELp8NHUPiE=;
 b=SSqtEVGgVgssrpitgJUQekc0rn95yEbu48N5Prs5L/nBWjQOiqyq2oJK
 MjoL7ykhzIVYlMxruW4OT25nGgaT2rsGvSjNt+SQnuCDXHQdh7a0on6GY
 +xCemsLsIy862EsaHbvZrPsV3Y97DNTBIttqfMZFab+tsgXfBWYNtX2Mn
 CZv8RZrduO+E6NHgzsVHjgcJGdcyBQx5ZyCaaegPpQuI5lCZ/ShPf2/Lk
 94D5VRp1nHd4BNBkXMD39Ix/h9aVnMziSB2QD40FMS9LJUFdqdKHHYwnv
 dZGm2U+fq5sxiNi8xwr4lNEQoSgClbyaTluNvN6kbXWtAZwJ63XnQ9udl Q==;
X-CSE-ConnectionGUID: jUFZ00BwTPiNav79CaAiAQ==
X-CSE-MsgGUID: /HtOwc1mSR2i1cfHYcd6Mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42648379"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42648379"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:08:53 -0700
X-CSE-ConnectionGUID: kcfHLcR8QgOdQW2Zlo7LHQ==
X-CSE-MsgGUID: +sU/ZiPiSeW2cWEPtBDzLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="143590016"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:08:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
In-Reply-To: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
Date: Tue, 11 Mar 2025 20:08:48 +0200
Message-ID: <87wmcvfnin.fsf@intel.com>
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

On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 717286981687..332647c4ca81 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -142,10 +142,12 @@ struct intel_display_platforms {
>  	func(supports_tv);
>  
>  #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
> +#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>  #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)

Y comes before _ in asciibetical order.

BR,
Jani.

>  #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>  #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>  #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
> +#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>  #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>  #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>  #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
> @@ -189,8 +191,6 @@ struct intel_display_platforms {
>  					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
>  					 HAS_DSC(__display))
>  #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
> -#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
> -#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>  #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>  #define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
>  #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)

-- 
Jani Nikula, Intel
