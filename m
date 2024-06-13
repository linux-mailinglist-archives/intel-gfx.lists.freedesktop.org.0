Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B309068C6
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3968310E9D0;
	Thu, 13 Jun 2024 09:32:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8vNZB1U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3AEB10E9BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271172; x=1749807172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S44z3rm9ssf1fZZz4PnsQRC7cjJ8sIPQuKbi10YTJ6U=;
 b=T8vNZB1USG6xI7KfB9ER+/5wdFkD52qHZMfYQcJKoQFKPQ/VZDt4RAqe
 mmtlknwt7+ppm5SR7w/PUIQRTUKsJxqM+2YZ3cC2FnYN3L52Kiu78yHgr
 K7+2AX3CQpTuZP2tg/ZUkvsyqmAPTOkEmlK3HUqBXb3gDtV/0fycR2asc
 N4hCzqfADVnV6H8dmPCNMLSNFSbXElrcc2WOvDbG6Etived7RsBPzdU12
 rnVOfR/0HYJte3TBDb+8Bl9zuBxnsUeJEvc2Y2iTMZzFk8khOHGUA0M/5
 cAq6x3+CimQIWOJSyRNP/wkWBxwwQlPTimLnvvus+MXCT2O/3ubNrWMwF g==;
X-CSE-ConnectionGUID: SR/zyk0iSgm2UXUd0pbNtg==
X-CSE-MsgGUID: j9KeLxISSTGLtOqvAYz5Iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802470"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802470"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:51 -0700
X-CSE-ConnectionGUID: PjzB6BlKTRm7uHWaYEsVnw==
X-CSE-MsgGUID: XTmq5zckTZSdGsTEHzxrgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523320"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 00/20] Panel Replay eDP support
Date: Thu, 13 Jun 2024 12:32:19 +0300
Message-Id: <20240613093239.1293629-1-jouni.hogander@intel.com>
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

v8:
  - series reordered to ease merging subset
  - wa 16021440873 modified
  - Fix port clock usage in AUX Less wake time calculation
  - Disable PSR/Panel Replay on sink side for PSR only
v7:
  - fix improper SU area width
  - writing wrong register in Wa 16021440873
  - disable Panel Replay if psr_enable is set != -1
  - perfrom ALPM check for Panel Replay Full Frame update
  - printout why Panel Replay is disabled
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
  - printout debug info in case Panel Replay is prevented
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

Jouni Högander (20):
  drm/i915/psr: Set SU area width as pipe src width
  drm/i915/display: Wa 16021440873 is writing wrong register
  drm/i915/alpm: Fix port clock usage in AUX Less wake time calculation
  drm/i915/psr: Add Panel Replay compute_config helper
  drm/i915/psr: Disable Panel Replay if PSR mode is set via module
    parameter
  drm/i915/psr: Disable PSR2 SU Region Early Transport if psr_enable is
    set
  drm/i915/psr: Disable PSR/Panel Replay on sink side for PSR only
  drm/i915/psr: Add new debug bit to disable Panel Replay
  Revert "drm/i915/psr: Disable early transport by default"
  drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
  drm/i915/psr: Inform Panel Replay source support on eDP as well
  drm/i915/psr: enable sink for eDP1.5 Panel Replay
  drm/i915/psr: Check panel Early Transport capability for eDP PR
  drm/i915/psr: 128b/132b Panel Replay is not supported on eDP
  drm/i915/psr: HW will not allow PR on eDP when HDCP enabled
  drm/i915/alpm: Make crtc_state as const in intel_alpm_compute_params
  drm/i915/psr: Perform psr2 checks related to ALPM for Panel Replay
  drm/i915/psr: Perform scanline indication check for Panel Replay as
    well
  drm/i915/psr: Check Early Transport for Panel Replay as well
  drm/i915/psr: Modify dg2_activate_panel_replay to support eDP

 drivers/gpu/drm/i915/display/intel_alpm.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   4 +-
 .../drm/i915/display/intel_display_params.c   |   3 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 237 ++++++++++++++----
 6 files changed, 195 insertions(+), 64 deletions(-)

-- 
2.34.1

