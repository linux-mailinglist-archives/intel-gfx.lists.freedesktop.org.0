Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 053D283275F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6602410E994;
	Fri, 19 Jan 2024 10:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F413610E994
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659049; x=1737195049;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sf0iLc7+Le1WioxYQqm8lJPq7RTlUFOu8v135CxlT70=;
 b=VH9Xsvd7BVCUSoPJW/z/tS9FIf/ZSiW0TSop7yTLnh2QMwm3Ap7JdZNR
 48LExapEdrsCyMMzLydYSJVwjpEPqiuRsFv5S9q6IAT88I00XqvtKNvtC
 JQPZgQK4hW72o/5l2NZIRBB96weW/8j5OXCE96yVKOtW7536ehbL7AwkM
 k+n6UGIr1deHaGSMJ0C2mounehKRVAqJu5czroJQ51OVLw4Wzs5/95Boe
 gtW45sfaBBWnYxHpgegKV6CWeBnieDDEPZ+oetFwD1l1EMktoppQjxVrO
 7wq5YQ6yiiQpWkRLtBj4qMYYi2QVvJDyISXi0r8CYZyRiNYu/62NO+dTN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070717"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070717"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563182"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 00/21] Panel replay selective update support
Date: Fri, 19 Jan 2024 12:10:03 +0200
Message-Id: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

Several needed functions are not execute for panel replay
Ensure link training follows enabling panel replay on sink side
Do not update phy power state for panel replay.
Do not apply workarounds not applicable for panel replay
Do not write registers/bits not applicable for panel replay

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

Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (21):
  drm/i915/psr: Add some documentation of variables used in psr code
  drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well
  drm/i915/psr: Intel_psr_pause/resume needs to support panel replay
  drm/i915/psr: Rename intel_psr_enabled
  drm/i915/psr: Do not update phy power state in case of panel replay
  drm/i915/psr: Check possible errors for panel replay as well
  drm/i915/psr: Do not write registers/bits not applicable for panel
    replay
  drm/i915/psr: Unify panel replay enable/disable sink
  drm/i915/psr: Panel replay has to be enabled before link training
  drm/i915/psr: Rename has_psr2 as has_sel_update
  drm/i915/psr: Modify VSC SDP calculation to support panel replay + su
  drm/i915/psr: Rename psr2_enabled as sel_update_enabled
  drm/panelreplay: dpcd register definition for panelreplay SU
  drm/i915/psr: Detect panel replay selective update support
  drm/i915/psr: Modify intel_dp_get_su_granularity to support panel
    replay
  drm/i915/psr: Ensure early transport is not enabled for panel replay
  drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
  drm/i915/psr: Do not apply workarounds in case of panel replay
  drm/i915/psr: Update PSR module parameter descriptions
  drm/i915/psr: Split intel_psr2_config_valid for panel replay
  drm/i915/psr: Add panel replay sel update support to debugfs interface

 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  12 +
 .../drm/i915/display/intel_display_params.c   |   5 +-
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  26 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 375 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h      |   7 +-
 include/drm/display/drm_dp.h                  |   6 +
 11 files changed, 324 insertions(+), 137 deletions(-)

-- 
2.34.1

