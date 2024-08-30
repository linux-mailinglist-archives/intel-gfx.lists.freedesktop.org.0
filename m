Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B31B9656AA
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124DC10E7CF;
	Fri, 30 Aug 2024 05:08:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S3kf0wrc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4584910E1BC;
 Fri, 30 Aug 2024 05:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994498; x=1756530498;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kqPPN7Kgicq+xqPmPXqcQ+V2aiC8nt2kB4IoS7o8cjo=;
 b=S3kf0wrcGlDQPJTxUdJWf7RpcSU5P0+anQIPTplgDxT0Dbiv7f/gPNeS
 nuoANLf8CrNr9a3rlNPZ3OeDaTLOcmZtvHZtjp3QxbzzyVuAY/1Aza8c4
 2/l0d6pNNxIAHPvPadLk+0APJJn+lcpoK46KTAVcdCBmVuYZ2NJxbo8jC
 00LJwXjYh2jeRd0jfCL/r4NIJGZDNmQVw68AmYGmUacFC+7bKCoTDuuTf
 kopjK1gVnzg0houbasiTwBJjupFo4NC0mp61Rx6C3LawN5V6Kk25yxI/b
 RVmfaoWMpAo9mIMroXpmYG5yB/g4E8TIwRv7Yw2ohq782+jsqUzj9Wbkz A==;
X-CSE-ConnectionGUID: bBUj3sV8RxKp3HgFzfHchw==
X-CSE-MsgGUID: F0DvXvSeRJSiBZ4TPtFEIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421659"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421659"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:17 -0700
X-CSE-ConnectionGUID: 3mrg5v1USp+GdslnH004QA==
X-CSE-MsgGUID: +LTJGjZ7RwKGZ6J3D6Ipmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610144"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/19] Consolidation of DSS Control in Separate Files
Date: Fri, 30 Aug 2024 10:39:30 +0530
Message-ID: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
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

Currently, DSS control is configured from various files; this change aims
to consolidate all DSS-related functionalities, such as display stream
splitting, joining, MSO configuration, and joining configuration,
into one place.

A new file, intel_dss_regs.h, will store register information, while the
helpers to configure DSS and related stuff will be moved to intel_dss.c
with its corresponding header file intel_dss.h.
Along with this, the helpers related to retrieve information about the
pipe joiners are also moved from intel_display.c to intel_joiner.

Additionally, wherever possible, the drm_i915_private structure is
replaced with the new intel_display structure as part of ongoing efforts
to phase out the old structure.

Rev2:
-Addressed review comments from Jani.
-Moved all joiner stuff into a separate file.

Rev3:
-Rebase

Ankit Nautiyal (19):
  drm/i915/display: Move all DSS control registers to a new file
  drm/i915/dss_regs: Use REG_* macros for the DSS ctl bits
  drm/i915/ddi: Move all mso related helpers to a new file
  drm/i915/dss: Move to struct intel_display
  drm/i915/icl_dsi: Avoid using intel_dsi in configure_dual_link_mode
  drm/i915/icl_dsi: Use intel_display in configure_dual_link_mode
  drm/i915/icl_dsi: Move helpers to configure dsi dual link to intel_dss
  drm/i915/vdsc: Rename helper to check if the pipe supports dsc
  drm/i915/vdsc: Move all dss stuff in dss files
  drm/i915/dss: Use struct intel_display in dss dsc helpers
  drm/i915/display: Move dss stuff in intel_dss files
  drm/i915/display: Rename static functions that use joiner
  drm/i915/display: Separate out joiner stuff in a new file
  drm/i915/display: Move intel_crtc_joined_pipe_mask to intel_joiner
  drm/i915/display: Move helpers for primary joiner to intel_joiner
  drm/i915/display: Move intel_crtc_is_joiner_secondary to intel_joiner
  drm/i915/display: Move intel_crtc_joiner_secondary_pipes to
    intel_joiner
  drm/i915/joiner: Use struct intel_display in
    intel_joiner_enabled_pipes
  drm/i915/joiner: Use struct intel_display in
    intel_joiner_supported_pipes

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/icl_dsi.c        |  55 +--
 .../gpu/drm/i915/display/intel_atomic_plane.c |   3 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  95 +----
 drivers/gpu/drm/i915/display/intel_display.c  | 359 +++---------------
 drivers/gpu/drm/i915/display/intel_display.h  |   9 +-
 .../drm/i915/display/intel_display_debugfs.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   7 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_dss.c      | 268 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dss.h      |  35 ++
 drivers/gpu/drm/i915/display/intel_dss_regs.h |  51 +++
 drivers/gpu/drm/i915/display/intel_joiner.c   | 265 +++++++++++++
 drivers/gpu/drm/i915/display/intel_joiner.h   |  36 ++
 .../drm/i915/display/intel_modeset_setup.c    |  15 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  74 +---
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  38 --
 drivers/gpu/drm/xe/Makefile                   |   2 +
 20 files changed, 757 insertions(+), 572 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_joiner.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_joiner.h

-- 
2.45.2

