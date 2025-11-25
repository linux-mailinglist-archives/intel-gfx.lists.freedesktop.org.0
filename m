Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9C2C852A4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 14:24:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 522FF10E173;
	Tue, 25 Nov 2025 13:24:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kil26AsQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5876A10E173;
 Tue, 25 Nov 2025 13:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764077089; x=1795613089;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f3fdsgV5Px4JP6iPDepdVdpHbOVeAuzPmw10sLTzGZI=;
 b=Kil26AsQ5OE/QnnfUNk3RKFax190p4v2AYA4ZgUrSk38RxvXO6tmMQHk
 R7w1cb5Sk+jopA6xyGZtSu8jQBep1hmn/i+HMUg9U1mHCjK6Qf1im2OZB
 QJ65Ygq2P2twm9s/MZYp/0zPb4qIB0btK6q3ax0BQTDbbndBH8iO3gIen
 OD1eGAy7SzXqEKQNRaXCktwN5+LXH+1MrwpukS0hw9HwvTD/yTPBxhvYK
 k+5OQMgEAYSFEMBSQi8gCIkepS14qaQLFYlljfKwqBhHb8LGxtWzCM6Lr
 EU/jGPrdmpsaF/1o3yIBsv4y/3aDftCBxiKWm93WCS/7g2Npf3KfEBLaX A==;
X-CSE-ConnectionGUID: EUNgtWzPT4iMVA5EPgZ6RA==
X-CSE-MsgGUID: rYhEYQu1QsOmyuFB5x2seQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="77461429"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="77461429"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:24:48 -0800
X-CSE-ConnectionGUID: ZtwJ8p5RSvWENYR/MlDCVA==
X-CSE-MsgGUID: tzjwI2KlRa6sFPi6Vx00pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="192520909"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:24:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/5] drm/i915/display: switch from intel_wakeref_t to
 struct ref_tracker *
Date: Tue, 25 Nov 2025 15:24:38 +0200
Message-ID: <cover.1764076995.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

v2 of [1] fixing it for CONFIG_DRM_I915_DEBUG_RUNTIME_PM=n.

[1] https://lore.kernel.org/r/cover.1763729370.git.jani.nikula@intel.com


Jani Nikula (5):
  drm/i915/pps: drop wakeref parameter from with_intel_pps_lock()
  drm/i915/pps: convert intel_wakeref_t to struct ref_tracker *
  drm/i915/power: drop wakeref parameter from
    with_intel_display_power*()
  drm/i915/power: convert intel_wakeref_t to struct ref_tracker *
  drm/{i915,xe}/display: drop intel_wakeref.h usage

 drivers/gpu/drm/i915/display/g4x_dp.c         |  5 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_cmtg.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 18 +++---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 16 ++---
 drivers/gpu/drm/i915/display/intel_display.c  | 23 +++----
 .../gpu/drm/i915/display/intel_display_core.h |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 .../drm/i915/display/intel_display_power.c    | 26 ++++----
 .../drm/i915/display/intel_display_power.h    | 48 ++++++++------
 .../drm/i915/display/intel_display_types.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 18 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 +-
 drivers/gpu/drm/i915/display/intel_dsi.h      |  7 ++-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 14 ++---
 drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      | 63 ++++++-------------
 drivers/gpu/drm/i915/display/intel_pps.h      | 14 +++--
 drivers/gpu/drm/i915/display/intel_sprite.c   |  6 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 40 +++++-------
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 .../xe/compat-i915-headers/intel_wakeref.h    | 10 ---
 drivers/gpu/drm/xe/display/xe_display_rpm.c   |  3 +
 40 files changed, 177 insertions(+), 212 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h

-- 
2.47.3

