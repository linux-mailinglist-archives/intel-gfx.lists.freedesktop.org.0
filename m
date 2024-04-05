Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77933899BFA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A746D113B47;
	Fri,  5 Apr 2024 11:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UrIptS9w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09533113B49
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712317012; x=1743853012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QP+9TCCwLK7KWhsxEIdCj9G+a1mjF49j5eVWyB0cjdQ=;
 b=UrIptS9wSKm8cZiR6NK7vWJgZDbhYyZUcUxmGQvNFhoZVz/DVw+UZHcW
 QomvqZGVP0m1AzTHg6MCttLJQO/21KCZ51t7KSDoDsykwwqF79kH9UpJP
 bRzcmtULjiCP9Bim8adXy3J5j0GP2mRXDkB3UJ8ZgtNOKG7IXUsg2j/5D
 oIKsN29Feqk2QSxwnnzLGtj4h9pPjkK6HTPHUowYfyoZR9SxP0cEXOaT5
 uNgyMbVVNsA8YbIIUA9P3lwCK92gXElYldD4RpNf2QHRiZ5kTLvH0jVN0
 jasAY/0juaI0rbe7rmMpUbrCm4PrZSz/ZI5R9Fw2en2uy3asDmZuGFF2v Q==;
X-CSE-ConnectionGUID: jjJy2462SLmWJzU10z58cw==
X-CSE-MsgGUID: DTd0j7jFT1eTeiXWxKp5dg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="30116568"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="30116568"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:51 -0700
X-CSE-ConnectionGUID: LcRzpTFIStWE6NGJFWJazw==
X-CSE-MsgGUID: XX0FzbqLRc+5xXrA5+KRJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23858786"
Received: from ctiouajx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.82])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 8/8] drm/i915/psr: Panel replay has to be enabled before link
 training
Date: Fri,  5 Apr 2024 14:36:02 +0300
Message-Id: <20240405113602.992714-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113602.992714-1-jouni.hogander@intel.com>
References: <20240405113602.992714-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c      |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_psr.c     |  3 ---
 drivers/gpu/drm/i915/display/intel_psr.h     |  3 +++
 4 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a481c9218138..dc23312bc808 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5298,6 +5298,18 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
 
 	if (dev_priv->display.dpll.mgr)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8b67cd62f188..20f2d4d9d7b9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3386,6 +3386,14 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
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
index 4355fb02d8fd..4db6c19731e9 100644
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
index 2537dcb8765c..d483c85870e1 100644
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

