Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE30964629
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 15:17:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB11C10E67F;
	Thu, 29 Aug 2024 13:16:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sb//mEz0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4212910E113;
 Thu, 29 Aug 2024 13:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724937418; x=1756473418;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tPoK1nU84bsCjsuTmkXNspS/X0Q2sRDyVrv7jV5cmSI=;
 b=Sb//mEz0tTec/WnefcUYVgDc1Oj7ulNW7C2HBQe6C/Ca1Q650HEg507T
 YFN/OFd7U0lAQoGSZfDTTDT63ZYNqtAn3BVBZE4Vd5cJMxsCjstPj1WOp
 z0SczxHMntSvbRWcN0vA7SQMnj03ay0pZi51qNNuX6ryfA6iuBYSnVvNL
 qh2gUJMcfZHyrfXPWUE3zCqFBDXRcO1bWkmV2C9nIOWwUltr2JyjQos6x
 hHQQxblP1aoTUBxlL5iRLf1bFnOlEgnbbdHHQcL9vASu/llBTkAYSQcUJ
 te6rOFnJ4i4tglLlXOD7RHpQf3QeedJjI5OT/ymzEzYSkJNfY5n91fmDG w==;
X-CSE-ConnectionGUID: H2KomRTpTTae/C1OYt6D0A==
X-CSE-MsgGUID: VJCjCXxlSiaLv1K9Tu1BWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23667213"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23667213"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:16:56 -0700
X-CSE-ConnectionGUID: yHkWY+Q7T4WXHWlsGVfvKg==
X-CSE-MsgGUID: K4hOb7+FSaC7PtiOUSdGyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63261399"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:16:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/19] Consolidation of DSS Control in Separate Files
Date: Thu, 29 Aug 2024 18:48:08 +0530
Message-ID: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dss.h      |  36 ++
 drivers/gpu/drm/i915/display/intel_dss_regs.h |  51 +++
 drivers/gpu/drm/i915/display/intel_joiner.c   | 265 +++++++++++++
 drivers/gpu/drm/i915/display/intel_joiner.h   |  36 ++
 .../drm/i915/display/intel_modeset_setup.c    |  15 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  74 +---
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  38 --
 drivers/gpu/drm/xe/Makefile                   |   2 +
 20 files changed, 758 insertions(+), 572 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_joiner.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_joiner.h

-- 
2.45.2

