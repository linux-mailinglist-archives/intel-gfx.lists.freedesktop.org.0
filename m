Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA1EC790FE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 13:51:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0358610E274;
	Fri, 21 Nov 2025 12:51:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eAgxtLOJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D730710E274;
 Fri, 21 Nov 2025 12:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763729473; x=1795265473;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=doekcq7gRdChHxh9npBjBShMPvAw6Ml4/UZwBUM374w=;
 b=eAgxtLOJdApAj7QmStEVT+/FkyBNalLPcQUAiWSNrPFrO8RMxosEcai9
 nzUrXJ2lxa3T+EkYPeMgV3d9jjj8Zx6m+Z+l0S5oagtkpFHx7KqE1ivkR
 9EBh7E63FfNbI+ERwlpRsUS1z0hEGnQ7iq75nQau7wyrqibGWD3nDKRJn
 A2ewzlYuHr7WRGdA/qYMCKkzoXzlKGmAlXkKixiIoTrcgnzwyXrNO/zaO
 88ANrE0FU07kM5QS10OGfoFDRiy91ynGy1kAWbqxd6N10Aa0i9WDvaFna
 BIfNddxdKDCT733f8XTON10o/VOJmTKUxHMop2KNNcbRm7QjlQcy0tR/a g==;
X-CSE-ConnectionGUID: Fq136eWVTrmSPlAuJSWSBA==
X-CSE-MsgGUID: LWxePIZZTR2EaKh94kg6Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="76504115"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="76504115"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:12 -0800
X-CSE-ConnectionGUID: pmao4ePlTDy57vgqFW+5Og==
X-CSE-MsgGUID: g38xKqrCR1SLG5oy8POERw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196149400"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915/display: switch from intel_wakeref_t to struct
 ref_tracker *
Date: Fri, 21 Nov 2025 14:51:00 +0200
Message-ID: <cover.1763729370.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

Under the hood, intel_wakeref_t is just struct ref_tracker *. Use the
actual underlying type both for clarity (we *are* using intel_wakeref_t
as a pointer though it doesn't look like one) and to help i915, xe and
display coexistence without custom types.

Reduce intel_wakeref_t usage a bit first by declaring the variables
within the with_*() macros.


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
 .../drm/i915/display/intel_display_power.c    | 29 +++++----
 .../drm/i915/display/intel_display_power.h    | 45 +++++++------
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

