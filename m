Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BBDC2A124
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADA610E358;
	Mon,  3 Nov 2025 05:30:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jq9QRDRt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BEA710E357;
 Mon,  3 Nov 2025 05:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147815; x=1793683815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xUnD0RqrLrRXgsYnV9KuNdBQ45RR9mddrwFS61Pp04Q=;
 b=jq9QRDRttqYG5LztH4xba1wCC/4EFzuHa9HpVfiF7PVBFC8CchY9OfHg
 Mkj5hXtT/hMA6+kr6XUSvFNYrZaYysN2ymaSkn98nmd84wF5DkscaAIwO
 z113nK+QBN3VonWleOdwgbP7ilRKAEFUhmZjGbfDviJ8d2zV5zm7nKFa4
 U78Zd+t8N+Ifh8X0QYQC7V7igOD1aa3j7fRKdFatiOMngwDYYQeZ54WgN
 nKfuhV30tPDe+geHvWupVkoqAudDOPMMntUPlC5H1k/HTlLa75KIUkb+S
 6GbzK38NmcHyFka/iYEYmnuxiX7w4DZAo9ac00D5nFi9ZNXT2YdKBXI7+ w==;
X-CSE-ConnectionGUID: QLCinZKzTeSmveMdPbh6Ig==
X-CSE-MsgGUID: EMAEgpgETQinG9YQgpHnFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143845"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143845"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:14 -0800
X-CSE-ConnectionGUID: eUVM5G7bTYuxD+kTFebQiw==
X-CSE-MsgGUID: 3ov9MYgSRdmrlMGN1//7lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925289"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:13 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 07/22] drm/i915/vrr: Add compute config for DC Balance params
Date: Mon,  3 Nov 2025 10:59:47 +0530
Message-ID: <20251103053002.3002695-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_vrr.c | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3c30c8d3e206..2948abc90c69 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -20,6 +20,14 @@
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
@@ -399,6 +407,24 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
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
 
 static int
-- 
2.48.1

