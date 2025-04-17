Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5950FA918B0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 12:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B9C10EA81;
	Thu, 17 Apr 2025 10:04:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NLtMcxpq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7EF410EA80;
 Thu, 17 Apr 2025 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744884263; x=1776420263;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RBhpNJ7g1XoSeRQDLwziDnFNi/XRWlbHjPccGB05my8=;
 b=NLtMcxpqvTBkRVR+xUdoSO58uPayV8qqXWvA3YloOzvapCnW45XFYFDg
 ilGzeNAEiE9mgD7S5bVdIQJFGI09Vtz9mgabJfEAmz/nZXqUnrK6tdeOc
 Q7dqpBcp9koj9Clw99wRkI5G7esqXskYU/joZQiKs+k7IG8Zc/ijekAjn
 iuM7ISh5XZQydNIrtADMfPXBpXqbg8YNPZu4OSpxLirCj7kcUSda3kKzS
 5qPaKPtmQCrPX/zFoIGNgBhYDwWgZkhEwIS+LTDOvAAyfx8ofLLDZgtjA
 mEP9XfPXxU1OP4kTG4BVV0ulhIO4kwFoyeNCygae3fL8JiDwtcmcqV7NH Q==;
X-CSE-ConnectionGUID: nPTsAGE/THWdpf0jJSvGeA==
X-CSE-MsgGUID: ctCyKQVIQg+wC5O4yhk1Xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57106637"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57106637"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 03:04:22 -0700
X-CSE-ConnectionGUID: +ZKc7uaSSWuF/SbMtLsRfA==
X-CSE-MsgGUID: i4XBvqMNTHCm13SovKtE6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="130745263"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 17 Apr 2025 03:04:20 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 00/10] LOBF enablement fix
Date: Thu, 17 Apr 2025 15:11:13 +0530
Message-Id: <20250417094123.1662424-1-animesh.manna@intel.com>
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
v9: Addressed review comments received on v8.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (9):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Add debug print for LOBF
  drm/i915/lobf: Disintegrate alpm_disable from psr_disable
  drm/i915/lobf: Add fixed refresh rate check in compute_config()
  drm/i915/lobf: Update lobf if any change in dependent parameters
  drm/i915/lobf: Add debug interface for lobf
  drm/i915/lobf: Add mutex for alpm update
  drm/i915/lobf: Check for sink error and disable LOBF
  drm/i915/display: Disintegrate sink alpm enable from psr with lobf

Jouni Högander (1):
  drm/i915/alpm: use variable from intel_crtc_state instead of intel_psr

 drivers/gpu/drm/i915/display/intel_alpm.c     | 198 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h     |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  55 +----
 7 files changed, 221 insertions(+), 59 deletions(-)

-- 
2.29.0

