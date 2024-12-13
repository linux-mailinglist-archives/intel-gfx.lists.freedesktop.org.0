Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084D89F09BE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C01E10EFA3;
	Fri, 13 Dec 2024 10:40:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zj62XwP1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C3D810EFA3;
 Fri, 13 Dec 2024 10:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086407; x=1765622407;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qZYeOUVCcjuPY0kpxTf1kOPiWOoZ1PyvZyy9+2ujwVg=;
 b=Zj62XwP1jhiJu/t92HbD7IVaeTBR0s/8T68x6ptO5iCdPvanGaZGHzYQ
 12RPkbg+0EcuUlSqbsTEgL9V0rJ7VHN+63rIasE1Wg+Wk9QjEb/yk3Gub
 O92oeBKn0Hnjw2XmrATLISb0HJn3cmo3o1Ob1G4Z5sujfisXbWN0wRU4n
 6+39gBLKU3c0ldUsm2TB59NicubtAVd5EziAvu2WCwq6EmpJMBUBqyJEr
 rFCw+YrTbL65qTvyLp2Vj77Gu48azF8geaeQLWOQr2Dp4zI0FlV7AN4HX
 nYLB1GWOP7BP9B/T0mW1nO1/X9UgY9q3q+78wOZsJW9+oKvG/kjuoloWp A==;
X-CSE-ConnectionGUID: 8BiAPWkhRGWcB1VIlueSFg==
X-CSE-MsgGUID: 2z39jXnSSKW0IOeZoREFNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45945115"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45945115"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:07 -0800
X-CSE-ConnectionGUID: AuYEqXSfTuaS68TSRK/4Og==
X-CSE-MsgGUID: I46B7OBeQhCfbOWrFhigGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="127313577"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 00/13] drm/i915/dp: 128b/132b uncompressed SST
Date: Fri, 13 Dec 2024 12:39:44 +0200
Message-Id: <cover.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This is a completely untested set towards enabling 128b/132b SST,
initially without support for compression. I erred on the side of
posting it early for comments instead of waiting until I've had a chance
to give it a spin on a display that supports 128b/132b SST.

I've chopped this up to unnecessarily small pieces just to make it
easier for me to juggle the patches. If desired, it's trivial to squash
them before posting the series for merging. But maybe this helps the
reviews too?

128b/132b SST+DSC still needs the compute config, and link training
fallbacks need to be reviewed with UHBR SST in mind, but this is the
first step.

Many thanks to Imre for helping me get the facts straight with MTP; all
errors are still mine.

BR,
Jani.


Jani Nikula (13):
  drm/mst: remove mgr parameter and debug logging from
    drm_dp_get_vc_payload_bw()
  drm/i915/mst: use intel_dp_compute_config_limits() for DP MST
  drm/i915/mst: drop connector parameter from intel_dp_mst_bw_overhead()
  drm/i915/mst: drop connector parameter from intel_dp_mst_compute_m_n()
  drm/i915/mst: change return value of
    mst_stream_find_vcpi_slots_for_bpp()
  drm/i915/mst: add helper independent of MST for figuring out the TU
  drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL mode for UHBR SST
  drm/i915/ddi: 128b/132b SST also needs DP_TP_CTL_MODE_MST
  drm/i915/ddi: write payload for 128b/132b SST
  drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ registers
  drm/i915/ddi: enable ACT handling for 128b/132b SST
  drm/i915/ddi: start distinguishing 128b/132b SST and MST at state
    readout
  drm/i915/dp: compute config for 128b/132b SST w/o DSC

 drivers/gpu/drm/display/drm_dp_mst_topology.c |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  76 ++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  67 +++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |  10 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 154 ++++++++----------
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   7 +
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   3 +-
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    |   4 +-
 include/drm/display/drm_dp_mst_helper.h       |   3 +-
 9 files changed, 193 insertions(+), 141 deletions(-)

-- 
2.39.5

