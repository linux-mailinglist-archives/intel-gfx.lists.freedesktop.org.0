Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 090FE8183C6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 09:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7069910E444;
	Tue, 19 Dec 2023 08:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7799D10E437
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 08:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702975687; x=1734511687;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FHWG2ZdKCP59XqVFLUtpvA3Iph9XG6h9BoYhFcjOePc=;
 b=H79TdUObh2MbNEq6LBaz8a3IVQKyitJjeMw9+ccABxNvgrJseNAlCfC1
 g4YdNzTl9nwgiDpFPdUML3gOmcFA5KlXvXdaX9d3MWjCp5qa4SdofneL/
 liv3ycwKvq1v9SdSpzdG0Ww0tG6gXV48o5k6/5XdXqluESkbUEIqf6sjW
 idJozqrB9gbr5WdJxTwZugvsnIboz9jUoWJbXjo4blZabk3jo20qlrjM1
 7JkShmUMW7wGQdIyni4Ga0Ar2sqGzd76q4jN0PdzInjrxvvsf0IWiQKfM
 +DR3n19h7pvZIf1EnK6wZZGrgf1lelBoVg7nrzsJBI6fQACCozXRvhnkq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="462078374"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="462078374"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 00:48:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="810148341"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="810148341"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga001.jf.intel.com with ESMTP; 19 Dec 2023 00:48:06 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] Enable Adaptive Sync SDP Support for DP
Date: Tue, 19 Dec 2023 14:13:27 +0530
Message-Id: <20231219084330.1209517-1-mitulkumar.ajitkumar.golani@intel.com>
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
Cc: jani.nikula@intel.com
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
- Add check for HAS_VRR [Patch 4]

Mitul Golani (3):
  drm: Add Adaptive Sync SDP logging
  drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
  drm/i915/display: Compute and Enable AS SDP

 drivers/gpu/drm/display/drm_dp_helper.c       |  12 ++
 .../drm/i915/display/intel_crtc_state_dump.c  |  12 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 118 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 +-
 drivers/gpu/drm/i915/i915_reg.h               |   6 +
 include/drm/display/drm_dp.h                  |   2 +
 include/drm/display/drm_dp_helper.h           |  33 +++++
 9 files changed, 195 insertions(+), 4 deletions(-)

-- 
2.25.1

