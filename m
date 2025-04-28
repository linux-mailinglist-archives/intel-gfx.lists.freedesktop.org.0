Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBE3A9E81E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB8C10E38C;
	Mon, 28 Apr 2025 06:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AP8ccw33";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E2A10E394;
 Mon, 28 Apr 2025 06:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821393; x=1777357393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tViBvH7jgTyhJp6AFFk/C/Peau94wzhm8MFfC9X0to8=;
 b=AP8ccw33kyfLSUu5/IP2rw7EZ/+v+JmchEh/OA2T9smOPw1zVLfYV5C8
 5l3uUAbNA8XL0yok54KnriFMPPeWWlmLN+iX7HCeL4mO4ldJn8ImDblrN
 H6mNeEK795tgv66lwuvPGnnitlizcksMvQyiao0RBM050MxY90fFKBB2B
 Ox6eZ2Ee1g+LpNdw9retOb8VXyHbJCvO1r2mnozoKzIZx/0rDCkNeJe6/
 vuLoW70Y6PE7f1nnRiD23JkXWnKmtWI7qoThBfILDYjpQliLDE8wTD5+K
 CHr47Rzarsa2e3C62pAVdxu7jG6bpjlmz5EsqHslxcOeh/YjYkWGS28rY A==;
X-CSE-ConnectionGUID: OWvTb/qKQsSxBod0Jh3sMA==
X-CSE-MsgGUID: lApT9VO/TmC0TQ4jT0kP0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204188"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204188"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:12 -0700
X-CSE-ConnectionGUID: v9AE1rndQqWzFjI5LeVLdg==
X-CSE-MsgGUID: JizW+TdmRTmtkGq/XOHnLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231225"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:11 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 08/15] drm/i915/vrr: Add compute config for DC balance
 params
Date: Mon, 28 Apr 2025 11:50:51 +0530
Message-ID: <20250428062058.2811655-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute DC Balance parameters and tunable params based on
experiments.

--v2:
- Document tunable params. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 55923eadc3c1..bc99701be2b5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -16,6 +16,13 @@
 
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
+/*
+ * Tunable parameters for DC Balance correction.
+ * These are captured based on experimentations.
+ */
+#define DCB_CORRECTION_SENSITIVITY	30
+#define DCB_CORRECTION_AGGRESSIVENESS	1000
+#define DCB_BLANK_TARGET		50
 
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
@@ -409,6 +416,24 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_end);
 	}
+
+	if (HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.dc_balance.enable) {
+		crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
+		crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.max_increase =
+			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.max_decrease =
+			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.guardband =
+		DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax * DCB_CORRECTION_SENSITIVITY,
+			     100);
+		crtc_state->vrr.dc_balance.slope =
+			DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
+				     crtc_state->vrr.dc_balance.guardband);
+		crtc_state->vrr.dc_balance.vblank_target =
+		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) * DCB_BLANK_TARGET,
+			     100);
+	}
 }
 
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
-- 
2.48.1

