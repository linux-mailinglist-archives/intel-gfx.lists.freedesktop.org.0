Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC6B9A479B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41D510E98C;
	Fri, 18 Oct 2024 20:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gvtqy/cT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66EDF10E985;
 Fri, 18 Oct 2024 20:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729281798; x=1760817798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cXT4YCFT0KBs0fGuh3sOCap9yO/kakU6mS/50FG2lGQ=;
 b=gvtqy/cTlHCMTAeDM941sD10LWMTMnSaUcRYiptTLmYt9/rTsrf6r88U
 n+wXm2EhNO+C4/WwOlbiyPEL881D3fTQPeRpTYI21ib8XtBE2EJAqU0mj
 8ZMBLYkkvw3uz77GA+SsdZkDuhTexkzv/BzsvzCEMM/x93WG4nCkT5YOn
 eb3IPdODHhYyHTDMhuiFn5lkkwMGYNPKz3NrVXO5sHbd/byfyaeEtrnQx
 CUjhf82PACAdd74iHQCNya6Gilo9aWPRk6kx4G6zJLeEaD25tg4nwJT4K
 p12wjBBm5D2Qjg0h7ZTWEFhDklRFBVjLxkzoVdpHPLsuIjvjo3LJNgX6I A==;
X-CSE-ConnectionGUID: flapaGBgQ7ibNaDqG6ef2g==
X-CSE-MsgGUID: /0pyKBbAQJC08Mf8D6LimA==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28286789"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28286789"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:18 -0700
X-CSE-ConnectionGUID: jatyrCZQS8W1eskHBklMxA==
X-CSE-MsgGUID: pTXVEgi3QqyxS1+k35vMpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="102263861"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:18 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Date: Fri, 18 Oct 2024 13:03:07 -0700
Message-ID: <20241018200311.67324-4-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018200311.67324-1-matthew.s.atwood@intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
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
encoder.

v2: add additional definition instead of function, commit message typo
fix and update.
v3: restore lost conditional from v2.
v4: subject line and subject message updated, fix the if ladder order,
fix the bit definition order.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
 drivers/gpu/drm/i915/i915_reg.h           |  1 +
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..70dfc9d4d6ac 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -43,14 +43,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
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
2.45.0

