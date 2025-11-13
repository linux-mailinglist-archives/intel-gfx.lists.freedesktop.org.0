Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EEEC57A7C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76ED810E056;
	Thu, 13 Nov 2025 13:29:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/D6B40N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CBE10E056;
 Thu, 13 Nov 2025 13:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763040587; x=1794576587;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=liaj6LxnuSyPie98It8GKYROi0vM4THrcmsE41BY+eo=;
 b=g/D6B40NNKojhfQub0E930vHH+PdY1K+BjOBg4pbr5j47SSVjHtSANLj
 cnSadHVMj1BCSfui1we0snsA2finHZro68Zb6catcxUd371wpaSrHMqGY
 tqnbMYUuhP08ipAzIbTlYT7tw10f+P6K9e3Ti46CzCRwNG5kpMMkFjcOY
 AsXrEsfF8TsRXHUn0mhmwWm4vuBqmLCWfpMS3G6mORJ7N1x54sxQlZ9ed
 A1OoU4oixJj6J/p+etr6EiTtMEuBzQBMqlHUZIZAPKeSatVD99b7nW201
 sPUnsY84A/okwSw4eQ5wBdw8O0oYEhr6L8+CCjHLQkRY7H8XFO6XVBUSA g==;
X-CSE-ConnectionGUID: FlIvSWh0RIKQDWkFw4kjqg==
X-CSE-MsgGUID: uKiXRT0MTiSYjC6OTjOZhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64828210"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="64828210"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:29:47 -0800
X-CSE-ConnectionGUID: QVZoJpzyQcOIblQky/4J5g==
X-CSE-MsgGUID: D+XFyuPnQ2qw1fELgNBdoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="188769009"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:29:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 0/8] drm/i915: start dissolving soc/
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1763027774.git.jani.nikula@intel.com>
Date: Thu, 13 Nov 2025 15:29:43 +0200
Message-ID: <85590237a138e9a6acbd53a8e9ec96cf76dd8078@intel.com>
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

On Thu, 13 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> soc/ has served a useful purpose, and way back when it was the obvious
> thing to do. However, it has become a bit awkward, sitting somewhere
> between i915, xe and display.
>
> Split the i915 core specific parts out of intel_dram.c, and move
> intel_dram.c and intel_rom.c under display. This allows us to clean up
> the xe build and compat headers very nicely.
>
> intel_gmch.[ch] still remains under soc/, as it requires a bit more
> thought. But this series is a good start.

After a discussion with Ville, I've got this figured out and the patches
ready as well.

BR,
Jani.


>
> BR,
> Jani.
>
> Jani Nikula (8):
>   drm/i915/edram: extract i915_edram.[ch] for edram detection
>   drm/i915: split out i915_freq.[ch]
>   drm/i915: move intel_dram.[ch] from soc/ to display/
>   drm/xe: remove MISSING_CASE() from compat i915_utils.h
>   drm/i915/dram: convert to struct intel_display
>   drm/i915: move dram_info to struct intel_display
>   drm/i915: move intel_rom.[ch] from soc/ to display/
>   drm/xe: remove remaining platform checks from compat i915_drv.h
>
>  drivers/gpu/drm/i915/Makefile                 |   8 +-
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |   5 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |   3 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |   5 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   7 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   4 +
>  .../drm/i915/display/intel_display_power.c    |   5 +-
>  .../drm/i915/{soc => display}/intel_dram.c    | 239 ++++++++----------
>  .../drm/i915/{soc => display}/intel_dram.h    |  12 +-
>  .../gpu/drm/i915/{soc => display}/intel_rom.c |   0
>  .../gpu/drm/i915/{soc => display}/intel_rom.h |   0
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   6 +-
>  .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   4 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   7 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   3 -
>  drivers/gpu/drm/i915/i915_edram.c             |  44 ++++
>  drivers/gpu/drm/i915/i915_edram.h             |  11 +
>  drivers/gpu/drm/i915/i915_freq.c              | 111 ++++++++
>  drivers/gpu/drm/i915/i915_freq.h              |  13 +
>  drivers/gpu/drm/xe/Makefile                   |  12 +-
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  15 --
>  .../drm/xe/compat-i915-headers/i915_utils.h   |   6 -
>  .../xe/compat-i915-headers/soc/intel_dram.h   |   6 -
>  .../xe/compat-i915-headers/soc/intel_rom.h    |   6 -
>  drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
>  drivers/gpu/drm/xe/xe_device_types.h          |   8 -
>  27 files changed, 322 insertions(+), 228 deletions(-)
>  rename drivers/gpu/drm/i915/{soc => display}/intel_dram.c (68%)
>  rename drivers/gpu/drm/i915/{soc => display}/intel_dram.h (68%)
>  rename drivers/gpu/drm/i915/{soc => display}/intel_rom.c (100%)
>  rename drivers/gpu/drm/i915/{soc => display}/intel_rom.h (100%)
>  create mode 100644 drivers/gpu/drm/i915/i915_edram.c
>  create mode 100644 drivers/gpu/drm/i915/i915_edram.h
>  create mode 100644 drivers/gpu/drm/i915/i915_freq.c
>  create mode 100644 drivers/gpu/drm/i915/i915_freq.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_dram.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h

-- 
Jani Nikula, Intel
