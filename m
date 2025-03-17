Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1932A64501
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF2510E36F;
	Mon, 17 Mar 2025 08:19:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nr219Z0r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0B110E029;
 Mon, 17 Mar 2025 08:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199557; x=1773735557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2driyWxYbrULLkghZGlLy6stJYrns8PZl+mRoojqh9c=;
 b=Nr219Z0rsh5x9Mmoad6GORpccpAFeSEdtXlYGwwTtrjKesDc07xndoeB
 d96n78spj7GgW55xWyJbyoA2Mh722d/webfnz7tFgM29KqqkT0NjyyJgb
 L3EJLrNLYTbFmKre8/BIccArlZYQ10iAN1a8wodGG9fAbzV20DeGeX34Y
 0vtT9o2uXB/w52zl6R/kilr//Vng46xlPpb9YaKKi+vNnrBVYMXcgAvdi
 klsBcBufR7bAOlW5gFMvonQMqi9+QtQRdjg7BtqSjIUqkv64ktHpKyCTP
 lvFdUtacsrwqCj5Lv3nsH8P13emX2Ul+5dMgFKFUav5uinSkVnrmdOxNE g==;
X-CSE-ConnectionGUID: oztnkybuQHmOfPTfx/Xp8w==
X-CSE-MsgGUID: opkNlCoURxyLZ+TC5pi5wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653485"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653485"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:17 -0700
X-CSE-ConnectionGUID: hlqZw3kYQqa05BzBuktkRA==
X-CSE-MsgGUID: uptAQqBpTse3fAOG0UM55Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677108"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 00/11] Underrun on idle PSR workaround
Date: Mon, 17 Mar 2025 10:18:54 +0200
Message-ID: <20250317081905.3683654-1-jouni.hogander@intel.com>
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

v2:
  - remove patch mistakenly added to the set
  - add missing patch

Jouni Högander (11):
  drm/i915/display: Add new interface for getting dc_state
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

 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  27 +-
 .../drm/i915/display/intel_display_power.c    |  29 ++
 .../drm/i915/display/intel_display_power.h    |   1 +
 .../i915/display/intel_display_power_well.c   |   4 +
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  14 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 273 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.h      |   8 +-
 12 files changed, 350 insertions(+), 30 deletions(-)

-- 
2.43.0

