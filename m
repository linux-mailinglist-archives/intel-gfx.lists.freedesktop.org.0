Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BC2A35D6C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C43ED10E17A;
	Fri, 14 Feb 2025 12:22:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpqzctgo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E62510E17A;
 Fri, 14 Feb 2025 12:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535747; x=1771071747;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M0NVkZIwcRWGc9oJU7vr6XcR3s3MPDXWnOV9LxPd45E=;
 b=cpqzctgo69NllDzzLJQ8fzSpdPiRfzYSyQ5fYEOhLs3KRtlbqQ6In2dD
 oTXcf0poYCWy1KPNe97cOaLC0DwA2sH4NSpJMcJaxVBaT5cmBo2xIADYW
 ek6ZknsydhD37PcAHY20GLPdJjyNPRbRRyjsRZxnbksXFsEU+updd7ngp
 Y4JiJ5K5NdEksUPPGoHklMZdjBoyW5bWKuRUNmtWeyt0b8VhAm8+NQa/V
 DWe/edpNBDpkD53gmI/hIwZzjVhkfg3xvCr+yMERQ9yqSj+VZKhrWxKyY
 pFRavTdV/0DlFnGG4H0rE5GXp2loA6n6XRivhiAcRdgdFB9ye1kK2Llmu w==;
X-CSE-ConnectionGUID: js93g7RlRAmywnj3S81Vug==
X-CSE-MsgGUID: X2Aikh7+RIC2c+2oRhZq+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51255987"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51255987"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:27 -0800
X-CSE-ConnectionGUID: JKZckxC9SOi7Q6K2Bn3S2Q==
X-CSE-MsgGUID: ycdrTDD5TV21eo5iMNFArw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309503"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:24 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 00/19] Use VRR timing generator for fixed refresh rate modes
Date: Fri, 14 Feb 2025 17:41:10 +0530
Message-ID: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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

Rev9:
Dropped patches to introduce vrr.mode and cmrr refactor.
Addressed comments from Ville.

Ankit Nautiyal (19):
  drm/i915/vrr: Remove unwanted comment
  drm/i915:vrr: Separate out functions to compute vmin and vmax
  drm/i915/vrr: Make helpers for cmrr and vrr timings
  drm/i915/vrr: Disable CMRR
  drm/i915/vrr: Track vrr.enable only for variable timing
  drm/i915/vrr: Use crtc_vtotal for vmin
  drm/i915/vrr: Prepare for fixed refresh rate timings
  drm/i915/dp: Avoid vrr compute config for HDMI sink
  drm/i915/display: Enable MSA Ignore Timing PAR only when in not
    fixed_rr mode
  drm/i915/hdmi: Use VRR Timing generator for HDMI
  drm/i915/display: Disable PSR before disabling VRR
  drm/i915/display: Extend WA 14015406119 for PSR2
  drm/i915/vrr: Handle joiner with vrr
  drm/i915/vrr: Refactor condition for computing vmax and LRR
  drm/i915/vrr: Always set vrr vmax/vmin/flipline in
    vrr_{enable/disable}
  drm/i915/display: Use fixed_rr timings in modeset sequence
  drm/i915/display: Use fixed rr timings in
    intel_set_transcoder_timings_lrr()
  drm/i915/vrr: Always use VRR timing generator for MTL+
  drm/i915/display: Add fixed_rr to crtc_state dump

 .../drm/i915/display/intel_crtc_state_dump.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   8 +-
 .../drm/i915/display/intel_dp_link_training.c |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 270 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.h      |   4 +
 7 files changed, 244 insertions(+), 69 deletions(-)

-- 
2.45.2

