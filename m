Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1C29BFC89
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 03:28:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42CFC10E221;
	Thu,  7 Nov 2024 02:28:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OXdoN0Ce";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFAFC10E221;
 Thu,  7 Nov 2024 02:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730946522; x=1762482522;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1uOFb+NojURTxv7UA4uX4TfY2pIL6KqXwKQ0CszcU4U=;
 b=OXdoN0Ce3U63tq7EiENqurrMidykWEPozwHTMaRLQmWAIn7aHCBk0UUU
 P9qf9UyHFspdl5nXifnyYgybpeCYrACRLuy084FVwm+LVQtsZB+9SKzrA
 Jgj4yJw7eIcQ+qfHsQFIfl1LmSFRvXHOY6P2L0hOMS65oHK7ycx/RXE4R
 0/pMey7YRsXo1Wg2JkFCAEuOUxp5lxsmHkfRyjH1tko8d1us3RYj8c01n
 nj/kvN2UhZWXYI7Noj1s6lcgy7nssF7WZ7VMdBn8kgV89g17lL8nc2tuW
 Atkf7tsvqGN4x1VR0WWGrSX701S28iFAlNF/KfHLwnYSQYCZUPFlsUiT8 A==;
X-CSE-ConnectionGUID: DZWkEenlR5OAAlnc/KyY6Q==
X-CSE-MsgGUID: CxJZf1cLQ0aPdUKWOJbAnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30996923"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="30996923"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 18:28:41 -0800
X-CSE-ConnectionGUID: WAqWT6aiT4ikeW8WeHMt5Q==
X-CSE-MsgGUID: mGxOLLBBRHysvqLxs/pzhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84981406"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 06 Nov 2024 18:28:39 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Date: Thu,  7 Nov 2024 07:58:08 +0530
Message-Id: <20241107022807.869744-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

TRANS_DDI_FUNC_CTL asks us to disable hdcp line rekeying when not in
hdcp 2.2 and we are not using an hdmi transcoder and it need to be
enabled when we are using an HDMI transcoder to enable HDCP 1.4.
We use intel_de_rmw cycles to update TRANS_DDI_FUNC_CTL register so
we cannot depend on the value being 0 by default everytime which calls
for seprate handling of HDCP 1.4 case.

--v2
-Use the exising function and modify it based on a bool rather than
have a different function [Matt]

--v3
-No need for kzalloc [Jani]

--v4
-i915_reg_t should not be pointer [Jani]
-use rekey_bit to ensure when writing to reg everything is initialized

Bspec: 69964, 50493, 50054
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 37 ++++++++++++++---------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 4e937fbba4d2..dbcdd1777fa3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -32,27 +32,32 @@
 #define HDCP2_LC_RETRY_CNT			3
 
 static void
-intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
-				      struct intel_hdcp *hdcp)
+intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
+				     struct intel_hdcp *hdcp,
+				     bool enable)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	i915_reg_t rekey_reg;
+	u32 rekey_bit = 0;
 
 	/* Here we assume HDMI is in TMDS mode of operation */
 	if (encoder->type != INTEL_OUTPUT_HDMI)
 		return;
 
-	if (DISPLAY_VER(display) >= 30)
-		intel_de_rmw(display,
-			     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
-			     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
-	else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
-		 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
-		intel_de_rmw(display,
-			     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
-			     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
-	else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
-		intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
-			     0, HDCP_LINE_REKEY_DISABLE);
+	if (DISPLAY_VER(display) >= 30) {
+		rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
+		rekey_bit = XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
+	} else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
+		   IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER)) {
+		rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
+		rekey_bit = TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
+	} else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
+		rekey_reg = MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
+		rekey_bit = HDCP_LINE_REKEY_DISABLE;
+	}
+
+	if (rekey_bit)
+		intel_de_rmw(display, rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
 }
 
 static int intel_conn_to_vcpi(struct intel_atomic_state *state,
@@ -1049,6 +1054,8 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
 		return ret;
 	}
 
+	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, true);
+
 	/* Incase of authentication failures, HDCP spec expects reauth. */
 	for (i = 0; i < tries; i++) {
 		ret = intel_hdcp_auth(connector);
@@ -2062,7 +2069,7 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
 		    connector->base.base.id, connector->base.name,
 		    hdcp->content_type);
 
-	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
+	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, false);
 
 	ret = hdcp2_authenticate_and_encrypt(state, connector);
 	if (ret) {
-- 
2.34.1

