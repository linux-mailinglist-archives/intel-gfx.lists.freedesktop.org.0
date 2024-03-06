Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E81B8734AA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 11:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8BE11303C;
	Wed,  6 Mar 2024 10:45:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/hmEHMK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E72112C7A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 10:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709721926; x=1741257926;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U/5OQzb+m/wFFKP8S1wjV+pfxqkHZMLW7U/rtxWbEYM=;
 b=G/hmEHMKyB47m0HicgyaA+odMhiZQeFu+kW/UN55afjMOk/bxN5hZ0vB
 9zfSe3BQRtzkNn62StxroI+IKF/JwEGyt/trwK2wp9XvUslKNH5Xc57Gw
 1K21wavsNOKpNMbeGqpzGybVGQ4TlSUB6HyHcbgpCnLAN5z/KQbjGqBnG
 tMZB/S3IU77i278rD2c3zm3Jm+6mb0C+QesUDNPlKvPnmG4Dij5LkPOHn
 LcDC/SioHMze5z7o7rKwGk6wPwB8Y22LHWXLIwODTrEuBYJ4t+dbwV8HL
 vQDgLlaFyZMdcTnbYLsD4Wg/bVxpfqNIqQtbo8l7/vSdYcriRmO1BuGNn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="26794715"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="26794715"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14206973"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:24 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/6] ALPM AUX-Less
Date: Wed,  6 Mar 2024 12:45:07 +0200
Message-Id: <20240306104513.2129442-1-jouni.hogander@intel.com>
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

v3:
  - use definitions instead of numbers for max values
  - do not use alpm_ctl as uninitialized variable
v2:
  - use variables instead of values directly
  - fix several max values
  - move converting port clock to Mhz into _lnl_compute_*
  - do not set AUX-Wake related bits for AUX-Less case
  - do not write ALPM configuration for DP2.0 Panel Replay or PSR1.

Jouni Högander (6):
  drm/display: Add missing aux less alpm wake related bits
  drm/i915/psr: Add missing ALPM AUX-Less register definitions
  drm/i915/psr: Calculate aux less wake time
  drm/i915/psr: Silence period and lfps half cycle
  drm/i915/psr: Enable ALPM for eDP Panel replay
  drm/i915/psr: Do not write ALPM configuration for PSR1 or DP2.0 Panel
    Replay

 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 183 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  12 +-
 include/drm/display/drm_dp.h                  |   5 +-
 4 files changed, 193 insertions(+), 10 deletions(-)

-- 
2.34.1

