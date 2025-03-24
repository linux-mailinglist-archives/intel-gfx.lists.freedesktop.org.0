Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E83A6E01F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 17:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A804410E448;
	Mon, 24 Mar 2025 16:47:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SNd9s1Oj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB0C10E171;
 Mon, 24 Mar 2025 16:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742834878; x=1774370878;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=X6tpuLfuJnHc+UciAKwWN7KOlAmZbY2ncUKWCsOlboo=;
 b=SNd9s1OjkhkCmR+C8XgXIAhH1nCdt1IX4zwENhFpVIIl/+j9E3VT0rii
 dUzF52U9Q+nT/tz/6lcE/cQlTsF/1Pu/uA/nSuxZ9bazzmSSmWHJtFxz0
 5WtOBgAMWWtzbsRlxcQYjDLTBq+8+trZb2NeHtdOr2lblqrqtYgKPx4eC
 S2GAX6FUonO6uOFxo7XVaAXwoX7jzmIw+WbTVlOW/bAq5AFlLfekNimoi
 bd9bxPGIiP2ekYpfkGkblefRVuPOEOoYkp8ABBiOUmPLjs5Bq8FR6X11K
 Wmne3uy3HeiG0izJIBIYHsW3+SdGFndLZhTXZrTfheWw8gGMb/kgeqrRe Q==;
X-CSE-ConnectionGUID: LNZsqCt/RbyAZvrKwrKVZA==
X-CSE-MsgGUID: rTcqjNVpTTK3HpVpDOnFVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44240122"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="44240122"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 09:47:57 -0700
X-CSE-ConnectionGUID: qJGsdFboTSCZiLJB5AsNYw==
X-CSE-MsgGUID: R5wJr3oMS6iruP6PlqWvwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="129298232"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 24 Mar 2025 09:47:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Mar 2025 18:47:53 +0200
Date: Mon, 24 Mar 2025 18:47:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/12] drm/i915/display: yet another batch of struct
 intel_display conversions
Message-ID: <Z-GMuR8Okww3Bgku@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Mar 21, 2025 at 12:52:44PM +0200, Jani Nikula wrote:
> More conversions to struct intel_display.
> 
> Jani Nikula (12):
>   drm/i915/dsi: convert vlv_dsi.[ch] to struct intel_display
>   drm/i915/dsi: convert vlv_dsi_pll.[ch] to struct intel_display
>   drm/i915/dsi: convert parameter printing to drm_printer
>   drm/i915/dsi: convert intel_dsi_vbt.[ch] to struct intel_display
>   drm/i915/dsi: convert intel_dsi_dcs_backlight.c to struct
>     intel_display
>   drm/i915/dvo: convert intel_dvo.[ch] to struct intel_display
>   drm/i915/lvds: convert intel_lvds.[ch] to struct intel_display
>   drm/i915/tc: convert intel_tc.c to struct intel_display
>   drm/i915/atomic: convert intel_atomic.c to struct intel_display
>   drm/i915/display: convert intel_crtc_state_dump.c to struct
>     intel_display
>   drm/i915/pch: convert intel_pch_display.[ch] to struct intel_display
>   drm/i915/pch: convert intel_pch_refclk.c to struct intel_display

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  23 +-
>  .../drm/i915/display/intel_crtc_state_dump.c  |  44 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |  22 +-
>  .../drm/i915/display/intel_display_power.c    |   6 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  13 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   6 +-
>  .../i915/display/intel_dsi_dcs_backlight.c    |   7 +-
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  | 211 +++++++-------
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  63 ++---
>  drivers/gpu/drm/i915/display/intel_dvo.h      |   6 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |   4 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     | 142 +++++-----
>  drivers/gpu/drm/i915/display/intel_lvds.h     |  18 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   2 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  | 168 +++++------
>  .../gpu/drm/i915/display/intel_pch_display.h  |  10 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   | 126 +++++----
>  .../gpu/drm/i915/display/intel_pch_refclk.h   |  18 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       | 265 +++++++++---------
>  drivers/gpu/drm/i915/display/vlv_dsi.c        | 160 +++++------
>  drivers/gpu/drm/i915/display/vlv_dsi.h        |   6 +-
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    | 118 ++++----
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.h    |   5 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +-
>  26 files changed, 709 insertions(+), 742 deletions(-)
> 
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
