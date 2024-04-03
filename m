Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E278969C3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42BC01128E2;
	Wed,  3 Apr 2024 09:00:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BaiHwRZ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B741128E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134828; x=1743670828;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c0egOd/ojmbEMGqED2PVUKyJgjWsaAp1aCima82WgU4=;
 b=BaiHwRZ1Kep7D1zPLqri7NpraIPVM/w5S7WN2h4k+vvdveJso6Mfy3Xr
 8IJ39XP/q256COb2sI+LIDQ+cUt2zbJWLUo233wA78eUOrZu5JQcJn9T7
 pbqQnD8HVSIKm0ABfgkVMwYbxBeOLvKPEswWnbLYN9mKimFXXQkV3iwM6
 keALH38SOjKStNMG9HD4Szg8/1UKM402P8b8P/Qf/iSKkRT7j5XnrlSLL
 9z5g4fT78OuMkUrQWLUa4NK81bJv9JcsOqo9PbP3bqHKSlQAWDdSgtfJX
 lMrSjd9D3dQ8dV3uahuTak+13kvCl3rmuwxJXT7LBjbUog6jt+H08pBGP w==;
X-CSE-ConnectionGUID: HbW5tFTmRBOENqhl9YChIQ==
X-CSE-MsgGUID: UJpHmlnsSC65y9mmkc6jyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472359"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472359"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:26 -0700
X-CSE-ConnectionGUID: ru0e6os6RmWbi5MILw8HfA==
X-CSE-MsgGUID: R6ziT1SqQu+r9JgDPTAIoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18452884"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 00/19] Panel replay selective update support
Date: Wed,  3 Apr 2024 11:59:54 +0300
Message-Id: <20240403090013.54296-1-jouni.hogander@intel.com>
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

It is also fixing several exisiting issues in current panel replay implementation:

Several needed functions are not executed for panel replay
Ensure link training follows enabling panel replay on sink side
Do not update phy power state for panel replay.
Do not apply workarounds not applicable for panel replay
Do not write registers/bits not applicable for panel replay

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

Jouni Högander (19):
  drm/i915/psr: Add some documentation of variables used in psr code
  drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well
  drm/i915/psr: Intel_psr_pause/resume needs to support panel replay
  drm/i915/psr: Do not update phy power state in case of non-eDP panel
    replay
  drm/i915/psr: Check possible errors for panel replay as well
  drm/i915/psr: Do not write registers/bits not applicable for panel
    replay
  drm/i915/psr: Call intel_psr_init_dpcd in intel_dp_detect
  drm/i915/psr: Unify panel replay enable/disable sink
  drm/i915/psr: Panel replay has to be enabled before link training
  drm/i915/psr: Rename has_psr2 as has_sel_update
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

 .../drm/i915/display/intel_crtc_state_dump.c  |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  12 +
 .../drm/i915/display/intel_display_params.c   |   5 +-
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  13 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 420 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h      |   5 +
 include/drm/display/drm_dp.h                  |   6 +
 11 files changed, 343 insertions(+), 152 deletions(-)

-- 
2.34.1

