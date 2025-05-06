Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D189AAAC894
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 366AC10E6B0;
	Tue,  6 May 2025 14:49:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="maWwlod3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B24010E360;
 Tue,  6 May 2025 14:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746542972; x=1778078972;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1g9x0/5i6hrvouJrVWf1d8ITrAx974pfrZMZRhQJkKI=;
 b=maWwlod3NARagQasKPVObZPCsPbVcYumGvRlJ8wUzxkO1GuLZuxdLTvt
 gp2s7sF6Vh+koU3xcMZXykxL/542T46Ws3ypoYhta/Xh2vtIn5XUW95mp
 h56skG0XvS6+a6GxMDcF6MMG1trRAoMDI6ShLzI5thM6bPwGSuT+NFIuD
 Jgbuxg0tvIcKY7tv26cYdEgANjAQFFNftp0/gsx4ietvh7ZHGX/FBrBzN
 oA2ToNVifFL9ijSO+zp3hUdJ+PemJQrkT/JM0M5lj7k17s/R1crksqe9+
 K22kQTxy41rToBbkP3+dlra0Jd1+ns4gAHPKEszRiNNQM0LoLr8fT0M7O w==;
X-CSE-ConnectionGUID: kTcqQQczQHuwodwBnOBDjA==
X-CSE-MsgGUID: rxELTlx6TRmQznEZiWcPJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="47476908"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="47476908"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:49:32 -0700
X-CSE-ConnectionGUID: jtIqSjqAQ+yamSCe1sTOuA==
X-CSE-MsgGUID: OvcDtZaFSkeLzlPiDVG09g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135519501"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:49:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/3] ALPM rework and fixes
Date: Tue,  6 May 2025 17:49:09 +0300
Message-ID: <20250506144912.1848606-1-jouni.hogander@intel.com>
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

3. ALPM sink disable is done in PSR code. This is not logical as it's
   enabled in ALPM code. There are two options to tackle this. Either
   move sink disable or remove it completely. This patch set is moving
   it to intel_alpm.c

Most critical fix in the set is 1. That can be merged separately and
review of rest of the patches can be continued. The fix is implemented
in patch 3/3.

v2:
  - continue using rmw when disabling ALPM
  - take into account disabled hw in old_crtc_state

Jouni Högander (3):
  drm/i915/alpm: Move disabling sink ALPM to intel_alpm.c
  drm/i915/alpm: Disable ALPM rework
  drm/i915/alpm: Stop writing ALPM registers when PSR is enabled

 drivers/gpu/drm/i915/display/intel_alpm.c    | 70 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     |  7 +-
 3 files changed, 36 insertions(+), 43 deletions(-)

-- 
2.43.0

