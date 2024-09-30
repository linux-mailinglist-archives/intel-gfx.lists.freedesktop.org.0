Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BF598A9CF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BBE110E549;
	Mon, 30 Sep 2024 16:33:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VIDYtNlV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37F910E547;
 Mon, 30 Sep 2024 16:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714032; x=1759250032;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DKxYZJ8I4FLHf+fujhwAP8aQ3qw8Wi1CRDjyd/DIwHE=;
 b=VIDYtNlVGPlgruxIkSdAmNsyo6A53GUi1JLEKSJ0nKuBTfMFvmvdVFWB
 CIaiOm3xUNC6QQsn2sC+eIiLC+uRPhrnlYXDv8p/Frjmk9kSfLulHiIrk
 otenbQNc7uF9YAEn7C1KqzfEkTBPExH/RXxGfuj1DDlBmTfSOvw/ft1kR
 Fm7moRKEzBOVahH2S2nNveBy/nqepWnlujNgkwu4ARNvi9hpiPVTJO3Z9
 tg32aRMfVnqNH9XMg+RrGvVA3WgBCQZQ0GNHgkY29HpakkCclo+CD+lhU
 mEJn2R2+VTBm8jbDipY46tocAE9syJLlHCJ3xAwYwohauFunmrysldfEm Q==;
X-CSE-ConnectionGUID: WHxZoyeJRX+s9gZP4tTkPg==
X-CSE-MsgGUID: sqZ++smWTUq0EYDoaJ/I9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700496"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700496"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:33:52 -0700
X-CSE-ConnectionGUID: XsS0kCcPSh+wtdok/2pGOA==
X-CSE-MsgGUID: fHU+b0KSQTqk3gwXuVdIxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839131"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:33:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/13] Ultrajoiner basic functionality series
Date: Mon, 30 Sep 2024 22:05:36 +0530
Message-ID: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
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

This patch series attempts to implement basic support
for Ultrajoiner functionality.

Rev6:
-Upgrade the debugfs functionality to enable the joining of a
specified number of pipes.
-Modify the display helpers reliant on the pipe joiner mechanism
to use number of pipes joined, instead of joiner flag.
-Checkpatch fixes.

Rev7:
-Use struct intel_display, minor refactoring, and rebase.

Rev8:
-Address comments from Ville.
-Simplified debugfs for forcing joiner, and added option to disable
joiner.
-Modified the ultra/bigjoiner helpers as suggested by Ville. 
-Split few of the bigger patches as suggested.

Rev9:
Rebase

Rev10:
-Rebase
-Fix enable_joined_pipes as suggested by Ville, to avoid propagate
is_ultrajoiner.
-Enhance the mask to iterate over joiner pipes, as suggested by Ville.

Rev11:
-Address review comments from Ville
-Split changes to dsc helpers to separate patches

Rev12:
-Move 'Refactor enable_joiner_pipes' earlier than 'Implement hw state
readout and checks for ultrajoiner'.
-Few improvements as suggested in review comments.
-Use --patience for Patch #8 "drm/i915/display: Refactor
enable_joiner_pipes"

Rev13:
-Refactor get_max_compressed_bpp_with_joiner and split changes into 3
patches.

Rev14:
-Fix issues in patches#11~13 for num_joined_pipes = 1.

Rev15:
-Rebase

Ankit Nautiyal (8):
  drm/i915: Split current joiner hw state readout
  drm/i915/display: Add macro HAS_ULTRAJOINER()
  drm/i915/display: Refactor enable_joiner_pipes
  drm/i915/dp: Refactor joiner max_bpp calculations into separate
    functions
  drm/i915/dp: Use num_joined_pipes in bigjoiner_bw_max_bpp
  drm/i915/dp: Modify compressed bpp limitations for ultrajoiner
  drm/i915/display: Consider ultrajoiner for computing maxdotclock
  drm/i915/intel_dp: Add support for forcing ultrajoiner

Stanislav Lisovskiy (5):
  drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
    checks
  drm/i915: Implement hw state readout and checks for ultrajoiner
  drm/i915/display/vdsc: Add ultrajoiner support with DSC
  drm/i915/dp: Simplify helper to get slice count with joiner
  drm/i915: Compute config and mode valid changes for ultrajoiner

 drivers/gpu/drm/i915/display/intel_display.c  | 320 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_debugfs.c  |   8 +
 .../drm/i915/display/intel_display_device.h   |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 106 ++++--
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  11 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +
 7 files changed, 372 insertions(+), 81 deletions(-)

-- 
2.45.2

