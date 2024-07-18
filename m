Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B68409349A5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D811110E5B8;
	Thu, 18 Jul 2024 08:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AEA9FbdQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1FA210E5A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290627; x=1752826627;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=puvo0KP317sC/zD3gjHN0JvMfDIwknfhOgzEHLqA7G0=;
 b=AEA9FbdQnAnejhDFusYFNzjj2oUfpA4ddh3BVasmeZIzbm0Qp+QDw7rT
 i7TJgmwQabAHk5vd1Ri2/ZDhjzvKnYK1Hp7rPCgO4qy+rBO4ZGgylifE1
 D130GZDOQefK/U7/sh1kaIb8cMz7vDXECjnZmo5NFDA0RzyyWLBQ94ugw
 FmAZHm8/lguY0pe7RBlFS1SwSa1Kp8IZO1+FKU2HWALeHGmrx4aNReuWg
 NZ4oo8apXtw4tYcSJn4wiczF/dowf5J+arhuflnA2g15amr9TT/UovgyX
 QmxqeLAIbxYZZXCU5Hvd2JEGca5zMDDSWgUjBi0VLQTFhW1FWhj7cYzZq A==;
X-CSE-ConnectionGUID: xskyZGOhSd6vzNnzSiRZdw==
X-CSE-MsgGUID: Az98t4yBQUOAR1qR+4vxGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706005"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706005"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:03 -0700
X-CSE-ConnectionGUID: Cy3V69d9S1iA0Gf47G3k/w==
X-CSE-MsgGUID: WGOxXrcoSm+AxukbRkPrBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400576"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/12] Ultrajoiner basic functionality series
Date: Thu, 18 Jul 2024 13:47:51 +0530
Message-ID: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

This patch series attempts to implement basic support
for Ultrajoiner functionality.

Rev6:
-Upgrade the debugfs functionality to enable the joining of a
specified number of pipes.
-Modify the display helpers reliant on the pipe joiner mechanism
to use number of pipes joined, instead of joiner flag.
-Checkpatch fixes.

Ankit Nautiyal (5):
  drm/i915/display: Modify debugfs for joiner to force n pipes
  drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
  drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
  drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
  drm/i915/intel_dp: Add support for forcing ultrajoiner

Stanislav Lisovskiy (7):
  drm/i915: Add some essential functionality for joiners
  drm/i915: Split current joiner hw state readout
  drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
    checks
  drm/i915: Implement hw state readout and checks for ultrajoiner
  drm/i915/display/vdsc: Add ultrajoiner support with DSC
  drm/i915: Compute config and mode valid changes for ultrajoiner
  drm/i915: Add new abstraction layer to handle pipe order for different
    joiners

 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 357 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  20 +-
 .../drm/i915/display/intel_display_debugfs.c  |  71 +++-
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 118 ++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |  17 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  62 +--
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  26 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
 14 files changed, 569 insertions(+), 141 deletions(-)

-- 
2.45.2

