Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CE752126A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:42:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B19310EF08;
	Tue, 10 May 2022 10:42:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3394610EB4F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179366; x=1683715366;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yrp4KMeMfZ/azH+QCJIghkOHtYcLgSJua9L/sH5gEls=;
 b=P+7afv6GuSx/kymsIVxdfNwcEEqcl6EPQSz/dGPnpmwV8LkPw39RTSE+
 W35Q+pOwhMET/PDkxTUXFLZZQGg9Vc1qXigf//AvvEudgsoCKkHdS+HO5
 S0sbrYNMK7X7ZxN6ls6NMM4HA35FGcnFLCd0pi1qTdQCk/7xEI01ViFlT
 MixJDEMqFY/vG/klDS3GAgUsja6uHa3aN5XiTnoXLs2c7bxyoPbNBp4JM
 wnVHbJdXm+/PSyOLMasqhruq8w3PKtmiJVUgjvoOE5orYppzSNljv9HiG
 4QuB74IYptihKLGKcrfTJ6MRtdH0T6vIjUnE2yXfacsbtfLkF5CePQp+k w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="266920770"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="266920770"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:42:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="552774626"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 10 May 2022 03:42:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:42:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:27 +0300
Message-Id: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] drm/i915/bios: PNPID->panel_type matching
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

Handle VBT panel_type=0xff, ie. extract the panel PNPID from
the EDID and match it againts the VBT panel PNPIDs to determine
the actual panel_type.

We need to massage the PPS init code a bit to make sure it
works sensible without having access to the VBT power
sequencing delays until the end of the eDP probe.

I also started on the path to split the per-panel data from
i915->vbt into its own thing. So should get us one step closer
to supporting multiple internal panels.

Ville Syrjälä (15):
  drm/i915: Pass intel_connector to intel_vrr_is_capable()
  drm/i915: Extract intel_edp_fixup_vbt_bpp()
  drm/i915/pps: Split pps_init_delays() into distinct parts
  drm/i915/pps: Introduce pps_delays_valid()
  drm/i915/pps: Don't apply quirks/etc. to the VBT PPS delays if they
    haven't been initialized
  drm/i915/pps: Stash away original BIOS programmed PPS delays
  drm/i915/pps: Split PPS init+sanitize in two
  drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
  drm/i915/pps: Keep VDD enabled during eDP probe
  drm/i915/bios: Split parse_driver_features() into two parts
  drm/i915/bios: Split VBT parsing to global vs. panel specific parts
  drm/i915/bios: Split VBT data into per-panel vs. global parts
  drm/i915/bios: Determine panel type via PNPID match
  drm/edid: Extract drm_edid_decode_mfg_id()
  drm/i915/bios: Dump PNPID and panel name

 drivers/gpu/drm/i915/display/g4x_dp.c         |  22 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  23 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 496 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_bios.h     |   6 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  22 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   9 +-
 .../drm/i915/display/intel_display_types.h    |  71 +++
 drivers/gpu/drm/i915/display/intel_dp.c       |  45 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 .../drm/i915/display/intel_dp_aux_backlight.c |   6 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   3 -
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 .../i915/display/intel_dsi_dcs_backlight.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  56 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   7 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  13 +-
 drivers/gpu/drm/i915/display/intel_pps.c      | 129 ++++-
 drivers/gpu/drm/i915/display/intel_pps.h      |   1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  30 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  14 +-
 drivers/gpu/drm/i915/display/intel_vrr.h      |   4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  14 +-
 drivers/gpu/drm/i915/i915_drv.h               |  63 ---
 include/drm/drm_edid.h                        |  21 +-
 26 files changed, 672 insertions(+), 410 deletions(-)

-- 
2.35.1

