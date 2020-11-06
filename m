Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9039D2A8DF2
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 05:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A348D6EA2E;
	Fri,  6 Nov 2020 04:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 220C16EA29
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 04:01:53 +0000 (UTC)
IronPort-SDR: PdHAhzgoT6uhBt1DxpCP7FUl21zf+jx3U9NP2CitVsn2Vdfcme2eyCt0kp43uaDQZYV+Cb9MDr
 0xGUj1EqIv+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="157278274"
X-IronPort-AV: E=Sophos;i="5.77,455,1596524400"; d="scan'208";a="157278274"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 20:01:51 -0800
IronPort-SDR: F56Y9lo4vVXCBRXSITlPNp4ulCalJzmivHNh8JvtD+dnoH/2tKydpZ7+Sv/OIi/iVPl7Xe73wD
 N+bPNNZoBoQg==
X-IronPort-AV: E=Sophos;i="5.77,455,1596524400"; d="scan'208";a="471918685"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 05 Nov 2020 20:01:51 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Nov 2020 20:03:41 -0800
Message-Id: <20201106040355.12809-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v15 00/14] Big Joiner End End enabling with
 8K@30, 60
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Maarten Lankhorst (6):
  drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
  drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
  drm/i915: Try to make bigjoiner work in atomic check
  drm/i915: Link planes in a bigjoiner configuration, v3.
  drm/i915: Add bigjoiner aware plane clipping checks
  drm/i915: Add debugfs dumping for bigjoiner, v3.

Manasi Navare (8):
  drm/i915/dp: Some reshuffling in mode_valid as prep for bigjoiner
    modes
  drm/i915: Move encoder->get_config to a new function
  drm/i915/dp: Add a wrapper function around get_pipe_config
  drm/i915: Pass intel_atomic_state instead of drm_atomic_state
  drm/i915/dp: Add from_crtc_state to copy color blobs
  drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave
  drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
  drm/i915: HW state readout for Bigjoiner case

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 drivers/gpu/drm/i915/display/intel_atomic.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_atomic.h   |   3 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c | 113 ++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  69 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 910 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |  23 +-
 .../drm/i915/display/intel_display_debugfs.c  |  29 +-
 .../drm/i915/display/intel_display_types.h    |  32 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 112 ++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 201 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   6 +-
 drivers/gpu/drm/i915/intel_pm.c               |  96 +-
 19 files changed, 1216 insertions(+), 424 deletions(-)

-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
