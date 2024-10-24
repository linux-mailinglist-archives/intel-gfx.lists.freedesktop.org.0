Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D1C9AF56D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7BE10E9B6;
	Thu, 24 Oct 2024 22:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VCJQtjAE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FAB10E3C7;
 Thu, 24 Oct 2024 22:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809095; x=1761345095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RYKSABVK/GQLYWJoQjIJ6q3cdUYDc1bvMsvqDXOtkdI=;
 b=VCJQtjAEA3OZ9rF7w5D3aXzI6YN0j9xgm081YBwQ1ATyjrPFP7ntiazE
 wSj40sURnqfNw+xoRx+6rX5nInNIV4yuSSEEV1sXnOTZq7FkJyWH4bDwJ
 lTVJWFIb1nQywnN6P247beHv4iKdpY9coXyeNkKJL7h+okXi8rE13yB8w
 8PI+w1mv0UxAba0qC+p4KmjsxfzeRVL8ctCzrKoQODnUIOcwG4fPG4Iqy
 X+c0tp8JANIfgGbT6kqPTOLQ/Lg1biWbFmXV7hEBqe2GC68jpQwhY5ucl
 /mnp5Uk/lkm8eIaRGj2hQ1xQYia12m0bNClTcmCB3RQyscyLi3r4GR5Rp w==;
X-CSE-ConnectionGUID: DGRp5RPSRlW1s3LFo6ASJg==
X-CSE-MsgGUID: deZxHnT7SpeVsQEx8yMiQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950801"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950801"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:19 -0700
X-CSE-ConnectionGUID: 8mVVj3ezSO+6/X2Rx+wudA==
X-CSE-MsgGUID: w2h9miBATOGgEC6XCOhd8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838664"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:18 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 02/11] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Date: Thu, 24 Oct 2024 15:31:05 -0700
Message-Id: <20241024223114.785209-3-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024223114.785209-1-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
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
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
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
2.25.1

