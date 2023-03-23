Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D79E26C6AA9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF7E210EAAC;
	Thu, 23 Mar 2023 14:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E294410EAAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581240; x=1711117240;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CxF1+zMItSLenZWw4Icy0rJdrqBnU+Oz2prg7yrfDpg=;
 b=ME7sgPvj7xeh+0NcccflVc4P//wcinqGTRIKkOhSR37ilYTaAmmn4LR7
 SgjTmszgQXTId29SvtfPn3tIWWceItR2ehLrudm792GTUAXfO6yoxy0Ev
 qAZw6Ux/JNUKYpuwI9wOkXGUfBRLq/VnvXN/nYbY1L9sIc0XGMr/ii8nP
 6ZgxbSuAquajzmoB60agqAVFVVheaLyHgHU482GLQ7vySXCHx9kaIY/sQ
 S2SaInU3HUpoQcoRbj3EatMQi4vNayWQ3NgGvHKrW9Y9d2exqklCumzaI
 91H6GfSRzBTD3Gx8fenNjXnEkL38ejaXLQPk3bQEogF/vVN1nhwWFttLm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892239"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892239"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722608"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722608"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:06 +0200
Message-Id: <20230323142035.1432621-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/29] drm/i915/tc: Align the ADLP TypeC
 sequences with bspec
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

This patchset updates the ADLP TypeC PHY connect/disconnect sequences
that changed in Bspec. The change in the power domains used and order of
enabling these wrt. taking the PHY ownership domains requires moving
these sequences to platform specific hooks; the first part of the
patchset adds these along with other hooks to setup/query the PHY HW
state, replacing the corresponding if ladders.

The second part of the patchset adds the ADLP specific hooks, updating
the connect/disconnect sequences and hotplug detection for it according
to bspec.

The last part makes sure that the port DPLL is disabled before
disconnecting the TC PHY, as required by bspec.

Tested on ICL, TGL, ADLP.

Imre Deak (29):
  drm/i915/tc: Group the TC PHY setup/query functions per platform
  drm/i915/tc: Use the adlp prefix for ADLP TC PHY functions
  drm/i915/tc: Rename tc_phy_status_complete() to tc_phy_is_ready()
  drm/i915/tc: Use the tc_phy prefix for all TC PHY functions
  drm/i915/tc: Move TC port fields to a new intel_tc_port struct
  drm/i915/tc: Check for TC PHY explicitly in
    intel_tc_port_fia_max_lane_count()
  drm/i915/tc: Move the intel_tc_port struct declaration to intel_tc.c
  drm/i915/tc: Add TC PHY hook to get the PHY HPD live status
  drm/i915/tc: Add TC PHY hooks to get the PHY ready/owned state
  drm/i915/tc: Add TC PHY hook to read out the PHY HW state
  drm/i915/tc: Add generic TC PHY connect/disconnect handlers
  drm/i915/tc: Factor out tc_phy_verify_legacy_or_dp_alt_mode()
  drm/i915/tc: Add TC PHY hooks to connect/disconnect the PHY
  drm/i915/tc: Fix up the legacy VBT flag only in disconnected mode
  drm/i915/tc: Check TC mode instead of the VBT legacy flag
  drm/i915/tc: Block/unblock TC-cold in the PHY connect/disconnect hooks
  drm/i915/tc: Remove redundant wakeref=0 check from unblock_tc_cold()
  drm/i915/tc: Drop tc_cold_block()/unblock()'s power domain parameter
  drm/i915/tc: Add TC PHY hook to get the TC-cold blocking power domain
  drm/i915/tc: Add asserts in TC PHY hooks that the required power is on
  drm/i915/tc: Add TC PHY hook to init the PHY
  drm/i915/adlp/tc: Use the DE HPD ISR register for hotplug detection
  drm/i915/tc: Get power ref for reading the HPD live status register
  drm/i915/tc: Don't connect the PHY in intel_tc_port_connected()
  drm/i915/adlp/tc: Align the connect/disconnect PHY sequence with bspec
  drm/i915: Move shared DPLL disabling into CRTC disable hook
  drm/i915: Disable DPLLs before disconnecting the TC PHY
  drm/i915: Remove TC PHY disconnect workaround
  drm/i915: Remove the encoder update_prepare()/complete() hooks

 drivers/gpu/drm/i915/display/intel_ddi.c      |   71 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   85 +-
 drivers/gpu/drm/i915/display/intel_display.h  |    7 -
 .../drm/i915/display/intel_display_types.h    |   19 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   15 +
 drivers/gpu/drm/i915/display/intel_tc.c       | 1248 +++++++++++------
 drivers/gpu/drm/i915/display/intel_tc.h       |    4 +-
 drivers/gpu/drm/i915/i915_pci.c               |    3 -
 drivers/gpu/drm/i915/intel_device_info.h      |    1 -
 9 files changed, 850 insertions(+), 603 deletions(-)

-- 
2.37.1

