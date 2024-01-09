Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B58A68283A6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 11:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB75410E36A;
	Tue,  9 Jan 2024 10:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C60C910E36A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 10:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704794732; x=1736330732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3eLvaupTJHcgElYUCE9F9oGP/9yWGh9ktKKKkusHQ1U=;
 b=XS1eeL1utC3s1QgV/DvR+4mbCrOmdy1jCAsdo1YfQHrDbkSyqJrlMrfS
 /V1O7Ofrx7BlfVrwve5ZRoMwwKSzRJjDkR2YWxkEcyPvgee574sEMXl/F
 Ve1DKXbP/LUJLk1dUIlzopDSIZrmDaJ2Y4diWiaqmv8XvZmQyLr5EvMJI
 f0NlKjepKSDvO6/e9qvo1wxVKCJ8RI1JXiZAcIx6IddxB7/OhJ2SlC9W5
 XcPfNVK9T4ldxzDhUsVhop8F9wTGzohXHICfM9AihQ+0qhCTAzSmz6bm3
 e4pPysrOgGH21WBuZQ7pg30L6Uz9H10uZbLNCRhX0DIb/xh1ZqSEXY30z g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="5517898"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; 
   d="scan'208";a="5517898"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 02:05:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="925194211"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="925194211"
Received: from ahuge-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.36.112])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 02:05:30 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/psr: CAN_PSR and CAN_PANEL_REPLAY can be now
 local defines
Date: Tue,  9 Jan 2024 12:05:17 +0200
Message-Id: <20240109100517.1947414-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240109100517.1947414-1-jouni.hogander@intel.com>
References: <20240109100517.1947414-1-jouni.hogander@intel.com>
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

CAN_PSR and CAN_PANEL_REPLAY are not used outside intel_psr.c anymore. Make
them as intel_psr.c local defines.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_psr.h | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 54120b45958b..34c0a5a14455 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -173,6 +173,12 @@
  * irrelevant for normal operation.
  */
 
+#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
+			   (intel_dp)->psr.source_support)
+
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)
+
 bool intel_encoder_can_psr(struct intel_encoder *encoder)
 {
 	if (intel_encoder_is_dp(encoder) || encoder->type == INTEL_OUTPUT_DP_MST)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 143e0595c097..cde781df84d5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -21,12 +21,6 @@ struct intel_encoder;
 struct intel_plane;
 struct intel_plane_state;
 
-#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
-			   (intel_dp)->psr.source_support)
-
-#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
-				    (intel_dp)->psr.source_panel_replay_support)
-
 bool intel_encoder_can_psr(struct intel_encoder *encoder);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
-- 
2.34.1

