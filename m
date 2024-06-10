Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ACF901975
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 04:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D3D10E30B;
	Mon, 10 Jun 2024 02:58:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BmbUdzXv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB19610E307
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 02:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717988324; x=1749524324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nLcabX/d8mLMUbV7OsUTqNUo+gUG0CRY/sgGlF/gm2Y=;
 b=BmbUdzXvGEak1dVlR3UPMQ50HvQmqMIyEvGcjNlr09+bZYH77/n8YhYj
 Zyey/5+GeiIq4KZpP9KaU3I17FsJK0xgZphGCN14MPyFLWu76ai8SmgI6
 SyCrW8d/+rtoXXqghvd/YLqzUe78sJ+rDK7XJ8Ywye8YvI5JFeiIJu+v4
 CqgxkUpA+xGOG9zrCVbex6lzqhF8fSbzoeSU6OENTeiw9jZYmIjgCrUL3
 T/IFL1kapDMtGsSpByX1ZkWiWCw+0wE40mUBlc7IXFWN/OIEUuM3bYrb3
 LW0FcB/Umt7RQU/KuiKHqhflEQ9aYDovzB5rznT0Vl3H6ql5EzrNSD81x Q==;
X-CSE-ConnectionGUID: 7GOFmsSrSS+zjf4bazTb2w==
X-CSE-MsgGUID: kbKFuPCaToOlAr4q886mvQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14812990"
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="14812990"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 19:58:44 -0700
X-CSE-ConnectionGUID: WP9sLopoTwK8tzxNQNxKfQ==
X-CSE-MsgGUID: qBwqOGOZSLCdbd4SUdmq0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="38842888"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 09 Jun 2024 19:58:43 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v15 3/9] drm/i915: Define and compute Transcoder CMRR registers
Date: Mon, 10 Jun 2024 08:18:19 +0530
Message-Id: <20240610024825.823096-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v4:
- Update place holder for CMRR register definition. (Jani)

--v5:
- Add CMRR register definitions to a separate file intel_vrr_reg.h.

--v6:
- Fixed indentation. (Jani)
- Add dependency header intel_display_reg_defs.h. (Jani)
- Rename file name to intel_vrr_regs.h instead of reg.h (Jani)

--v7:
- Remove adding CMRR flag to vrr_ctl register during set_transcoder_timing,
as it is already being done during intel_vrr_enable. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 23 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  6 +++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 20 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 14 +++++++++++
 4 files changed, 62 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c608329dac42..33f5a3ef2e94 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1006,6 +1006,13 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
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
@@ -5078,6 +5085,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
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
@@ -5456,10 +5473,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -6848,7 +6868,8 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		    intel_crtc_needs_fastset(new_crtc_state))
 			icl_set_pipe_chicken(new_crtc_state);
 
-		if (vrr_params_changed(old_crtc_state, new_crtc_state))
+		if (vrr_params_changed(old_crtc_state, new_crtc_state) ||
+		    cmrr_params_changed(old_crtc_state, new_crtc_state))
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 83d6a3d901fd..098cabc15c7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1402,6 +1402,12 @@ struct intel_crtc_state {
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
index 871e6e6a184a..d2f854d9d18b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -219,6 +219,17 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
+	if (crtc_state->cmrr.enable) {
+		intel_de_write(dev_priv, TRANS_CMRR_M_HI(dev_priv, cpu_transcoder),
+			       upper_32_bits(crtc_state->cmrr.cmrr_m));
+		intel_de_write(dev_priv, TRANS_CMRR_M_LO(dev_priv, cpu_transcoder),
+			       lower_32_bits(crtc_state->cmrr.cmrr_m));
+		intel_de_write(dev_priv, TRANS_CMRR_N_HI(dev_priv, cpu_transcoder),
+			       upper_32_bits(crtc_state->cmrr.cmrr_n));
+		intel_de_write(dev_priv, TRANS_CMRR_N_LO(dev_priv, cpu_transcoder),
+			       lower_32_bits(crtc_state->cmrr.cmrr_n));
+	}
+
 	intel_de_write(dev_priv, TRANS_VRR_VMIN(dev_priv, cpu_transcoder),
 		       crtc_state->vrr.vmin - 1);
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(dev_priv, cpu_transcoder),
@@ -307,6 +318,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 
+	if (crtc_state->cmrr.enable) {
+		crtc_state->cmrr.cmrr_n =
+			intel_de_read64_2x32(dev_priv, TRANS_CMRR_N_LO(dev_priv, cpu_transcoder),
+					     TRANS_CMRR_N_HI(dev_priv, cpu_transcoder));
+		crtc_state->cmrr.cmrr_m =
+			intel_de_read64_2x32(dev_priv, TRANS_CMRR_M_LO(dev_priv, cpu_transcoder),
+					     TRANS_CMRR_M_HI(dev_priv, cpu_transcoder));
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 13)
 		crtc_state->vrr.guardband =
 			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index c3237d5c38df..20267ec12f5a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -108,4 +108,18 @@
 #define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
 #define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
 
+/*CMRR Registers*/
+
+#define _TRANS_CMRR_M_LO_A			0x604F0
+#define TRANS_CMRR_M_LO(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_LO_A)
+
+#define _TRANS_CMRR_M_HI_A			0x604F4
+#define TRANS_CMRR_M_HI(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_HI_A)
+
+#define _TRANS_CMRR_N_LO_A			0x604F8
+#define TRANS_CMRR_N_LO(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_LO_A)
+
+#define _TRANS_CMRR_N_HI_A			0x604FC
+#define TRANS_CMRR_N_HI(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_HI_A)
+
 #endif /* __INTEL_VRR_REGS__ */
-- 
2.25.1

