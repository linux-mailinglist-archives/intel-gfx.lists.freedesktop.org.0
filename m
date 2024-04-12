Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E13E8A34E7
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81FF610E666;
	Fri, 12 Apr 2024 17:38:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LdWXhuoK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D9A10E00F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712943487; x=1744479487;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oz6nOndU7dLVLFp+DmOjiDouZzQTdIHn/KyRnxZ2qfM=;
 b=LdWXhuoKPhVYt94y128fW/dm1XaxAvH2Yxjiyre0zMlYzmiKcNNbTGAJ
 IDvE6HGW0acwateeMl1KqMX8tiCevfjKMzE+T/Olg7WKer49cdxgUCMms
 b+0Xy5+E8L6YwL8Edenbp2FABq3/1Hsf1rMJ6tmP8xmxbhEOHkQHoV9LP
 4M04z7JaR4e7ymyYpqS+q1XskEeZ48yzgRgkuzWb9unRQYrvRK3FsdHwz
 TYMNOquJ9E0CVcozkSXJWNUOBHZAld2Ef9IMxcM3OTMQSRU9g51cIoK/V
 3yT/cOlTp5Y6b29kGEZP4XpEz3ZcLIu/Fqi3RE8mpNwHt2igkIcfs5RKF g==;
X-CSE-ConnectionGUID: 5Xm3uNXMQY+QVDNPKvGvDQ==
X-CSE-MsgGUID: o/oKqBRCSkeo71xRrzGu8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8513851"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8513851"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:38:06 -0700
X-CSE-ConnectionGUID: hq0ODa7hRNq5B3FlKWIuOg==
X-CSE-MsgGUID: VU+s200iS/CsOBe315kFsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21366072"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 12 Apr 2024 10:38:06 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Define and compute Transcoder CMRR registers
Date: Fri, 12 Apr 2024 23:01:51 +0530
Message-Id: <20240412173153.722804-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add register definitions for Transcoder Fixed Average
Vtotal mode/CMRR function, with the necessary bitfields.
Compute these registers when CMRR is enabled, extending
Adaptive refresh rate capabilities.

--v2:
- Use intel_de_read64_2x32 in intel_vrr_get_config. [Jani]
- Fix indent and order based on register offset. [Jani]

--v3:
- Removing RFC tag.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 23 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  6 +++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 22 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++++
 4 files changed, 60 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a92b67adee9c..c4f212e8177b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1000,6 +1000,13 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
 }
 
+static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
+				const struct intel_crtc_state *new_crtc_state)
+{
+	return old_crtc_state->cmrr.cmrr_m != new_crtc_state->cmrr.cmrr_m ||
+		old_crtc_state->cmrr.cmrr_n != new_crtc_state->cmrr.cmrr_n;
+}
+
 static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 			 const struct intel_crtc_state *new_crtc_state)
 {
@@ -5067,6 +5074,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)
+
 #define PIPE_CONF_CHECK_BOOL(name) do { \
 	if (current_config->name != pipe_config->name) { \
 		BUILD_BUG_ON_MSG(!__same_type(current_config->name, bool), \
@@ -5431,10 +5448,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.guardband);
 		PIPE_CONF_CHECK_I(vrr.vsync_start);
 		PIPE_CONF_CHECK_I(vrr.vsync_end);
+		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
+		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
 	}
 
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
+#undef PIPE_CONF_CHECK_LLI
 #undef PIPE_CONF_CHECK_BOOL
 #undef PIPE_CONF_CHECK_P
 #undef PIPE_CONF_CHECK_FLAGS
@@ -6816,7 +6836,8 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		    intel_crtc_needs_fastset(new_crtc_state))
 			icl_set_pipe_chicken(new_crtc_state);
 
-		if (vrr_params_changed(old_crtc_state, new_crtc_state))
+		if (vrr_params_changed(old_crtc_state, new_crtc_state) ||
+		    cmrr_params_changed(old_crtc_state, new_crtc_state))
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0f4bd5710796..2db714f3efa4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1437,6 +1437,12 @@ struct intel_crtc_state {
 		u32 vsync_end, vsync_start;
 	} vrr;
 
+	/* Content Match Refresh Rate state */
+	struct {
+		bool enable;
+		u64 cmrr_n, cmrr_m;
+	} cmrr;
+
 	/* Stream Splitter for eDP MSO */
 	struct {
 		bool enable;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 894ee97b3e1b..831554ea46b2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -217,6 +217,19 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
+	if (crtc_state->cmrr.enable) {
+		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+			       VRR_CTL_CMRR_ENABLE | trans_vrr_ctl(crtc_state));
+		intel_de_write(dev_priv, TRANS_CMRR_M_HI(cpu_transcoder),
+			       upper_32_bits(crtc_state->cmrr.cmrr_m));
+		intel_de_write(dev_priv, TRANS_CMRR_M_LO(cpu_transcoder),
+			       lower_32_bits(crtc_state->cmrr.cmrr_m));
+		intel_de_write(dev_priv, TRANS_CMRR_N_HI(cpu_transcoder),
+			       upper_32_bits(crtc_state->cmrr.cmrr_n));
+		intel_de_write(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder),
+			       lower_32_bits(crtc_state->cmrr.cmrr_n));
+	}
+
 	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
@@ -296,6 +309,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 
+	if (crtc_state->cmrr.enable) {
+		crtc_state->cmrr.cmrr_n =
+			intel_de_read64_2x32(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder),
+					     TRANS_CMRR_N_HI(cpu_transcoder));
+		crtc_state->cmrr.cmrr_m =
+			intel_de_read64_2x32(dev_priv, TRANS_CMRR_M_LO(cpu_transcoder),
+					     TRANS_CMRR_M_HI(cpu_transcoder));
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 13)
 		crtc_state->vrr.guardband =
 			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3f34efcd7d6c..02a9c381c90b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2009,6 +2009,7 @@
 #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
 #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
 #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
+#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
 #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
 #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
 #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
@@ -2085,6 +2086,15 @@
 #define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(trans, _TRANS_VRR_STATUS2_A)
 #define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
 
+#define	_TRANS_CMRR_M_LO_A		0x604F0
+#define	TRANS_CMRR_M_LO(trans)		_MMIO_TRANS2(trans, _TRANS_CMRR_M_LO_A)
+#define	_TRANS_CMRR_M_HI_A		0x604F4
+#define	TRANS_CMRR_M_HI(trans)		_MMIO_TRANS2(trans, _TRANS_CMRR_M_HI_A)
+#define	_TRANS_CMRR_N_LO_A		0x604F8
+#define	TRANS_CMRR_N_LO(trans)		_MMIO_TRANS2(trans, _TRANS_CMRR_N_LO_A)
+#define	_TRANS_CMRR_N_HI_A		0x604FC
+#define	TRANS_CMRR_N_HI(trans)		_MMIO_TRANS2(trans, _TRANS_CMRR_N_HI_A)
+
 #define _TRANS_PUSH_A			0x60A70
 #define _TRANS_PUSH_B			0x61A70
 #define _TRANS_PUSH_C			0x62A70
-- 
2.25.1

