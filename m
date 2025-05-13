Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B44AB4DCF
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 10:15:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2644A10E0D1;
	Tue, 13 May 2025 08:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oH/gv7xg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D24D010E0D1;
 Tue, 13 May 2025 08:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747124130; x=1778660130;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gMFFA0v9Vpk0yqWUWxwXGcg6oEzxnIX1eI7NCcCtWj8=;
 b=oH/gv7xg3IOkOeWkDRde3cb1u5M5/5Lb5oOdrtnre+9qeZp+Cvts/02f
 cGoiu7htRGLNDd/zyZsNPOF38ilOMx0NEAJER3dsXGrxWbqT9Rog4Zxju
 aXMUWTip1P7+cQdL4TE21csyS12PrwMLRiqzsxgNWIOShMDuhOabHnhGg
 OAAlDm+jRQwRFvZXtC28WQhegwmjXoR0WgPkjwphzFeZ+Vo9iAm6X1Vcu
 jDpk7IycNZPeT75eEM1EcEiYcpH69uFiR9UFu5dT+ZBb5W2mL1c29pkZe
 rJYbu4tta+4BA71K2xZc7PIZWswR8AyKRA3/uN+BRkH8Ds/sm3nKGYtnT Q==;
X-CSE-ConnectionGUID: dRVV73oJQw661Db1375b1w==
X-CSE-MsgGUID: n02wUUeRQcWGf9lxAGVl+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="66363638"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="66363638"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 01:15:29 -0700
X-CSE-ConnectionGUID: 2A+iHtu1QNyKd8O4NPZaqg==
X-CSE-MsgGUID: KDgPrz1JQaCpDxYfUHlglg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="142811269"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 01:15:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH v3 0/8] drm/i915: refactor VLV IOSF SB for display usage
In-Reply-To: <cover.1747061743.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1747061743.git.jani.nikula@intel.com>
Date: Tue, 13 May 2025 11:15:25 +0300
Message-ID: <87wmalhqoy.fsf@intel.com>
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

On Mon, 12 May 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> v3 of [1] fixing dpio 1 vs 2 sanity checks.
>
> [1] https://lore.kernel.org/r/cover.1746698410.git.jani.nikula@intel.com

Pushed to din, thanks for the review.

BR,
Jani.

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

-- 
Jani Nikula, Intel
