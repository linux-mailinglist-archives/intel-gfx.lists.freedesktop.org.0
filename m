Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 260516A39F1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 05:06:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F111D10E0BF;
	Mon, 27 Feb 2023 04:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E9110E0BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 04:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677470758; x=1709006758;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0nQlx+uhNgkX/cFZOBckNoXst8HpAyjhdjqrt1wNRb8=;
 b=Su6e/wT5wOCNWj/l+GthYO5QPU6CAtknVZkH/KqHwTabaEujzj0MN+Re
 7qLqoKmWaC2SEOX+V8MEwifcLlq+d1W98O3kPeZOGnnMOIXA0oUwkl9A+
 YIsrkaU8UMSFMXnt87xmoSCRqCwjWBgPdEZo0We6NEAknylGFVdieEOnL
 DpVQeFt9OVwjYQhIIwtHhOY4yijAO8lOC1DcjZ7ktAe58267usrbkTYvH
 bxyPNFpHCcxBcLhGeOejFXIW9KXDALnAlYQNxgZ9Yaq7QoOFuhpQRgXH+
 DvyNvCGpR4WbBc2/+l4a7RDM5hwnLMOb1sQtuldGPZAi8Jd3ybgeIIYO+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="335251367"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="335251367"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:05:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="783146981"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="783146981"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:05:56 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 09:33:11 +0530
Message-Id: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 00/13] Handle BPC for HDMI2.1 PCON without
 DSC1.2 sink and other fixes
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

This series fixes issues faced when an HDMI2.1 sink that does not
support DSC is connected via HDMI2.1PCON. It also includes other minor
HDMI2.1 PCON fixes/refactoring.

Patch 1-2 Have minor fixes/cleanups.
Patch 3-6 Pull the decision making to use DFP conversion capabilities
for every mode during compute config, instead of having that decision
during DP initializing phase.
Patch 7-8 Calculate the max BPC that can be sufficient with either
RGB or YCbcr420 format for the maximum FRL rate supported.

Rev2: Split the refactoring of DFP RG->YCBCR conversion into smaller
patches, as suggested by Jani N.
Also dropped the unnecessary helper for DSC1.2 support for HDMI2.1 DFP.

Rev3: As suggested by Ville, added new member sink_format to store the
final format that the sink will be using, which might be different
than the output format, and thus might need color/format conversion
performed by the PCON.

Rev4: Fix typo in switch case as, reported by kernel test bot.

Rev5: Corrected order of setting sink_format and output_format. (Ville)
Avoided the flag ycbcr420_output and used the sink_format to facilitate
4:2:2 support at a later stage. (Ville)

Rev6: Added missing changes for sdvo. (Ville)
Added check for scaler and DSC constraints with YCbCr420.

Rev7: Split change to add scaler constraint in separate patch, and rebased.

Rev8: Rebased. Fixed check for mode rate with dsc in modevalid.
Fixed scaler constraint as per display version.

Rev9: Rebased.

Rev10: Addressed review comments from Ville.
Dropped patch to check for mode rate with dsc during modevalid, as the
compressed bpp is already selected with bandwidth considerations.

Ankit Nautiyal (13):
  drm/i915/display: Add new member to configure PCON color conversion
  drm/i915/display: Add new member in intel_dp to store ycbcr420
    passthrough cap
  drm/i915/dp: Add Scaler constraint for YCbCr420 output
  drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
    sink_format
  drm/i915/dp: Compute output format with/without DSC
  drm/i915/display: Use sink_format instead of ycbcr420_output flag
  drm/i915/dp: Rearrange check for illegal mode and comments in
    mode_valid
  drm/i915/dp: Consider output_format while computing dsc bpp for
    mode_valid
  drm/i915/display: Add helper function to check if sink_format is 420
  drm/i915/dp: Avoid DSC with output_format YCBCR420
  drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
  drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
  drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints

 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +
 .../drm/i915/display/intel_display_types.h    |  18 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 525 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  73 +--
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 15 files changed, 469 insertions(+), 176 deletions(-)

-- 
2.25.1

