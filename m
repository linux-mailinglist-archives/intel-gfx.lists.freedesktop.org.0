Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D66E8AAE26
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0AF610EBFE;
	Fri, 19 Apr 2024 12:11:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="js4wztez";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6357210EBFE
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 12:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713528715; x=1745064715;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vdUiU1KvlY0kwXZun/gB4Z+Iwr4tuhgrmANaJe/7cTA=;
 b=js4wztezI8tSzEQYzR2QctUHCvPMx2/OMPpVRmI2mT1F5PkFQ8lc8LaU
 3lO7IDAt7k1Fm09GmIL1ddsM5a+CtgwBbRG/WRvXR7e9iLQq9TxOyQSGm
 vPPOHrnWSFcDeTzJBaW3fyQnCZIXlxeQxTKXioJRFwRs7pWwqfYsUL67z
 j0B6FxMh0GYVSorplp+6w6BYLi0j41YL8n6tXPqOCqY9E7e8ksXi2Dqg8
 cDVSBddwRevFHsNCyBVGpyW6EKUXmde4sT4YFU/NOBVxZV3ongDLYRzgo
 Cq6O9HeWq2M3xxXX3Rrw+n5yN4LMidz2wy4ZiadKjVqjI9h1pEhrvLJHB A==;
X-CSE-ConnectionGUID: avjLmV8zRsuBH+84W5ZwAQ==
X-CSE-MsgGUID: kHvn60tpRxKYIraZKCNW7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19735905"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19735905"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:11:55 -0700
X-CSE-ConnectionGUID: ifTtBLwNQ+6NQHG6H8XmwA==
X-CSE-MsgGUID: /+OvTmHdRaiC3aRwHtodnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28149475"
Received: from mkuznet1-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.63.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:11:54 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 00/11] Panel replay selective update support
Date: Fri, 19 Apr 2024 15:11:30 +0300
Message-Id: <20240419121141.2665945-1-jouni.hogander@intel.com>
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

