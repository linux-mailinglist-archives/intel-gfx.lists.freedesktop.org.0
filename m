Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1599A6874
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA54C10E4C0;
	Mon, 21 Oct 2024 12:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jmn97kWV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37C4110E4C0;
 Mon, 21 Oct 2024 12:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513921; x=1761049921;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B2M/gSVTbPWZdGRgWlvu/QVBKlotyrKd/raXdxVgC6Y=;
 b=jmn97kWVHg+JEAY21c+v+Ye2FmJCU/ioRh3RZZDL90KtHRk8+pqKkF0h
 frQCNA+WgpRyrAy+4nMCpJ63BJrQXuKYPZgeIGOKuRNi+GNQz5m2JBxNN
 KqdVO13qCJlKeB5fDvHZ9KK2P/sPNiTLFq3tYMLZRKEMy21eEE6OnJuJm
 nECOpaIhCibJCO18xSCNSG0Kc4QHra8ulhd/ICRj2JFUzBkllPUGxqVMr
 JqK9TtxesmdN7sGBPfNdHsSXswozDgZz+G3r5251YSMv3ZQrtLkvy1ILb
 xLMioaj4wW/kT2ncnEXE8rSeNgKFizsHKBmZoC9FUxBEHUOQfkbDDGPVu Q==;
X-CSE-ConnectionGUID: c3I9Bv7PT56WAXvQ3DpL5g==
X-CSE-MsgGUID: +3iXaqY/RJ2tyRzaeiXdEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459619"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459619"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:00 -0700
X-CSE-ConnectionGUID: bfkn44fdTpuWS94pngNkOg==
X-CSE-MsgGUID: V0wZeDfDR9C/o2cbztOFwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866031"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:31:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 00/16] Add support for 3 VDSC engines 12 slices
Date: Mon, 21 Oct 2024 18:03:58 +0530
Message-ID: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
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

For BMG 3 VDSC engines are supported and each pipe can then support
3 slices. For Ultra joiner cases for modes like 8k@120 Hz we require
ultrajoiner and 3 x 4= 12 slices.
Add support for 3 VDSC engines and 12 DSC slices. Along with this
Pixel replication and Odd pixel considerartions are also required.

Rev2: Rebase
Rev3:
-Add patch to account for pixel replication in pipe_src.
-Fix kernel test bot warning.
-Minor refactoring.
Rev4:
-Address review comments from last version.
-Add BW consideration with pixel replication
-Split Odd pixel handling in separate patches.

Ankit Nautiyal (16):
  drm/i915/dp: Update Comment for Valid DSC Slices per Line
  drm/i915/display: Prepare for dsc 3 stream splitter
  drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
  drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
  drm/i915/vdsc: Add support for read/write PPS for 3rd DSC engine
  drm/i915/dp: Ensure hactive is divisible by slice count
  drm/i915/dp: Enable 3 DSC engines for 12 slices
  drm/i915/display: Add macro HAS_PIXEL_REPLICATION
  drm/i915/display: Add support for DSC pixel replication
  drm/i915/dp_mst: Account for pixel replication for MST overhead with
    DSC
  drm/i915/dp: Account for pixel replication for BW computation with DSC
  drm/i915/display: Account for pixel replication in pipe_src
  drm/i915/dp: Enable DSC pixel replication
  drm/i915/dsc: Introduce odd pixel removal
  drm/i915/display: Adjust Pipe SRC Width for Odd Pixels
  drm/i915/dp: Add Check for Odd Pixel Requirement

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  36 +++++-
 .../drm/i915/display/intel_display_device.h   |   3 +
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  87 ++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  19 ++-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 113 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   9 ++
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  22 +++-
 10 files changed, 270 insertions(+), 27 deletions(-)

-- 
2.45.2

