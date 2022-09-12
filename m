Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 644185B591F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4507310E397;
	Mon, 12 Sep 2022 11:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319A610E397
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981498; x=1694517498;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q9fiLUrtBy0DHiDWe2vE4l2btxRgdkOWciG265uUWZw=;
 b=VH2nT4wReKHnujztr6ni4S9C/dmqms/KzZx8nvChbeUsj9zKkIz/ieVn
 9Wjpg5JqN2YYPd97pujdCPlxfMeALhJxmxOMQUt3v0uf28zszbnWgNprV
 d3lOWa44/Twj4mkUuSW/c0twOETtmcNgiFK3Q5q6d+hxMaxe8Q/baqvbM
 ZdPb1agD93b+ZkCG3OEeoMoSzil+h0bp5VyCtnKKVBPm5eP6eI+ZgVb5z
 X+LzOXZEp48iqRvD/5YE5Hkw5B9FXTpT1Re44Ihgbp+j1e+X9hRkYW57I
 nUkHrRTISGpDnv0W5z25YQV1lnakaN7SEuGCkvi7Qzd4xS0FtOWillUt5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="280858343"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="280858343"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="618518342"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 12 Sep 2022 04:18:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:17:59 +0300
Message-Id: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: Some house cleaning
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bunch of easy cleanups.

Ville Syrjälä (15):
  drm/i915: Drop pointless middle man variable
  drm/i915: Clean up transcoder_to_stream_enc_status()
  drm/i915: Drop pointless 'budget' variable
  drm/i915: Use BIT() when dealing with output types
  drm/i915: Pass intel_encoder to to_lvds_encoder()
  drm/i915: Extract intel_edp_backlight_setup()
  drm/i915: Extract intel_tv_add_properties()
  drm/i915: Extract intel_dp_mst_add_properties()
  drm/i915: Extract intel_lvds_add_properties()
  drm/i915: Move eDP scaling_mode prop setup to the proper place
  drm/i915: Extract intel_attach_scaling_mode_property()
  drm/i915: Clean up connector->*_allowed setup
  drm/i915: Don't init eDP if we can't find a fixed mode
  drm/i915: Finish s/intel_encoder/encoder/ rename
  drm/i915: s/intel_connector/connector/ in init code

 drivers/gpu/drm/i915/display/g4x_dp.c         |  99 +++++-----
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  66 +++----
 drivers/gpu/drm/i915/display/icl_dsi.c        |  67 +++----
 drivers/gpu/drm/i915/display/intel_audio.c    |  10 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |  18 +-
 .../gpu/drm/i915/display/intel_connector.c    |  18 ++
 .../gpu/drm/i915/display/intel_connector.h    |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |  60 +++---
 drivers/gpu/drm/i915/display/intel_crt.h      |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  23 +--
 drivers/gpu/drm/i915/display/intel_ddi.h      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  30 ++-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  19 +-
 .../drm/i915/display/intel_display_types.h    |  15 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 171 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |   7 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  24 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 160 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  22 +--
 drivers/gpu/drm/i915/display/intel_dvo.c      |  69 ++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  46 +++--
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   1 -
 drivers/gpu/drm/i915/display/intel_lvds.c     | 142 +++++++--------
 drivers/gpu/drm/i915/display/intel_opregion.c |  18 +-
 drivers/gpu/drm/i915/display/intel_opregion.h |   4 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 162 ++++++++---------
 drivers/gpu/drm/i915/display/intel_tv.c       | 129 ++++++-------
 drivers/gpu/drm/i915/display/vlv_dsi.c        | 140 +++++++-------
 29 files changed, 740 insertions(+), 789 deletions(-)

-- 
2.35.1

