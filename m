Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486C188655E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 04:18:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A40E10E00E;
	Fri, 22 Mar 2024 03:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VVWyOtKt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D312710E00E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 03:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711077508; x=1742613508;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZCtA9By0iFS3W+ak7lU7Wei2MgZTqrWphWzXF69bcjs=;
 b=VVWyOtKtRyUUnbQswgrxEO/zqSclU8PbIWn3+TUSzzHPtAqwG6/LUsWa
 OeWgWB3JUuPqfqs3uktfD9S3ZCq0wQ136i+HNgB8yHMwMERNQNiyf9EBQ
 onXeNqPjT2BC2ARFaGKE/ikTLZ7GucJA4zir/IrrY4BaLM21uyk1S5YE5
 K+luzssLgV9XJROXyykf4eHgTePGWbKgCT+XPRTlnl+OAqFxIf4HC+fIg
 lSERpYGEjezW0/FXYMMSWuP4A+jmW0QqPlATfOYvIAJJ9mJ/p2kAbAb0f
 pAxf7u/0B/l+nmxWZ6+zZWLv4SEZ7leEtJSCEGOpm7UZnzSQoRd4ICQ7O A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6235028"
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; 
   d="scan'208";a="6235028"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 20:18:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; d="scan'208";a="37874621"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 21 Mar 2024 20:18:26 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH v18 0/9] Enable Adaptive Sync SDP Support for DP
Date: Fri, 22 Mar 2024 08:41:48 +0530
Message-Id: <20240322031157.3823909-1-mitulkumar.ajitkumar.golani@intel.com>
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

An Adaptive-Sync-capable DP protocol converter indicates its
support by setting the related bit in the DPCD register. This
is valid for DP and edp as well.

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

-v8:
- Code refactoring.
- Update, VSYNC_START/END macros to VRR_VSYNC_START/END.(Ankit)
- Update bit fields of VRR_VSYNC_START/END.(Ankit)
- Send patches to dri-devel.(Ankit)
- Update definition names for AS SDP which are starting from
HSW, as these defines are applicable for ADLP+.(Ankit)
- Remove unused bitfield define, AS_SDP_ENABLE.
- Add support in drm for Adaptive Sync sink status, which can be
used later as a check for read/write sdp. (Ankit)

-v9:
- Add enum to operation mode to represent different AVT and
FAVT modes. (Ankit)
- Operation_mode, target_rr etc should be filled from as_sdp struct. (Ankit)
- Fill as_sdp->*All Params* from compute config, read from the sdp. (Ankit)
- Move configs to the appropriate patch where it used first.(Ankit)
- There should be a check if as sdp is enable is set or not. (Ankit)
- Add variables in crtc state->vrr for ad sdp enable and operation mode. (Ankit)
- Use above variables for tracking AS SDP. (Ankit)
- Revert unused changes. (Ankit)

-v10:
- Send Patches to dri-devel (Ankit).

-v11:
- Remove as_sdp_mode and enable from crtc_state.
- For consistency, update ADL_ prefix or post fix as required.
- Add a comment mentioning current support of
  DP_AS_SDP_AVT_FIXED_VTOTAL.
- Add state checker for AS_SDP infoframe enable.
- Add PIPE_CONF_CHECK_I(vrr.vsync_start/end).
- Read/write vrr_vsync params only when we intend to send
adaptive_sync sdp.

-v12:
- Update cover letter

-v13:
- Add correct place holder and name change for AS_SDP_OP_MODE.
- Separate i915 changes from drm changes.
- Remove extra lines.
- Check if AS_SDP bit is set in crtc_state->infoframes.enable. If not
  return.
- Check for HAS_AS_SDP() before setting VIDEO_DIP_ENABLE_AS_ADL mask.
- Just use drm/i915/dp in subject line.
- Drop conn_state from intel_dp_compute_as_sdp, as not used.
- Remove fullstop in subject line.
- crtc_state->infoframes.enable, to add on correct place holder.

--v14:
- Mistakenly dropped first patch, adding back.

--v15:
- Rename intel_read_dp_infoframe_as_sdp to intel_read_dp_as_sdp.
- Add an entry in g4x_infoframe_enable.
- Instead of intel_vrr_is_in_range, use crtc_state->vrr.enable in AS SDP
compute config.

--v16:
- Add drm/i915/display in subject line.
- Use as_sdp->target_rr & 0xFF.
- Shift by 8 instead of 32, and drop casting to u64.
- Remove does not belong to respective patch.
- Remove vrefresh and connector, as they are no longer required.
- Use VRR_SYNC_START/END macros correctly.
- Update commit message for Patch#9

--v17:
- Relocate vrr vsync params.

--v18:
- Rebase to drm-tip.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Mitul Golani (9):
  drm/dp: Add support to indicate if sink supports AS SDP
  drm: Add Adaptive Sync SDP logging
  drm/i915/display: Add crtc state dump for Adaptive Sync SDP
  drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
  drm/i915/dp: Add wrapper function to check AS SDP
  drm/i915/display: Compute AS SDP parameters
  drm/i915/display: Add state checker for Adaptive Sync SDP
  drm/i915/display: Compute vrr_vsync params
  drm/i915/display: Read/Write Adaptive Sync SDP

 drivers/gpu/drm/display/drm_dp_helper.c       |  37 ++++++
 .../drm/i915/display/intel_crtc_state_dump.c  |   3 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  48 +++++++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 125 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |  33 ++++-
 drivers/gpu/drm/i915/i915_reg.h               |  15 +++
 include/drm/display/drm_dp.h                  |  11 ++
 include/drm/display/drm_dp_helper.h           |  30 +++++
 13 files changed, 318 insertions(+), 3 deletions(-)

-- 
2.25.1

