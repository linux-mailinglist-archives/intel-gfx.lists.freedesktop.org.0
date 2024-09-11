Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E67975346
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C6210EA0E;
	Wed, 11 Sep 2024 13:12:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDQqSqZO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EBFD10EA0E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060327; x=1757596327;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pMoOKfDlULpIv2gYjjK8WMRTEOvUFYFPAIUTviazIdk=;
 b=GDQqSqZOok0LafUkvdxGyU3wyzyDjK9+ODdYBPl9RnQEOK3VImdxgQPD
 946zK5RzC0vb1xVbPa+XfONncO5JhJkO2WbLfim7Uh44CfinRSMIKyWb+
 1ftpD5WF31jLUwMztQxpRXaEScmjOZH1WL+0tzL0f4hVVa2PjarZWKGqb
 o/jDoWSCP4Ym3a+JPQuKhdMW1MDgFNx1P1Hn8YKGGQTidctFkmMK8MG2M
 JmQZQaWtQvMg25RfI/eesTZCEJY21kas/GQBEbg93TNu/gqegDWHeqSYd
 SVV9MlFa/1Fk7+J07OtU+AqtpjEP0KYuL0P2+5duRb5D+71B13k1T6bnI Q==;
X-CSE-ConnectionGUID: g/3hW4LeQMCHdQ0S1CUcSQ==
X-CSE-MsgGUID: /YaOy17jQIikXEzep3c51w==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244312"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244312"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:07 -0700
X-CSE-ConnectionGUID: SoroAC4GTPqOriMmUfxihA==
X-CSE-MsgGUID: A/peqGU1RIWaf1wpV4lH3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67380771"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/19] Ultrajoiner basic functionality series
Date: Wed, 11 Sep 2024 18:43:30 +0530
Message-ID: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

This patch series attempts to implement basic support
for Ultrajoiner functionality.

Rev6:
-Upgrade the debugfs functionality to enable the joining of a
specified number of pipes.
-Modify the display helpers reliant on the pipe joiner mechanism
to use number of pipes joined, instead of joiner flag.
-Checkpatch fixes.

Rev7:
-Use struct intel_display, minor refactoring, and rebase.

Rev8:
-Address comments from Ville.
-Simplified debugfs for forcing joiner, and added option to disable
joiner.
-Modified the ultra/bigjoiner helpers as suggested by Ville. 
-Split few of the bigger patches as suggested.

Test-with: 20240911072204.22825-1-karthik.b.s@intel.com

Ankit Nautiyal (11):
  drm/i915/display: Check whether platform supports joiner
  drm/i915/display: Modify debugfs for joiner to force n pipes
  drm/i915/display_debugfs: Allow force joiner only if supported
  drm/i915/dp: Add helper to compute num pipes joined
  drm/i915/display: Add debugfs support to avoid joiner
  drm/i915/display: Simplify intel_joiner_num_pipes and its usage
  drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
  drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
  drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
  drm/i915/display: Consider ultrajoiner for computing maxdotclock
  drm/i915/intel_dp: Add support for forcing ultrajoiner

Stanislav Lisovskiy (8):
  drm/i915: Add some essential functionality for joiners
  drm/i915: Split current joiner hw state readout
  drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
    checks
  drm/i915: Implement hw state readout and checks for ultrajoiner
  drm/i915/display: Percolate ultrajoiner info to get_joiner_config
  drm/i915/display/vdsc: Add ultrajoiner support with DSC
  drm/i915: Add new abstraction layer to handle pipe order for different
    joiners
  drm/i915: Compute config and mode valid changes for ultrajoiner

 drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 423 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  17 +-
 .../drm/i915/display/intel_display_debugfs.c  |  84 +++-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 138 ++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  54 ++-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  30 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
 12 files changed, 646 insertions(+), 142 deletions(-)

-- 
2.45.2

