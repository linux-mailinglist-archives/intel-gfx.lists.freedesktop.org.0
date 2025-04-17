Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71518A91758
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 11:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FFFF10E1EA;
	Thu, 17 Apr 2025 09:10:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nrxiaou9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5341C10E1B1;
 Thu, 17 Apr 2025 09:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744881049; x=1776417049;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=71lY9pJT7y0nBGwmoNzvBzsaBfKs9jepFGZVY3axPyw=;
 b=nrxiaou9FNpQnfe2MEiG0aCaiuTpFyaq4imAJ2BpONe21k3BS7XAAOIJ
 25XzlSmRRUWAWlHypWY+ZrjWQzQFsM2m5JAHEU1nIXundPDTHZVYh1qHv
 fEu5+VkUvmHhRkR5dz5NBG+ra0jXUDQdoPDh+YpR894WmSpeZaXigt/+6
 YOUutgAXnO8dRpGNe7ZbiwMfc1ATRPPCLD72SjnQk/4fyHPS+ZKgnDROS
 ek7WODxAV+zeQUNvXEtij7f15qNXUMwC7E/TkazLdxm3tMNxTokJQfdcj
 fPHgMNjZIAl6CsFH+8bxQhbvylSfmLU4T5iysr5Y3GZTPBz+8JHY4Lghz A==;
X-CSE-ConnectionGUID: 3lf9A+GCTKi+GeKjxU+OrA==
X-CSE-MsgGUID: b1Hjn7k6RRiZwwQBuKN0cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57829461"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57829461"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 02:10:43 -0700
X-CSE-ConnectionGUID: +BOy9miDSDWt9ae1E5G91g==
X-CSE-MsgGUID: F+EJ/GovTECreE7Fx1yjwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="161694727"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 02:10:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/3] drm/i915/pch: conversion to struct intel_display use,
 cleanups
Date: Thu, 17 Apr 2025 12:10:35 +0300
Message-Id: <cover.1744880985.git.jani.nikula@intel.com>
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

With the PCH detection moved to display, we can do some further
cleanups.

Jani Nikula (3):
  drm/i915/display: pass struct intel_display to PCH macros
  drm/i915/display: drop lots of unnecessary #include i915_drv.h
  drm/i915/pch: abstract fake PCH detection better

 drivers/gpu/drm/i915/display/g4x_dp.c         | 30 +++++-----
 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 24 ++++----
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_audio.c    | 12 ++--
 .../gpu/drm/i915/display/intel_backlight.c    | 42 +++++++-------
 drivers/gpu/drm/i915/display/intel_bios.c     | 17 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 12 ++--
 drivers/gpu/drm/i915/display/intel_cmtg.c     |  1 -
 drivers/gpu/drm/i915/display/intel_crt.c      | 33 +++++------
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 15 ++---
 drivers/gpu/drm/i915/display/intel_display.c  | 21 ++-----
 .../drm/i915/display/intel_display_debugfs.c  |  9 ++-
 .../drm/i915/display/intel_display_device.c   | 13 +++--
 .../gpu/drm/i915/display/intel_display_irq.c  | 33 +++++------
 .../drm/i915/display/intel_display_power.c    | 31 ++++-------
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 12 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     | 11 +---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 11 ++--
 drivers/gpu/drm/i915/display/intel_dsb.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      | 18 +++---
 .../drm/i915/display/intel_fifo_underrun.c    |  4 +-
 .../gpu/drm/i915/display/intel_global_state.c |  5 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 16 +++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 28 ++++------
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 55 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_lvds.c     | 23 +++-----
 drivers/gpu/drm/i915/display/intel_pch.c      | 47 +++++++++-------
 .../gpu/drm/i915/display/intel_pch_display.c  | 44 ++++++---------
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 15 ++---
 drivers/gpu/drm/i915/display/intel_pps.c      | 26 +++------
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 26 +++------
 drivers/gpu/drm/i915/display/intel_sprite.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |  5 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  4 +-
 38 files changed, 286 insertions(+), 381 deletions(-)

-- 
2.39.5

