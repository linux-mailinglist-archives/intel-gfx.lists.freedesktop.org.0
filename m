Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4343A1B87D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783B010E9A0;
	Fri, 24 Jan 2025 15:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UQGAKGVP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D64510E9AA;
 Fri, 24 Jan 2025 15:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731495; x=1769267495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eHQp2dWqyS99+i+m/PX4NqvDLwq6FLyo2EXOnsyLsLI=;
 b=UQGAKGVP/fIg+Tj7m9P7ChsqxBMLFht14NNNamaH/Obub0gJ2U8tNulo
 pOxQbCP8O09ySDLoYN5VU9EQfUaPl+ZzAM9OJUrQ7GfRfXN2qEMHh4ug1
 2XLqF3oAJooOGwn7+ag0OU1WjJMgouAReERlk2s/k35aac28AYm2hqmB7
 KNOsheExUtYnRgXmxut4obuULHGvHvMwvDIg9XKsj3z/wmE0NqzG8xKHI
 ZmLhbSaza/KShBrFc4X79Fb8Zjm7y3cNsU9JoycIp8avFnvBAVJEWjP+Y
 Gbv9DDcFJWmiio+pn2XlPSE46MBvz1/sia/xMO1SYdv9pEcJFEqXoWXqP w==;
X-CSE-ConnectionGUID: 5UZEL95bQQCEjiOqPxIOfQ==
X-CSE-MsgGUID: +cRLQD3eQIygBEk7fhs6bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177368"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177368"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:34 -0800
X-CSE-ConnectionGUID: zRDdsiiQTmCWB1+LP2e5MQ==
X-CSE-MsgGUID: /kW3UU6nSnWV3IPDEd49yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221121"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 00/35] Use VRR timing generator for fixed refresh rate modes
Date: Fri, 24 Jan 2025 20:29:45 +0530
Message-ID: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (30):
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP
  drm/i915/vrr: Remove unwanted comment
  drm/i915:vrr: Refactor VRR timing setup into a separate function
  drm/i915:vrr: Separate out functions to compute vmin and vmax
  drm/i915/vrr: Make helpers for cmrr and vrr timings
  drm/i915/vrr: Avoid prepare vrr timings for cmrr
  drm/i915/vrr: Simplify CMRR Enable Check in intel_vrr_get_config
  drm/i915/vrr: Introduce new field for VRR mode
  drm/i915/vrr: Fill VRR timing generator mode for CMRR and VRR
  drm/i915/display: Remove vrr.enable and instead check vrr.mode != NONE
  drm/i915/display: Absorb cmrr attributes into vrr struct
  drm/i915/display: Add vrr mode to crtc_state dump
  drm/i915/dp: Avoid vrr compute config for HDMI sink
  drm/i915/vrr: Introduce VRR mode Fixed RR
  drm/i915/vrr: Avoid sending PUSH when VRR TG is used with Fixed
    refresh rate
  drm/i915/display: Enable MSA Ignore Timing PAR only when in not
    fixed_rr mode
  drm/i915/vrr: Disable CMRR
  drm/i915/vrr: Use crtc_vtotal for vmin
  drm/i915/vrr: Adjust Vtotal for MSA for fixed timings
  drm/i915/vrr: Prepare for fixed refresh rate timings
  drm/i915/hdmi: Use VRR Timing generator for HDMI
  drm/i915/display: Disable PSR before disabling VRR
  drm/i915/psr: Allow PSR for fixed refrsh rate with VRR TG
  drm/i915/display: Extend WA 14015406119 for PSR2
  drm/i915/vrr: Handle joiner with vrr
  drm/i915/vrr: Always set vrr vmax/vmin/flipline in
    vrr_{enable/disable}
  drm/i915/vrr: Prepare for Fixed refresh rate mode from MTL+
  drm/i915/vrr: Refactor condition for computing vmax and LRR
  drm/i915/vrr: Always use VRR timing generator for MTL+
  drm/i915/display: Use VRR timings for MTL+ in modeset sequence

Mitul Golani (5):
  drm/i915/vrr: Add crtc_state dump for vrr.vsync params
  drm/i915/vrr: Compute vrr.vsync_{start, end} during full modeset
  drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
  drm/i915/dp: Compute as_sdp based on if vrr possible
  drm/i915/display: Move as sdp params change to fastset

 .../drm/i915/display/intel_crtc_state_dump.c  |  26 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  79 +++--
 .../drm/i915/display/intel_display_types.h    |  17 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  20 +-
 .../drm/i915/display/intel_dp_link_training.c |   8 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +
 .../drm/i915/display/intel_modeset_setup.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 311 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_vrr.h      |   7 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   3 +-
 14 files changed, 326 insertions(+), 171 deletions(-)

-- 
2.45.2

