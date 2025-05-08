Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C640FAAFCA9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 16:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D447B10E919;
	Thu,  8 May 2025 14:17:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naWomkEp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9598A10E914;
 Thu,  8 May 2025 14:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746713831; x=1778249831;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iYUPAutYGaDpUAhubWSk6gM0uPiKbA2l2KSMitnQWHs=;
 b=naWomkEpgwFQdaWTTxCBTncil7UtqM7j9O9YyZKF+CUNOXz9M2yssyCH
 SyqfaBCfiL9mBcRF60J5ExQMKVX46hFcjLRavZmD8vxmwijV0Myh+RZmD
 WKZGFf/gcS3FYlN9QEar+5LR0neUtV88UdCMvGo5zgup88kQRIP/EB2NR
 AUpZ8Yva6avnF9p807VwN9D6tIUqLobjz/n0syZkYR9sssIkVl13pq5Ho
 MRMKeU0iKgyY8S9mbEJ5CyIWqCbGKWn3OlN3mLUaQ4ck8LV1jwehqAbXD
 aagWEdi3NYHdQR1BaBgcyqnucwEr2DZiOmeb2ZyoJxA/0ZjoVySWzXQvq A==;
X-CSE-ConnectionGUID: +VF80Qn7QcGjVsmw+XdpXw==
X-CSE-MsgGUID: a6MxL0E2TzeKroCJAaoCWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48411124"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="48411124"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:17:11 -0700
X-CSE-ConnectionGUID: TWIkGBaHSeONSn3XGamTgg==
X-CSE-MsgGUID: JrLdHSaPTim0loApQqhzRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="159609571"
Received: from johunt-mobl9.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.124.222.197])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:17:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/2] ALPM rework and fixes
Date: Thu,  8 May 2025 17:16:59 +0300
Message-ID: <20250508141701.3878486-1-jouni.hogander@intel.com>
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

Currently there are couple of problems in ALPM implelementation:

1. ALPM registers are written while PSR/ Panel Replay is kept
   enabled. This is causing following error messages on PTL:
   
   "xe 0000:00:02.0: [drm] *ERROR* Timeout waiting for DDI BUF A to
   get active".

   This is fixed by enabling ALPM only once when needed.

2. ALPM is never disabled when used by PSR/Panel Replay. I.e. if PSR
   is once enabled ALPM is left enabled for good when PSR is
   disabled. This is fixed by using intel_alpm_disable and calling it
   for both cases: LOBF disable and PSR disable.

This patch set is addressing these.

v3:
  - enable/disable ALPM from PSR code
v2:
  - continue using rmw when disabling ALPM
  - take into account disabled hw in old_crtc_state

Jouni Högander (2):
  drm/i915/alpm: Make intel_alpm_enable_sink available for PSR
  drm/i915/alpm: Stop writing ALPM registers when PSR is enabled

 drivers/gpu/drm/i915/display/intel_alpm.c | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c  |  8 +++++++-
 3 files changed, 20 insertions(+), 5 deletions(-)

-- 
2.43.0

