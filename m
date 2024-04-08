Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE1589BA14
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 10:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5782E10FDAB;
	Mon,  8 Apr 2024 08:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fguAX2EA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F7D10FDAB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 08:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712564557; x=1744100557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gQHmZdycqwEhJiUSfQpG8d8X+r6oqsiIBHDC+Bk8HBs=;
 b=fguAX2EAEv6VTHuWOh2FC9JPEyXWKoIVdtvhAlC+23LMrXc7Si8mNTly
 pY7Aep4yv6GiXUOO6C3acmMUDrxTwskqTJj81rjuBCq7PHcDtFsopazVO
 whavqzF76swTgASeovaKlPLbLNJg8ARvxfqRZhlqeqz9qG4oBPLwQeJsJ
 DQFu5ViC+4Wz64T+NLiGVOTT8lfIByZvyAsyHwZ9zYem1VJFWaJuzbFmG
 WOAAzKQxQjzkUJd+mSy/whF3nYaBThHUhkxCyeqUEBc+kHG3Rh2c2eZex
 8NOAYXhc+pzP8uEkEZrNzjKto8ffLATofumP8EAQXANO3GFEUgQdu8/d9 A==;
X-CSE-ConnectionGUID: iFsh1Fo6RqOs+/Rw/x4Lag==
X-CSE-MsgGUID: K91PtkI5Tymqb357pjpHLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="25275767"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="25275767"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:37 -0700
X-CSE-ConnectionGUID: edfsu6EvQlGDmS6iEzRwzA==
X-CSE-MsgGUID: 45BHP1xZT0yF/+wQADPbVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24444543"
Received: from rkhristx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.154])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 00/10] Panel replay selective update support
Date: Mon,  8 Apr 2024 11:22:02 +0300
Message-Id: <20240408082212.3429193-1-jouni.hogander@intel.com>
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

Jouni Högander (10):
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
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_params.c   |   5 +-
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 227 ++++++++++++------
 include/drm/display/drm_dp.h                  |   6 +
 9 files changed, 178 insertions(+), 88 deletions(-)

-- 
2.34.1

