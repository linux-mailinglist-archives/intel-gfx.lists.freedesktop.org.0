Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFE8AA6D30
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABAEA10E381;
	Fri,  2 May 2025 08:59:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="inC25g/r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CFF10E381;
 Fri,  2 May 2025 08:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176362; x=1777712362;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m/BNrvnrUSZ0Z2ZEIhp+gonYq/O23zIN0SSF0bn8w0M=;
 b=inC25g/r2+GP8UC99KB1vjri78DIvJnxGRjuoDJKywasaOKz7hZx7Ivo
 2FyVxY3QXaupry+tqB26JhW68RcbYNgQmjRxX/RFpaHGUaHh3nwjdaxYb
 F6WC/dNqMg2kWNwSq1mUYbL+VKp/6XafQCbey5zWeUmOeO5cZwMekT8Tg
 RiUFtY6usdy1lOxG/fUY25sUYAiQs5O4k+GdvvfEKTjvyeRb+jyFs2UK1
 tkKKbz/GugJFQBVbZ57AL5ZYEu3bBNnizr0e+X/TjnwvCl3d1+MbwPzvg
 TPUMRqfe59A5eWbUsKN5qSQhqIaVyzVM0mSXaZnbVo4Oe2hLfP/HrVnHT A==;
X-CSE-ConnectionGUID: UANR2sNCTCyvCFefRP02/g==
X-CSE-MsgGUID: G5D65KmeRDGDG3jEZfycaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943188"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943188"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:22 -0700
X-CSE-ConnectionGUID: O2VZCLtKRtmYgOyw3v8BPA==
X-CSE-MsgGUID: QIehy4ldS6C2POL6UdofAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346677"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 00/11] Panel Replay + Adaptive sync
Date: Fri,  2 May 2025 11:58:51 +0300
Message-ID: <20250502085902.154740-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This patch set is adding missing configuration to have Panel Replay
and Adaptive Sync enabled simultaneously. Also some issues identified
while debugging are fixed:

1. Source PORT ALPM configuration has to made during modeset.
2. PHY_CMN1_CONTROL is not written according to HAS document
3. Wrong register field definitions for PORT_ALPM_LFPS_CTL.

Patches are tested on LunarLake and PantheLake using our reference panel supporting
Adaptive Sync and Panel Replay.

EMP_AS_SDP_TL is currently missing completely from drm-tip. There is a patch for that which is needed if testing these patches:

https://patchwork.freedesktop.org/series/148421/

Otherwise "PSR idle timeout" errors are seen while testing.

Jouni Högander (11):
  drm/dp: Add Panel Replay capability bits from DP2.1 specification
  drm/i915/psr: Read both Panel Replay capability registers from DPCD
  drm/i915/alpm: Add PR_ALPM_CTL register definitions
  drm/i915/alpm: Write PR_ALPM_CTL register
  drm/i915/psr: Add interface to check if AUXLess ALPM is needed by PSR
  drm/i915/alpm: Add new interface to check if AUXLess ALPM is used
  drm/i915/alpm: Move port alpm configuration
  drm/i915/display: Add PHY_CMN1_CONTROL register definitions
  drm/i915/display: Add function to configure LFPS sending
  drm/i915/psr: Fix using wrong mask in REG_FIELD_PREP
  drm/i915/psr: Do not disable Panel Replay in case VRR is enabled

 drivers/gpu/drm/i915/display/intel_alpm.c     | 83 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_alpm.h     |  4 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 30 +++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  3 +
 drivers/gpu/drm/i915/display/intel_ddi.c      | 12 +++
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 40 ++++++---
 drivers/gpu/drm/i915/display/intel_psr.h      |  2 +
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 14 +++-
 include/drm/display/drm_dp.h                  | 10 ++-
 11 files changed, 164 insertions(+), 38 deletions(-)

-- 
2.43.0

