Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F97576AA5A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 09:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BCC10E317;
	Tue,  1 Aug 2023 07:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47DC710E317
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 07:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690876663; x=1722412663;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bOsNrT6jiyTaFAKA4UK925IdsH5uxBpVDlUsjcBPEd4=;
 b=c0W7gpGcqXGJnpQ/sdzSKQMi9AMusqsSGFkz0/fMjw4k6Ngn9TpDrOPX
 IPb0yk3bo419TFpYc92helaaGC69EyKLlH01ZFF4xaSiJNO/5L0SUjq/X
 c6Ni6SLc+Pykb1e1p/crD0nGkcvTtXEL0AetzwUQJHZDO5I/dflq2lZ+5
 GdViSeufNXo6MB/8pNaYsYY5wzOEE8UzS5r+/RpglGSaTRsZYRN+YDUuF
 ccPYiwEarpTWF2PaTCDcHKz3suFDjBLi/7Qnu6pXiKCcoTTLru0DCBx+O
 qHyKGFc8Z1Tce6NqVQ7kQjSGibY8ZptbHV8LfuRgpDFNySD1jZxhmUQ7I A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="369221873"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="369221873"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 00:57:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="798574550"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="798574550"
Received: from igorban-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.36.188])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 00:57:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230725001312.1907319-15-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-15-matthew.d.roper@intel.com>
Date: Tue, 01 Aug 2023 10:57:39 +0300
Message-ID: <87tttjw5xo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 24 Jul 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> +/*
> + * Check whether a GT contains the specific IP version and a stepping within
> + * the specified range [from, until).  The lower stepping bound is inclusive,
> + * the upper bound is exclusive (corresponding to the first hardware stepping
> + * at when the workaround is no longer needed).  E.g.,
> + *
> + *    IS_GT_IP_STEP(GFX, IP_VER(12, 70), A0, B0)
> + *    IS_GT_IP_STEP(MEDIA, IP_VER(13, 00), B1, D0)
> + *    IS_GT_IP_STEP(GFX, IP_VER(12, 71), B1, FOREVER)
> + *
> + * "FOREVER" can be passed as the upper stepping bound for workarounds that
> + * have no upper bound on steppings of the specified IP version.
> + *
> + * Note that media version checks with this macro will only work on platforms
> + * with standalone media design (i.e., media version 13 and higher).
> + */
> +#define IS_GT_IP_STEP(type, gt, ipver, since, until) \
> +	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
> +	 (__IS_##type##_GT(gt) && \
> +	  __GT_VER_FULL(gt) == ipver && \
> +	  __GT_STEP(gt) >= STEP_##since && \
> +	  __GT_STEP(gt) <= STEP_##until))
> +

I really dislike the type, since and until arguments here, passing in
something that becomes part of the name of another macro. That's
something we do in some of our macro spaghetti internally, but not as
part of an interface that gets called all over the place.

For function-like macros, I'd generally like to make them such that they
could be converted to regular (static inline) functions without changing
the call sites.

BR,
Jani.


>  #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
>  #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
>  					       RUNTIME_INFO(i915)->media.ip.rel)
> @@ -710,10 +736,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>  
> -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> -	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> -	 IS_GRAPHICS_STEP(__i915, since, until))
> -
>  #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))

-- 
Jani Nikula, Intel Open Source Graphics Center
