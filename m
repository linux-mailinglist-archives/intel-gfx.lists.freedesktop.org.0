Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1FC5FACDE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 08:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2940810E7B6;
	Tue, 11 Oct 2022 06:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 181EF10E7B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665470085; x=1697006085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZfemQgqRJut4gH0i/lrTNn25Zupv4ko1ND/Flax87BI=;
 b=JfKOm5ereFB9QUn+JA3hnqzMmS0DinVAS6o5JYfrk9VlhGWFK4YHp2eS
 X1KpzCAtzgu4nys/W0CE0V/vJrQUIi88Ml+Lz0HNCNhgK+aEeldSkspU5
 z9Hz9KsayYaTjFvn524mOq5K/5ehbzVhvW4LBaTIFdBt6fRaXJLsOR/5O
 1MZeJn+MwnedyShgM7GpGur4uGguFZ+b24yUy8Pn6TGS6LznHkJnf5KgB
 8EuJX0fl12qxYH6sPieRh5vsibAnd+K5tuErCjW/leAkPBMIx5mLpO8T9
 sAWA2WQYGNsKC0ESSfy8SbIM70hepR2QbaNeyjvhsyOf5+Dw3RF3FiX4P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302031806"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="302031806"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768680325"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="768680325"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:32 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:04:39 +0530
Message-Id: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/8] Handle BPC for HDMI2.1 PCON without
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

Ankit Nautiyal (8):
  drm/i915/dp: Reset frl trained flag before restarting FRL training
  drm/i915/dp: Remove whitespace at the end of function.
  drm/i915/display: Add new member to configure PCON color conversion
  drm/i915/display: Add new member in intel_dp to store ycbcr420
    passthrough cap
  drm/i915/dp: Use sink_format in dp_is_ycbcr420
  drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
    sink_format
  drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
  drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP

 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 246 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 11 files changed, 206 insertions(+), 59 deletions(-)

-- 
2.25.1

