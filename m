Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADB88CE42F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 12:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAC310E8A0;
	Fri, 24 May 2024 10:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1lYnqUO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 001CD10E882
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 10:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716546617; x=1748082617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ssZ2vZkjKzfq4nqw4eAiACZ8SZwjtRY5ng2i4iZh1Wc=;
 b=G1lYnqUOpzhC6vX+sUdNcRRoLW7MUcu5DUAq5HVxy9Y+W9MgUXUZkWQ2
 Ibb1PT8Ju3M2RUtY/NQs3ryph1YfKDd+8t7ckooCduoYML5OAOqYf++fB
 EUDTXJr/J/Sc6+4Tg/E+cHH5JatbP1uJSwhvrzrhbUoE/N0ZYY1/cYriT
 kZQjKRG6p5veIc2iDb7AYC1i+Ns/pQnKppXQCS0i4MNUzXbye85put7ej
 tUZyajTy6Pk6N2cC0447VOUCdZqiTl6E0p9Q5MBvOc23BgQre2z8uiKS2
 yJ+bHCNbrITN6AeH8rgZEpeRazLKbTViAvzPMvIXDF6d1D8Ms0bDOXEf+ A==;
X-CSE-ConnectionGUID: ZQLwqNOcTEyTEbHKYylLkw==
X-CSE-MsgGUID: cSNi2toJQ5aKU64XPQi1BQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="15862709"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="15862709"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 03:30:17 -0700
X-CSE-ConnectionGUID: 1SGWHZt/SqiYaxoVWND+qw==
X-CSE-MsgGUID: Qg1ufYUNQWOkth+OPhwUzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71385645"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 24 May 2024 03:30:13 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v9 1/8] drm/i915: Define and compute Transcoder CMRR registers
Date: Fri, 24 May 2024 15:54:25 +0530
Message-Id: <20240524102432.2499104-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 23 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  6 +++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_vrr_reg.h          | 21 +++++++++++++++++
 4 files changed, 72 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/intel_vrr_reg.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1e8e2fd52cf6..803360fcb0cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1004,6 +1004,13 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
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
@@ -5054,6 +5061,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -5418,10 +5435,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -6810,7 +6830,8 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		    intel_crtc_needs_fastset(new_crtc_state))
 			icl_set_pipe_chicken(new_crtc_state);
 
-		if (vrr_params_changed(old_crtc_state, new_crtc_state))
+		if (vrr_params_changed(old_crtc_state, new_crtc_state) ||
+		    cmrr_params_changed(old_crtc_state, new_crtc_state))
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9678c2b157f6..ee0323422c7d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1401,6 +1401,12 @@ struct intel_crtc_state {
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
index 5f3657aa8313..b96a8b2e7083 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_vrr.h"
+#include "intel_vrr_reg.h"
 #include "intel_dp.h"
 
 bool intel_vrr_is_capable(struct intel_connector *connector)
@@ -218,6 +219,19 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
+	if (crtc_state->cmrr.enable) {
+		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
+			       VRR_CTL_CMRR_ENABLE | trans_vrr_ctl(crtc_state));
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
@@ -306,6 +320,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
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
diff --git a/drivers/gpu/drm/i915/intel_vrr_reg.h b/drivers/gpu/drm/i915/intel_vrr_reg.h
new file mode 100644
index 000000000000..e1273b4e1b9b
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_vrr_reg.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_VRR_REG_H__
+#define __INTEL_VRR_REG_H__
+
+#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
+
+#define	_TRANS_CMRR_M_LO_A                  0x604F0
+#define	_TRANS_CMRR_M_HI_A		            0x604F4
+#define	_TRANS_CMRR_N_LO_A		            0x604F8
+#define	_TRANS_CMRR_N_HI_A		            0x604FC
+#define	TRANS_CMRR_M_LO(dev_priv, trans)    _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_LO_A)
+#define	TRANS_CMRR_M_HI(dev_priv, trans)    _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_HI_A)
+#define	TRANS_CMRR_N_LO(dev_priv, trans)    _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_LO_A)
+#define	TRANS_CMRR_N_HI(dev_priv, trans)    _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_HI_A)
+
+#endif /* __INTEL_VRR_REGS__ */
+
-- 
2.25.1

