Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3C869C97A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 12:15:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D212B10E678;
	Mon, 20 Feb 2023 11:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3891710E677
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 11:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676891719; x=1708427719;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rH0lHWe3Yv+uDKlyap8iPe0JZa4Fk9UVcQZXaQtaU4M=;
 b=JKZvh/Xdm9772AWpzfqYfrYYa+ooafUp1s6U++3VPtUItuzo6cEVjnw5
 WPGVAxIyUp4QxmWa81xpmC8FByrkWe6ZoOW/Oad4KUp1An18Naouy86eW
 jv6Ff+i//y1Y4G6hbcHfCKW60P72VB2DJTCeSxiIlhYGNQcxu2O0DhBF6
 nZm4iEQ/gd4F0h0hqXSByQBQOeEnIWLT0ZOJNh08gSMGXuHEi+y0IcAfx
 5a7llY5/S6RaQtIUvCfTp/t9SSRFO5ZGtZRrczoenAkl9MOUZ9dG/lnFo
 JMq9gcVdQkqfwABIAlZ/2Gi+hRDcYPgNTl469vEAQBtB8wMwRaqtVS9/t w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397061744"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397061744"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="740013001"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="740013001"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:15 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 16:42:18 +0530
Message-Id: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/14] Handle BPC for HDMI2.1 PCON without
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

Ankit Nautiyal (14):
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
  drm/i915/dp: Check if mode can be supported with dsc compressed bpp
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
 drivers/gpu/drm/i915/display/intel_dp.c       | 535 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  74 +--
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 15 files changed, 475 insertions(+), 181 deletions(-)

-- 
2.25.1

