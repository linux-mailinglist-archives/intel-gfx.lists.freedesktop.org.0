Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F888519FF
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 17:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C1F10EC03;
	Mon, 12 Feb 2024 16:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T89wnAGC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9E810EC03
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 16:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707756617; x=1739292617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ha4bcjCx+WUZ8R6p4DVufsTAQG7MkohGlUK/tS3eses=;
 b=T89wnAGCI7nCiDYFKaX1/+/fYGrorhEwa0Qjd25boR1f4QxXepfrATmU
 J0kdPYF3LVkQAVp2IbQmbRIMN6oE9fq+fApC2U96sLBJxYpb0q/mmCbU8
 qFyAdLSzqOYKR5XtrzQ5vsDThavqzXNS4wdx0/slp8nfvLuTRAhSWHz1S
 2qXY7aACzqyoyc58D1a3C3vmYfxd7XVc8iHryP1i+s92wQUPpro363rCR
 VxC4j7J7mgPblyxreHd90YnfXvX9e9KIjn/k2KHjBddRjsl/L3cUHfhUD
 6fRJRg0b8qNvj2oj61Vpw2xACbNgIzeT09H3ZAIWVDQ2rGZ9VB2uGlzQp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1885983"
X-IronPort-AV: E=Sophos;i="6.06,264,1705392000"; 
   d="scan'208";a="1885983"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 08:50:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,264,1705392000"; 
   d="scan'208";a="2980110"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 Feb 2024 08:50:15 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 0/4] Enable Adaptive Sync SDP Support for DP
Date: Mon, 12 Feb 2024 22:13:11 +0530
Message-Id: <20240212164316.1411230-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
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

An Adaptive Sync SDP allows a DP protocol converter to
forward Adaptive Sync video with minimal buffering overhead
within the converter. An Adaptive-Sync-capable DP protocol
converter indicates its support by setting the related bit
in the DPCD register.

Computes AS SDP values based on the display configuration,
ensuring proper handling of Variable Refresh Rate (VRR)
in the context of Adaptive Sync.

--v2:
- Update logging to Patch-1
- use as_sdp instead of async
- Put definitions to correct placeholders from where it is defined.
- Update member types of as_sdp for uniformity.
- Correct use of REG_BIT and REG_GENMASK.
- Remove unrelated comments and changes.
- Correct code indents.
- separate out patch changes for intel_read/write_dp_sdp.

--v3:
- Add VIDEO_DIP_ASYNC_DATA_SIZE definition and comment in as_sdp_pack
  function to patch 2 as originally used there. [Patch 2].
- Add VIDEO_DIP_ENABLE_AS_HSW flag to intel_dp_set_infoframes [Patch 3].

--v4:
- Add check for HAS_VRR before writing AS SDP. [Patch 3].

--v5:
- Add missing check for HAS_VRR before reading AS SDP as well [Patch 3].

--v6:
- Rebase all patches.
- Compute TRANS_VRR_VSYNC.

Mitul Golani (4):
  drm/i915/display: Compute TRANS_VRR_VSYNC
  drm: Add Adaptive Sync SDP logging
  drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
  drm/i915/display: Compute and Enable AS SDP

 drivers/gpu/drm/display/drm_dp_helper.c       |  12 ++
 .../drm/i915/display/intel_crtc_state_dump.c  |  12 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 118 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   9 ++
 drivers/gpu/drm/i915/i915_reg.h               |   8 ++
 include/drm/display/drm_dp.h                  |   2 +
 include/drm/display/drm_dp_helper.h           |  33 +++++
 10 files changed, 207 insertions(+), 4 deletions(-)

-- 
2.25.1

