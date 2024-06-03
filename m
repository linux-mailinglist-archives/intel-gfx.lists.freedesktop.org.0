Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C75E28D8323
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855AF10E2C2;
	Mon,  3 Jun 2024 13:01:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VKdUKek8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A6310E0F4
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419659; x=1748955659;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P5opFQKU5cwU/FuqcgYRb9pB6fV/FTwfEkiWhd7yZ9o=;
 b=VKdUKek8ln5P9v/Ooo8FNDNRBBca0hI4lr5G2d70KvDG7VtsTumZRhCD
 1CIw1nzN9OTYzjmhh1chM+OfAvm6XY3Jzb7ZWV7cfsb0aCRU9uwYbm3pw
 86aj4D2cFLre4Iq0kr3VN/auQ3v1bZOCEr2kxOqSS3noG3tuTgTL/Ethv
 oiwXkzXlckxqrqy/ArT9kZvv5uNx6/bDmfKTkgPTmJ2Avc7KIVJtelSFa
 L3/MAyqj7L3A6rDqEOo6Cyx7uuiG1oJBlUIKrT3iGVqmHE4ZZ32kfwVBD
 QXQecFSE5O3MusbyrynUUe3LYrTrttxPfCxWPnULYQF2zI3Yzq2xjMTb8 A==;
X-CSE-ConnectionGUID: qZsmndmkTPGkABBptCZEWg==
X-CSE-MsgGUID: Fs4tNfJ/RqqB16VwH/kAmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774446"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774446"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:00:58 -0700
X-CSE-ConnectionGUID: +nBpVz5JQLGOKzSsvouXKQ==
X-CSE-MsgGUID: Yu8slSY6Sr+PlgoYFYHQdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291632"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:00:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 00/19] Panel Replay eDP support
Date: Mon,  3 Jun 2024 16:00:24 +0300
Message-Id: <20240603130043.2615716-1-jouni.hogander@intel.com>
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

This patch set is implementing eDP1.5 Panel Replay for Intel hw. Also
Region Early Transport information is added into debugfs interface
and patch to disable Region Early Transport by default is reverted as
it is needed by eDP Panel Replay.

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

Jouni Högander (19):
  drm/i915/alpm: Do not use fast_wake_lines for aux less wake time
  drm/i915/alpm: Write also AUX Less Wake lines into ALPM_CTL
  drm/i915/display: Take panel replay into account in vsc sdp unpacking
  drm/i915/display: Skip Panel Replay on pipe comparison if no active
    planes
  drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
  drm/i915/alpm: Make alpm support checks non-static
  drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
  drm/i915/psr: Use intel_alpm_aux_wake_supported instead of local
    variable
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

 drivers/gpu/drm/i915/display/intel_alpm.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 213 +++++++++++++-----
 6 files changed, 169 insertions(+), 66 deletions(-)

-- 
2.34.1

