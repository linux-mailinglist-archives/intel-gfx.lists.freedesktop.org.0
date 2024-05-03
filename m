Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A79B8BA71B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1E910F231;
	Fri,  3 May 2024 06:34:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ksZxkNaW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5927C10F231
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714718066; x=1746254066;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DXvHbrpDLM4L5H470pGdnX1bPpQlxlykMftE3w7Oxec=;
 b=ksZxkNaWwaAJgCGoKKSzVcwogeNrAUdVFGtegsELj04znqmImChNrmsT
 uJy4a9Z7GiVMO25QCHgUOoghktrQsJ8ezWf8nLupzADUg6NXCarPoUao8
 Qki6v7NNtf4UF6F3pWaO4UBeIIxnZyuLWbyFoDPWGMDXPi2q7Ig85qbDK
 Bb5pCP0U68WI++qE1WErEV4iY+05HhPOwbVMV0QqcYBCExVhG4P4yYJ9G
 bhkX2MWuc26oCdsSoNR3pt+u6IG3iMVXdgGPNM9HHqLIzVATJYV8vP/Bz
 LjTLg027REhf0JrjBHqTt1ZuuMTaxWHkbR/OE20dJgL5UspiT02sY+H/H w==;
X-CSE-ConnectionGUID: I+2SohlZSgyzw6MM2150yA==
X-CSE-MsgGUID: 3qt5gYTeRXq3EcRkkjCZEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="14302299"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="14302299"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:25 -0700
X-CSE-ConnectionGUID: rSHDLBx/TZKOZkQ9T2l2Aw==
X-CSE-MsgGUID: zkUhAucJQeu4kttpdjcWUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="50558673"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 00/12] Panel replay selective update support
Date: Fri,  3 May 2024 09:34:01 +0300
Message-Id: <20240503063413.1008135-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

This patch set is implementing panel replay selective update support
for Intel hardware.

v9:
  - do not add has_psr check into psr2 case in intel_dp_compute_vsc_sdp
  - use drm_dp_dpcd_readb instead of drm_dp_dpcd_read in intel_dp_get_su_capability
  - ensure intel_dp_get_su_capability returns 0 if drm_dp_dpcd_readb fails
v8:
  - use correct offset for DP_PANEL_PANEL_REPLAY_CAPABILITY
v7:
  - use always vsc revision 0x6 for Panel Replay
v6:
  - fixes split to separate patch set
v5:
  - do not use PSR2_STATUS for PSR1
v4:
  - do not rename intel_psr_enabled
  - do not add sel_update_et_enabled into struct intel_psr
v3:
  - do not disable panel replay by default
  - set has_psr for panel replay as well
  - enable sink before link training
  - do not apply all PSR workarounds for panel replay
  - do not write/read registers/bits not applicable for panel replay
  - use psr bit definitions in granularity configuration as well
  - goto unsupported instead of return when global enabled check fails
  - update module parameter descriptions.
v2:
  - make psr pause/resume to work for panel replay as well

Jouni Högander (12):
  drm/i915/psr: Rename has_psr2 as has_sel_update
  drm/i915/display: Do not print "psr: enabled" for on Panel Replay
  drm/i915/dp: Use always vsc revision 0x6 for Panel Replay
  drm/i915/psr: Rename psr2_enabled as sel_update_enabled
  drm/panelreplay: dpcd register definition for panelreplay SU
  drm/i915/psr: Detect panel replay selective update support
  drm/i915/psr: Modify intel_dp_get_su_granularity to support panel
    replay
  drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
  drm/i915/psr: Do not apply workarounds in case of panel replay
  drm/i915/psr: Update PSR module parameter descriptions
  drm/i915/psr: Split intel_psr2_config_valid for panel replay
  drm/i915/psr: Add panel replay sel update support to debugfs interface

 .../drm/i915/display/intel_crtc_state_dump.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_params.c   |   5 +-
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  17 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 227 ++++++++++++------
 include/drm/display/drm_dp.h                  |   6 +
 9 files changed, 184 insertions(+), 93 deletions(-)

-- 
2.34.1

