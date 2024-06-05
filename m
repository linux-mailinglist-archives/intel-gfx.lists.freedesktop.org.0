Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26B08FC8F6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC04A10E2A5;
	Wed,  5 Jun 2024 10:26:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJpXLPcl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E0A10E28E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583181; x=1749119181;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xYgMphRr28Ty2Qj0JskJslPLXVWdilOMicTchy5al90=;
 b=nJpXLPclh5WNW+9oPB8Vg1xYxONcCVh9y1s+tByjnQbugbpmASWwgxnb
 QgYKJj1Sa12ljss6wuqw5tdtWst9Kokg4wY7uN6IPfgC37Jx1+h0atAm3
 KQEL28hv0dA3DXaPGIogdzCaSPhWsBQaSWscWw7nFlygTkzlb/Wubv41e
 ES6dijtcnSOXz2aQpuAMNodP43oBULdhgVf/5DTmkVYTF2P7ZS9PZcQKG
 jwNAs5vQBrj7po5j7G+MdmseYLlpkcFNsrjJzYRpqEAmhISqZvr49Ex33
 2pqZuveVdyc5Um9QqheMb4eo4Z2kKeom0bIkG0ZpRP5gYq5cg28vXyvQo g==;
X-CSE-ConnectionGUID: xbfVYXYxS/SN8FjvHO28LA==
X-CSE-MsgGUID: b2AeGuZjS++HNI/svrjt9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136065"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136065"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:21 -0700
X-CSE-ConnectionGUID: nQTgURnzRG2XjV3OAtEMHg==
X-CSE-MsgGUID: NxC9DA3bTTOI7DOuXON1hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68685991"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 00/26] Panel Replay eDP support
Date: Wed,  5 Jun 2024 13:25:27 +0300
Message-Id: <20240605102553.187309-1-jouni.hogander@intel.com>
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

This patch set is implementing eDP1.5 Panel Replay for Intel hw. Patch
to disable Region Early Transport by default is reverted as it is
needed by eDP Panel Replay.

Patches 1 - 14 are fixes and clean-ups for DP2.0 Panel Replay found while testing with eDP1.5 panel. Patches 15 - 26 are implementing Panel Replay eDP.

v6:
  - fix and rework sink enable
  - rework checking vblank length for LunarLake and Panel Replay
  - reorder patches
v5:
  - use psr->su_region_et_enabled instead of psr2_su_region_et_valid
  - do not check Vblank >= PSR2_CTL Block Count Number for Panel Replay
v4:
  - add some patch from "Panel Replay fixes" set here
  - check 128b/132b encoding and HDCP enable
  - use intel_alpm_aux_wake_supported instead of local variable
v3:
  - commit message modifications
  - s/intel_psr_psr_mode/intel_psr_print_mode/
  - remove extra space from "PSR mode:  disabled"
  - do not allow eDP Panel Replay when using 128b/132b encoding
  - do not allow eDP Panel Replay when HDCP is enabled
v2:
  - printout "Selective Update enabled (Early Transport)" instead of
    "Selective Update Early Transport enabled"
  - ensure that fastset is performed when the disable bit changes

Jouni Högander (26):
  drm/i915/alpm: Do not use fast_wake_lines for aux less wake time
  drm/i915/alpm: Write also AUX Less Wake lines into ALPM_CTL
  drm/i915/display: Take panel replay into account in vsc sdp unpacking
  drm/i915/display: Skip Panel Replay on pipe comparison if no active
    planes
  drm/display: Add missing Panel Replay Enable SU Region ET bit
  drm/i915/psr: Split enabling sink for PSR and Panel Replay
  drm/i915/alpm: Make alpm support checks non-static
  drm/i915/psr: Use intel_alpm_aux_wake_supported instead of local
    variable
  drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
  drm/i915/psr: Print Panel Replay status instead of frame lock status
  drm/i915/psr: Move vblank length check to separate function
  drm/i915/psr: Take into account SU SDP scanline indication in vblank
    check
  drm/i915/psr: Check vblank against IO buffer wake time on Lunarlake
  dmr/i915/psr: Wake time is aux less wake time for Panel Replay
  drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
  drm/i915/psr: Inform Panel Replay source support on eDP as well
  drm/i915/psr: enable sink for eDP1.5 Panel Replay
  drm/i915/psr: Check panel Early Transport capability for eDP PR
  drm/i915/psr: Perfrom psr2 checks related to ALPM for Panel Replay
  drm/i915/psr: Add Panel Replay compute_config helper
  drm/i915/psr: 128b/132b Panel Replay is not supported on eDP
  drm/i915/psr: HW will not allow PR on eDP when HDCP enabled
  drm/i915/psr: Check Early Transport for Panel Replay as well
  drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
  drm/i915/psr: Add new debug bit to disable Panel Replay
  Revert "drm/i915/psr: Disable early transport by default"

 drivers/gpu/drm/i915/display/intel_alpm.c     |  11 +-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 309 ++++++++++++------
 include/drm/display/drm_dp.h                  |   1 +
 7 files changed, 223 insertions(+), 111 deletions(-)

-- 
2.34.1

