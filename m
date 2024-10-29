Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2EF9B41CE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 06:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626E010E595;
	Tue, 29 Oct 2024 05:26:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="niDk/7q3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E528A10E595;
 Tue, 29 Oct 2024 05:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730179580; x=1761715580;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lsqTNSy5k10L4dhb+UfFv/rTIgIRm0FtXmdCP+THva4=;
 b=niDk/7q3sBCQwHRM/Z7BWkUc42hNW89h4AqT2XM05ZDCK7yy3J+t4SSn
 b7Rmw/XpLaTMVBH+LbyzVfx4zFoD/YYIMydBry+6+AdnbP3JyrHjJAPb2
 D3CuA1OA4VF5uWMkmCg9nRj7GZSwfLWi3sQzjqQoi3CAqkHZ4V0Yvnwpv
 mq+AydGc20HfRr10LCSqecGOh8b46oi02tmgnJty/f0dK9R9XvmmXqKjo
 saMos7wQ4OWLqMVh09iqqvroC6O1gdJ7l1vfncatTU9pIwa/GC/0X1kGm
 AgMcSXLQZMJnjivm+nGoc83LqFWdiZOpcVe7xUi6fnqkKNDxUd3DvUZef w==;
X-CSE-ConnectionGUID: GKQLelHjQxeZFt3nuFjSKA==
X-CSE-MsgGUID: +NZn8DlOSIKxcHuMtKz+AQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="30013417"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="30013417"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 22:26:19 -0700
X-CSE-ConnectionGUID: tyNsBLuyRzm/NGllwrr+EA==
X-CSE-MsgGUID: 7fXrVZagQbOJ20SS6O53cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86450118"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by fmviesa004.fm.intel.com with ESMTP; 28 Oct 2024 22:26:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Date: Tue, 29 Oct 2024 10:56:03 +0530
Message-Id: <20241029052603.215853-1-suraj.kandpal@intel.com>
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

Bspec: 69964
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 11 +++++++----
 drivers/gpu/drm/i915/i915_reg.h           |  1 +
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..7a32bfef8d87 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -31,7 +31,6 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-/* WA: 16022217614 */
 static void
 intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 				      struct intel_hdcp *hdcp)
@@ -43,14 +42,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 		return;
 
 	if (DISPLAY_VER(display) >= 14) {
-		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
-			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
-				     0, HDCP_LINE_REKEY_DISABLE);
+		if (DISPLAY_VER(display) >= 30)
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
+				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
 		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
 			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
 			intel_de_rmw(display,
 				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
 				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
+		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
+			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
+				     0, HDCP_LINE_REKEY_DISABLE);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 405f409e9761..184420011a88 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3816,6 +3816,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_PVSYNC		(1 << 17)
 #define  TRANS_DDI_PHSYNC		(1 << 16)
 #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
+#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
 #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
 #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
 #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
-- 
2.34.1

