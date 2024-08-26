Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9573195EF85
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C49810E1A7;
	Mon, 26 Aug 2024 11:14:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P6YxSmfp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5894010E1A7;
 Mon, 26 Aug 2024 11:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724670841; x=1756206841;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+95Av44uviU7r1cfRD58PyuXKS+g/7f7cNIUP7IYUYc=;
 b=P6YxSmfpZ8XNGJNVhz9BS3/BMXPg/+n6pdhLTUARxE+SL9IwNKGCrs6u
 5qkSkvqWxYHOXQFfJeG/7V15ustmIXxXfR1k/AIoYVGzj9v9iEYAEpY20
 iazYp/TilrmvIHfKaR8QHqpe/t7cOWxie+jqxxlnbBfxw4/N4CWE+5VtF
 gL5kUUfJYdp3Jitua35FiENME+wDcqqSa72zRHeyB5Z9sI17Zq0HEsOx/
 cqOGFwQ4RKTvCexRxGiqdj4hD0r+LQQ6jVsQC4+Nf5R4SPtcSf3J7L7jp
 21dc9fHZ0KudzzADWVGZ59K/TYk50wD+dWB8yUFy7z5x2Cwp6DnAd/iDH Q==;
X-CSE-ConnectionGUID: 9SZw9vynSe2WsnY9OKWRMQ==
X-CSE-MsgGUID: H1StSdiuQIW6ShIGlSBn5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23213525"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23213525"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:01 -0700
X-CSE-ConnectionGUID: 3iSoKUf0Tsqzf3bABAAoAw==
X-CSE-MsgGUID: L2dNGWGjQICCz6H1IuxIUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67291230"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/12] Consolidation of DSS Control in Separate Files
Date: Mon, 26 Aug 2024 16:45:14 +0530
Message-ID: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
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
pipe joiners are also moved from intel_display.c to intel_dss.

Additionally, wherever possible, the drm_i915_private structure is
replaced with the new intel_display structure as part of ongoing efforts
to phase out the old structure.

Ankit Nautiyal (12):
  drm/i915/display: Move all DSS control registers to a new file
  drm/i915/ddi: Move all mso related helpers to a new file
  drm/i915/dss: Move to struct intel_display
  drm/i915/icl_dsi: Move helpers to configure dsi dual link to intel_dss
  drm/i915/vdsc: Rename helper to check if the pipe supports dsc
  drm/i915/vdsc: Move all dss stuff in dss files
  drm/i915/display: Move dss stuff in intel_dss files
  drm/i915/display: Move helper to get joined pipe mask to intel_dss
  drm/i915/display: Move helpers for primary joiner to intel_dss
  drm/i915/display: Move helper to check for secondary joiner pipe
  drm/i915/display: Move helper to get all secondary pipes
  drm/i915/display: Move intel_joiner_num_pipes to intel dss

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/icl_dsi.c        |  55 +---
 .../gpu/drm/i915/display/intel_atomic_plane.c |   3 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  94 +-----
 drivers/gpu/drm/i915/display/intel_display.c  | 158 +++------
 drivers/gpu/drm/i915/display/intel_display.h  |   4 -
 .../drm/i915/display/intel_display_debugfs.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   7 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_dss.c      | 305 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dss.h      |  46 +++
 drivers/gpu/drm/i915/display/intel_dss_regs.h |  49 +++
 .../drm/i915/display/intel_modeset_setup.c    |  15 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  74 +----
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  38 ---
 drivers/gpu/drm/xe/Makefile                   |   1 +
 18 files changed, 497 insertions(+), 368 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss_regs.h

-- 
2.45.2

