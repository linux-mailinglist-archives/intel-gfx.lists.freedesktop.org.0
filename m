Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AA6A1B4D7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF0610E83E;
	Fri, 24 Jan 2025 11:39:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KTFhy3N7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5802110E800;
 Fri, 24 Jan 2025 11:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718764; x=1769254764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LTgxiHbpQM4Uo4C57jn0H/Mrh77vHB800m0SkwPkL1c=;
 b=KTFhy3N7INRMGuByUZF2iYWoLxS3wy43X2uThWXBtIsBJ9SdiBuMcopA
 5JeuggJcxOvksWK+RYEdo2bd8anoGEu1jY2EPv8Jnv5KjUtxVPKDEOkJx
 ZwoJHP4iKVc2r69ABXi4OyDXFcYEnbMDMgwQ+E1TvSuOtPE0m+i6rVm95
 3rcp5xIPHt/uKRemGOZ78YG6tDyDXe0tDAE65J5VBsUpNuzna56vWEY6J
 BEvrB4Nige5TDciKUegtJLcyUM+aAtQnITugnLjJcpzvAh1ovdDfvw37Q
 rgoqcT/OhufuE0d72MheU6N7MrWbQ6rCswMYcT5dfWdeirNIYGTtaOOF9 Q==;
X-CSE-ConnectionGUID: f1uoHxxMSp+sTTl+a1gHaA==
X-CSE-MsgGUID: Eb7DT+QdTYuOPXlOkwsjNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237749"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237749"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:24 -0800
X-CSE-ConnectionGUID: 5tijEPTxRqGPBA3/2UvwCw==
X-CSE-MsgGUID: aIweB+WPRY+SyPTlbfUf4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757809"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:21 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 00/13] PSR DSB support
Date: Fri, 24 Jan 2025 13:38:53 +0200
Message-ID: <20250124113906.850488-1-jouni.hogander@intel.com>
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

This patch set is doing necessary modifications to support PSR update
using DSB on LunarLake onwards

It is not necessary to wait for PSR1 to idle or PSR2 to exit DEEP
sleep at the begin of commit This is left out from DSB commit. There
might be room for optimization for non-DSB as well because such wait
is not supposed to be necessary at the begin of update.

PSR mutex is not locked when performing DSB commit. It is not
necessary as we are currently using DSB only when sending updates
towards panel. I.e. not using it when changing PSR mode. Also
necessary changes are made to use PSR2_MAN_TRK_CTL only in
DSB. Frontbuffer updates and legacy cursor updates are using SFF_CTL
register to perform full frame updates.

DSB_SKIP_WAITS_EN is removed to ensure all waits are performed when
PSR is active. PSR "Frame Change" event is manually triggered at the
begin of each DSB commit by adding CURSURFLIVE register write.

Possibe problem with DSB commit when PSR is already waking up is
avoided by evadding scanline 0.

v5:
  - rebase
v4:
  - remove DSB_SKIP_WAITS_EN
  - Add CURSURFLIVE register write at the begin of DSB commit
  - evade scanline 0
v3:
  - do not use DSB when PSR mode is changing
v2:
  - use _MMIO_TRANS instead of _MMIO_TRANS2
  - drop evasion from intel_psr_configure_full_frame_update

Jouni Högander (13):
  drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to send full update
  drm/i915/psr: Rename psr_force_hw_tracking_exit as
    intel_psr_force_update
  drm/i915/psr: Split setting sff and cff bits away from
    intel_psr_force_update
  drm/i915/psr: Add register definitions for SFF_CTL and CFF_CTL
    registers
  drm/i915/psr: Use SFF_CTL on invalidate/flush for LunarLake onwards
  drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL using DSB
  drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling when DSB is in use
  drm/i915/psr: Add intel_psr_is_psr_mode_changing
  drm/i915/display: Don't use DSB if psr mode changing
  drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
  drm/i915/display: Evade scanline 0 as well if PSR1 or PSR2 is enabled
  drm/i915/display: Ensure we have "Frame Change" event in DSB commit
  drm/i915/psr: Allow DSB usage when PSR is enabled

 drivers/gpu/drm/i915/display/intel_display.c  |  20 ++-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  17 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 139 +++++++++---------
 drivers/gpu/drm/i915/display/intel_psr.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  10 ++
 5 files changed, 118 insertions(+), 74 deletions(-)

-- 
2.43.0

