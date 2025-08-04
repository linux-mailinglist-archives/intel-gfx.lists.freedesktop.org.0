Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EB4B19B6D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 08:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC90610E329;
	Mon,  4 Aug 2025 06:16:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nXdqI5SJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA38110E329;
 Mon,  4 Aug 2025 06:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754288189; x=1785824189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kFO7miUsrm9ujFy1o+sUWnQTn2x9uQIkVpz78u+KMw0=;
 b=nXdqI5SJCzZtMf18kM3gZiVHiDMvM/iTr6fet8MY5+kZZnocvGZ7SJs7
 VQNk+uxJ2IJ7UkvzivPXTOq3/m0lEgYZeby2oBlMmdgIN5LxV2fJfIFFE
 +2m+1FKxNdtS+KGpYTTf3N7UNbIfcGuhIlCWec5V6dff3/wAtgozVDlFi
 Y1ICZPmDKohirtOSGhhkVnBn9oa5u5i5suGl6CR7cNnBe3n9BZnn93gWv
 LHu2Gkd836lDsDvTDr+mlka1KUQM/VwKnwpBQVv0JV6DQD7be0+MMTeTs
 oZucvGXtCPUXmbTGo8UX1HepWhgLHmDiLxl6nPC8o9KmdPlmR/H6X0JmE A==;
X-CSE-ConnectionGUID: Eqg4AJohR9yilqaX4tZqDA==
X-CSE-MsgGUID: lIeIRfoBQe+56IOaalnilg==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="74127044"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="74127044"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 23:16:29 -0700
X-CSE-ConnectionGUID: JDWbDzzLTUS1ZkHFPhsG+A==
X-CSE-MsgGUID: BeFhgUS7SCOvEP8O7noIzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163345451"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.38])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 23:16:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/4] drm/i915/psr: Add new define for PSR idle timeout
Date: Mon,  4 Aug 2025 09:16:13 +0300
Message-ID: <20250804061615.932508-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250804061615.932508-1-jouni.hogander@intel.com>
References: <20250804061615.932508-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c2ab00fe2c20..172bc0c39968 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2982,6 +2982,14 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
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
@@ -2995,7 +3003,8 @@ _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
 	 */
 	return intel_de_wait_for_clear(display,
 				       EDP_PSR2_STATUS(display, cpu_transcoder),
-				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
+				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP,
+				       PSR_IDLE_TIMEOUT_MS);
 }
 
 static int
@@ -3004,15 +3013,10 @@ _psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
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

