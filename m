Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A638CE431
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 12:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B417110E8F3;
	Fri, 24 May 2024 10:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XPy+jD88";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC71A10E471
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 10:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716546615; x=1748082615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0lS4yuOs38RGsOpajAWAVh2jMgAPPQxf3yhrexPwGkQ=;
 b=XPy+jD88dojpW7lDNL6GLHdAwNoHhodm1t4uR1lqyZ+7t3Bl7cVFeiVt
 gMGxcjTjzP6uLs+qBLzBetiK+y2KeluolHHrceA2v8xOnOELotdz8VNQ9
 wY0m3/5Qb06gnrb+010HviPF+HN7Dkeq+/EaZDLiicGzXbHwqZe3/OHLL
 /B1qMxTSGYePGz8O9LBBJR3WLy/EiZu1bbajS/Eux6+xONfjKXDgct3RJ
 jqo2yBFe4UYB0Z1+ZzkxE9K9B3mWGf2jojSpSV+c6/nFMT+nKxqt/DwnO
 TBi1APiPfrgi93vXF8nHk/1CBPLoV+baG+GSUrDUEh9nF7DGlXlDZkD4J Q==;
X-CSE-ConnectionGUID: ejKUDw6JQLSnEUlY2NUVFA==
X-CSE-MsgGUID: FH6+svPyRj6g6LbJGfvPsw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="15862704"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="15862704"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 03:30:13 -0700
X-CSE-ConnectionGUID: xw3bxnhkRGO603Gcm/hNGg==
X-CSE-MsgGUID: Yo34CksuSuyRcQ8ODqeXRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71385631"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 24 May 2024 03:30:12 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v9 0/8] Implement CMRR Support
Date: Fri, 24 May 2024 15:54:24 +0530
Message-Id: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
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

-v9:
- Add CMRR register definitions to separate intel_vrr_reg.h.
- Remove cmrr_enabling/disabling, use vrr.enable instead.
- Update AS SDP pack function to accomodate target_rr_divider.
- Remove duplicated lines to compute vrr_vsync params.
- Set cmrr.enable with a separate patch at last.

Mitul Golani (8):
  drm/i915: Define and compute Transcoder CMRR registers
  drm/i915: Update trans_vrr_ctl flag when cmrr is computed
  drm/i915: Compute CMRR and calculate vtotal
  Add refresh rate divider to struct representing AS SDP
  drm/i915/display: Add support for pack and unpack
  drm/i915/display: Compute Adaptive sync SDP params
  drm/i915/display: Compute vrr vsync params
  drm/i915/display: Compute cmrr.enable flag

 drivers/gpu/drm/i915/display/intel_display.c  |  24 ++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  21 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 139 +++++++++++++++---
 drivers/gpu/drm/i915/intel_vrr_reg.h          |  21 +++
 include/drm/display/drm_dp_helper.h           |   1 +
 7 files changed, 191 insertions(+), 22 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_vrr_reg.h

-- 
2.25.1

