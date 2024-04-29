Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB078B5769
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 14:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE21510E3CE;
	Mon, 29 Apr 2024 12:08:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z674H2Tx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF9A10E3CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 12:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714392494; x=1745928494;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zSuydy1fgJQOkZSYhdTviPd2XDR7NrEQimZzRFTkPFk=;
 b=Z674H2TxHK2TOlnKzm3BuBkIMXS/w26CfvXioQS8nN9MCsrYeJ7EBMqo
 7mLWi3WyJDdAvdw8wxJu761OWzigng1+05K0rrP0fybT/myVy3H+JV6YM
 ZctfNYmS14MC1T1mzJJh8Vz1SzZGxpl+9n68QGfv+zsH9EdtdmNyu1pRd
 fLEpmw8Fkfe9UR0E4/ggnTZaNFhJLWvWAx70X0/Wwsh/xS65/eDI9p4sq
 t4aVQ2KtWUyBQridt7ZZ1ROgX0LYBL7FXv1aTpVQGpT+dMD89illJ4l4H
 +xpWXlWzfrMwV4yZUieVuVZwvoKRFo6Br7DbOnr0QfTdOLJPyEfYa74Il Q==;
X-CSE-ConnectionGUID: X90XEqwtStS5oIEjti7ZhA==
X-CSE-MsgGUID: He/AcJAHR+a0DKK4UJcWpw==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="21455433"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="21455433"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:14 -0700
X-CSE-ConnectionGUID: NQVO4CGdRvqaAkYCPCvGUQ==
X-CSE-MsgGUID: uZWd3iW6SIa+qw7HDkkj7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26074396"
Received: from domelchx-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.96])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 00/11] Panel replay selective update support
Date: Mon, 29 Apr 2024 15:07:44 +0300
Message-Id: <20240429120755.3990652-1-jouni.hogander@intel.com>
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

Jouni Högander (11):
  drm/i915/psr: Rename has_psr2 as has_sel_update
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

 .../drm/i915/display/intel_crtc_state_dump.c  |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_params.c   |   5 +-
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  17 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 227 ++++++++++++------
 include/drm/display/drm_dp.h                  |   6 +
 9 files changed, 185 insertions(+), 95 deletions(-)

-- 
2.34.1

