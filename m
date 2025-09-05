Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C93B44F67
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 09:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7AF10EB38;
	Fri,  5 Sep 2025 07:27:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dejuQdqk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0BD10EB33;
 Fri,  5 Sep 2025 07:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757057246; x=1788593246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WIWkEfM+fkt8ZQ1zMd73cqvKK94AjkiT8qeJfqOteMc=;
 b=dejuQdqk/D8gYvKRgqKbH5Eye5j4rTuRBzCxyPGKXa7QDwuaUOQe5/U/
 QTH0TueUnvNbAzZvea2Xjk586lvfxlKpmj+DannHsthXthdTBFLCDXEuJ
 dIAYC9SCE+rQXKBWxYfCxGjliovSk+NAaKm/hlG1nqov7X1OzpKwxNuWF
 fK2ubEwK50vbw7buNwm5cZNyRih9TNOjUoYS/52ZfcD7pFmPNtOqzCXna
 vph9ZScNrR7+tKSFr+jpkHxQB+Wd9ztHSnaPjtGcTqyVODWMJMozqOZ8Z
 nUaSmJ2MRRlG4RTZZYhXAEOV9BCo03q2L5G80IR3V4esoxRQdnggDuQMe A==;
X-CSE-ConnectionGUID: fhCGATxwQTKfHhJkknwJCw==
X-CSE-MsgGUID: WDcizmnHQ6SUFmL1FM2rLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63047063"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="63047063"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:26 -0700
X-CSE-ConnectionGUID: Wha4IxsNTrypvoinfqCpzA==
X-CSE-MsgGUID: tvIFbNjtT0WnJiyPeaBM8w==
X-ExtLoop1: 1
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.5])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 2/4] drm/i915/psr: Add new define for PSR idle timeout
Date: Fri,  5 Sep 2025 10:27:06 +0300
Message-ID: <20250905072708.2659411-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250905072708.2659411-1-jouni.hogander@intel.com>
References: <20250905072708.2659411-1-jouni.hogander@intel.com>
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

Currently we are using value 50ms as timeout for waiting PSR to idle. Add
own define for this purpose.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6ab5c028845a..eae1eedbbb26 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2997,6 +2997,14 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 	}
 }
 
+/*
+ * From bspec: Panel Self Refresh (BDW+)
+ * Max. time for PSR to idle = Inverse of the refresh rate + 6 ms of
+ * exit training time + 1.5 ms of aux channel handshake. 50 ms is
+ * defensive enough to cover everything.
+ */
+#define PSR_IDLE_TIMEOUT_MS 50
+
 static int
 _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state)
 {
@@ -3010,7 +3018,8 @@ _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 	 */
 	return intel_de_wait_for_clear(display,
 				       EDP_PSR2_STATUS(display, cpu_transcoder),
-				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
+				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP,
+				       PSR_IDLE_TIMEOUT_MS);
 }
 
 static int
@@ -3019,15 +3028,10 @@ _psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 	struct intel_display *display = to_intel_display(new_crtc_state);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 
-	/*
-	 * From bspec: Panel Self Refresh (BDW+)
-	 * Max. time for PSR to idle = Inverse of the refresh rate + 6 ms of
-	 * exit training time + 1.5 ms of aux channel handshake. 50 ms is
-	 * defensive enough to cover everything.
-	 */
 	return intel_de_wait_for_clear(display,
 				       psr_status_reg(display, cpu_transcoder),
-				       EDP_PSR_STATUS_STATE_MASK, 50);
+				       EDP_PSR_STATUS_STATE_MASK,
+				       PSR_IDLE_TIMEOUT_MS);
 }
 
 /**
-- 
2.43.0

