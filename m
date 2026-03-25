Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APqlIxTCw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF24323877
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A4F10E6C7;
	Wed, 25 Mar 2026 11:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lm+kMjpU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D35E110E854;
 Wed, 25 Mar 2026 11:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436881; x=1805972881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YdcELE6cBsqBJWTqyxJ/bTDEfQcZmLvTYNZn/Jak2tg=;
 b=lm+kMjpU0SV7ItdbwRoY7Vvn+KqxyWajbrvoOPuNtCRVzBSK8ptll02N
 1A7NtvVZm5qWYUh0FbNer0/dh8bcS61rdGCxLUpJuzUN+tIVRJnWcFNMW
 TX0YgmMgg6XT22aZzLQGGXT8lIt69TGTitJ1U0mg8tT/Ku1c9VFfaYp9b
 lG5nFdN9mwGfZ3hUh38Q0gUqIilbPDPYo/iOuTVknMK4jYsC4CglSrFCI
 l7pDdEuvQnLNxt4G48IOpxbDySADwTogjly8TQKSduZDvIpSMLBudsG21
 W6M3U7olP8a4DDgC8XmkNTubktrQezBOjA47/ghzM3sgl+524Urka46TO Q==;
X-CSE-ConnectionGUID: ocVe24iiTA2LIShF65GwoQ==
X-CSE-MsgGUID: sNr+fEBmR/+FP6TbHWeChg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047501"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047501"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:01 -0700
X-CSE-ConnectionGUID: QKXEaD/lTFeCgjxaPvkNpQ==
X-CSE-MsgGUID: taYNIjkFThOaGsTYODY3CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798303"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:07:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 04/26] drm/i915/writeback: Add some preliminary writeback
 definitions
Date: Wed, 25 Mar 2026 16:37:22 +0530
Message-Id: <20260325110744.1096786-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 1DF24323877
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add some preliminary definitions like, output type and transcoder
related to the writeback functionality.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_acpi.c     |  1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  4 +++
 .../drm/i915/display/intel_display_device.c   | 29 +++++++++++++++++--
 .../drm/i915/display/intel_display_device.h   |  2 +-
 .../drm/i915/display/intel_display_limits.h   |  2 ++
 .../drm/i915/display/intel_display_power.c    |  4 +++
 .../drm/i915/display/intel_display_power.h    |  2 ++
 .../drm/i915/display/intel_display_types.h    |  1 +
 10 files changed, 44 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index e06f324027be..89b8d3b4f1f2 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -256,6 +256,7 @@ static u32 acpi_display_type(struct intel_connector *connector)
 		break;
 	case DRM_MODE_CONNECTOR_Unknown:
 	case DRM_MODE_CONNECTOR_VIRTUAL:
+	case DRM_MODE_CONNECTOR_WRITEBACK:
 		display_type = ACPI_DISPLAY_TYPE_OTHER;
 		break;
 	default:
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 234843b8f83a..4e9e880d2778 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -53,7 +53,6 @@ intel_dump_infoframe(struct intel_display *display,
 }
 
 #define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x
-
 static const char * const output_type_str[] = {
 	OUTPUT_TYPE(UNUSED),
 	OUTPUT_TYPE(ANALOG),
@@ -67,6 +66,7 @@ static const char * const output_type_str[] = {
 	OUTPUT_TYPE(DSI),
 	OUTPUT_TYPE(DDI),
 	OUTPUT_TYPE(DP_MST),
+	OUTPUT_TYPE(WRITEBACK),
 };
 
 #undef OUTPUT_TYPE
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 10b6c6fcb03f..d433ffaadd65 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3768,7 +3768,8 @@ static u8 hsw_panel_transcoders(struct intel_display *display)
 	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
 
 	if (DISPLAY_VER(display) >= 11)
-		panel_transcoder_mask |= BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
+		panel_transcoder_mask |= BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1) |
+				BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1);
 
 	return panel_transcoder_mask;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 552a59d19e0f..07d9f62e0866 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -66,6 +66,10 @@ static inline const char *transcoder_name(enum transcoder transcoder)
 		return "DSI A";
 	case TRANSCODER_DSI_C:
 		return "DSI C";
+	case TRANSCODER_WD_0:
+		return "WD 0";
+	case TRANSCODER_WD_1:
+		return "WD 1";
 	default:
 		return "<invalid>";
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index be55ef8ea617..129b1c561847 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -22,6 +22,7 @@
 #include "intel_display_wa.h"
 #include "intel_fbc.h"
 #include "intel_step.h"
+#include "intel_writeback_reg.h"
 
 __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
@@ -145,12 +146,16 @@ static const struct intel_display_device_info no_display = {};
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
 		[TRANSCODER_C] = PIPE_C_OFFSET, \
 		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
+		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
 	}, \
 	.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
 		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
 		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET, \
+		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
 	}
 
 #define CHV_PIPE_OFFSETS \
@@ -581,7 +586,8 @@ static const struct platform_desc hsw_desc = {
 		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 		.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
+		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),
 		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 	},
@@ -678,7 +684,8 @@ static const struct intel_display_device_info skl_display = {
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime_defaults.cpu_transcoder_mask =
 	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-	BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
+	BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
@@ -830,6 +837,7 @@ static const struct platform_desc cml_desc = {
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
+		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_0), \
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
 
 static const enum intel_step bxt_steppings[] = {
@@ -884,6 +892,8 @@ static const struct platform_desc glk_desc = {
 		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
 		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
+		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
 	}, \
 	.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
@@ -892,6 +902,8 @@ static const struct platform_desc glk_desc = {
 		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET, \
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
+		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
 	}, \
 	IVB_CURSOR_OFFSETS, \
 	ICL_COLORS, \
@@ -905,6 +917,7 @@ static const struct platform_desc glk_desc = {
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
+		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1), \
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
 static const u16 icl_port_f_ids[] = {
@@ -975,6 +988,8 @@ static const struct platform_desc ehl_desc = {
 		[TRANSCODER_D] = PIPE_D_OFFSET, \
 		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
+		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
 	}, \
 	.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
@@ -983,6 +998,8 @@ static const struct platform_desc ehl_desc = {
 		[TRANSCODER_D] = TRANSCODER_D_OFFSET, \
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
+		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
 	ICL_COLORS, \
@@ -997,6 +1014,7 @@ static const struct platform_desc ehl_desc = {
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
+		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1), \
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
 static const u16 tgl_uy_ids[] = {
@@ -1142,6 +1160,8 @@ static const struct platform_desc adl_s_desc = {
 		[TRANSCODER_D] = PIPE_D_OFFSET,					\
 		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
 		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
+		[TRANSCODER_WD_0] = PIPE_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = PIPE_WD1_OFFSET, \
 	},									\
 	.trans_offsets = {							\
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
@@ -1150,6 +1170,8 @@ static const struct platform_desc adl_s_desc = {
 		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
+		[TRANSCODER_WD_0] = TRANSCODER_WD0_OFFSET, \
+		[TRANSCODER_WD_1] = TRANSCODER_WD1_OFFSET, \
 	},									\
 	TGL_CURSOR_OFFSETS,							\
 										\
@@ -1169,7 +1191,8 @@ static const struct intel_display_device_info xe_lpd_display = {
 	.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1) |
+		BIT(TRANSCODER_WD_0) | BIT(TRANSCODER_WD_1),
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 1170ac346615..90aa629595db 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -292,7 +292,7 @@ struct intel_display_runtime_info {
 	u32 rawclk_freq;
 
 	u8 pipe_mask;
-	u8 cpu_transcoder_mask;
+	u16 cpu_transcoder_mask;
 	u16 port_mask;
 
 	u8 num_sprites[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
index 453f7b720815..a99e269b1aee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_limits.h
+++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
@@ -45,6 +45,8 @@ enum transcoder {
 	TRANSCODER_DSI_1,
 	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
 	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
+	TRANSCODER_WD_0,
+	TRANSCODER_WD_1,
 
 	I915_MAX_TRANSCODERS
 };
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ec96b141c74c..448f1c57439d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -79,6 +79,10 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "TRANSCODER_DSI_A";
 	case POWER_DOMAIN_TRANSCODER_DSI_C:
 		return "TRANSCODER_DSI_C";
+	case POWER_DOMAIN_TRANSCODER_WD_0:
+		return "TRANSCODER_WD_0";
+	case POWER_DOMAIN_TRANSCODER_WD_1:
+		return "TRANSCODER_WD_1";
 	case POWER_DOMAIN_TRANSCODER_VDSC_PW2:
 		return "TRANSCODER_VDSC_PW2";
 	case POWER_DOMAIN_PORT_DDI_LANES_A:
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index d616d5d09cbe..fc24d7153ef8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -42,6 +42,8 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_TRANSCODER_EDP,
 	POWER_DOMAIN_TRANSCODER_DSI_A,
 	POWER_DOMAIN_TRANSCODER_DSI_C,
+	POWER_DOMAIN_TRANSCODER_WD_0,
+	POWER_DOMAIN_TRANSCODER_WD_1,
 
 	/* VDSC/joining for eDP/DSI transcoder (ICL) or pipe A (TGL) */
 	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2496db1642a..a43625e30430 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -83,6 +83,7 @@ enum intel_output_type {
 	INTEL_OUTPUT_DSI = 9,
 	INTEL_OUTPUT_DDI = 10,
 	INTEL_OUTPUT_DP_MST = 11,
+	INTEL_OUTPUT_WRITEBACK = 12,
 };
 
 enum hdmi_force_audio {
-- 
2.34.1

