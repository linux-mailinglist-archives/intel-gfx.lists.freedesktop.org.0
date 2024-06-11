Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A775903B99
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF75F10E5FC;
	Tue, 11 Jun 2024 12:13:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kpj+1kkZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5505D10E5FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107982; x=1749643982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nRIJ/y4GFlqI0KXFMgDZMn/ak6mKdv9MM8luGZlw740=;
 b=kpj+1kkZcArEn/9NzRDz/lujFXRo+1hYMUp6Fkc5t9fXC6keXb6udnj+
 2yKvluVdvh65kBZHxUxFmyv92rkOJyzO4Zy11+QqzVq/6ygo0jCcO3+e5
 GmWn4ZTa0R/glb3AN2/j01XNBwby6PxDozmYM0Q8vY8BKa3RZqGJcvRNr
 eGoxy8HOM2JTd5oV11Np+7ffHkYRp6R4eENxr404bE6YLFNU8ScG2IYNG
 SxJ273eCvMaxnwfMifzsadHEFFnmnZrbTyN3xMjQoifQlM5GrNH+KyzSX
 93QLK99b/fZa1An28eXr+U40v3fX3cIK93E9pgAJOMblQqxqjjrd9YcNd A==;
X-CSE-ConnectionGUID: iTflEDHrQN22/mDsH8ZCAQ==
X-CSE-MsgGUID: 4E8IG/GQSWaqEpm+9UUm9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296817"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296817"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:01 -0700
X-CSE-ConnectionGUID: P41uAeeDQUaC7W8TBWvxsQ==
X-CSE-MsgGUID: CQ+mKIyhQZSQNJNB7XLtUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118571"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:12:59 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 00/18] Panel Replay eDP support
Date: Tue, 11 Jun 2024 15:12:25 +0300
Message-Id: <20240611121243.3366990-1-jouni.hogander@intel.com>
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

Jouni Högander (18):
  drm/i915/psr: Set SU area width as pipe src width
  drm/i915/display: Wa 16021440873 is writing wrong register
  drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
  drm/i915/psr: Inform Panel Replay source support on eDP as well
  drm/i915/psr: enable sink for eDP1.5 Panel Replay
  drm/i915/psr: Check panel Early Transport capability for eDP PR
  drm/i915/psr: Add Panel Replay compute_config helper
  drm/i915/psr: 128b/132b Panel Replay is not supported on eDP
  drm/i915/psr: HW will not allow PR on eDP when HDCP enabled
  drm/i915/alpm: Make crtc_state as const in intel_alpm_compute_params
  drm/i915/psr: Perfrom psr2 checks related to ALPM for Panel Replay
  drm/i915/psr: Perform scanline indication check for Panel Replay as
    well
  drm/i915/psr: Check Early Transport for Panel Replay as well
  drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
  drm/i915/psr: Disable Panel Replay if PSR mode is set via module
    parameter
  drm/i915/psr: Disable PSR2 SU Region Early Transport if psr_enable is
    set
  drm/i915/psr: Add new debug bit to disable Panel Replay
  Revert "drm/i915/psr: Disable early transport by default"

 drivers/gpu/drm/i915/display/intel_alpm.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   2 +-
 .../drm/i915/display/intel_display_params.c   |   3 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 207 ++++++++++++++----
 6 files changed, 179 insertions(+), 45 deletions(-)

-- 
2.34.1

