Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5319B1073
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 22:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2AD10EB8B;
	Fri, 25 Oct 2024 20:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wf+f5CKz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E77C510EB82;
 Fri, 25 Oct 2024 20:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729889268; x=1761425268;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=banRk39GGo6yIyWaS+h/uIlRgIWQ0E2ciKesjjJHtYc=;
 b=Wf+f5CKze8sDEEqh6HXCqtjyFJaYXBCCpWsIQ+oc4ALY3I0D41zGyYWH
 6ymfxyJBReCH1zlFbO4alcQyXbm64OfEM8R+gKkCvOqVPqqZ36vL5+oK1
 /o5qRY0MoXIK0mvvKPW/opbC5ZVTaYOviltRaxBrwDi/jV4s64LWJfYCW
 7P9kLqGfPBM7t3sHe8AExVnFauJb+ZDebhw4+aS3JBlZvfp8r4TfF+6S4
 HrparaMtJTx9a1NAhXsdVMSrnmrhS9DHl6/zsS4Np6t9Cm6Jk9hmuHA4+
 zlumO+7oZr9nWn8MJMtb4uByD5bLVe4rgeMd4DBNp5GDuaBkDrS3t90Kf Q==;
X-CSE-ConnectionGUID: sXzl61rTQXSnEVtAJhTFRA==
X-CSE-MsgGUID: V0ZcvhnRQhK79J6N1Q8Tqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="33484201"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="33484201"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:47 -0700
X-CSE-ConnectionGUID: j6N0eoJRRsycqrBGrnzEpw==
X-CSE-MsgGUID: h6/0NsQEQ/+VdgYVjWJ7Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81057184"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 02/11] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Date: Fri, 25 Oct 2024 13:47:34 -0700
Message-Id: <20241025204743.211510-3-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241025204743.211510-1-clinton.a.taylor@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

We need to disable HDCP Line Rekeying for Xe3 when we are using an HDMI
encoder. Also remove the Wa comment tag as this follows the bspec and
does not implement the wa.

v2: add additional definition instead of function, commit message typo
fix and update.
v3: restore lost conditional from v2.
v4: subject line and subject message updated, fix the if ladder order,
fix the bit definition order.
v5: Add the bspec link and remove the Wa comment tag

Bspec: 68933
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
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
index 89e4381f8baa..8d758947f301 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3817,6 +3817,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_PVSYNC		(1 << 17)
 #define  TRANS_DDI_PHSYNC		(1 << 16)
 #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
+#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
 #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
 #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
 #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
-- 
2.25.1

