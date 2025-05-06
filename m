Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C9BAAB9A9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 09:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9F710E597;
	Tue,  6 May 2025 07:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l9uwXzm9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F7F210E562;
 Tue,  6 May 2025 07:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746514904; x=1778050904;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lo8vnSpRsw3dqC7InF1xNrAlLLd0EVPy58swFaam5ug=;
 b=l9uwXzm96MbVsq06zA8I50EwXMGWzJ8fF2qk8VPlSPHvyX0LEJO4buvv
 9fnELqEbTAR2TgkfFPxvUu06NbC3kN6SnoerJwKIzlRMBkHxbhpzKbjp3
 hQbRkSAKkotsKKZWpqoi8YpCOqMSyXtcQxn3J9ZkDCyeiTkQ9r+vBFZ7N
 wlKY8KaBB6dOUMJ2d/JLdf3I19UpuUe9nQyYNI2qvzGWW7mgAoiBH5rsR
 DneBbSDjw83AuL8KhPSPadFOmDstxdhontgEZYfcGfrFcUTi2vVZl5eQh
 ArJxYf91YWaankdn6kq2rtVxil0gyG81YvSS6J2RnqBVUTxCBdrr0+xMQ Q==;
X-CSE-ConnectionGUID: CdMyg1OLQ9a2203nvt6oAw==
X-CSE-MsgGUID: T7/qos5lTZuya8kYRCoA6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48067973"
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="48067973"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:11 -0700
X-CSE-ConnectionGUID: wre8lKyTSlaMvdzKVzNM/Q==
X-CSE-MsgGUID: zDEm5k7iQQCgyIciyr4vmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="140273054"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:07 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/4] ALPM rework and fixes
Date: Tue,  6 May 2025 10:00:25 +0300
Message-ID: <20250506070029.1326368-1-jouni.hogander@intel.com>
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
in patch 4/4.

Jouni Högander (4):
  drm/i915/alpm: Clear ALPM registers when disabling ALPM
  drm/i915/alpm: Move disabling sink ALPM to intel_alpm.c
  drm/i915/alpm: Disable ALPM rework
  drm/i915/alpm: Stop writing ALPM registers when PSR is enabled

 drivers/gpu/drm/i915/display/intel_alpm.c    | 64 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     |  7 +--
 3 files changed, 30 insertions(+), 43 deletions(-)

-- 
2.43.0

