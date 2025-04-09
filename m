Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3FBA827B5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78CBA10E8ED;
	Wed,  9 Apr 2025 14:25:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kOmBMPin";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA20A10E8ED;
 Wed,  9 Apr 2025 14:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208749; x=1775744749;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pVwogpfEX5Itocz344TY0dS2PlCy9ypi4hlqIUkQT3Q=;
 b=kOmBMPinS1Sz+a8DM6NPVcpUxRjgQM4/NnvdWfhLxs+FVMACL9ac5bvG
 TW2yGEWReJ239eon/Kaykf7aIsA2NjY9/FJEoQJ45QlFKk4FPGwo3ithx
 JALBsEbSqXhHXALUzhTJmKOfzqUBkJT5o2KM34hFIY/k3NMpJF71ZhGxj
 zLyRqQuPBOROVk/LFft91XaU71nBgkbVPt4lssYAgiKs7wRyWIvDHvCSW
 WsWQSrO7zeyqn22b5NoaVUn1zf1llm0vU1HN4ytAR14aq+TbkM2iYNo9J
 XnmunJDn9W7K9aqGwU1f/3smFzZGkvDW9x5Htdm9mgUWLIl+R3XDC/Wj+ A==;
X-CSE-ConnectionGUID: ubnQ7hJcQ1qs7Rc2y4K2SA==
X-CSE-MsgGUID: 1B6bagdgRyG/wTdzULCxIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49347755"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49347755"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:25:48 -0700
X-CSE-ConnectionGUID: strQSqnmQEmkIbmSngIN0g==
X-CSE-MsgGUID: rPa4LwtPSoWsMFLlZXYMhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="132732568"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 09 Apr 2025 07:25:46 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 0/9] LOBF enablement fix
Date: Wed,  9 Apr 2025 19:32:49 +0530
Message-Id: <20250409140258.785834-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

v1: Initial version.
v2: Addressed review comments from Jani.
v3: Addressed review comments from Jouni.
v4: Addressed review comments received on v3.
v5: Addressed review comments received on v4.
v6: Addressed review comments received on v5.
v7: Addressed review comments received on v6.
v8: Addressed review comments received on v7.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (8):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Add debug print for LOBF
  drm/i915/lobf: Disintegrate alpm_disable from psr_disable
  drm/i915/lobf: Add fixed refresh rate check in compute_config()
  drm/i915/lobf: Update lobf if any change in dependent parameters
  drm/i915/lobf: Add debug interface for lobf
  drm/i915/lobf: Add mutex for alpm update
  drm/i915/lobf: Check for sink error and disable LOBF

Jouni Högander (1):
  drm/i915/alpm: use variable from intel_crtc_state instead of intel_psr

 drivers/gpu/drm/i915/display/intel_alpm.c     | 133 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  32 +----
 7 files changed, 153 insertions(+), 36 deletions(-)

-- 
2.29.0

