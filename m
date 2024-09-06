Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A7B96F4C7
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10F4B10E06C;
	Fri,  6 Sep 2024 12:56:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SZri5+Ax";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BB0F10E191
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627390; x=1757163390;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QW0imrPqsaJA/9uIHPMSX0hACdTJ98LQvfkBrE3OOiA=;
 b=SZri5+AxNA81fKy3o3Mclw/xsggBFZQSN8US6SI98LJ5dk/QrkxdcC9L
 YnRJMJjMuSbe7Eu0+6enzvUODcJav9zX2aGgx8NwLauU/JUaJj0R0C7Fd
 Xgxesjg3EzEEwWlmUEpdkLGR6tNnU+mzXoGPY8ovb5O4+yeMUxTrnOiXB
 ybCg9Ooy3BvK5Pk4svw6ec4t/rr7uLo/n+AkazVLq7kyKkUpvMetWBs8K
 zibkZRaPZwuOvuN1AIqSMfBHnlVnW8vtYo7AbeLFVs+fyp9dWHKkba2xd
 yizaT+mYHvrYif/rKNoHR/dwYKbGaYQkfzWbhff+VkSEzSf4rNt2KuF+R A==;
X-CSE-ConnectionGUID: S4ixteeIQ2u8cAHqgtA17w==
X-CSE-MsgGUID: 5scBdThFRXmnuAggt23IFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257396"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257396"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:29 -0700
X-CSE-ConnectionGUID: F3LEH4stSxGftpR9QjE/YQ==
X-CSE-MsgGUID: azHrLvlwQq+NVoplfhbRMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691039"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 00/14] Ultrajoiner basic functionality series
Date: Fri,  6 Sep 2024 18:27:53 +0530
Message-ID: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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

Test-with: 20240812044739.5630-1-karthik.b.s@intel.com

Ankit Nautiyal (7):
  drm/i915/display: Modify debugfs for joiner to force n pipes
  drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
  drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
  drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
  drm/i915/display: Add helpers to check for ultrajoiner primary
  drm/i915/display: Consider ultrajoiner for computing maxdotclock
  drm/i915/intel_dp: Add support for forcing ultrajoiner

Stanislav Lisovskiy (7):
  drm/i915: Add some essential functionality for joiners
  drm/i915: Split current joiner hw state readout
  drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
    checks
  drm/i915: Implement hw state readout and checks for ultrajoiner
  drm/i915/display/vdsc: Add ultrajoiner support with DSC
  drm/i915: Add new abstraction layer to handle pipe order for different
    joiners
  drm/i915: Compute config and mode valid changes for ultrajoiner

 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 373 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  22 +-
 .../drm/i915/display/intel_display_debugfs.c  |  71 +++-
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 112 ++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |  17 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  61 ++-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  30 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
 14 files changed, 585 insertions(+), 140 deletions(-)

-- 
2.45.2

