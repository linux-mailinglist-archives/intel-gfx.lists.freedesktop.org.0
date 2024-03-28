Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F1E890182
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 15:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4702510ED1A;
	Thu, 28 Mar 2024 14:19:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WWqzdRax";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46EA7112146
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 14:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711635585; x=1743171585;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W9RYyRZxfPBfsSLN/xxFOTpVgJLerngpnRuBUCU4qho=;
 b=WWqzdRax7d9OE+f4/jPIoeGplMp5T/iGGcFvH/MS/l+fMv9V5b0pU1qv
 CFJDHto5p9lmcEjhI0Z7WTLbatTdfijHOQOQyMggmeUyZBsY6k7cuK64y
 zcJHhpIqehB3WDvjEilr/T5226G+0+am/Ch2i91c4j7gViFpUgEbcyrdr
 eaYzz3oXax0UgFTIRhMkuhpVmY2UU4FqrGYe0gO0zlYhKjgqgS3ywBnMN
 T2G6hxt2Q/lH2D2sW5BjguzUvLfbvZVG9x4eYveTXSMjrGerKtx18AJrB
 nzurUiFQZ3ORfZcaZh73iL1ZNoREzWa3GhV1vA47XpFnSkE1kqC/xrIhB Q==;
X-CSE-ConnectionGUID: n7a6QWRbRWSTKni6tUvRmQ==
X-CSE-MsgGUID: 8jtVFCKxRA2S1sFKiFjSOw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="7390993"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="7390993"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 07:19:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="47851998"
Received: from comms.fi.intel.com (HELO jhogande-mobl1.fi.intel.com)
 ([10.237.72.67])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 07:19:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 0/5] ALPM AUX-Less
Date: Thu, 28 Mar 2024 16:19:23 +0200
Message-Id: <20240328141928.1311284-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

This patch set is implementing calculation of ALPM AUX-Less parameters
for Intel HW and writing them in case of AUX-Less is enabled. It is
also enabling ALPM AUX-Less for eDP Panel Replay. Current code is not
allowing Panel Replay on eDP. Patches for this are coming later.

This implementation is only for Panel Replay usage. LOBF (Link Off
Between Active Frames) usage needs more work.

v6:
  - rebase
v5:
  - mention AUX Less enable is only on source side in commit message
v4:
  - drop patch adding AUX LESS dpcd defines
  - re-use fast_wake_lines to store aux_less_wake_lines
  - add comment explaining why AUX less is enabled on eDP panel replay
    without any extra checks
v3:
  - use definitions instead of numbers for max values
  - do not use alpm_ctl as uninitialized variable
v2:
  - use variables instead of values directly
  - fix several max values
  - move converting port clock to Mhz into _lnl_compute_*
  - do not set AUX-Wake related bits for AUX-Less case
  - do not write ALPM configuration for DP2.0 Panel Replay or PSR1

Jouni Högander (5):
  drm/i915/psr: Add missing ALPM AUX-Less register definitions
  drm/i915/psr: Calculate aux less wake time
  drm/i915/psr: Silence period and lfps half cycle
  drm/i915/psr: Enable ALPM on source side for eDP Panel replay
  drm/i915/psr: Do not write ALPM configuration for PSR1 or DP2.0 Panel
    Replay

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 188 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  12 +-
 3 files changed, 193 insertions(+), 9 deletions(-)

-- 
2.34.1

