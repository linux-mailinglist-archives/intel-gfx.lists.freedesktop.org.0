Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A814BAB3A2A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B977D10E369;
	Mon, 12 May 2025 14:13:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PARovgTV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B31510E19F;
 Mon, 12 May 2025 14:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747059203; x=1778595203;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tYDXR+EzCw6CoNgUViyNGKOiUre97B+zn+wKjd+CJSk=;
 b=PARovgTVIOLayajOjep9NTi4Eunwyfe+xvdHZnlOBvlNpZvNHT/t3P+S
 mlvaI50aIkgtCQ+Mq+XlAwF2n9yyObsqyZ3DBCvg/E/PhuuI4g0dUVEq3
 c3hcPAy9GSpli9NWcSPIS8ZfngWfOxkRCsnBPGpTQokSOHWsclpk4K+jN
 PUllx/LwfZ3mVOHGyEq4JxEdIZdWx8ltxys6qrkjcC4+hbtIfES5FpDFv
 O7MvYEx9UDOCiia0MsfR/oVeRA+bKOObP9LriFFiOM0fArZ7+bTeQ3UQG
 rlyhiBc2iYNT9x3leOjDJTu1c7Ew4fRtf8DjGqbaZwndDhs1lhyIN+Lmx Q==;
X-CSE-ConnectionGUID: JgCsDvq+QBW2WDhcFh03NQ==
X-CSE-MsgGUID: GPqEM4umQdeIX/9+hQPSxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48976581"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="48976581"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:13:22 -0700
X-CSE-ConnectionGUID: H9MpgN2PQ828XLNOfCLJ3Q==
X-CSE-MsgGUID: IAOJJ6FOQyOTg21+ZGJ2Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142490066"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.195])
 by orviesa005.jf.intel.com with SMTP; 12 May 2025 07:13:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 May 2025 17:13:19 +0300
Date: Mon, 12 May 2025 17:13:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 0/8] drm/i915: refactor VLV IOSF SB for display usage
Message-ID: <aCIB_8mCmOG1w1QW@intel.com>
References: <cover.1746698410.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1746698410.git.jani.nikula@intel.com>
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

On Thu, May 08, 2025 at 01:03:34PM +0300, Jani Nikula wrote:
> This is v2 of [1] fixing a pretty bad goof-up in patch 4, adding the
> last two patches to clean up style and ensure such goof-ups don't occur
> in the future, and a couple of checkpatch fixes.
> 
> BR,
> Jani.
> 
> [1] https://lore.kernel.org/r/cover.1745587049.git.jani.nikula@intel.com
> 
> 
> Jani Nikula (8):
>   drm/i915: rename vlv_sideband*.[ch] to vlv_iosf_sb*.[ch]
>   drm/i915: add generic read/write functions for VLV IOSF SB
>   drm/i915: rewrite VLV IOSF SB unit specific read/write functions
>   drm/i915: switch i915 core to generic VLV IOSF SB functions
>   drm/i915: move VLV IOSF SB unit specific helpers under display
>   drm/i915: convert VLV IOSF SB interface to struct drm_device
>   drm/i915: rename VLV IOSF SB ports parameter to unit_mask
>   drm/i915: ensure correct VLV IOSF SB units have been get/put

Didn't look too hard but looked all right to me. For the series
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

AFAICS we have two warts left related to vlv/chv clocks:
dev_priv->hpll_freq and dev_priv->czclk

Not quite sure what to do about those. I suppose they are similar to
fsb_freq and mem_freq where we either have to have a central place for
them, or we try to duplicate the readout on both sides of fence (which
would perhaps simplify the interface between the drivers, but would be
annoying in other ways).

> 
>  drivers/gpu/drm/i915/Makefile                 |   5 +-
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |  35 ++-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  47 ++---
>  drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
>  drivers/gpu/drm/i915/display/intel_display.h  |   7 +-
>  .../drm/i915/display/intel_display_power.c    |   7 +-
>  .../i915/display/intel_display_power_map.c    |   2 +-
>  .../i915/display/intel_display_power_well.c   |  71 +++----
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 199 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 135 ++++++------
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  26 ++-
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  46 ++--
>  drivers/gpu/drm/i915/display/vlv_sideband.c   |  50 +++++
>  drivers/gpu/drm/i915/display/vlv_sideband.h   | 156 ++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   8 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |  58 ++---
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   1 +
>  drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
>  drivers/gpu/drm/i915/soc/intel_dram.c         |  14 +-
>  .../i915/{vlv_sideband.c => vlv_iosf_sb.c}    | 176 ++++++----------
>  drivers/gpu/drm/i915/vlv_iosf_sb.h            |  37 ++++
>  .../{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} |   6 +-
>  drivers/gpu/drm/i915/vlv_sideband.h           | 125 -----------
>  .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  |  42 ++++
>  .../{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} |   2 +-
>  .../drm/xe/compat-i915-headers/vlv_sideband.h | 132 ------------
>  27 files changed, 689 insertions(+), 725 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.c
>  create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.h
>  rename drivers/gpu/drm/i915/{vlv_sideband.c => vlv_iosf_sb.c} (55%)
>  create mode 100644 drivers/gpu/drm/i915/vlv_iosf_sb.h
>  rename drivers/gpu/drm/i915/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} (98%)
>  delete mode 100644 drivers/gpu/drm/i915/vlv_sideband.h
>  create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
>  rename drivers/gpu/drm/xe/compat-i915-headers/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} (66%)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband.h
> 
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
