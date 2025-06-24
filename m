Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D80A7AE5E7D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780F010E500;
	Tue, 24 Jun 2025 07:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WJhqrG8A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27BCB10E505;
 Tue, 24 Jun 2025 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751485; x=1782287485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a4JeWnodU4p7XyUekkFQcM6Rv1VBU3r76AlJLq3fGrI=;
 b=WJhqrG8AY4FbKnYrXHA6A5axU2dEVKuqxwW2VrUXkmez8G5q7hfosFUf
 nNHslVXHVL3Bjw+FTrzOAPD3a+JWUgmoWier0eQe5S9nYBkoRacvwXBDm
 NXAhQxZffotEH/fojWozgoyAZTBjMp92GxZ0z0mxDjo89ejtItKiYQqRt
 4EX1+tvIa52YzI3VVY8+U2JkGqw53Ektj5ZYcOToooHzDX8Li8YYhGpN9
 75CNKcJwDM0hw3Yg2NTawVoqfzc59czT3H6z38edvMNWywiL1swntVhW3
 WaUld+XHQFpfSpnjpVzMf360CsMF8hWRtbULx//2/3M5NaHsVkDN1aWgB g==;
X-CSE-ConnectionGUID: UXrD53oiQYC/N4PGqoKpQQ==
X-CSE-MsgGUID: F3qcTX23St2NTh4XREhp+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398244"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398244"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:25 -0700
X-CSE-ConnectionGUID: xNDU8b9pQS606CJIoqE25g==
X-CSE-MsgGUID: Yjv62+NUTX2uAPRJVnlcbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446434"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:23 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 08/18] drm/i915/vrr: Add compute config for DC Balance
 params
Date: Tue, 24 Jun 2025 13:19:38 +0530
Message-ID: <20250624074948.671761-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 4016da70ece2..07cd7cb38b97 100644
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

