Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E06B7FB1E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 16:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC3410E83F;
	Wed, 17 Sep 2025 14:04:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OnolXBKC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB5710E83F
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758117849; x=1789653849;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R206Tomi+P5Ep+nwWg4ILjLuxPikjRczPP57W+8jPMw=;
 b=OnolXBKCx7igDZjLQRG5kQ2ehcitQASzLuDDEw5qDfS0HiUxLm7HpUT2
 CvsHWoCSsjN5w4zLRhhF3T3YVc3+IqQL62eEPuTIe3yWpbjqKCtK/xjTA
 jACmNdrDanuPOwTpm0VHc1FkPSmJIJrHC/DZgFOTp5din0FVR85GNy2Vx
 GcGlXFAeD1txcg1Lw5XAWhG83uB62ct5AdyDJqwbgQQfvvG4ZqLNhwqZc
 lL9TMAjXiOzh4yVDBl+47SBPTrmHhOViqgvoEC8aqjorhNOV5cNOp24U/
 roRjfoRx472Fj7iqx+kWt/c2d+ldOyxoZaDUrP9b6yl5evSYYJdtMvo/q Q==;
X-CSE-ConnectionGUID: CHG8I3+tQBmT3INkLe0zVA==
X-CSE-MsgGUID: XUrIUPaYRDe1Z7iuheEerw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64225381"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64225381"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 07:04:09 -0700
X-CSE-ConnectionGUID: xUIo2SCBTPidgD4n1mhwSQ==
X-CSE-MsgGUID: bKlTOiibQzOv35qLKIojnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="174823131"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 07:04:07 -0700
Date: Wed, 17 Sep 2025 17:04:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: add note on VLV/CHV hpll_freq and czclk_freq
 caching
Message-ID: <aMq_1JGyQNylvdzm@intel.com>
References: <20250917135200.1932903-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250917135200.1932903-1-jani.nikula@intel.com>
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

On Wed, Sep 17, 2025 at 04:52:00PM +0300, Jani Nikula wrote:
> The caching at the initial read is a bit fragile in case, say, a further
> refactoring starts reading the frequencies at a time where it's not
> possible. Add a note about it.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/vlv_clock.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/vlv_clock.c b/drivers/gpu/drm/i915/display/vlv_clock.c
> index 2c55083d8fdb..42c2837b32c1 100644
> --- a/drivers/gpu/drm/i915/display/vlv_clock.c
> +++ b/drivers/gpu/drm/i915/display/vlv_clock.c
> @@ -8,6 +8,13 @@
>  #include "vlv_clock.h"
>  #include "vlv_sideband.h"
>  
> +/*
> + * FIXME: The caching of hpll_freq and czclk_freq relies on the first calls
> + * occurring at a time when they can actually be read. This appears to be the
> + * case, but is somewhat fragile. Make the initialization explicit at a point
> + * where they can be reliably read.
> + */
> +
>  /* returns HPLL frequency in kHz */
>  int vlv_clock_get_hpll_vco(struct drm_device *drm)
>  {
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
