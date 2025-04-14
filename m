Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D273A87CD5
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE5910E537;
	Mon, 14 Apr 2025 10:05:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lKpgfTnX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D45610E53B;
 Mon, 14 Apr 2025 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625122; x=1776161122;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4fgkiNA7eg96R1GjFZnfwHxlCBd+6Li0fP7/knm8T/Q=;
 b=lKpgfTnX59TrtIUStwsVpuw/MTtvEzfjhnA5fpriXZdWIb6p6U5SJXaK
 Gy9lCGqcxwdApa7CcsWSrOEO8jPbcEAxea94V4OsmKxAPYLfFeEw/ksE3
 TuPLtxC8L6aVX+KCIQ0IWtlCxQ6N0ADG53mOFaJKvhdZCBpAKKqTzrMI0
 Ilz9sTnDFn/w1waWstJZyiSC8mydy0S4TK9mWvRVJGTAwEO7lpR6DeiQX
 xONNNhJS+Q6IfJ1iPs1AKMg3inS0DPMcnefxBVcW+HKZf+lwNSaHOArKJ
 BlA/9W62EnRqgtt79KS8TjlSO0QHqw7FBPU0uk+LULI2ihKjdfCWIHtg9 Q==;
X-CSE-ConnectionGUID: RA6i4MIMRXKf/ZrbOTPlEA==
X-CSE-MsgGUID: tiFpsrtsQJWRb+YgN+CrVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789109"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789109"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:22 -0700
X-CSE-ConnectionGUID: 70uXZKzdSrSQJg2wZdaReQ==
X-CSE-MsgGUID: bM6SpgmPTmuoSUhQ12gT/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743179"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 00/13] Underrun on idle PSR workaround
Date: Mon, 14 Apr 2025 13:04:55 +0300
Message-ID: <20250414100508.1208774-1-jouni.hogander@intel.com>
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

This patchset is implementing workaround for underrun on idle PSR HW
bug (Wa_16025596647).

It is adding notification mechanisms towards PSR for pipe
enable/disable, vblank enable/disable and enabling disabling
DC5/DC6. These notifications are used to apply/remove the workaround.

Current mechanism to block DC states while vblank is enabled on Panel
Replay capable system is extended to work for this new workaround as
well.

v3:
  - do not access DMC registers directly from PSR code
v2:
  - remove patch mistakenly added to the set
  - add missing patch

Jouni Högander (13):
  drm/i915/display: Add new interface for getting dc_state
  drm/i915/psr: Store enabled non-psr pipes into intel_crtc_state
  drm/i915/dmc: Add PIPEDMC_EVT_CTL register definition
  drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW definitions
  drm/i915/dmc: Add interface to block PKG C-state
  drm/i915/psr: Block PKG C-State when enabling PSR
  drm/i915/psr: Add mechanism to notify PSR of pipe enable/disable
  drm/i915/psr: Add mechanism to notify PSR of DC5/6 enable disable
  drm/i915/psr: Add interface to notify PSR of vblank enable/disable
  drm/i915/dmc: Add interface to control start of PKG C-state exit
  drm/i915/psr: Apply underrun on PSR idle workaround
  drm/i915/display: Rename intel_psr_needs_block_dc_vblank
  drm/i915/display: Rename vblank DC workaround functions and variables

 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  26 +-
 .../drm/i915/display/intel_display_power.c    |  29 ++
 .../drm/i915/display/intel_display_power.h    |   1 +
 .../i915/display/intel_display_power_well.c   |   4 +
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  48 ++++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   4 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  14 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 255 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.h      |   8 +-
 14 files changed, 384 insertions(+), 29 deletions(-)

-- 
2.43.0

