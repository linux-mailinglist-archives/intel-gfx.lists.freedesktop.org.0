Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 716519BAE20
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 09:32:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C5110E292;
	Mon,  4 Nov 2024 08:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHegHmSc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB6E10E292;
 Mon,  4 Nov 2024 08:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730709121; x=1762245121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ys48comXqPN5JuK/W7NEtaDhZkjqOMopHBOBlOgecbA=;
 b=WHegHmScvK+WqeBlfF4YRBUzhZ9otgSCM5YgQFUxLHIfQV8OwXCPi7hY
 zOW7lWExzboJN17yXK+75V7shJJlJ3V1T4kFVhb3y1IbQu61hfwwVnaZL
 WDpxAvdv41SLyBDniNX4CoVq/o8FHY7cy2w1oZOBhlMaodSbRsH1THCDv
 hFeqHg+SouteCzscBl/+GnZGY+iMEnJclhm2m4Md7tlDiJQBncim6/qH2
 qodCuKo+qNOzzIleRZhraw/bUmazWlyVDbgNG5yIeuELlS+2mm1DBcIR7
 3Ie/VofZPAl4uNZ0GJJpEyUDZUppRUBTJSDtBx3SzKmBNDOD1AfbH9KIN w==;
X-CSE-ConnectionGUID: 9tF3AdZkTGaMh386+Ya3Ng==
X-CSE-MsgGUID: 3rFMFqIBTlGw14BavTUAaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40943012"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40943012"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 00:32:01 -0800
X-CSE-ConnectionGUID: 6Mia3+SbSX2cQY/Y6KKpZA==
X-CSE-MsgGUID: zY7yQ9PsQVmKQj4kLRyydQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="83256356"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 04 Nov 2024 00:31:59 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Date: Mon,  4 Nov 2024 14:01:43 +0530
Message-Id: <20241104083143.631760-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241104083143.631760-1-suraj.kandpal@intel.com>
References: <20241104083143.631760-1-suraj.kandpal@intel.com>
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

Bspec: 69964, 50493, 50054
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 28 +++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 8bca532d1176..54efba65ef5a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -31,6 +31,32 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
+static void
+intel_hdcp_enable_hdcp_line_rekeying(struct intel_encoder *encoder,
+				     struct intel_hdcp *hdcp)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	/* Here we assume HDMI is in TMDS mode of operation */
+	if (encoder->type != INTEL_OUTPUT_HDMI)
+		return;
+
+	if (DISPLAY_VER(display) >= 14) {
+		if (DISPLAY_VER(display) >= 30)
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
+				     XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 0);
+		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
+			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
+				     HDCP_LINE_REKEY_DISABLE, 0);
+		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
+			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
+				     TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 0);
+	}
+}
+
 static void
 intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 				      struct intel_hdcp *hdcp)
@@ -1051,6 +1077,8 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
 		return ret;
 	}
 
+	intel_hdcp_enable_hdcp_line_rekeying(connector->encoder, hdcp);
+
 	/* Incase of authentication failures, HDCP spec expects reauth. */
 	for (i = 0; i < tries; i++) {
 		ret = intel_hdcp_auth(connector);
-- 
2.34.1

