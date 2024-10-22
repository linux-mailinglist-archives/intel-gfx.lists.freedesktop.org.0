Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3279AB2E0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEBD10E15D;
	Tue, 22 Oct 2024 15:57:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdqJMbFG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3208F10E15D;
 Tue, 22 Oct 2024 15:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729612655; x=1761148655;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OUjNlxF5U9Au5b2p1vMbEst7v3MwoRqctYJdIVhwMpA=;
 b=IdqJMbFGXrYZixt9a4rNGtBMFvqF1MNPvXz/Lxxx87eKbKoRo5ibd4aM
 Al+3MJV+4Wl94gk6B2W6L2snNege0D/UmQjqlGse/tsQJAtTVqF4Ku9Gr
 mMoqehF9BNSYZS6lpgTL6Vo206qEU/9omwCwai78seJEw6rk4vQAJfGXd
 DISMsu3pvg6mqhPvb/+bYgwAG06LykEELiOllcRirpGWtq9KFlrDukA/I
 yrupKk8LQ4gYzEnqxkoXUJe/fIKDtTdqxKBVIVzAPnn6pJ7rx9NMi3exg
 4iAKUWjAETGPWciAqz3iYiY0Jr+wZ4eAju4qE1F8icTF2jPwFZV2JXTsd A==;
X-CSE-ConnectionGUID: z6McvjWBQXyaqQUD1E4E8w==
X-CSE-MsgGUID: wGkJub3rRaqU2FtmVCG9RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29270557"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29270557"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:57:35 -0700
X-CSE-ConnectionGUID: +adVFLAzQmWydvnikYcEGQ==
X-CSE-MsgGUID: Y0dLmQC3QO+W2hJKZ3Sz8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79857919"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:57:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/11] drm/i915/display: bunch of struct intel_display
 conversions
Date: Tue, 22 Oct 2024 18:57:17 +0300
Message-Id: <cover.1729612605.git.jani.nikula@intel.com>
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

Convert a random bunch of files over to struct intel_display.

Jani Nikula (11):
  drm/i915/gmbus: convert to struct intel_display
  drm/i915/cx0: convert to struct intel_display
  drm/i915/dpio: convert to struct intel_display
  drm/i915/hdcp: further conversion to struct intel_display
  drm/i915/dp/hdcp: convert to struct intel_display
  drm/i915/crt: convert to struct intel_display
  drm/i915/display: convert vlv_wait_port_ready() to struct
    intel_display
  drm/i915/power: convert assert_chv_phy_status() to struct
    intel_display
  drm/i915/ips: convert to struct intel_display
  drm/i915/dsi: convert to struct intel_display
  drm/i915/de: remove unnecessary generic wrappers

 drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   9 +-
 drivers/gpu/drm/i915/display/hsw_ips.c        |  47 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        | 444 +++++++++---------
 drivers/gpu/drm/i915/display/icl_dsi.h        |   4 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_crt.c      | 211 +++++----
 drivers/gpu/drm/i915/display/intel_crt.h      |  10 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 308 ++++++------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_de.h       |  46 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  30 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_driver.c   |  11 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  11 +-
 .../i915/display/intel_display_power_well.c   | 114 +++--
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  93 ++--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 158 +++----
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   6 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 290 ++++++------
 drivers/gpu/drm/i915/display/intel_gmbus.h    |  15 +-
 .../gpu/drm/i915/display/intel_gmbus_regs.h   |  16 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  30 +-
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  10 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  11 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   9 +-
 drivers/gpu/drm/i915/i915_suspend.c           |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
 36 files changed, 1011 insertions(+), 948 deletions(-)

-- 
2.39.5

