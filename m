Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7D3A259CE
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4361410E071;
	Mon,  3 Feb 2025 12:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aswy6KGf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB7A610E035;
 Mon,  3 Feb 2025 12:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738586987; x=1770122987;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U1C1EFD6NjHSxqUOqUTY8sWjViKTqU5YqNE6FoKAyx4=;
 b=aswy6KGfvg+mDU9Hekv8GKlYbsmD7bDzL9VsVzTPZllxnJ90onbSj4jC
 Yjr4vL3QpY1uc5wohSr42Ohy8hITFf286E0X6guoK0ZaVQfsY3kjjVPJC
 uCEIOs+zRLhC98Ij/5VMke5AvLu9MtRfJP7jV8ThQtlgWMVLCBu+v58f8
 a8BHmqm9xIfspIB8CprZB7za2N3vpS9RjXxCK8K7OkRcHeOL/IpqV62Aa
 Y3QEy5V3DdooIbXjS/CUtVw0tErmzOgmw7c235oezRAFW82IgzspZlLau
 7KuJfW1LFJogLYcFoGN1O5fAamvcJ63DiUDsQBl3R9p5NvCInilP/O+hD g==;
X-CSE-ConnectionGUID: kvs1vegCSpaZ44ZY9ToxBA==
X-CSE-MsgGUID: pNicxa78Ru2rB726rZXBaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548011"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548011"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:46 -0800
X-CSE-ConnectionGUID: Jlw12c40RY2xoA9d84tiTw==
X-CSE-MsgGUID: jEaOAghtQyCCzkb1teXOPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528783"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:49:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 00/28] Use VRR timing generator for fixed refresh rate modes
Date: Mon,  3 Feb 2025 18:08:12 +0530
Message-ID: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Even though the VRR timing generator (TG) is primarily used for
variable refresh rates, it can be used for fixed refresh rates as
well. For a fixed refresh rate the Flip Line and Vmax must be equal
(TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
dependencies between the VRR timings and the legacy timing generator
registers.

This series is an attempt to use VRR TG for fixed refresh rate.
For platforms XE2LPD+, always go with VRR timing generator for both fixed and
variable refresh rate cases.

Rev2:
-Added support from MTL+ and for HDMI too.
-Changed VRR VSYNC programming which is required for HDMI.
-Modified vrr compute config for bigjoiner case. (Still to be tested).

Rev3:
-Start support from XE2LPD+ as MTL needs a WA to have PSR +VRR (fixed
refresh rate)
-Add changes to enable PSR with VRR with fixed refresh rate.

Rev4:
-Addressed review comments from Mitul and rebased.

Rev5:
-Avoid MSA Ignore PAR timing enable bit for fixed refresh rate
with VRR TG.
-Skip VRR compute config for HDMI connected via DP-HDMI2.1 PCON.
-Print fixed_rr along with other VRR parameters in crtc state dump.
-Rebase

Rev6:
-Refactor VRR code to have distinct modes in which VRR timing generator
can be used: VRR, FIXED_RR, CMRR.
-Bring the cmmr attributes in vrr struct.
-Remove condition flipline > vmin for LNL.
-Account for vmax being 0 based while MSA vtotal being 1 based.

Rev7:
I have added patches from series for AS SDP fixes [1] , as without panels
that support AS SDP gives a lot of issues.
There were major changes in design as discussed in last version [2].
Below are the change logs:

-Change the design to compute vrr state based on actual uapi.vrr.enable
knob. So when that knob is disabled we always compute vmin=flipline=vmax.
-Always set vmin=crtc_vtotal instead of the using the current refresh rate
based approach. This helps to have the same guardband while switching
between fixed and variable timings.
-Disable CMRR for now to reduce complexity while changing timings on the
fly.
-Change the state computation and add vmin/vmax/flipline reprogramming
to vrr_{enable,disable}()
-Introduce the fixed refresh mode from MTL instead of LNL.

[1] https://patchwork.freedesktop.org/series/137035/
[2] https://patchwork.kernel.org/project/intel-gfx/cover/20241111091221.2992818-1-ankit.k.nautiyal@intel.com/

Rev8:
-Addressed review comments from Ville.
-Refactored few patches.
-Dropped patches:
1. "drm/i915/vrr: Adjust Vtotal for MSA for fixed timing"
2. "drm/i915/vrr: Avoid sending PUSH when VRR TG is used with Fixed
refresh rate"

Ankit Nautiyal (28):
  drm/i915/vrr: Remove unwanted comment
  drm/i915:vrr: Separate out functions to compute vmin and vmax
  drm/i915/vrr: Make helpers for cmrr and vrr timings
  drm/i915/vrr: Simplify CMRR Enable Check in intel_vrr_get_config
  drm/i915/vrr: Introduce new field for VRR mode
  drm/i915/vrr: Fill VRR timing generator mode for CMRR and VRR
  drm/i915/display: Remove vrr.enable and instead check vrr.mode != NONE
  drm/i915/display: Absorb cmrr attributes into vrr struct
  drm/i915/display: Add vrr mode to crtc_state dump
  drm/i915/vrr: Disable CMRR
  drm/i915/display: Update intel_crtc_vrr_{enable/disable}
  drm/i915/vrr: Use crtc_vtotal for vmin
  drm/i915/vrr: Prepare for fixed refresh rate timings
  drm/i915/dp: Avoid vrr compute config for HDMI sink
  drm/i915/vrr: Introduce VRR mode Fixed RR
  drm/i915/display: Enable MSA Ignore Timing PAR only when in not
    fixed_rr mode
  drm/i915/hdmi: Use VRR Timing generator for HDMI
  drm/i915/display: Disable PSR before disabling VRR
  drm/i915/psr: Allow PSR for fixed refrsh rate with VRR TG
  drm/i915/display: Extend WA 14015406119 for PSR2
  drm/i915/vrr: Handle joiner with vrr
  drm/i915/vrr: Refactor condition for computing vmax and LRR
  drm/i915/display: Pass vrr.mode to intel_crtc_update_active_timings()
  drm/i915/vblank: Add crtc active timings for fixed_rr mode
  drm/i915/vrr: Always set vrr vmax/vmin/flipline in
    vrr_{enable/disable}
  drm/i915/display: Use fixed_rr timings in modeset sequence
  drm/i915/vrr: Always use VRR timing generator for MTL+
  drm/i915/vblank: Avoid warning for platforms that always use VRR TG

 .../drm/i915/display/intel_crtc_state_dump.c  |  20 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  74 ++--
 .../drm/i915/display/intel_display_types.h    |  17 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
 .../drm/i915/display/intel_dp_link_training.c |   2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +
 .../drm/i915/display/intel_modeset_setup.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  37 +-
 drivers/gpu/drm/i915/display/intel_vblank.h   |   4 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 325 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h      |   7 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   3 +-
 15 files changed, 375 insertions(+), 144 deletions(-)

-- 
2.45.2

