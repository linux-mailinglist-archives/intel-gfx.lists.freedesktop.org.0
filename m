Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A73AA3205F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46AC10E26D;
	Wed, 12 Feb 2025 07:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ayvhPxT9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F13210E26D;
 Wed, 12 Feb 2025 07:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347072; x=1770883072;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lHCYn30JLwDHA1MD+UdnGCI3z/euireppkwUQnYcSGA=;
 b=ayvhPxT9atiyIqFnC1AwAMVNeZvsxZoON0FhbVtmfDfNb7wFL56sBAn4
 pOUuYHfTrGcWflzMWyt2DVj3q7QuXnG8CLkZgbpYYnR+6TpEQlt2mxlGt
 UvzXlDwELf4I8vmjkY8LMvD8+Ywrhl3FIUWw6/gi07sh5//83xaFG3nPp
 YFaBCXaxWxOvU8eXmI8nTm3XyVs9lrXG/oHJ5jFQxeeaEWmmCYpeCsDBC
 OMIVmVt5sFZkKjq5PD0WrOIC55bAa61R5W5pbu3g3r/gT99rcay1E7r2r
 0CGclR3bUt0uKfjdlnnqUcbxR9HOd5zWNlo4s1FtmmtOgXGTgUnouFCx1 Q==;
X-CSE-ConnectionGUID: 2sfZKlqBRFSZZxyDX92YXw==
X-CSE-MsgGUID: nc4tMxMIRAWAv4zuzkJkVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973624"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973624"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:57:52 -0800
X-CSE-ConnectionGUID: vlTkEIexQey/NTJLFyfRBw==
X-CSE-MsgGUID: qzOlk4I7SX2kav6rf7wrTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836852"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:57:50 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 00/13] PSR DSB support
Date: Wed, 12 Feb 2025 09:57:28 +0200
Message-ID: <20250212075742.995022-1-jouni.hogander@intel.com>
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
avoided by evading scanline 0.

v7:
  - Rename "drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling when
    DSB is in use" as "drm/i915/psr: Write PSR2_MAN_TRK_CTL on DSB
    commit" due to scope changes.
  - Warn on use_dsb in non-dsb pipe update functions
  - dsb as a first parameter in intel_psr_trigger_frame_change_event
v6:
  - add comment explaining why we are not setting DSB_SKIP_WAITS_EN
  - add separate function to generate the "Frame change"evant.
  - use intel_dsb_emit_wait_dsl
  - add evasion of scanline 0 also for Panel Replay
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
  drm/i915/psr: Write PSR2_MAN_TRK_CTL on DSB commit as well
  drm/i915/display: Warn on use_dsb in non-dsb pipe update functions
  drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
  drm/i915/display: Evade scanline 0 as well if PSR1 or PSR2 is enabled
  drm/i915/psr: Add function for triggering "Frame Change" event
  drm/i915/display: Ensure we have "Frame Change" event in DSB commit
  drm/i915/psr: Allow DSB usage when PSR is enabled

 drivers/gpu/drm/i915/display/intel_crtc.c     |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |  21 ++-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  27 +++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 141 +++++++++---------
 drivers/gpu/drm/i915/display/intel_psr.h      |   7 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  10 ++
 6 files changed, 136 insertions(+), 74 deletions(-)

-- 
2.43.0

