Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0C5C626EF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:44:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F8E10E18C;
	Mon, 17 Nov 2025 05:44:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="csECbP1a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4001B10E18C;
 Mon, 17 Nov 2025 05:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358284; x=1794894284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J4H/7yU853FroZ1hL/Cv5Sdrj4+HEIQEAae7sUN5A2g=;
 b=csECbP1aq4rDBPnLhoPowMHFIw1tuFWUGitv0Xm5sPHjxUdO7gOeaYXW
 vhGv9Ja7ERPUtqMVyzIP5cY0q1EE8TOz6JFSWQfHK9E9dmIjuWekv8SUY
 1wkecm+BFmqwt6dHos4ftiQkz7vqR01YqAEtnQjz6GoK4EJgtGbyBIJqX
 VAGQj9by49HM5L6W7MC0sAgZGb9TjN6LRn7KeC22SfHCAJQ3AQ89ZU/0I
 jNAYjjEsWgjidukqFS2dcFcGhmo0IFCEokop4yCt+yzhU3VEGLpu1k4Vu
 Jewltkrmh7KGmMtVW106DrsPbafnnx4RJq1YYbBM0PEOkZxdXx9U5GMt4 g==;
X-CSE-ConnectionGUID: JZK6CzMeRCKgdSl5Q5iuzQ==
X-CSE-MsgGUID: Ln402tzwSOmf4MA2E9zJFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446024"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446024"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:44 -0800
X-CSE-ConnectionGUID: 4u/QIAovRT+7eNXgHIq48A==
X-CSE-MsgGUID: JH8zOj0CS569BBxHwl8FJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016335"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:42 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 07/18] drm/i915/vrr: Add compute config for DC Balance
 params
Date: Mon, 17 Nov 2025 11:14:31 +0530
Message-ID: <20251117054442.4047665-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 38 ++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 650077eb280f..7cb484dd96df 100644
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
@@ -342,6 +351,33 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
 	return vmax;
 }
 
+static void
+intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
+{
+	int val;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (!crtc_state->vrr.dc_balance.enable)
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
+	val = DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
+			   crtc_state->vrr.dc_balance.guardband);
+	crtc_state->vrr.dc_balance.slope =
+		intel_usecs_to_scanlines(adjusted_mode, val);
+	crtc_state->vrr.dc_balance.vblank_target =
+		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
+			     DCB_BLANK_TARGET, 100);
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -399,6 +435,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
 	}
+
+	intel_vrr_dc_balance_compute_config(crtc_state);
 }
 
 static int
-- 
2.48.1

