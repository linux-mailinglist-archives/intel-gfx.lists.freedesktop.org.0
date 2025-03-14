Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 893CAA60952
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 07:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E09810E96F;
	Fri, 14 Mar 2025 06:50:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RXZvY0RI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C67210E037;
 Fri, 14 Mar 2025 06:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741935033; x=1773471033;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OjI89Z4aKdUJdchKxZ09kmsZP3O0XHMHS58oX1fzpeg=;
 b=RXZvY0RIrfc9gd9Kf7YVMNjyUxtODF3hI+E54PYv2DYoPpeohnsAd8RN
 FjPxGXGUSQpF9fQ0HKEeFAkqoUFxihyn0JLXkEP4DiTkslPUAHJgGFi7X
 lSTOJuN4BOi5vAL1G8kZC2vFk75pG6wI8xv3AUsyKapxYAnSG/9d4CAAw
 e6qQkS2r4m/xnY/+Kz5b6x5TElZfaQdGxN6Fp63Xpt7gwhOFf85gTy86m
 OnGxHi2q3sXFcVfBWNfQAcpXJcQYCccL0fso6gnnQdUIe8sJfWo/wh4sI
 peNylX99xwxSc8NkrJGMC5uU1rUttkSVddVnKqvMQFtYseW7020cFMqbR Q==;
X-CSE-ConnectionGUID: QT70u79zRdu9rqJA3Js1fw==
X-CSE-MsgGUID: jqDqktcrTIqFeq8QTQ7YmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42323903"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="42323903"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 23:50:31 -0700
X-CSE-ConnectionGUID: 9EgzoN6ASqGHiCNliwtxQw==
X-CSE-MsgGUID: 4C2MzhtvSoS2Wp70D8g3Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126221946"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.27])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 23:50:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Date: Fri, 14 Mar 2025 08:50:15 +0200
Message-ID: <20250314065015.879143-1-jouni.hogander@intel.com>
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

We have now seen this:

<4> [2120.434153] i915 0000:00:02.0: [drm] drm_WARN_ON(psr->paused)
<4> [2120.434196] WARNING: CPU: 3 PID: 4430 at drivers/gpu/drm/i915/display/intel_psr.c:2227 intel_psr_pause+0x16e/0x180 [i915]

Comment for drm_WARN_ON(display->drm, psr->paused) in intel_psr_pause says:

"If we ever hit this, we will need to add refcount to pause/resume"

This patch is implementing PSR pause/resume refcount.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 26 +++++++++----------
 2 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 99a6fd2900b9c..65c808bba1c6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1620,7 +1620,7 @@ struct intel_psr {
 	bool sink_support;
 	bool source_support;
 	bool enabled;
-	bool paused;
+	int pause_counter;
 	enum pipe pipe;
 	enum transcoder transcoder;
 	bool active;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4e938bad808cc..4d4ecf7555b66 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2024,7 +2024,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	intel_psr_enable_source(intel_dp, crtc_state);
 	intel_dp->psr.enabled = true;
-	intel_dp->psr.paused = false;
+	intel_dp->psr.pause_counter = 0;
 
 	/*
 	 * Link_ok is sticky and set here on PSR enable. We can assume link
@@ -2210,7 +2210,6 @@ void intel_psr_disable(struct intel_dp *intel_dp,
  */
 void intel_psr_pause(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 
 	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
@@ -2223,12 +2222,10 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 		return;
 	}
 
-	/* If we ever hit this, we will need to add refcount to pause/resume */
-	drm_WARN_ON(display->drm, psr->paused);
-
-	intel_psr_exit(intel_dp);
-	intel_psr_wait_exit_locked(intel_dp);
-	psr->paused = true;
+	if (intel_dp->psr.pause_counter++ == 0) {
+		intel_psr_exit(intel_dp);
+		intel_psr_wait_exit_locked(intel_dp);
+	}
 
 	mutex_unlock(&psr->lock);
 
@@ -2251,13 +2248,14 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 
 	mutex_lock(&psr->lock);
 
-	if (!psr->paused)
-		goto unlock;
+	if (!psr->enabled) {
+		mutex_unlock(&psr->lock);
+		return;
+	}
 
-	psr->paused = false;
-	intel_psr_activate(intel_dp);
+	if (--intel_dp->psr.pause_counter == 0)
+		intel_psr_activate(intel_dp);
 
-unlock:
 	mutex_unlock(&psr->lock);
 }
 
@@ -3322,7 +3320,7 @@ void intel_psr_flush(struct intel_display *display,
 		 * we have to ensure that the PSR is not activated until
 		 * intel_psr_resume() is called.
 		 */
-		if (intel_dp->psr.paused)
+		if (intel_dp->psr.pause_counter)
 			goto unlock;
 
 		if (origin == ORIGIN_FLIP ||
-- 
2.43.0

