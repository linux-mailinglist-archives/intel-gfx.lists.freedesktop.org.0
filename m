Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1C38C2119
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ECE510E1DD;
	Fri, 10 May 2024 09:38:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cyV9uyG/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A603410E1DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715333920; x=1746869920;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TJiziQHq5/LFi6tw1z6hUtcHXJkuKjgM1+rvnnsVX54=;
 b=cyV9uyG/JFgcyEEZVzp/QWu6RNBrDGsQOe6yxPkXXuXcDlGkpk7EmVOy
 3NSpzgadNCyCCPx6sbVbn60Gop2LgLX35kcBPgiPR+4MYlZ87B5gJsuel
 NEUoqbyWsk4lcpLv1mLw3DT1rkeXOF3pQVQucInZ7aarrhH+OU+LO+TFv
 B/E3V5aldby3rxlkjCks7hxX00wpBbSkEpGUwHcUjGbIGBch6TaR+tbnn
 +28Fg4oyekMIVcwg55eS0FTYi6JmS2so0lLAWpPpst/agJrW/rnhbjp8B
 d5nj3zX+MtphNWIaeS7VSzcV+V0VLV8aNFdbNEnjO9bi5tLWyKAhKznKu w==;
X-CSE-ConnectionGUID: 2h8zMd95Sc6VlLerJPWTNQ==
X-CSE-MsgGUID: 4r6F32KUSHunwc51kH82bg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="36684679"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="36684679"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:39 -0700
X-CSE-ConnectionGUID: /M1y8L6rTYOy54m5b/i6Cw==
X-CSE-MsgGUID: 2btRry6+QkC2TZT9IR02dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34075442"
Received: from dlazzaro-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.148])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v10 00/12] Panel replay selective update support
Date: Fri, 10 May 2024 12:38:11 +0300
Message-Id: <20240510093823.3146455-1-jouni.hogander@intel.com>
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

v10:
  - use always PSR2_STATUS for eDP Panel Replay
  - handle SRD_STATUS vs. PSR2_STATUS in intel_psr_wait_exit_locked as well
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
 drivers/gpu/drm/i915/display/intel_psr.c      | 237 ++++++++++++------
 include/drm/display/drm_dp.h                  |   6 +
 9 files changed, 194 insertions(+), 93 deletions(-)

-- 
2.34.1

