Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD608610D8B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE8B910E7B9;
	Fri, 28 Oct 2022 09:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DDB110E7BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666950230; x=1698486230;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GXIcpfTXnHPhTck/XjA76ADUfL+TDb6UzD+oLwVwfXE=;
 b=N2hmBN+MD5IP87vvUF5jCS6DTYH+9mG7vcvYD9JMfdIuhIgT2wcd9qRZ
 ri0hYtZhY8x/FkA2vSGDKrblIkF6Pa97KDwuzrNVF3YLRfLseumoaIX+v
 wUIDFD5wsh3VKsMxPPWZNiMuONU8tOqx3DA/5I/HseAteAIvqqqctlMgL
 09z40zeQ60vgEP7QZGZSVGon9bKjj9lABWDlMiyzFQrKwYcFd83NqvYUG
 CC17Tb1yz6T9dYLy5euWrnxzVSt9FO5DehxL8lnBg7tdN62VHBGUh+m5i
 XzB6nIFyKQP8qNfqrckcZ6ZYKdF2DV5JuFddI3x/58s1FPWL9Hp2kvvKJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="335094630"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="335094630"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="758026552"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="758026552"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 15:14:02 +0530
Message-Id: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/9] Handle BPC for HDMI2.1 PCON without
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

Ankit Nautiyal (9):
  drm/i915/display: Add new member to configure PCON color conversion
  drm/i915/display: Add new member in intel_dp to store ycbcr420
    passthrough cap
  drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
    sink_format
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
 drivers/gpu/drm/i915/display/intel_dp.c       | 321 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  74 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 13 files changed, 304 insertions(+), 131 deletions(-)

-- 
2.25.1

