Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF5897BE16
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C466B10E269;
	Wed, 18 Sep 2024 14:41:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S09F6jcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB2C10E268;
 Wed, 18 Sep 2024 14:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670515; x=1758206515;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1jvmwXGwTe+Zh4sECoftdPtVmBTNPzDSrTf9iaT8vzQ=;
 b=S09F6jcqwjkzUDjjNnA4lNVw9gs1u1sZozgUE2BVX6wLmaIRI1EgYoOl
 b7Whi9RZE+oEjL0emAJpraue95E957fM1lKZtZfsReSYWIsGxnwxVHEK9
 /gzXtcGHPtiOhcs8chcHBBlS8DNWMWOzV7uHpzWFJz3irkWc63es6v8W+
 ueOeES5BQ2jDzeTvRgsLmIhpvbr6qde6SO2v39gowlM8AdwyZ8WrSSE19
 o9Ls4jId5SBG3e4AqYhvaFKvJRytbbHvA5BX2mLLmTW1psi0ZvtK0cPdo
 kdkNSU1ei5kLhqZSUApToi5XSvCLgl2m5y/obENbG4Sp1fUxdxYgV92sN g==;
X-CSE-ConnectionGUID: 5NcQZ1yGQhOfnFi3caxq3g==
X-CSE-MsgGUID: P8K7JdHiTb6hGxuSjimrLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481712"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481712"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:41:54 -0700
X-CSE-ConnectionGUID: Y7DbBjeeSVWFDE0qr0/6WQ==
X-CSE-MsgGUID: 5qk5omjiTk2nFVIMD3U+Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200357"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:41:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/15] Ultrajoiner basic functionality series
Date: Wed, 18 Sep 2024 20:13:28 +0530
Message-ID: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

Patches 1-2 are re-posts from https://patchwork.freedesktop.org/series/138751/

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

Test-with: 20240918110754.26140-1-karthik.b.s@intel.com

Ankit Nautiyal (10):
  drm/i915/display: Enhance iterators for modeset en/disable
  drm/i915/display_debugfs: Allow force joiner only if supported
  drm/i915/display: Modify debugfs for joiner to force n pipes
  drm/i915/dp: Add helper to compute num pipes required
  drm/i915/display: Add debugfs support to avoid joiner
  drm/i915: Split current joiner hw state readout
  drm/i915/display: Add macro HAS_ULTRAJOINER()
  drm/i915/display: Refactor enable_joiner_pipes
  drm/i915/display: Consider ultrajoiner for computing maxdotclock
  drm/i915/intel_dp: Add support for forcing ultrajoiner

Stanislav Lisovskiy (5):
  drm/i915: Add some essential functionality for joiners
  drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
    checks
  drm/i915: Implement hw state readout and checks for ultrajoiner
  drm/i915/display/vdsc: Add ultrajoiner support with DSC
  drm/i915: Compute config and mode valid changes for ultrajoiner

 drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 327 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  30 ++
 .../drm/i915/display/intel_display_debugfs.c  |  76 +++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  99 ++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  37 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  28 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +
 11 files changed, 518 insertions(+), 104 deletions(-)

-- 
2.45.2

