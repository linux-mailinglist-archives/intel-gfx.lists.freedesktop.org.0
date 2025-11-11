Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF1BC4F89E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 20:09:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC00B10E64A;
	Tue, 11 Nov 2025 19:09:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nY2GChmg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B0710E639;
 Tue, 11 Nov 2025 19:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762888177; x=1794424177;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2DiJnh0Yu2Il+NQcVuyJbybe4eu+zK1/XCOoATXRkFQ=;
 b=nY2GChmgKRua+skozs95X1OVUaC4ozD11ReH/VtjB42O+a78Fh+SCpLD
 yMIOZ2APsdZLeCeU4Ip92brlAoQVaPKrj3IlUACtYnMvCK27fR5KOWhHM
 7wAJgAuAODsc3z2wE/y+RNbuXoxWabH1vA6l2LqTYEyKQSQOBCN1A0uaP
 z80PLQ1UEGd4tI6ucZmvVBtNwe9PdsxBRbIt9PuGEEWmyCzMLaPUKOKTz
 ilqrM3QxIlfy/TY467MMORo1/QNg5RZIxz4XCglQy/bGbNE2GonXFGHRO
 z+8CW2D0uwFLyQRmTkecckmykfoHuLMKNayxtt7Tdwl8RDAD5hQrZEo4H w==;
X-CSE-ConnectionGUID: ZA21AbMkRVCbZQgsStJLsQ==
X-CSE-MsgGUID: lsBC6MIgQ96EII+h4Wva6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="90425779"
X-IronPort-AV: E=Sophos;i="6.19,297,1754982000"; d="scan'208";a="90425779"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 11:09:37 -0800
X-CSE-ConnectionGUID: wSqk41nBSSeLi+9pTqB6gw==
X-CSE-MsgGUID: MsFlWvPWQ+CLqgggIX0CxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,297,1754982000"; d="scan'208";a="188334018"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.124.223.47])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 11:09:36 -0800
Date: Tue, 11 Nov 2025 21:09:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/16] drm/i915/de: Register polling cleanup
Message-ID: <aROJ7aszCUX9ZaFG@intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
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

On Mon, Nov 10, 2025 at 07:27:39PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Clean up the register polling stuff:
> - rename the current wait stuff to
>   intel_de_wait_{,for_set,for_clear}_ms()
> - introduce intel_de_wait_{,for_set,for_clear}_us()
> - nuke intel_de_wait_custom()
> - change the wakelock stuff to use _fw() instead of
>   hand rolling yet another level of register accessors
> - a few other minor cleanups
> 
> After this it should be fairly easy to switch over to
> poll_timeout_us().
> 
> Ville Syrjälä (16):
>   drm/i915/de: Implement register waits one way
>   drm/i915/de: Have intel_de_wait() hand out the final register value
>   drm/i915/de: Include units in intel_de_wait*() function names
>   drm/i915/de: Introduce intel_de_wait_us()
>   drm/i915/de: Use intel_de_wait_us()
>   drm/i915/de: Use intel_de_wait_ms() for the obvious cases
>   drm/i915/de: Nuke intel_de_wait_custom()
>   drm/i915/de: Introduce intel_de_wait_for_{set,clear}_us()
>   drm/i915/de: Use intel_de_wait_for_{set,clear}_us()
>   drm/i915/de: Use intel_de_wait_for_{set,clear}_ms()
>   drm/1915/dpio: Stop using intel_de_wait_fw_ms()
>   drm/u195/de: Replace __intel_de_rmw_nowl() with intel_de_rmw_fw()
>   drm/i915/de: Nuke wakelocks from intel_de_wait_fw_ms()
>   drm/i915/de: Replace __intel_de_wait_for_register_nowl() with
>     intel_de_wait_fw_us_atomic()
>   drm/i915/power: Use the intel_de_wait_ms() out value
>   drm/i915/dpio: Use the intel_de_wait_ms() out value

Pushed to drm-intel-next. Thanks for the reviews.

> 
>  drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  35 +++---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  30 +++--
>  drivers/gpu/drm/i915/display/intel_crt.c      |  16 +--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  98 ++++++++--------
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  34 +++---
>  drivers/gpu/drm/i915/display/intel_de.h       | 107 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
>  .../drm/i915/display/intel_display_power.c    |  14 +--
>  .../i915/display/intel_display_power_well.c   |  42 +++----
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |  25 ++--
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   6 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  14 +--
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |  10 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  27 +++--
>  drivers/gpu/drm/i915/display/intel_fbc.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_flipq.c    |   8 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  49 ++++----
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   |  57 +++++-----
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   6 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  12 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  10 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  18 +--
>  drivers/gpu/drm/i915/display/intel_psr.c      |  10 +-
>  drivers/gpu/drm/i915/display/intel_sbi.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   8 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       |   8 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      |   6 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  54 ++++-----
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   8 +-
>  .../drm/xe/compat-i915-headers/intel_uncore.h |  31 ++---
>  34 files changed, 369 insertions(+), 402 deletions(-)
> 
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
