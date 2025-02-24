Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61248A42177
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D0F10E51A;
	Mon, 24 Feb 2025 13:42:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQWRVCCu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC93C10E16F;
 Mon, 24 Feb 2025 08:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740385849; x=1771921849;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a3ILz7/PxGXOTWMSvK4blYBGxZiR/XYiYgowcAHykk0=;
 b=WQWRVCCujLVsRkw14MhUklqxVxufvNVsqFitt0Z5biACCtl9reMjKvsd
 STeeVx1tXLeEuejk76kFP/T4EXclCfF+KTnJeyUvpKDRK+P6q1kVBbudc
 ero8X2t0gfzzTVEWS/ehNEHJGzyNPicn0+XmUfpiGzxGNrCyecurypzB4
 SlgE1OpqlNLS8jFqiYW09Ff3CECFREPR2K/TYS3udZwWcWHFkDio0rYNL
 EzwgBWz5cfs240UYuDIc4N6e1dj5i+oVa8QyUkLAPdgy025P+BqGbGbUb
 A0/6Ua0AGWiug2SKORkRUVa3fnjDTcxA3dzN4opVxWeZmDJsLnrnuq3oY w==;
X-CSE-ConnectionGUID: o1tGAHEHThO96MNd7uDDag==
X-CSE-MsgGUID: Snm8rVJHSNqWzT0jPN6f9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41250270"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41250270"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 00:30:48 -0800
X-CSE-ConnectionGUID: qaDhvNsxStqODw7HqRTbmg==
X-CSE-MsgGUID: ckPoNQM/TAWeaiEv/Uh1xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116630586"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 24 Feb 2025 00:30:46 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 0/8] LOBF enablement fix
Date: Mon, 24 Feb 2025 13:38:39 +0530
Message-Id: <20250224080847.326350-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

v1: Initial version.
v2: Addressed review comments from Jani.
v3: Addressed review comments from Jouni.
v4: Addressed review comments received on v3.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (8):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Disintegrate alpm_disable from psr_disable
  drm/i915/lobf: Add fixed refresh rate check in compute_config()
  drm/i915/lobf: Update lobf if any change in dependent parameters
  drm/i915/lobf: Add debug interface for lobf
  drm/i915/lobf: Check for sink error and disable LOBF
  drm/i915/lobf: Add mutex for alpm update
  drm/i915/lobf: Add debug print for LOBF

 drivers/gpu/drm/i915/display/intel_alpm.c     | 163 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h     |  11 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  29 +---
 7 files changed, 191 insertions(+), 31 deletions(-)

-- 
2.29.0

