Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2744CA4D66A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1796F10E518;
	Tue,  4 Mar 2025 08:32:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8fvFM51";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9635310E302;
 Tue,  4 Mar 2025 08:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077120; x=1772613120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ObZ9fulwKU2l2YhndysDkMMu2uKW+GAogfZVVF8WGik=;
 b=f8fvFM51CVuhdUqEL0WWDTydnHzDPi3U3KEBMl0XtoRM6tUXuqPxojcY
 tz5TskJO6w882Z9DQGyuSHqsxBBmnipGUAFx0df2Sd2ilEZHh8s0j5GUR
 EiL4jnM/OqGL3Bj7JXqsSE+vbJ2I2faZMrvcwuQoHdVkdnUEhGiWEanez
 v53aDjVAG28tRNlX+QVCi6XDGvgiOntTvx+Z8cptM/MotvdPjaVxGhrfw
 NRq409es9QPQ+hgm6w2298c+ypiFKGm+0yz+iYNtFXQnwOfIDF6q3nZ9S
 xxbhBDpHdzl0LEpTXA0iR8nWyXBJCjot2KyzD4oOSBe5OU2HV3paGSjTv w==;
X-CSE-ConnectionGUID: 3F8rnDZ1R0yOltYJPy5AJg==
X-CSE-MsgGUID: YYt51lbLTxKVJteVbZJ1eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910118"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910118"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:31:54 -0800
X-CSE-ConnectionGUID: d3e1KtUqRbeVwQoIex1nyw==
X-CSE-MsgGUID: J4BkTpnSQcan9J6dsNZeew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492124"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:31:52 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 00/22] Use VRR timing generator for fixed refresh rate modes
Date: Tue,  4 Mar 2025 13:49:26 +0530
Message-ID: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
-Fixed issue seen on BAT bugs.

Rev10:
-Drop patch for avoiding VRR for DP with HDMI panel.
-Address comments from Ville.
-Add VRR compute config for DP MST.
-Add HAS_VRR() checks and compute fixed timing for all VRR supporting
platforms.
-Move guardband and pipeline_full checks
out from the pure !fastset block in intel_pipe_config_compare().

Rev11:
-Addressed comments from Ville.
-Added only fixed_rr for Joiner.
-Use vrr_possible() before setting fixed timings and before setting
trans_vrr_ctl.
-Split patch to remove vrr.guardband/pipeline_full from !fastset block.
-Add patch to avoid writing into Vtotal.Vtotal bits when always using
VRRTG.

Ankit Nautiyal (22):
  drm/i915/vrr: Remove unwanted comment
  drm/i915:vrr: Separate out functions to compute vmin and vmax
  drm/i915/vrr: Make helpers for cmrr and vrr timings
  drm/i915/vrr: Disable CMRR
  drm/i915/vrr: Track vrr.enable only for variable timing
  drm/i915/vrr: Use crtc_vtotal for vmin
  drm/i915/vrr: Prepare for fixed refresh rate timings
  drm/i915/display: Enable MSA Ignore Timing PAR only when in not
    fixed_rr mode
  drm/i915/hdmi: Use VRR Timing generator for HDMI for fixed_rr
  drm/i915/dp_mst: Use VRR Timing generator for DP MST for fixed_rr
  drm/i915/display: Disable PSR before disabling VRR
  drm/i915/display: Move intel_psr_post_plane_update() at the later
  drm/i915/vrr: Refactor condition for computing vmax and LRR
  drm/i915/vrr: Always set vrr vmax/vmin/flipline in
    vrr_{enable/disable}
  drm/i915/display: Use fixed_rr timings in modeset sequence
  drm/i915/vrr: Use fixed timings for platforms that support VRR
  drm/i915/display: Move vrr.guardband/pipeline_full out of !fastset
    block
  drm/i915/display: Use fixed rr timings in
    intel_set_transcoder_timings_lrr()
  drm/i915/vrr: Allow fixed_rr with pipe joiner
  drm/i915/vrr: Always use VRR timing generator for MTL+
  drm/i915/display: Add fixed_rr to crtc_state dump
  drm/i915/display: Avoid use of VTOTAL.Vtotal bits

 .../drm/i915/display/intel_crtc_state_dump.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  |  86 +++--
 .../drm/i915/display/intel_dp_link_training.c |  15 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   7 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 326 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.h      |   6 +
 8 files changed, 361 insertions(+), 90 deletions(-)

-- 
2.45.2

