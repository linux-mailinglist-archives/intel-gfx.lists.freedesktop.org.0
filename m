Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 250449BAE1F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 09:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD0D10E2A9;
	Mon,  4 Nov 2024 08:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z+c7+Zvb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 397CA10E292;
 Mon,  4 Nov 2024 08:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730709120; x=1762245120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pV+Xf3cqG7L0naDcy+Bb9XbHLF/xzPATAxdHJYRJhVs=;
 b=Z+c7+Zvbsoa2cqwxNNgTBhV84kL/oBtbewzHCjBtwu9hLLmj5Awg2bLN
 eFisvxTlStJ8Py27M6z6eZcIimNs8yC0l6Ka8yZhegSSK3129s9VXtxKG
 NorYTvkHKjMephr5MWXMYOe53gacH2pIYFUFiAYZgc0VZLWxszH1l0MBn
 vu+GK6hRuT8Ko4MhNyPQwTMSidN/0iULPuM3Cl7k9XvdYE3GmiB7aLsxI
 /8sb+hZjFpYCvSCoZFfzSB+ii5xIzdJkisrJew7uraNfK3ZKvNKs3dHKC
 6BzWs2FMTUk6OOGcAtAUyd4v0tlHDAHYW6DKdr1Uo3O0x68mmj5OuQ403 Q==;
X-CSE-ConnectionGUID: Vbfn19m3Sl2PBNbKXs0ojA==
X-CSE-MsgGUID: S6aqq6+eSKurC0uV1BRkaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40943001"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40943001"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 00:31:59 -0800
X-CSE-ConnectionGUID: Z6kx5ZYtS0qSrVp9kLWfkA==
X-CSE-MsgGUID: FKvZXAiVQ3a5DyzHRNZg1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="83256345"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 04 Nov 2024 00:31:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Date: Mon,  4 Nov 2024 14:01:42 +0530
Message-Id: <20241104083143.631760-1-suraj.kandpal@intel.com>
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

We need to disable HDCP Line Rekeying for Xe3 when we are using an HDMI
encoder. Also remove the Wa comment tag as this follows the bspec and
does not implement the wa.

v2: add additional definition instead of function, commit message typo
fix and update.
v3: restore lost conditional from v2.
v4: subject line and subject message updated, fix the if ladder order,
fix the bit definition order.
v5: Add the bspec link and remove the Wa comment tag
v6: Rebase over new changes

Bspec: 69964
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 7 +++++--
 drivers/gpu/drm/i915/i915_reg.h           | 1 +
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f6d42ec6949e..8bca532d1176 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -31,7 +31,6 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-/* WA: 16022217614 */
 static void
 intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 				      struct intel_hdcp *hdcp)
@@ -43,7 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 		return;
 
 	if (DISPLAY_VER(display) >= 14) {
-		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
+		if (DISPLAY_VER(display) >= 30)
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
+				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
+		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
 			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
 				     0, HDCP_LINE_REKEY_DISABLE);
 		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
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

