Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E1BAB4B3B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD3410E0F5;
	Tue, 13 May 2025 05:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2kGfQSk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 626CA10E0F5;
 Tue, 13 May 2025 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747115319; x=1778651319;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LxHqmOFUwFxE9zt6sIgMPkvpBpmXGJEELGiX6ORe4z0=;
 b=j2kGfQSkPxav+6FXZmMkkj7Qc1EbKhVw30ilnKEQPc9JCPlFUilyZsqZ
 I7ZGZjN1pE6fg0DkmGH1QyrLFLKdgzDTmxPSMi8zI/grJhXVmj3etqjgk
 bn9Sijz78R6Cjp76a7cDXiem0ptMQkWLxkpIb5J+HS8RDEQIJTt5GcUIh
 CjvTVuVSPXHPP4QalZw/tRiaOSuGVxOHAB/JT0Z3geUMmjUgLZXh7/bey
 JfIxB9drPuG+S4P11yZTY8q9Wugf3yLUNGmGkIXtsdVvuhKD55wKth9bD
 j9mXPBs2LW267UE27W95p0/frZtnf+GL6/cLixh20OHoEkm9lZ3O66VuC g==;
X-CSE-ConnectionGUID: rzVBQMwzRLm2mBOvltjZFQ==
X-CSE-MsgGUID: HxRQdavXQOaWcskD8n0zBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60343596"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="60343596"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:48:34 -0700
X-CSE-ConnectionGUID: JmsQ7xA3RPKoiP71ob68cw==
X-CSE-MsgGUID: ZR0L0shLQpWEE7EhgTjplw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="138538567"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:48:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 0/2] ALPM rework and fixes
Date: Tue, 13 May 2025 08:48:12 +0300
Message-ID: <20250513054814.3702977-1-jouni.hogander@intel.com>
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

v4:
  - do not add kerneldoc comments
  - improve comment on intel_psr_panel_replay_enable_sink call
v3:
  - enable/disable ALPM from PSR code
v2:
  - continue using rmw when disabling ALPM
  - take into account disabled hw in old_crtc_state

Jouni Högander (2):
  drm/i915/alpm: Make intel_alpm_enable_sink available for PSR
  drm/i915/alpm: Stop writing ALPM registers when PSR is enabled

 drivers/gpu/drm/i915/display/intel_alpm.c |  8 ++++----
 drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c  | 13 ++++++++++---
 3 files changed, 16 insertions(+), 7 deletions(-)

-- 
2.43.0

