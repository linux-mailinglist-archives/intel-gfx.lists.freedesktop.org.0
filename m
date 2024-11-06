Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 753169BF46E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:41:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1582910E751;
	Wed,  6 Nov 2024 17:41:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nzL/VPAs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F11510E74F;
 Wed,  6 Nov 2024 17:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730914881; x=1762450881;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lVjW7WFUn4JY971PUxoKfkMfl1sPzns88AEkvgp+SdA=;
 b=nzL/VPAss44AYfdCaEsiMGbf60eXQur7QtcCIlKW2PZWik0EOUlkTuv/
 fS8ahmrs9otho91pJUlbDTEinLNvJLLZV+1BEebIs9JruGw5nenEbdFd7
 HnIEJPyuoq81GqQqP8Iwtc6//BQbhhPEyEjBLxGTWKjUR2F/5EIokM3CF
 HBQtIP3knLKwWN8vrJ/yxt3+Y6kKzTtq7/5c25lafrEqpqCCLJDKyY5wr
 cZ7G0LoV+c1BdjEDgWmDiriHn1xDLuUrLqs9VOsUUlFlaxJQ5sIoPYIRZ
 e2adYojK+160WyhXZGSvERr9dII+9GySI84pN+ymK2MXatBqIeozsIaKY g==;
X-CSE-ConnectionGUID: R/tVpWSuRzK0nY30bR9Y3w==
X-CSE-MsgGUID: lcO2lu/sTJyiPUZec9Yb1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30830776"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30830776"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:41:21 -0800
X-CSE-ConnectionGUID: yn4/fgD2S+OLIAJEf9a44g==
X-CSE-MsgGUID: ZV/bbTxcQlOi90KJZPlx9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89251766"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa004.fm.intel.com with ESMTP; 06 Nov 2024 09:41:19 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Date: Wed,  6 Nov 2024 23:10:42 +0530
Message-Id: <20241106174041.860223-1-suraj.kandpal@intel.com>
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

Bspec: 69964, 50493, 50054
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 36 +++++++++++++----------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 4e937fbba4d2..5ba30a8a4986 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -32,27 +32,31 @@
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
+	u32 rekey_bit;
 
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
+	intel_de_rmw(display, rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
 }
 
 static int intel_conn_to_vcpi(struct intel_atomic_state *state,
@@ -1049,6 +1053,8 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
 		return ret;
 	}
 
+	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, true);
+
 	/* Incase of authentication failures, HDCP spec expects reauth. */
 	for (i = 0; i < tries; i++) {
 		ret = intel_hdcp_auth(connector);
@@ -2062,7 +2068,7 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
 		    connector->base.base.id, connector->base.name,
 		    hdcp->content_type);
 
-	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
+	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, false);
 
 	ret = hdcp2_authenticate_and_encrypt(state, connector);
 	if (ret) {
-- 
2.34.1

