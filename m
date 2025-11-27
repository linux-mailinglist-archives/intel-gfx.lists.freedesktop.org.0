Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8F5C8D7A2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 502D910E7B9;
	Thu, 27 Nov 2025 09:16:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qsx9ENLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE36610E7BF;
 Thu, 27 Nov 2025 09:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234968; x=1795770968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JY5Kvmi59XWczghY8EmPGAH3XOtRrfrcCn6ynSkPhkU=;
 b=Qsx9ENLdvbXjg9ulYXt7nmc7YpHIEd/xf6Ko+ONwvlryMwqLdDyh730N
 kv7GLe9RQ70X/5SYXGBlr6KALXRpXCjy4KNA5z7EVWbpc2jqFlujqe/dm
 JznyGUaBd7FKBhBqvB9S2lusXWDBeLDlnxC0BGIxHq2ySMLRVZx6d1JZk
 6UdrkjiTr50EKSWfbVNdPuaIZ1PEFe8b1sBrLJeZ0OnUElmlJipwg74jm
 IEEtfCB/nqpyaT/Yv0Bn9uHH/GWtNN1uCQ2j241WJBWGd/DHj3/rt8/YN
 fe3tF7wTL+ciNNjpdKMg4bvr8YXYjWM8JBIdF/4bfZdJ+o3QE7xlST3Qb A==;
X-CSE-ConnectionGUID: J699+HLURKqVzm1bGvBXoA==
X-CSE-MsgGUID: WX5hFZZoRLWG++Z2xl8BDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642334"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642334"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:08 -0800
X-CSE-ConnectionGUID: MhsRO3qzR9esyGygLtDu6Q==
X-CSE-MsgGUID: ZLnHcNuIQEKL2fQwz7DXgg==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:16:07 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 07/17] drm/i915/vrr: Add compute config for DC Balance
 params
Date: Thu, 27 Nov 2025 14:46:04 +0530
Message-ID: <20251127091614.648791-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v4:
- Separate out conpute config to separate function.
- As all the valuse are being computed in scanlines, and slope
is still in usec, convert and store it to scanlines.

--v5:
- Update and add comments for slope calculation. (Ankit)
- Update early return conditions for dc balance compute. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 46 ++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 650077eb280f..45e632e8a981 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -6,6 +6,7 @@
 
 #include <drm/drm_print.h>
 
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -20,6 +21,14 @@
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
 
+/*
+ * Tunable parameters for DC Balance correction.
+ * These are captured based on experimentations.
+ */
+#define DCB_CORRECTION_SENSITIVITY	30
+#define DCB_CORRECTION_AGGRESSIVENESS	1000
+#define DCB_BLANK_TARGET		50
+
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
@@ -342,6 +351,41 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
 	return vmax;
 }
 
+static void
+intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
+{
+	int guardband_usec, adjustment_usec;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (!(HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.enable))
+		return;
+
+	crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
+	crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
+	crtc_state->vrr.dc_balance.max_increase =
+		crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+	crtc_state->vrr.dc_balance.max_decrease =
+		crtc_state->vrr.vmax - crtc_state->vrr.vmin;
+	crtc_state->vrr.dc_balance.guardband =
+		DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
+			     DCB_CORRECTION_SENSITIVITY, 100);
+	guardband_usec =
+		intel_scanlines_to_usecs(adjusted_mode,
+					 crtc_state->vrr.dc_balance.guardband);
+	/*
+	 *  The correction_aggressiveness/100 is the number of milliseconds to
+	 *  adjust by when the balance is at twice the guardband.
+	 *  guardband_slope = correction_aggressiveness / (guardband * 100)
+	 */
+	adjustment_usec = DCB_CORRECTION_AGGRESSIVENESS * 10;
+	crtc_state->vrr.dc_balance.slope =
+		DIV_ROUND_UP(adjustment_usec, guardband_usec);
+	crtc_state->vrr.dc_balance.vblank_target =
+		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
+			     DCB_BLANK_TARGET, 100);
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -399,6 +443,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
 	}
+
+	intel_vrr_dc_balance_compute_config(crtc_state);
 }
 
 static int
-- 
2.48.1

