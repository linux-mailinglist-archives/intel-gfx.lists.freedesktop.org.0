Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1993F90E355
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9044810E88C;
	Wed, 19 Jun 2024 06:22:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PETtZa0k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FBD10E85B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778122; x=1750314122;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mRPOvpLBfLYNW8TKN9z0M5/6p7ZO/ka4K2kdL2inYcA=;
 b=PETtZa0kFqkCIIlTbbFpGozc73trpB68UO0BEqtdTlZS5SW+xVGN0kfa
 69050r4DH1T04r5Hd+/o+MIY9wyf5epbVz1bmGD3N7VpXaJTv7Gxyhodr
 JUE94LLLEUm9dxzml7Ye0r3O1JB3/ngTBqqhTMAJF66hA5PxB+7LXIaaJ
 /3yrBvHxDQOxU4RRFESZpJ2ocLYLUMH7BSVws9z9cKC3pqaoj0olTyYWW
 FH9Y+c0sSX+Le5j8q3k6ag3+jw69Q59isYl6+aDggUxQTiUFJwlNBgHRh
 rrV8bsDhOq2zWbt3jXMqqvFSBAPg8mn+2d43fOcD6ELDkXOGH3g6g8rjn Q==;
X-CSE-ConnectionGUID: ZWnY/op3TiGwJZAwyEtjzA==
X-CSE-MsgGUID: VMpF6gJPSy2ANtSaS4DQQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377378"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377378"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:00 -0700
X-CSE-ConnectionGUID: RdVa8rHhRVyjQls06r4f3A==
X-CSE-MsgGUID: Wfhn3QrhQFWnopDK/I1bKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41905912"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:21:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 00/11]  Panel Replay eDP support
Date: Wed, 19 Jun 2024 09:21:20 +0300
Message-Id: <20240619062131.4021196-1-jouni.hogander@intel.com>
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

This patch set is implementing eDP1.5 Panel Replay for Intel hw and
enabling it on LunarLake HW when eDP1.5 panel is available. Patches
are tested using two differenet eDP1.5 panel models. IGT modifications
for testing are under review and available here:

https://patchwork.freedesktop.org/series/133866/

v9:
  - rebase (part of v8 set is merged)
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

Jouni Högander (11):
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

 drivers/gpu/drm/i915/display/intel_alpm.c |   9 +-
 drivers/gpu/drm/i915/display/intel_alpm.h |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c  | 163 +++++++++++++++++-----
 3 files changed, 137 insertions(+), 37 deletions(-)

-- 
2.34.1

