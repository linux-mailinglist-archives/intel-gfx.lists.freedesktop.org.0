Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ABB894F12
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4128B10FBD7;
	Tue,  2 Apr 2024 09:50:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m1syyXgY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCF7C10FBD7
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051440; x=1743587440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7zh2ht2USuxkHLBf+OhutyTKVGl0wMtN0vGvI8zY8ds=;
 b=m1syyXgYjjHv8l4Bi4+p2R+S4iHnl1Wrcl3WqoC0xvPDhQPJeXi7jxcS
 /dBA31w0fWvY8NT0hH8GIcV8p5TuMXuwOgj3I0oJDX34DaGAFo3VPHuS4
 x7Sg8jXNSUwsiN62Fx7oYgddxKcaKLL1OTuSXp0zGzDSRKznP83t5UlQ8
 rwO7rxu2xTrR6lgXYgneLwU6kyeh+ZdpklVj54y+iwNWtR5FCu4KMv/i9
 azBFhonFeXTg83X3PD+oFQ/UDSD5qYD1SrAsAu+JRIClBDyLSNJka/VRW
 iSY67fIwH0SJBv01N8FjpMuszFSfq9uUm4MRypHnAQYIvDDrWR1yjJE4p Q==;
X-CSE-ConnectionGUID: oxBOznbdRjGCTgzhTIW7fA==
X-CSE-MsgGUID: MWuAkIwaSvKH6Ti/J6ukZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422652"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422652"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693341"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 09/19] drm/i915/psr: Panel replay has to be enabled before
 link training
Date: Tue,  2 Apr 2024 12:50:01 +0300
Message-Id: <20240402095011.200558-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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
index 614e60420a29..233f602ea3da 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5254,6 +5254,18 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index b8976bb67510..a1c3be4a79af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3353,6 +3353,14 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
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

