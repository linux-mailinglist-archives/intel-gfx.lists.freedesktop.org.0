Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CCD823FCC
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E42610E42A;
	Thu,  4 Jan 2024 10:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5301B10E42A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365368; x=1735901368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s6sWicXwHyP3c3u1DacrUa7A6yeRVt8XpMVTjgPJh1M=;
 b=MRbj07cgR1u7Mv8DmNsqSBK8tTdH267lQOqfnlwNnlaX+iu8FS3qlBB7
 8eTAJixlSB9uB0J4odx/7NmlfcYX1BY+cyxvMbudn33+nwrF3Tiwo5cte
 hLhWxyiW4HH/VmbDL2BvK4Smc6Cltb3WPwjqbUH4899ckAp4egl5eZLi2
 3VpU9l+9jvvb521SKki5+zXpv0njwTMojYyB4PakjPpl5M95cq07CLrYc
 w8LcaEPqwaVWcIRDBIqENp4sHeZFio42r+6cfB3amjOe8CqNGI6qcI5jZ
 M7Tjhfw3x22jzLZ22uM/SkgElMqezIbhpwACL+FfdDZ1T4+v8eyr2/sHw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928082"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928082"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863593"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863593"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:26 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/12] drm/i915/psr: Disable panel replay for now
Date: Thu,  4 Jan 2024 12:48:10 +0200
Message-Id: <20240104104821.1822988-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
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

Panel replay is not completely validated yet. Let's disable it for now.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h    | 15 ++++++++-------
 drivers/gpu/drm/i915/display/intel_psr.c          | 10 +++++++++-
 2 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b9b9d9f2bc0b..ec36f7c72dcd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1681,13 +1681,14 @@ struct intel_psr {
 	/* Mutex for PSR state of the transcoder */
 	struct mutex lock;
 
-#define I915_PSR_DEBUG_MODE_MASK	0x0f
-#define I915_PSR_DEBUG_DEFAULT		0x00
-#define I915_PSR_DEBUG_DISABLE		0x01
-#define I915_PSR_DEBUG_ENABLE		0x02
-#define I915_PSR_DEBUG_FORCE_PSR1	0x03
-#define I915_PSR_DEBUG_ENABLE_SEL_FETCH	0x4
-#define I915_PSR_DEBUG_IRQ		0x10
+#define I915_PSR_DEBUG_MODE_MASK		0x0f
+#define I915_PSR_DEBUG_DEFAULT			0x00
+#define I915_PSR_DEBUG_DISABLE			0x01
+#define I915_PSR_DEBUG_ENABLE			0x02
+#define I915_PSR_DEBUG_FORCE_PSR1		0x03
+#define I915_PSR_DEBUG_ENABLE_SEL_FETCH		0x4
+#define I915_PSR_DEBUG_IRQ			0x10
+#define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x20
 
 	u32 debug;
 	bool sink_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 494d08817d71..fc1b068755db 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -214,6 +214,11 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
+static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
+{
+	return !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
+}
+
 static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1366,7 +1371,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	if (CAN_PANEL_REPLAY(intel_dp))
-		crtc_state->has_panel_replay = true;
+		crtc_state->has_panel_replay = panel_replay_global_enabled(intel_dp);
 	else
 		crtc_state->has_psr = _psr_compute_config(intel_dp, crtc_state);
 
@@ -2780,6 +2785,9 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	else
 		intel_dp->psr.source_support = true;
 
+	/* Disable panel replay for now */
+	intel_dp->psr.debug |= I915_PSR_DEBUG_PANEL_REPLAY_DISABLE;
+
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
-- 
2.34.1

