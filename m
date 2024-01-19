Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6175832767
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E7010E0CC;
	Fri, 19 Jan 2024 10:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553DD10E9C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659064; x=1737195064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fxc51icCZOcSd1vOjVlWdU0nSGfZDRkjUBQSlOQ/KFQ=;
 b=en7RkS5OyAw/GzkGwjokJPasBi0IbgVW9L6F/1wMtFFbBxnIj9Hxf6pJ
 ImOq2uhQTMwvyzsFGSYUvieJik4GR+1++iF5B9IJGRNRnfzbDofqhGgjR
 NjkXUGBaEpIRPfl1gtYVd7JnOkEL0Q3VejQvHJa7QlH2+kvQMZAX3eEzu
 oxWu6o5kv3qle/wCnnqJ9nFSMkNnkZcDjkyeDmuf1w4Zt2Rdd/JydaraK
 sG6L5auwJEv9ExidOHnfP9XM1Atzq5FkQtVtkB0UDvgLWo0syOhb5ebGr
 ja+Z4rfMZKDkW95QvCjnx/wU9WgnLMKzd3GGHjCtt91WSxNHyJCjufuI2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070762"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070762"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563239"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 09/21] drm/i915/psr: Panel replay has to be enabled before
 link training
Date: Fri, 19 Jan 2024 12:10:12 +0200
Message-Id: <20240119101024.1060812-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

Panel replay has to be enabled on sink side before link training. Take this
into account in fastset check and in initial fastset check.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c      |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_psr.c     |  3 ---
 drivers/gpu/drm/i915/display/intel_psr.h     |  3 +++
 4 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a92e959c8ac7..b7e5b2774f2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5214,6 +5214,18 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_CSC(output_csc);
 	}
 
+	/*
+	 * Panel replay has to be enabled before link training. PSR doesn't have
+	 * this requirement -> check these only if using panel replay
+	 */
+	if (current_config->has_panel_replay || pipe_config->has_panel_replay) {
+		PIPE_CONF_CHECK_BOOL(has_psr);
+		PIPE_CONF_CHECK_BOOL(has_psr2);
+		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
+		PIPE_CONF_CHECK_BOOL(enable_psr2_su_region_et);
+		PIPE_CONF_CHECK_BOOL(has_panel_replay);
+	}
+
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
 	if (dev_priv->display.dpll.mgr) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e7cda3162ea2..11143fb9b0f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3326,6 +3326,14 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 		fastset = false;
 	}
 
+	if (CAN_PANEL_REPLAY(intel_dp)) {
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s] Forcing full modeset to compute panel replay state\n",
+			    encoder->base.base.id, encoder->base.name);
+		crtc_state->uapi.mode_changed = true;
+		fastset = false;
+	}
+
 	return fastset;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b905aee0ec81..24a80f47b84f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -192,9 +192,6 @@
 #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
 			   (intel_dp)->psr.source_support)
 
-#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
-				    (intel_dp)->psr.source_panel_replay_support)
-
 bool intel_encoder_can_psr(struct intel_encoder *encoder)
 {
 	if (intel_encoder_is_dp(encoder) || encoder->type == INTEL_OUTPUT_DP_MST)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index b74382b38f4a..e687d7bdbb1f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -21,6 +21,9 @@ struct intel_encoder;
 struct intel_plane;
 struct intel_plane_state;
 
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)
+
 bool intel_encoder_can_psr(struct intel_encoder *encoder);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_enable_sink(struct intel_dp *intel_dp,
-- 
2.34.1

