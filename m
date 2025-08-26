Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CF3B355F4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 09:45:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9957B10E5EE;
	Tue, 26 Aug 2025 07:45:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g6FhNipf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BEA10E5ED;
 Tue, 26 Aug 2025 07:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756194317; x=1787730317;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cqABxbE4dzkxkcJe+4r3yh+WBHZZR3/Hx6yTxjSlRGg=;
 b=g6FhNipflQorqF7aXBJQZCbse55eUofRMJ7C1AfSil1m61weWoYefHR7
 rFOyckYkifZxhD3kBwtXxQIFKOoD5ibg25Wt9MO4jbwkNUsQhwzvWS6HE
 GQXZou+bZPQCekypWAoXKifg2G1TEeyy1Eir20RkNgUGWJvpfGsn+2cMr
 Rqgc4ovP+iYLQug560lef40Xg14tAoVKo/6ccufwBfPU9zIpbGUGmjV87
 dWKRLEdDCj1zDT6gKE8gh3TOSwnt3VC7laQtKWJ2KKDr/VqroXcmtXZoa
 uz2MMi0qzggXHZgv9w+eER0bxItZrFwFEunq5GdMLI3YLvyFFj9pPzhZA A==;
X-CSE-ConnectionGUID: T5cU4TunRHiHqBOFHgR28w==
X-CSE-MsgGUID: zV/jiZhpTa6DzzB6pY4Jmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="58487101"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58487101"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 00:45:16 -0700
X-CSE-ConnectionGUID: teaYDxRNS9KlkqW8+TvDqQ==
X-CSE-MsgGUID: Tx2r7Au6R/yxEgFUSayM5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="173821097"
Received: from ettammin-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.197])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 00:45:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Check PSR pause counter in
 __psr_wait_for_idle_locked
Date: Tue, 26 Aug 2025 10:44:57 +0300
Message-ID: <20250826074457.1992524-1-jouni.hogander@intel.com>
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

PSR work is using __psr_wait_for_idle_locked to ensure PSR exit is
completed before continuing to PSR activation. __psr_wait_for_idle_locked
is unlocking PSR mutex which allows PSR disable/enable and PSR
pause/resume while PSR idle is being wait. PSR enable status is already
checked after locking again PSR mutex but PSR pause counter check is
missing. Due to this PSR work may continue to PSR activation even PSR is
paused.

Fix this by checking PSR pause counter in __psr_wait_for_idle_locked after
PSR mutex is locked again.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index eec4f7dc2d66..8b4cdf9b30db 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3092,7 +3092,7 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 
 	/* After the unlocked wait, verify that PSR is still wanted! */
 	mutex_lock(&intel_dp->psr.lock);
-	return err == 0 && intel_dp->psr.enabled;
+	return err == 0 && intel_dp->psr.enabled && !intel_dp->psr.pause_counter;
 }
 
 static int intel_psr_fastset_force(struct intel_display *display)
-- 
2.43.0

