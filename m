Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7012C4851C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BA9C10E070;
	Mon, 10 Nov 2025 17:28:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLp4TURy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF9E10E070;
 Mon, 10 Nov 2025 17:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795681; x=1794331681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UIa9OQquOYS6eXS2dLQkkItg9XoaQIf8BEgJPnMhXaE=;
 b=kLp4TURy7mRikS1jfdokJkpNG0npXq3Srxfui8o2Da83/fjEDkts+gn/
 VVcFNuYvbfHn77XhnposCjnqXa2xAbXlSUYWjlaZcH6REM5PwGNa7+MES
 MI1uu3HnXELBfxWCUfDX1QzVjxF69SaWq+nF5K65T+/J7LxDvEZ3V4WoK
 HWO7eN+VuuC3ZUJ9xJEuLFVesJV/WOGyKIn+TQHEqJPlExfIe30m6ucs1
 Axl5G2SMYdk24egjChm9CMmPYQyqPD/fhxsUTuE+D0uxRgN5NOwAMrZ02
 87+ccSGFTbxJSxSQCHJZzYUOLXPslC2ekDSdrcP+5mHhW7xVrnErlntOW Q==;
X-CSE-ConnectionGUID: BgF4b37UQ4yOnKrI09zlWQ==
X-CSE-MsgGUID: MBwR3LUhQ7uNOqoJ6r1NWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64890948"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="64890948"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:01 -0800
X-CSE-ConnectionGUID: StQh4OzQTZunh7UzNHu1kA==
X-CSE-MsgGUID: bcqHSOFyQSuzX3ujaWjydw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="188896411"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:27:59 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/16] drm/i915/de: Register polling cleanup
Date: Mon, 10 Nov 2025 19:27:39 +0200
Message-ID: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Clean up the register polling stuff:
- rename the current wait stuff to
  intel_de_wait_{,for_set,for_clear}_ms()
- introduce intel_de_wait_{,for_set,for_clear}_us()
- nuke intel_de_wait_custom()
- change the wakelock stuff to use _fw() instead of
  hand rolling yet another level of register accessors
- a few other minor cleanups

After this it should be fairly easy to switch over to
poll_timeout_us().

Ville Syrjälä (16):
  drm/i915/de: Implement register waits one way
  drm/i915/de: Have intel_de_wait() hand out the final register value
  drm/i915/de: Include units in intel_de_wait*() function names
  drm/i915/de: Introduce intel_de_wait_us()
  drm/i915/de: Use intel_de_wait_us()
  drm/i915/de: Use intel_de_wait_ms() for the obvious cases
  drm/i915/de: Nuke intel_de_wait_custom()
  drm/i915/de: Introduce intel_de_wait_for_{set,clear}_us()
  drm/i915/de: Use intel_de_wait_for_{set,clear}_us()
  drm/i915/de: Use intel_de_wait_for_{set,clear}_ms()
  drm/1915/dpio: Stop using intel_de_wait_fw_ms()
  drm/u195/de: Replace __intel_de_rmw_nowl() with intel_de_rmw_fw()
  drm/i915/de: Nuke wakelocks from intel_de_wait_fw_ms()
  drm/i915/de: Replace __intel_de_wait_for_register_nowl() with
    intel_de_wait_fw_us_atomic()
  drm/i915/power: Use the intel_de_wait_ms() out value
  drm/i915/dpio: Use the intel_de_wait_ms() out value

 drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  35 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  30 +++--
 drivers/gpu/drm/i915/display/intel_crt.c      |  16 +--
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  98 ++++++++--------
 drivers/gpu/drm/i915/display/intel_ddi.c      |  34 +++---
 drivers/gpu/drm/i915/display/intel_de.h       | 107 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_power.c    |  14 +--
 .../i915/display/intel_display_power_well.c   |  42 +++----
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |  25 ++--
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  14 +--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  10 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  27 +++--
 drivers/gpu/drm/i915/display/intel_fbc.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  49 ++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |  57 +++++-----
 drivers/gpu/drm/i915/display/intel_lvds.c     |   6 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  12 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  10 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  18 +--
 drivers/gpu/drm/i915/display/intel_psr.c      |  10 +-
 drivers/gpu/drm/i915/display/intel_sbi.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   8 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   8 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   6 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  54 ++++-----
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   8 +-
 .../drm/xe/compat-i915-headers/intel_uncore.h |  31 ++---
 34 files changed, 369 insertions(+), 402 deletions(-)

-- 
2.49.1

