Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA2F9BBD83
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 19:51:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA76110E4B4;
	Mon,  4 Nov 2024 18:51:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bo93BGz4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48BBC10E3FB;
 Mon,  4 Nov 2024 18:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730746270; x=1762282270;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=us9R3TFtsbfOtHNbek/gx4T+rNf6Gv3YPOFiQvneXQk=;
 b=bo93BGz4q5A8Wm7MFnaHn06oevDcnEm5oWIpNhcHUiUFJNJb9KWK9zLF
 0c5YVdKCOjoLy9ir12Ucl9AQJ+nEt5mpnZv55Dp3Q4XL5caiXmvKEMIDl
 KffoGCzdx2E1BZ7rt+fYvXtZrgFW5yUSU4ZcAE7TbKoXkwjOYyKahuHbZ
 PFn6M8ibEbqX2a1ZwSZjzMlcdU7e/KHiL19NSG86ICQAfe0baOg+zAUDY
 zEkDSKTngcheqcGCL5tm6tcTHmjNyZXQrZLQO9sLH6udoQ3UenfXGszAI
 jlqJnXE4Ku98MGYWz6hxP2R7VMMTk13VlJBTexCmK39kWceeUS/Qv2EVj A==;
X-CSE-ConnectionGUID: UoYofio3RFKtygGPgExgkw==
X-CSE-MsgGUID: MQdP02ylQwOIQiWBdkyqxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="33300475"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="33300475"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 10:51:10 -0800
X-CSE-ConnectionGUID: kZmlqd/jSFKvUXUcFjCbbw==
X-CSE-MsgGUID: Pic2vIjHShC7NcyP5Zn0tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88256247"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 04 Nov 2024 10:51:09 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/xe3lpd: Update HDCP rekying bit
Date: Tue,  5 Nov 2024 00:20:55 +0530
Message-Id: <20241104185055.739605-1-suraj.kandpal@intel.com>
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

The TRANS_DDI_FUNC_CTL bit used to enable/disable HDCP rekeying
has moved from bit 12 (Xe2) to bit 15 (Xe3); update the RMW
toggle accordingly.
Also drop the misleading workaround comment tag on this function
since disabling of HDCP rekeying is something that happens on
all platforms, not just those impacted by that workaround.
While we're here, also re-order the if/else ladder to use
standard "newest platform first" order.

v2: add additional definition instead of function, commit message typo
fix and update.
v3: restore lost conditional from v2.
v4: subject line and subject message updated, fix the if ladder order,
fix the bit definition order.
v5: Add the bspec link and remove the Wa comment tag
v6: Rebase over new changes
v7: Fix commit subject and message, reladder the if/else blocks

Bspec: 69964
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 23 ++++++++++++-----------
 drivers/gpu/drm/i915/i915_reg.h           |  1 +
 2 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f6d42ec6949e..4e937fbba4d2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -31,7 +31,6 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-/* WA: 16022217614 */
 static void
 intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 				      struct intel_hdcp *hdcp)
@@ -42,16 +41,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 	if (encoder->type != INTEL_OUTPUT_HDMI)
 		return;
 
-	if (DISPLAY_VER(display) >= 14) {
-		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
-			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
-				     0, HDCP_LINE_REKEY_DISABLE);
-		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
-			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
-			intel_de_rmw(display,
-				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
-				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
-	}
+	if (DISPLAY_VER(display) >= 30)
+		intel_de_rmw(display,
+			     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
+			     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
+	else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
+		 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
+		intel_de_rmw(display,
+			     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
+			     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
+	else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
+		intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
+			     0, HDCP_LINE_REKEY_DISABLE);
 }
 
 static int intel_conn_to_vcpi(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 22be4a731d27..c160e087972a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3819,6 +3819,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_PVSYNC		(1 << 17)
 #define  TRANS_DDI_PHSYNC		(1 << 16)
 #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
+#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
 #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
 #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
 #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
-- 
2.34.1

