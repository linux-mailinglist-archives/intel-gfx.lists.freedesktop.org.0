Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 232AA851BD8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 18:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2C510EE74;
	Mon, 12 Feb 2024 17:43:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ROo80omF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EEA110EE40
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 17:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707759802; x=1739295802;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XusGmkrZw7Vqc6du3HBES1k3OpnBKe62nwm7ysTXhaQ=;
 b=ROo80omF2Ss/pas3PwJfyl5zxYzcTCPYQINnM0go5irx8U2fF2hO1cj5
 /yQqsf54yrCO2dHQHCEz3+LFgCNl1doNygFw2GTHf0RU0ChaqqUtQ2gsr
 Vma0oqWUIZ+SviZh3/fRtXgjGFnLdGjvG0174vD6ZQqf3w1hxXx3FsxJr
 MIkH15cZJsvIXtHtAFllWx2GWKaEIJwFef4QicnSjwUBEQ8/wlFfx89CC
 UotmoESrbhJdix8y03teWfbpv/QANuM63ONZkuuvD6MZyBw+lSpnFD1tx
 /fSQlhbiRGZLYOZrVHDsqu5VZWsJ7Q80mfDwFZW9IbhhJ0khC3TPKMHoq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1871992"
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="1871992"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 09:43:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="2595375"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 12 Feb 2024 09:43:21 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 0/4] Enable Adaptive Sync SDP Support for DP
Date: Mon, 12 Feb 2024 23:06:19 +0530
Message-Id: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
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

-v7:
- Move vrr_vsync_start/end to compute config.
- Use correct function for drm_debug_printer.

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

