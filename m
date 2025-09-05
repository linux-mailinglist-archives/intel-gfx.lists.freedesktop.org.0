Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C78B44F63
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 09:27:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFC010EB31;
	Fri,  5 Sep 2025 07:27:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nRdx+wHz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2CD810EB30;
 Fri,  5 Sep 2025 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757057243; x=1788593243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=soyoOc84tAMTVowkyQX/lc4lKLbHz7P44brndI5vjYM=;
 b=nRdx+wHzdA9k3v2HBEzNnxv7+vZq4Cp+vfIUTchy3nGFo2UeerBoJ+8i
 3jhy8td9XYdJ8QPosdgX0Gnl9q2BSgwUF16ttsHX7K0bITNytHARToCje
 XPbj2/EJmBy6XU9jn/8dMeNCLyBU8A3bPGmXNypF3njoiZk0sdmwYmwk3
 voH0HEEHS/oSjwj4nKwRiBme0SrKr5Fa/CjpGGtS3l6pCGF5Sy/GTV2OS
 146VE3PQukEy6WUdUgkmnIqU63xC1+SPD9EX0clSpDcK6WciinM6U/kq+
 FXFV0DU+7dXxL6cZXNRHQpN6agnjzC3DUIt42xaeSlI65+x5ALW7ADFlb w==;
X-CSE-ConnectionGUID: Y+aE2S5wSey+uQN06OOpyw==
X-CSE-MsgGUID: +1TzvSI3RiuLNNp3Hbt1jA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63047058"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="63047058"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:23 -0700
X-CSE-ConnectionGUID: HSDCdLfGTyy0U+LN8BQGZg==
X-CSE-MsgGUID: qMQy1dnmS/KwCOzbowQiSw==
X-ExtLoop1: 1
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.5])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/4] Wait PSR idle before on dsb commit
Date: Fri,  5 Sep 2025 10:27:04 +0300
Message-ID: <20250905072708.2659411-1-jouni.hogander@intel.com>
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

We are currently observing crc failures after we started using dsb for PSR
updates as well. This seems to happen because PSR HW is still sending
couple of updates using old framebuffers on wake-up.

On non-dsb commit we are waiting PSR HW to idle before starting a new
commit. Fix problems with dsb commit by adding similar wait on dsb
commit as well.

v3: add intel_dsb as a parameter to intel_psr_wait_for_idle_dsb
v2: add pass crtc_state->dsb_commit as parameter

Jouni Högander (4):
  drm/i915/psr: Pass intel_crtc_state instead of intel_dp in
    wait_for_idle
  drm/i915/psr: Add new define for PSR idle timeout
  drm/i915/psr: New interface adding PSR idle poll into dsb commit
  drm/i915/psr: Add poll for checking PSR is idle before starting update

 drivers/gpu/drm/i915/display/intel_display.c |  3 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 69 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_psr.h     |  2 +
 3 files changed, 58 insertions(+), 16 deletions(-)

-- 
2.43.0

