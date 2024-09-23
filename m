Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 022D397F023
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 951C310E44B;
	Mon, 23 Sep 2024 18:11:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FyG/Wu6D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46A1810E44B;
 Mon, 23 Sep 2024 18:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115106; x=1758651106;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LEiDyiFeiQJJRmuYm/M4bDDDgkPKr+NxQ8y0FlGp1NM=;
 b=FyG/Wu6DJb6QRBvjI0h3BxA+5TCAK1V/FXHuTrPVRbXUgdwYsPh9uEJb
 YRAH0qnd+cDuGY0ewxpkBZqxko947EPqBWjkf29WZIXbIO9K5qZFzTwVS
 ONjf0enwI0TwYPbY4aBim1VCskMWhlY/0pmtVqGSX/VD6F/CZS+pX7Cdv
 UCfrAKneFgblLhlv5zexs8D7114SzlHN59vAYMWFV39VQD+qE/kdzDeED
 OATo3h5q592bL2xf4jQNUgXZbe8RiOCbK3ANq8tx7nrkIjvM08k+ktuV8
 bLKnLD/2tuzQ+B1OCOkyAhnzYmQJIpQ/sTwLXj0iM/ZQzWNbq+FN8pHaD g==;
X-CSE-ConnectionGUID: I6wydMzwQWqReIWtnQqbkA==
X-CSE-MsgGUID: FS1b31OFSCa9Mbslzpj8yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866177"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866177"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:46 -0700
X-CSE-ConnectionGUID: m0+u3qFjSbixsUIoTvbiFA==
X-CSE-MsgGUID: jQF3UGBhQcC8gzpawJk4bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734231"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:11:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/16] Ultrajoiner basic functionality series
Date: Mon, 23 Sep 2024 23:43:20 +0530
Message-ID: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (11):
  drm/i915/display_device: Add Check HAS_DSC for bigjoiner
  drm/i915/display_debugfs: Allow force joiner only if supported
  drm/i915/display: Modify debugfs for joiner to force n pipes
  drm/i915/dp: Add helper to compute num pipes required
  drm/i915/display: Add debugfs support to avoid joiner
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
  drm/i915/dp: Modify helper to get slice count for ultrajoiner
  drm/i915: Compute config and mode valid changes for ultrajoiner

 drivers/gpu/drm/i915/display/intel_display.c  | 301 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_debugfs.c  |  71 ++++-
 .../drm/i915/display/intel_display_device.h   |   5 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  93 ++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  23 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  11 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +
 10 files changed, 417 insertions(+), 100 deletions(-)

-- 
2.45.2

