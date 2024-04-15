Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 909E78A535D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 16:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF141125FF;
	Mon, 15 Apr 2024 14:27:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ODyOSWY3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C2361125FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 14:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713191223; x=1744727223;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=LY6/ujX5m5BxE8+91IQcSB6D7JvxecnsHudSvjK8rx0=;
 b=ODyOSWY3+CcdnsijuIAgqlLxJ5aosRoYrRCC/zSW4AklnMwuZqLBwMRV
 F1FdUSNtibF2BMBM5bgLzRC+MnnZu2735SB18d9nLs6cvrA8m2HiK0jHq
 6OhKxrUCSZ+LEw2PxpKcKXQvGxAtgH+iPwueBRGDENbvlEKzddSwO25Ys
 ohiEl4ToXwdFp5FeauhtdMPzqyql8MNNg09IciQVcOEw/rNkJ4Bprdvbr
 pZNT16ZYnV/R83IX/wDbfIo85UDHZF0Ioe0Jj+jRXFdVGtZgv/D+s454H
 q6weO6ues5MRJSAIW8Lm75YO14t9vhj3fXz+dmutWaFEEtRIpphLWCRAB g==;
X-CSE-ConnectionGUID: 4HaFrzh3SWCuiz+nHvP43w==
X-CSE-MsgGUID: g4fYNwgmSVy6tKbXf2VNsg==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="9134308"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="9134308"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 07:27:02 -0700
X-CSE-ConnectionGUID: zXP81DDTQVuRK4yNWxqLSQ==
X-CSE-MsgGUID: XhJT7u8ISCef6RiyJ4Xu/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="45233800"
Received: from lcariou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.121])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 07:27:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/18] drm/i915: PLL refactoring
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
Date: Mon, 15 Apr 2024 17:26:51 +0300
Message-ID: <87v84i1z2s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 12 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> A bunch of refactoring around PLLs. Main feature is=20
> the unionization of dpll_hw_state. The eventual goal
> is to unify the approach for PLLs across all platforms
> instead of the current "shared PLLs are somehow
> different than other PLLs" approach.

The entire series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (18):
>   drm/i915: Replace hand rolled PLL state dump with
>     intel_dpll_dump_hw_state()
>   drm/i915: Use printer for the rest of PLL debugfs dump
>   drm/i915: Rename PLL hw_state variables/arguments
>   drm/i915: Introduce some local PLL state variables
>   drm/i915: Extract ilk_fb_cb_factor()
>   drm/i915: Extract ilk_dpll_compute_fp()
>   drm/i915: Extract i9xx_dpll_get_hw_state()
>   drm/i915: Pass the PLL hw_state to pll->enable()
>   drm/i915: Extract i965_dpll_md()
>   drm/i915: Extract {i9xx,i8xx,ilk}_dpll()
>   drm/i915: Inline {i9xx,ilk}_update_pll_dividers()
>   drm/i915: Modernize i9xx_pll_refclk()
>   drm/i915: Drop pointless 'crtc' argument from *_crtc_clock_get()
>   drm/i915: s/pipe_config/crtc_state/ in legacy PLL code
>   drm/i915: Add local DPLL 'hw_state' variables
>   drm/i915: Carve up struct intel_dpll_hw_state
>   drm/i915: Unionize dpll_hw_state
>   drm/i915: Suck snps/cx0 PLL states into dpll_hw_state
>
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  20 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   8 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  30 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  39 +-
>  .../drm/i915/display/intel_display_types.h    |  43 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 338 +++++++-----
>  drivers/gpu/drm/i915/display/intel_dpll.h     |  12 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 489 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  80 ++-
>  .../gpu/drm/i915/display/intel_pch_display.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   6 +-
>  11 files changed, 581 insertions(+), 488 deletions(-)

--=20
Jani Nikula, Intel
