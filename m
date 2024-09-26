Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1478D986D6E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E8810EAB0;
	Thu, 26 Sep 2024 07:24:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYsEF7Wd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9161A10EAAB;
 Thu, 26 Sep 2024 07:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335485; x=1758871485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/P6A2iXn6nYAs4I07jYN7tFIhuWaNSXHW7yULQ0x2FU=;
 b=YYsEF7WdH5xZhHQgWfXcJI7lTx+pZIh3zVan7Q1L3GojI2i7Z9coWNWl
 7GLiZ8zQ2Xo1isMm9K4umRI/fFDk5MMpOJVyor2VxjmBhl0qR+0WF9fWj
 s+sTMDEqYOdPXCWlQuYHuVoq7V0RZM+7kY4MrKCeisBkzyzYiNee70wu5
 tbFDbB1xpq8OiURgT+GsXfMNPXPCNex0NacLVcJfqzPplgvfM5zPehOoe
 3ZAyttyTvl1brG510x6DVdXxtP1IW5aJSdW/n2RhF2biDYXzeZuzWA2kU
 4hVTBmFcTSFiMlvmC72UodA8/PwmQUkW+PR0/GRx+i2dsIF40gqTwW5C9 Q==;
X-CSE-ConnectionGUID: RS32OBzNSeybCVty+rDePg==
X-CSE-MsgGUID: OzQVXmVKRSerYthAhAJWDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829431"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829431"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:44 -0700
X-CSE-ConnectionGUID: lDB8+62USG67gNraYSdmLQ==
X-CSE-MsgGUID: djJvuv+hRYSvb4q2+AsKXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334377"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/15] Ultrajoiner basic functionality series
Date: Thu, 26 Sep 2024 12:56:23 +0530
Message-ID: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (10):
  drm/i915/display_device: Add Check HAS_DSC for bigjoiner
  drm/i915/display_debugfs: Allow force joiner only if supported
  drm/i915/display: Modify debugfs for joiner to force n pipes
  drm/i915/dp: Add helper to compute num pipes required
  drm/i915: Split current joiner hw state readout
  drm/i915/display: Add macro HAS_ULTRAJOINER()
  drm/i915/display: Refactor enable_joiner_pipes
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

 drivers/gpu/drm/i915/display/intel_display.c  | 311 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_debugfs.c  |  73 +++-
 .../drm/i915/display/intel_display_device.h   |   5 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  97 ++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  23 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  11 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +
 10 files changed, 430 insertions(+), 103 deletions(-)

-- 
2.45.2

