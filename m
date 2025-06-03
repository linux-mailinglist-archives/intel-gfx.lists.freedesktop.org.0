Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528F7ACCDA5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4AC210E632;
	Tue,  3 Jun 2025 19:37:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mxMkrodY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9BAF10E602;
 Tue,  3 Jun 2025 19:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979434; x=1780515434;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kx1WGH2/QLoAG+CJdbBNisharWR9WybQhNAbSxTFOQ4=;
 b=mxMkrodYB87DVxHDnMy/HitTT4D7V/RGLiWAPez9vXtGEDN+f8sSnqkv
 CLKCmoDF6tGYoKJJZQdPIMgR+FoWFkMglgEEK218Gs7s8yZ9AEeMCH3kc
 RkwUec9xL9K6mzo5q0HLZVhEnocpSXMLdgWXke5p68zHpJVtA8AqI+/in
 Yze/C0JfFwyfpCKPxw5UdwMHZXuE5NtZ9t+SP3vGNocAHoYA3rV/DPETO
 DJwcFNYZabRJHG9PjwIyanLgxiMkBibC1h1M5d7Cga/ESvAdn9pqwEgTp
 SwGhMBfaOxNrS5m5fJgX73whDcd2tskKq1vr84G6Wddmw72q7LZ4YALgG Q==;
X-CSE-ConnectionGUID: bsNtznQwRqKbv1UGfylM6Q==
X-CSE-MsgGUID: 8TRIRRtVT8+vNuqztUkB7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50276024"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50276024"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:37:14 -0700
X-CSE-ConnectionGUID: vdq9iq1aSamicXQA6YanNw==
X-CSE-MsgGUID: SSOiSNpJQu2JUkrEvzYhKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844785"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:37:12 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 08/17] drm/i915/vrr: Add compute config for DC Balance
 params
Date: Wed,  4 Jun 2025 01:05:13 +0530
Message-ID: <20250603193522.2567092-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v3:
- Add line spaces to compute config. (Ankit)
- Remove redundancy checks.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 84f1b358946c..eabfb169cb61 100644
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
+	if (crtc_state->vrr.dc_balance.enable) {
+		crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
+		crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.max_increase =
+			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.max_decrease =
+			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+		crtc_state->vrr.dc_balance.guardband =
+			DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
+				     DCB_CORRECTION_SENSITIVITY, 100);
+		crtc_state->vrr.dc_balance.slope =
+			DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
+				     crtc_state->vrr.dc_balance.guardband);
+		crtc_state->vrr.dc_balance.vblank_target =
+			DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
+				     DCB_BLANK_TARGET, 100);
+	}
 }
 
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
-- 
2.48.1

