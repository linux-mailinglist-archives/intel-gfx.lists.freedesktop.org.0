Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071B463A1D2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 08:15:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40D010E1C5;
	Mon, 28 Nov 2022 07:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A8210E1C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 07:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669619690; x=1701155690;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pqHtM+bce5WKcE5IhaIHc9+yXLnpXUh9bzYaoJ3TaMA=;
 b=k84nlUEI08PLKd+IV2oIjSBNxFiToUjSfyX1zg0mm+6VP7yt/7wsoCOj
 F8qRCrXyL2+xkyPo365uyVX2yk1UE+7vJZqdlOnkR/ciyPOUGjK6q+lIY
 mVstkwngdB0uqm+ctzUC1aWdoz4F6wKpke/OpH9cU63jC33giN6EiKW6S
 jMLTxy2puoNr3oRt0t8PSIO3lGkRLWB77G6Rhjj6AJkuYyRUk+42x8oGs
 QEd3obbGWhBWn1FCTeZeFyfIT64zGIbfr+17obeBhRqvAoQvi6T1WmQXE
 pQQ0ODgOMZEizhyoZ085USAVK+0lzN7SLynTx6tTW5vJwoA4gExyF7UKR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="315919458"
X-IronPort-AV: E=Sophos;i="5.96,199,1665471600"; d="scan'208";a="315919458"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 23:14:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="785518534"
X-IronPort-AV: E=Sophos;i="5.96,199,1665471600"; d="scan'208";a="785518534"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 23:14:47 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 12:45:33 +0530
Message-Id: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 00/11] Handle BPC for HDMI2.1 PCON without
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

Ankit Nautiyal (11):
  drm/i915/display: Add new member to configure PCON color conversion
  drm/i915/display: Add new member in intel_dp to store ycbcr420
    passthrough cap
  drm/i915/dp: Add Scaler constraint for YCbCr420 output
  drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
    sink_format
  drm/i915/dp: Compute output format with/without DSC
  drm/i915/display: Use sink_format instead of ycbcr420_output flag
  drm/i915/display: Add helper function to check if sink_format is 420
  drm/i915/dp: Avoid DSC with output_format YCBC420
  drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
  drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
  drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints

 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +
 .../drm/i915/display/intel_display_types.h    |  18 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 456 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  74 +--
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 14 files changed, 409 insertions(+), 162 deletions(-)

-- 
2.25.1

