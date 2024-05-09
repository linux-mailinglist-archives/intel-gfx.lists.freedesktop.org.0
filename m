Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A438C0C3A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 10:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7326010E0A8;
	Thu,  9 May 2024 08:04:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a47BZynh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0CD10E0A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 08:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715241865; x=1746777865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CsRsYJmR9sIUjARZe2g+1AhtPi/+zLPodM719MEuxC0=;
 b=a47BZynh7PCK/W4J3t9TG8NYdFqDP4D2Ax8kSt/NhtQVnytVsQfi1Z+2
 puWb4YBlUqh1D47mAGJVCqoBz3lLEzOJ/t+bXhlDfztJxQ4V9wTMLfhtS
 jGHKJLipN7+56w/WlMCjC+pSQPoC4tJuivfCi/1G6RRBlDRdGx0vWVahN
 u108AMb+ANFh9LFPx/sHHNofWKYajwtmlT5wb1oU9oZk+ZEcMnWje+kJZ
 UI9BPlo4dscsFHPizs7PBhgfCuKdq0gWiRnJVthKxFYX2aDfR6CFEcZti
 MKQg2LfUVVTIp9g7Mz3EK5iZFueBweadW72LYOBnYzKP62Ld2abAKcdWj A==;
X-CSE-ConnectionGUID: QfWk65YRTEqqrG28j+BGUw==
X-CSE-MsgGUID: YChFLQqJTd2JgLrnprAFGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="33656113"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="33656113"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 01:04:25 -0700
X-CSE-ConnectionGUID: mfMfWu82SmmtQSvbJbkuxQ==
X-CSE-MsgGUID: CXgl4BvgRFaeJppgsq/CVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="29043530"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2024 01:04:24 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v8 0/7] Implement CMRR Support
Date: Thu,  9 May 2024 13:28:26 +0530
Message-Id: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
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

CMRR is a display feature that uses adaptive sync
framework to vary Vtotal slightly to match the
content rate exactly without frame drops. This
feature is a variation of VRR where it varies Vtotal
slightly (between additional 0 and 1 Vtotal scanlines)
to match content rate exactly without frame drops
using the adaptive sync framework.

enable this feature by programing new registers for
CMRR enable, CMRR_M, CMRR_N, vmin=vmax=flipline.The
CMRR_M/CMRR_N ratio represents the fractional part
in (actual refresh rate/target refresh rate) * origVTotal.

--v6:
- CMRR handling in co-existatnce of LRR and DRRS
- Correct vtotal paramas accuracy and add 2 digit precision.

--v7:
- Rebased patches in-accordance to AS SDP merge.
- Add neccessary gaurd to prevent crtc_state mismatch
during intel_vrr_get_config.

-v8:
- Add support for AS SDP for CMRR.
- update palce holder for CMRR register(Jani).
- Make CMRR as subset of FAVT, as per comments in patch#3.

Mitul Golani (7):
  drm/i915: Define and compute Transcoder CMRR registers
  drm/i915: Add Enable/Disable for CMRR based on VRR state
  drm/i915: Compute CMRR and calculate vtotal
  Add refresh rate divider to struct representing AS SDP
  drm/i915/display: Add support for pack and unpack
  drm/i915/display: Compute Adaptive sync SDP params
  drm/i915/display: Compute vrr vsync params

 drivers/gpu/drm/i915/display/intel_display.c  |  61 ++++++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  20 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 168 +++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 include/drm/display/drm_dp_helper.h           |   1 +
 7 files changed, 230 insertions(+), 37 deletions(-)

-- 
2.25.1

