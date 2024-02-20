Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D485BB7C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 13:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCE210E36A;
	Tue, 20 Feb 2024 12:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZ0wR7VW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE0710E229
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 12:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708431085; x=1739967085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=30QXVxwQrvDgqlSGztILcoUOtevqiA08ECyVTtNNTrQ=;
 b=kZ0wR7VWP45Xxy0+5QiHiPRrEf9twnnR+btCClT8OLyYgObfYamxufc8
 YvP5gcC3hyfDtJ5e+fxgFTOJpeC91L2Jaa2UbPiqdM0jLWAe7mYLeVM0I
 5M60a8Nxdo57uZV2EWiKtKOQs7szarYwhBlzUHfCARQ9z/L5WXfhKA0zA
 SZw+co5V6VZyUaHr1n4STQsSLWiqCKgKz4Data74tLC9hDZuuBxAx1kUA
 Y10FBli/vRywE82kLQnI01hG3eC9bnPPj2IbIO8NR5u2SNaHxXctIEBWU
 kGFlFU5jcdi2y47stP9czB2qEdAc4pwdCJ/oJSxX9IUmgZd8MIPoGEBao w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="24987085"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="24987085"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:11:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="9378109"
Received: from sbeleaga-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.43.237])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:10:58 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 0/6] ALPM AUX-Less
Date: Tue, 20 Feb 2024 14:10:39 +0200
Message-Id: <20240220121045.2156004-1-jouni.hogander@intel.com>
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

Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

v2:
  - use variables instead of values directly
  - fix several max values
  - move converting port clock to Mhz into _lnl_compute_*
  - do not set AUX-Wake related bits for AUX-Less case
  - do not write ALPM configuration for DP2.0 Panel Replay or PSR1.

Jouni Högander (6):
  drm/display: Add missing aux less alpm wake related bits
  drm/i915/psr: Calculate aux less wake time
  drm/i915/psr: Silence period and lfps half cycle
  drm/i915/psr: Add missing ALPM AUX-Less register definitions
  drm/i915/psr: Enable ALPM for eDP Panel replay
  drm/i915/psr: Do not write ALPM configuration for PSR1 or DP2.0 Panel
    Replay

 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 182 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  12 +-
 include/drm/display/drm_dp.h                  |   5 +-
 4 files changed, 192 insertions(+), 10 deletions(-)

-- 
2.34.1

