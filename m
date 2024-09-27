Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC9C98881D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13D410ECBC;
	Fri, 27 Sep 2024 15:20:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PYYJO87I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB2A10E20E;
 Fri, 27 Sep 2024 15:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727450446; x=1758986446;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ly6G3g+VCVBqpkoxxBUZMMMam5Kf3y1swR6hjkZpCyc=;
 b=PYYJO87IoPiRq3312RwlJfkFQfi9Y+tLOLEi2Ei+kztHiXkHrn9IJdI6
 JJBGfNSGSTELCHSvVPhgOAfk7Ua1Ku0Ua4B4UN3QIJ2SSkceYIUjriwMK
 rfvRBIEygHsT7NBIegqXb0g3bbgUV4Mhj2KS4POQpstjFYypDl/qcj4mD
 T3gzFiHL2vvLd2a4aR1UALeneBKy+RYtLqSOr1+k6/SSGZrXiHMTjJ/5D
 YzUPjiy6tPyzk2u8A6p3GzxBRavv6/g8r9hr8cBicF2GDDnHkJS5LfWwl
 nqHVFC6wdLslYQ2g4XrQbiTuqDu2TVUbnDKXNEw3PmOr2ENabDAOd/g9O g==;
X-CSE-ConnectionGUID: MRHA3/2ZR3qYIpyP3qZaDA==
X-CSE-MsgGUID: 7gvmVPMvTwa6tpJVsH0jwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37179711"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="37179711"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:20:46 -0700
X-CSE-ConnectionGUID: zu9YiFvhRxCmf9EU9tkKUQ==
X-CSE-MsgGUID: KLfz941CRYO32ap5iuehuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="95896867"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:20:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 00/17] Ultrajoiner basic functionality series 
Date: Fri, 27 Sep 2024 20:52:24 +0530
Message-ID: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (12):
  drm/i915/display_device: Add Check HAS_DSC for bigjoiner
  drm/i915/display_debugfs: Allow force joiner only if supported
  drm/i915/display: Modify debugfs for joiner to force n pipes
  drm/i915/dp: Add helper to compute num pipes required
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
 .../drm/i915/display/intel_display_debugfs.c  |  72 +++-
 .../drm/i915/display/intel_display_device.h   |   5 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 141 ++++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  23 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  11 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +
 10 files changed, 472 insertions(+), 113 deletions(-)

-- 
2.45.2

