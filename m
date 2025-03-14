Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D1DA60FBA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 12:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F76210E9D1;
	Fri, 14 Mar 2025 11:18:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FnB7ZDhu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A459810E9CA;
 Fri, 14 Mar 2025 11:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741951133; x=1773487133;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wkBe/9v1nAsrn4H9spvVWyr0AuN1EOFaPjC+Y/NVbH0=;
 b=FnB7ZDhujTmo4zHWHNQq24iFGdK6WYG0/RhMA8ubsDLwApQl+eS72tOw
 MnXI+vl/0gHm7dMtDotgWgie14WhAZyLq3ipmEWUQqFUoIma3QgONYont
 z/AZeyVN6qyCMdivyQXNDT3TSGjUDFEkzxgh61A6m3DYKSyFJ+W0CSCbF
 131Q3xNkgJUmQsqOpePPwwptHCpMAzz14DJidkPfy9eZUr8V+XhVFzjQP
 syEkqEB0C16vIC8i9aj66BTpeIJ4V57NBEq89ITR9PNmvQ8V/26yuF9MW
 zZw3R0NUUDB8zEew1UaotVc2E2GormeeEnfHwisN8nyavqgJqwuNJ0UKg g==;
X-CSE-ConnectionGUID: 8LgHuXQURSO1FENWB3o9Pw==
X-CSE-MsgGUID: ra72UuBuRQmnVz/J1T4gVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="68467012"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="68467012"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:18:52 -0700
X-CSE-ConnectionGUID: PeY+F+0EQyafGEd9NYCSGw==
X-CSE-MsgGUID: LwqVcl3OTD+YFtxwqTSPQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126289632"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.27])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:18:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 00/11] Underrun on idle PSR workaround
Date: Fri, 14 Mar 2025 13:18:28 +0200
Message-ID: <20250314111839.1051945-1-jouni.hogander@intel.com>
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

This patchset is implementing workaround for underrun on idle PSR HW bug.

It is adding notification mechanisms toward PSR for pipe
enable/disable, vblank enable/disable and enabling disabling
DC5/DC6. These notifications are used to apply/remove the workaround.

Current mechanism to block DC states while vblank is enabled on Panel
Replay capable system is extended to work for this new workaround as
well.

Jouni Högander (11):
  drm/i915/psr: Store enabled non-psr pipes into intel_crtc_state
  drm/i915/dmc: Add PIPEDMC_EVT_CTL register definition
  drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
  drm/i915/psr: Write PIPEDMC_BLOCK_PKGC_SW when enabling PSR
  drm/i915/psr: Add mechanism to notify PSR of pipe enable/disable
  drm/i915/psr: Add mechanism to notify PSR of DC5/6 enable disable
  drm/i915/psr: Add interface to notify PSR of vblank enable/disable
  drm/i915/psr: Apply underrun on PSR idle workaround
  drm/i915/display: Rename intel_psr_needs_block_dc_vblank
  drm/i915/display: Rename vblank DC workaround functions and variables
  drm/i915/psr: Check transcoder Selective Update support for PR as well

 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  27 +-
 .../i915/display/intel_display_power_well.c   |   4 +
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  14 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 287 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.h      |   8 +-
 10 files changed, 327 insertions(+), 37 deletions(-)

-- 
2.43.0

