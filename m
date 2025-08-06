Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0124EB1CA0F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A94710E177;
	Wed,  6 Aug 2025 16:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OWsdd5yO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFFF10E177;
 Wed,  6 Aug 2025 16:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499324; x=1786035324;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p4Q/OPrARidCx1px2gdIGpAvXtIRhrjmgP751uEzUgg=;
 b=OWsdd5yOAOOScEdM12HHHxs+sGafoSmNsuzU0a7Kiav7kGoLVyR5dHU0
 /gwRLGMYP23nsTkOS1T/iBi2p5Wrxmq9dhhS11iwSzzG5p+pqUvkSNP3Y
 bX5XUP5l9UhgRWTLFsfIZ2bRzMAk3vYVUeXPi5rHQoR8q+z+hnorZ1z4W
 lBx4wwbWR4LNcE6edyzOzaVjaw8vFE/S+zAaxjtnJFe4/9+Htul/O9YrM
 BLQdO/UYlp426IGWvkm36EGA96L0PrE0slZ0ZmyyHedwvUU5009VEP8/s
 grIRXqYrSagpTwZotqZ3wqeYZGSI1iJA+JnkLwKJO0FJivsve95zdsYoP g==;
X-CSE-ConnectionGUID: bOrAgIeFSom8PoTwAmUi+A==
X-CSE-MsgGUID: fyN0eogKTnibIYqVG9jXmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68199645"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68199645"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:24 -0700
X-CSE-ConnectionGUID: yPSy4bwWQsaqoKxXFMOA3w==
X-CSE-MsgGUID: ILQOS3TvTCKoYHjiidWhYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195659234"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/15] drm/i915: drop __to_intel_display() transitional macro
Date: Wed,  6 Aug 2025 19:55:01 +0300
Message-Id: <cover.1754499174.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Switch to passing struct intel_display to all the macros that use
__to_intel_display(), and once that's done, remove __to_intel_display().

We'll still need to get rid of struct intel_display usage like this
outside of display, but explicit is better than implicit, and this
prevents new accidental struct drm_i915_private usages from cropping up.

Jani Nikula (15):
  drm/i915/display: pass display to HAS_PCH_*() macros
  drm/i915/fb: pass display to HAS_GMCH() and DISPLAY_VER()
  drm/i915/clockgating: pass display to for_each_pipe()
  drm/i915/clockgating: pass display to HAS_PCH_*() macros
  drm/i915/clockgating: pass display to DSPCNTR and DSPSURF register
    macros
  drm/i915/irq: pass display to macros that expect display
  drm/i915/dram: pass display to macros that expect display
  drm/i915/gmch: pass display to DISPLAY_VER()
  drm/i915/gem: pass display to HAS_DISPLAY()
  drm/i915/switcheroo: pass display to HAS_DISPLAY()
  drm/i915/drv: pass display to HAS_DISPLAY()
  drm/i915/uncore: pass display to HAS_FPGA_DBG_UNCLAIMED()
  drm/i915/gvt: convert mmio table to struct intel_display
  drm/i915/reg: separate VLV_DSPCLK_GATE_D from DSPCLK_GATE_D
  drm/i915/display: drop __to_intel_display() usage

 .../i915/display/intel_display_conversion.c   |   2 +-
 .../i915/display/intel_display_conversion.h   |  12 -
 .../drm/i915/display/intel_display_device.h   |   7 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |   9 +-
 .../i915/display/intel_display_power_well.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_pch.h      |   4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   3 +-
 drivers/gpu/drm/i915/i915_driver.c            |  14 +-
 drivers/gpu/drm/i915/i915_irq.c               |  13 +-
 drivers/gpu/drm/i915/i915_reg.h               |   3 +-
 drivers/gpu/drm/i915/i915_switcheroo.c        |   6 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |  35 ++-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 266 +++++++++---------
 drivers/gpu/drm/i915/intel_uncore.c           |   3 +-
 drivers/gpu/drm/i915/selftests/intel_uncore.c |   8 +-
 drivers/gpu/drm/i915/soc/intel_dram.c         |   5 +-
 drivers/gpu/drm/i915/soc/intel_gmch.c         |   3 +-
 21 files changed, 206 insertions(+), 204 deletions(-)

-- 
2.39.5

