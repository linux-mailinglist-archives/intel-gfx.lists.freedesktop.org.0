Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE46A6F430
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B2A10E54A;
	Tue, 25 Mar 2025 11:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WrMQIT+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4362210E1DF;
 Tue, 25 Mar 2025 11:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902479; x=1774438479;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SBTC61DNHRStqbJFolcHRtA1KqglF/MJXb3rsJJ3zaI=;
 b=WrMQIT+wqSPxXbSKC20u/r4rm6tgUzczZ6/QaaIncwlbJKtjMWorsn80
 Mh7vMH0Ue9bZ7e0ainJb11uoSkZxecDnD5oi5kkYvegDVMYkPD/wm4io1
 ftYzTWRsT9TtzTRGf9WhnxyKHB4PBYSBmgfV5mkTrqcGuKpJg+IXHoArZ
 4tt5YOtlsTQZuAWQfnfkW0cCcZ9XrzHJyxKfRWmYw/4DqclYqBoh2H775
 l8gFNivRWMhUcd9Eb1ZEOLxBhl+SQVwf7m84qYVuJbJo+K49YfbR70jDG
 uKnvju+/yKD134TChP0jkwx37LHEs/hqQs29kW+OkxQfoqr61OHh4TXol A==;
X-CSE-ConnectionGUID: JlzFi+anTcCdtEr3XrO9ag==
X-CSE-MsgGUID: g/6LixSMT1WSTXFTk2+eyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266891"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266891"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:37 -0700
X-CSE-ConnectionGUID: wvW3H8osQX+GDfJ35lqpOA==
X-CSE-MsgGUID: H+CLE99JQlCY4v9mJvZ0wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070528"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:35 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 00/16] Use VRR timing generator for fixed refresh rate modes
Date: Tue, 25 Mar 2025 16:52:33 +0530
Message-ID: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
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
For platforms PTL+, always go with VRR timing generator for both fixed and
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

Rev12:
-Address comments from Ville.
-Change sequence of Disable VRR.
-Enable Push before VRR Enable.
-Clear Push after VRR Disable.
-Drop patch to remove Vtotal.vtotal bits.

Rev13:
-Reset trans_vrr_ctl in disable transcoder path.
-Do not allow vrr.guardband live programming without modeset for
platform that always have VRR TG on.

Rev14:
-Add fix for an issue seen after merge of first few refactoring patches.
-Add fix for issue seen on CI.
-Address comments from Ville on last revision.
-Use VRR timing generator by default from PTL

Rev15:
-Address review comment on Patch: Use fixed_rr timings in modeset sequence

Rev16:
-Rebase
-Address review comments from Ville.
-Re-introduce patch to avoid using VTotal.Vtotal bits for PTL+

Rev17:
-Address comment from Ville on patch to avoid using Vtotal.Vtotal bits
-Add a new patch to exclude the DSI transcoder for VRR read/writes.

Ankit Nautiyal (16):
  drm/i915/hdmi: Use VRR Timing generator for HDMI for fixed_rr
  drm/i915/dp_mst: Use VRR Timing generator for DP MST for fixed_rr
  drm/i915/display: Disable PSR before disabling VRR
  drm/i915/display: Move intel_psr_post_plane_update() at the later
  drm/i915/vrr: Refactor condition for computing vmax and LRR
  drm/i915/vrr: Always set vrr vmax/vmin/flipline in
    vrr_{enable/disable}
  drm/i915/vrr: Set vrr.enable for VRR TG with fixed_rr
  drm/i915/display: Use fixed_rr timings in modeset sequence
  drm/i915/vrr: Use fixed timings for platforms that support VRR
  drm/i915/display: Use fixed rr timings in
    intel_set_transcoder_timings_lrr()
  drm/i915/display: Move vrr.guardband/pipeline_full out of !fastset
    block
  drm/i915/vrr: Allow fixed_rr with pipe joiner
  drm/i915/vrr: Always use VRR timing generator for PTL+
  drm/i915/vrr: Set trans_vrr_ctl in intel_vrr_set_transcoder_timings()
  drm/i915/display: Avoid use of VTOTAL.Vtotal bits
  drm/i915/display: Introduce transcoder_has_vrr() helper

 drivers/gpu/drm/i915/display/intel_ddi.c     |   5 +
 drivers/gpu/drm/i915/display/intel_display.c |  71 +++++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |   7 +
 drivers/gpu/drm/i915/display/intel_hdmi.c    |   3 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 152 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h     |   5 +
 6 files changed, 193 insertions(+), 50 deletions(-)

-- 
2.45.2

