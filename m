Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D557A744B2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 08:47:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F63310E995;
	Fri, 28 Mar 2025 07:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cMR3LN3x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12F210E98C;
 Fri, 28 Mar 2025 07:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743148068; x=1774684068;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8EBbgjG1TKwHAm5Gp4cvu+0eElc93kG/iAgXTaK4vPg=;
 b=cMR3LN3xnCz+M1t+S6n7yKLp90VSh/WQdebeMTGhmRPA72XvHCa3D0N+
 cH48pwXSZ9s20SdZcbV4Tliu3lm/lTsjR4Ua6q/U0m4uof5fcu6g23z1g
 SnbbYMrplP6OcAtb4KA6jo4TB5WLoViOAjrd6ZTvow5jmE/4rnRca52Bo
 lqbvJA3OVYghbgdAeU+m+Ezj6ft9v4i+L3xCYbGUl9JQXLcaZjChs82NI
 bSa8L6JJU3g2DrP1wm7v4hz015By4mzM3q7r2citT5S2+0fMhOo1xcIeo
 7vRiO7/JLwjlr+xsDf1KS7yt9NRljjAdJjnd9pC84xF+jzz3KKaqNvvjo g==;
X-CSE-ConnectionGUID: 4/8SAR8bQF6APkl6zrPPhA==
X-CSE-MsgGUID: 0LeyhhnZRu+DG2DGpVJC+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55871130"
X-IronPort-AV: E=Sophos;i="6.14,282,1736841600"; d="scan'208";a="55871130"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 00:47:48 -0700
X-CSE-ConnectionGUID: YgP3HePFSBe0f7HXMPcnMw==
X-CSE-MsgGUID: /jXS7CX1RqOq2PSHvhZ4eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,282,1736841600"; d="scan'208";a="125603356"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.243])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 00:47:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2] drm/i915/psr: Add PSR pause/resume reference count
Date: Fri, 28 Mar 2025 09:47:15 +0200
Message-ID: <20250328074715.1169540-1-jouni.hogander@intel.com>
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

v2: Add drm_warn for detecting possible unbalanced pause/resume

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 26 +++++++++----------
 2 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7d9cc430a6b8b..367b53a9eae2a 100644
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
index 708fbcfa9089a..4a8bacdf97ae1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2025,7 +2025,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	intel_psr_enable_source(intel_dp, crtc_state);
 	intel_dp->psr.enabled = true;
-	intel_dp->psr.paused = false;
+	intel_dp->psr.pause_counter = 0;
 
 	/*
 	 * Link_ok is sticky and set here on PSR enable. We can assume link
@@ -2211,7 +2211,6 @@ void intel_psr_disable(struct intel_dp *intel_dp,
  */
 void intel_psr_pause(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 
 	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
@@ -2224,12 +2223,10 @@ void intel_psr_pause(struct intel_dp *intel_dp)
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
 
@@ -2252,13 +2249,14 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 
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
 
@@ -3323,7 +3321,7 @@ void intel_psr_flush(struct intel_display *display,
 		 * we have to ensure that the PSR is not activated until
 		 * intel_psr_resume() is called.
 		 */
-		if (intel_dp->psr.paused)
+		if (intel_dp->psr.pause_counter)
 			goto unlock;
 
 		if (origin == ORIGIN_FLIP ||
-- 
2.43.0

