Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A5E900579
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794C310EC5A;
	Fri,  7 Jun 2024 13:49:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mleIODjf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F5410EC5A
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768169; x=1749304169;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=587xth+deKW1Ur6/aww/ca8L5Fplp516MBEh9uUdnuo=;
 b=mleIODjfZwdE0pD/lSMVPJtLl/4VdPQPIG6/twv3AQS5CfxLh6Qk/G7h
 Jh7NIoHMQd3pHcYmhVdjgCwiuvkQv09W1vUZ8LdTPMo+swCLdhYAtWVyd
 TRKdnXT+Yuvi7/KrSpyR1FrCThqolMbpwtaxGenq9K32gTQC/b5NLSkJX
 Hft9UT1LUhOMr5M+mkk0G2C+UK86Rj65IKQua4RJmMUrj588uW+V2eri3
 OoLfhzczAAEHm9XVpu7APHqKojxEQl0IdL6mWDzDBCwTrxLnWF3lkva20
 HBjj4i2njGQCbT0aCbMw4kc2Smvb/dv/sR3yDaUD/Du3Eq9j970vCB5Ku A==;
X-CSE-ConnectionGUID: 61cwV8EBQ9SUhwdQPWVhiw==
X-CSE-MsgGUID: FAFL75jWRHCMHVVcQ2xNjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331629"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331629"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:29 -0700
X-CSE-ConnectionGUID: TwTHhbaVS+SGhXgURUCvTw==
X-CSE-MsgGUID: fTQad4bJSDW0RX7YDBoQeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43458895"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 00/13] Panel Replay eDP prepare
Date: Fri,  7 Jun 2024 16:49:04 +0300
Message-Id: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

This is a subset of "Panel Replay eDP" patch set. It contains various
preparations and fixes for enabling Panel Replay eDP. These are seen
as safe to merge next and not yet enabling Panel Replay eDP.

Jouni Högander (13):
  drm/i915/alpm: Do not use fast_wake_lines for aux less wake time
  drm/i915/alpm: Write also AUX Less Wake lines into ALPM_CTL
  drm/i915/display: Take panel replay into account in vsc sdp unpacking
  drm/i915/display: Skip Panel Replay on pipe comparison if no active
    planes
  drm/display: Add missing Panel Replay Enable SU Region ET bit
  drm/i915/psr: Split enabling sink for PSR and Panel Replay
  drm/i915/alpm: Share alpm support checks with PSR code
  drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
  drm/i915/psr: Print Panel Replay status instead of frame lock status
  drm/i915/psr: Move vblank length check to separate function
  drm/i915/psr: Take into account SU SDP scanline indication in vblank
    check
  drm/i915/psr: Check vblank against IO buffer wake time on Lunarlake
  drm/i915/psr: Wake time is aux less wake time for Panel Replay

 drivers/gpu/drm/i915/display/intel_alpm.c     |  11 +-
 drivers/gpu/drm/i915/display/intel_alpm.h     |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 161 +++++++++---------
 include/drm/display/drm_dp.h                  |   1 +
 7 files changed, 102 insertions(+), 83 deletions(-)

-- 
2.34.1

