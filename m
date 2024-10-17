Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 444829A1D03
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F09910E1AD;
	Thu, 17 Oct 2024 08:21:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UT8r+Gfj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC83510E1AD;
 Thu, 17 Oct 2024 08:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729153298; x=1760689298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cSAZxod/U9IgWShSNpTund7vQkGabIW7PWOlZvrlqcA=;
 b=UT8r+Gfj9a2iU73e8B7QZoaYh4dscTJNlIlVUCMd9zy5hO/9Y/AtkLcv
 fjIdxjIx6WJ01OOu+y5Us1CWOX4OId1blUcOPJ+JHZuOu7Qa9Yi7+7sSw
 hg4CRV1d3/HzetzIpOT8a2NRDjvT5rFdM4s/pkRbvZLlDv0vpxzwtc2Fm
 8WiXi3Ii2uL6MdjcMZi+9YajotQaZRkJLngoM1ZCH2ZpJukSpgyfXPfC6
 aWxE/xUJJ6i+W+jUXSZQvU/FtY36Mxca6rLI2yNBru+uxy/JRGuDWc5uq
 l4T1kdy25d30NQblIj7XsUG509CNcsoq80Yk22Zv7Mm5mhv8CVp25pikk Q==;
X-CSE-ConnectionGUID: SQD33S7qSl2wtWPbPt72mA==
X-CSE-MsgGUID: fMNsOGmLRzSZE/vfqBSNCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28724826"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28724826"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:37 -0700
X-CSE-ConnectionGUID: 7pOpHcKZTm+p96rx/ce4ew==
X-CSE-MsgGUID: H/rv8VlUTbGMAxUAfIAaGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78086169"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:21:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 00/10] Add support for 3 VDSC engines 12 slices
Date: Thu, 17 Oct 2024 13:53:38 +0530
Message-ID: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (10):
  drm/i915/display: Prepare for dsc 3 stream splitter
  drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
  drm/i915/vdsc: Add register bits for VDSC2 engine
  drm/i915/vdsc: Add support for read/write PPS for DSC3
  drm/i915/dp: Add check for hdisplay divisible by slice count
  drm/i915/display: Add DSC pixel replication
  drm/i915/dp: Compute pixel replication count for DSC 12 slices case
  drm/i915/display: Account for pixel replication in pipe_src
  drm/i915/dsc: Account for Odd pixel removal
  drm/i915/dp: Add support for 3 vdsc engines and 12 slices.

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  33 +++++-
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  82 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  20 +++-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 108 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  22 +++-
 8 files changed, 251 insertions(+), 26 deletions(-)

-- 
2.45.2

