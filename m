Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B2D4095AC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19856ECB4;
	Mon, 13 Sep 2021 14:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406E16ECB4
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 14:45:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="201871129"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="201871129"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 07:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="543250920"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 13 Sep 2021 07:44:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Sep 2021 17:44:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 17:44:24 +0300
Message-Id: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/16] drm/i915: Fix bigjoiner state readout
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

Let's try to finally fix up some of the bigjoiner shortcomings.
The focus here is getting rid of all the state readout hacks.
The actual modeset flow is still very fragile and hard to
follow, but fixing that isn't going to be simple so I'll
leave it alone for the moment.

Ville Syrjälä (16):
  Revert "drm/i915/display: Disable audio, DRRS and PSR before planes"
  drm/i915: Disable all planes before modesetting any pipes
  drm/i915: Extract intel_dp_use_bigjoiner()
  drm/i915: Flatten hsw_crtc_compute_clock()
  drm/i915: s/pipe/transcoder/ when dealing with PIPECONF/TRANSCONF
  drm/i915: Introduce with_intel_display_power_if_enabled()
  drm/i915: Adjust intel_dsc_power_domain() calling convention
  drm/i915: Extract hsw_panel_transcoders()
  drm/i915: Pimp HSW+ transcoder state readout
  drm/i915: Configure TRANSCONF just the once with bigjoiner
  drm/i915: Introduce intel_master_crtc()
  drm/i915: Simplify intel_crtc_copy_uapi_to_hw_state_nomodeset()
  drm/i915: Split PPS write from DSC enable
  drm/i915: Perform correct cpu_transcoder readout for bigjoiner
  drm/i915: Reduce bigjoiner special casing
  drm/i915: Nuke PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE

 drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   6 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  70 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 607 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h  |  12 +-
 .../drm/i915/display/intel_display_power.h    |   4 +
 .../drm/i915/display/intel_display_types.h    |   5 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  21 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  18 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  32 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 112 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.h     |  16 +-
 15 files changed, 470 insertions(+), 445 deletions(-)

-- 
2.32.0

