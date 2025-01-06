Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6EDA01E96
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 05:36:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4968E10E141;
	Mon,  6 Jan 2025 04:36:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XYdfwOiN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1045B10E57A;
 Mon,  6 Jan 2025 04:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736138190; x=1767674190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Voe9AwRtWkC8/R3zn01ajCbhVeIUanz7XzMhjQdRnQ0=;
 b=XYdfwOiNuA3sNpCb00JIbVTJAXY6gy+9PhMGXcIdeTNPRvAHwleV59hi
 P7logapUxpZjf6AZci0vnv1SuvrFC/vpxeLEAfqTnR8b+Y8fMQaV3Swia
 S7qnmjGH776/Kgc01Zjc+wTcTsbpGtdbyunhd9JIQFpzhiTzIrtW9ljLr
 oKvCxt1ej/9QZLwlpnvFv/qru/KSsfEhcCfTLg5QiLf3hSit7/Mebzoan
 A5X1E4KqEOKLrjFNcDijFdz6zNRwZC4umjeKBoi320vPKKJ76BwOjwaT1
 lpacnBSvaasnt9PyGb7qMxCVnntHFrlWgb186xs7i97ocThU7EcfXOfEK A==;
X-CSE-ConnectionGUID: 6YXjkYqkRNqfGEmebUsCOA==
X-CSE-MsgGUID: cfrSS0n9RUKEhG64cBbL0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="23880603"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="23880603"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 20:36:30 -0800
X-CSE-ConnectionGUID: c6yPn+qmR/CE1j07osdJgg==
X-CSE-MsgGUID: J+UHPtJxSUGmda+2Ocri3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107306389"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa004.jf.intel.com with ESMTP; 05 Jan 2025 20:36:27 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 5/6] drm/i915/lobf: Check for sink error and disable LOBF
Date: Mon,  6 Jan 2025 09:45:15 +0530
Message-Id: <20250106041516.924101-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250106041516.924101-1-animesh.manna@intel.com>
References: <20250106041516.924101-1-animesh.manna@intel.com>
MIME-Version: 1.0
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

Disable LOBF/ALPM for any erroneous condition from sink side.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 38 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h     |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
 4 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 1cc0e5ed3f74..ab98b48ec47e 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -388,6 +388,7 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state)
 {
 	lnl_alpm_configure(intel_dp, crtc_state);
+	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
 }
 
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
@@ -511,3 +512,40 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 	debugfs_create_file("i915_edp_lobf_info", 0444, root,
 			    connector, &i915_edp_lobf_info_fops);
 }
+
+void intel_alpm_short_pulse(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_dp_aux *aux = &intel_dp->aux;
+	enum transcoder cpu_transcoder = intel_dp->alpm_parameters.transcoder;
+	u8 val;
+	int r;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	if (!(intel_de_read(display, ALPM_CTL(display, cpu_transcoder)) & ALPM_CTL_LOBF_ENABLE))
+		return;
+
+	r = drm_dp_dpcd_readb(aux, DP_RECEIVER_ALPM_STATUS, &val);
+	if (r != 1) {
+		drm_err(display->drm, "Error reading ALPM status\n");
+		return;
+	}
+
+	if (val & DP_ALPM_LOCK_TIMEOUT_ERROR) {
+		intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
+			     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
+			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+		intel_de_rmw(display,
+			     PORT_ALPM_CTL(cpu_transcoder),
+			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+		drm_dbg_kms(display->drm,
+			    "ALPM lock timeout error, disabling LOBF\n");
+
+		/* Clearing error */
+		drm_dp_dpcd_writeb(aux, DP_RECEIVER_ALPM_STATUS, val);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 485e511629fb..96d4c903f3ea 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -29,4 +29,5 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
 bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
+void intel_alpm_short_pulse(struct intel_dp *intel_dp);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 37f061acb204..636af4c4e94d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1806,6 +1806,7 @@ struct intel_dp {
 #define I915_LOBF_DEBUG_DISABLE			0x01
 #define I915_LOBF_DEBUG_FORCE_EN		0x02
 		bool lobf_debug;
+		enum transcoder transcoder;
 	} alpm_parameters;
 
 	u8 alpm_dpcd;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d74adae2ec9..40f2760d8aaa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5363,6 +5363,8 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_psr_short_pulse(intel_dp);
 
+	intel_alpm_short_pulse(intel_dp);
+
 	if (intel_dp_test_short_pulse(intel_dp))
 		reprobe_needed = true;
 
-- 
2.29.0

