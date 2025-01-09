Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE61FA06F0F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:32:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F6610ED02;
	Thu,  9 Jan 2025 07:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GjaJN4d4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6747B10ECFD;
 Thu,  9 Jan 2025 07:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736407919; x=1767943919;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gG2Ug0JfyjcPoi0k4Km5HTsSFvOOt3YtB1K9efvmrmE=;
 b=GjaJN4d4+2xXEAIyJWyEvrUqqtHoqUyxmcyUFQW6ZDwVv95+FcIlkfBr
 k+DRDJ4GaDeL5Yx7zJK/cZ83PPAQ69K6lhd5CwS2bBCR7AjJ1UHE8WCdO
 4m9/bJ6kE4KaE1CGTNe3dl1QyGMBwE5+vws4u6/cvOMKkc15aDo2e9TlI
 K1WCjk6wc29BR+OutJ4poeVvGkn319a10goEy5kZIl9W7qSajmefRMzec
 lEdb2JCqOJJzUIHG6M5WeVG7XwfdEwfB8Ro75juhcxqxoNxFHZvzjCJ6q
 oro4wpDSZqu9D7QmeO1C5qzCktnDmm+fUsBEHFsVgEFBiEERiBwNvlhVu A==;
X-CSE-ConnectionGUID: f467s5bvS3ud4eEwOeICpg==
X-CSE-MsgGUID: sZtejByiQA+1pzY8+uS3xA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54200559"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="54200559"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:31:58 -0800
X-CSE-ConnectionGUID: nCXY08h5SyKV8ghJsgO9Lw==
X-CSE-MsgGUID: 0bULBNWiSROOnaZWTKr4jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="103297840"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:31:57 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 00/10] PSR DSB support
Date: Thu,  9 Jan 2025 09:31:27 +0200
Message-ID: <20250109073137.1977494-1-jouni.hogander@intel.com>
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

DSB_SKIP_WAITS_EN is kept set as otherwise DSB wait for scanline hangs
if it's entered when PSR2_STATUS[PSR2 State] == DEEP_SLEEP or
SRD_STATUS[SRD State] == SRDENT.

v3:
  - do not use DSB when PSR mode is changing
v2:
  - use _MMIO_TRANS instead of _MMIO_TRANS2
  - drop evasion from intel_psr_configure_full_frame_update

Jouni Högander (10):
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
  drm/i915/psr: Allow DSB usage when PSR is enabled

 drivers/gpu/drm/i915/display/intel_display.c  |  11 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 139 +++++++++---------
 drivers/gpu/drm/i915/display/intel_psr.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  10 ++
 4 files changed, 95 insertions(+), 71 deletions(-)

-- 
2.43.0

