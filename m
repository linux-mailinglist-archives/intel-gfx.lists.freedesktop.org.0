Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5109C3966
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 09:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A897210E42D;
	Mon, 11 Nov 2024 08:07:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQg39tsv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC74A10E440
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 08:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731312442; x=1762848442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mwF50qZjKZ7cBXfpaE9rtlutgw76DG7vkgWjbPRwZM0=;
 b=gQg39tsvL9s497aSnXvt7tTwGDyR3lin6k0pnOWak8baAhfzpiAdYBjL
 LfwjA/PNd+wr435V5nmZPoayieGrswxRjKSVSGUlxJm9K5H5oItbe+IXN
 qDzbfBoSgULdG5u7H+Vwqm1OYlu7rEY4jdaaqFlkhrE315MXMF98YkCW+
 zYoSHTAaQBAVBEfz96hU2EhXyTEk7Q5bm99XsASW8dlJV6wnZab3iurQq
 VW/Bb1PdnapAMBPv0IPlNVWzT+vhgEczL4vnAoD3/Dk67JMUcBBTBLy9X
 WkHbZ4SGI+ekFcUPbmQ9dDRIctUpoNQBTv497Vx26VO7DUEqzv6c+gysT Q==;
X-CSE-ConnectionGUID: XCrUVEPUQhq+CMfgOWfaqw==
X-CSE-MsgGUID: tfRj0gfESaWPrufDLGSxxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30878235"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30878235"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 00:07:22 -0800
X-CSE-ConnectionGUID: 7sQxL2HyS4izraFV0VwPzA==
X-CSE-MsgGUID: ddGXH3wuRwieU7NpT8NGAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="117712925"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 11 Nov 2024 00:07:20 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>, Kulkarni@freedesktop.org,
	Vandita <vandita.kulkarni@intel.com>
Subject: [PATCH] drm/i915/display: Add WA_14018221282
Date: Mon, 11 Nov 2024 13:38:08 +0530
Message-Id: <20241111080808.3182188-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

It was observed that the first write to DKL PHY DP Mode
register was not taking effect, hence rewrite this register.

v2: Rename function [Mitul]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 769bd1f26db2..f955d89951b8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2104,10 +2104,21 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 	encoder->disable_clock(encoder);
 }
 
+static void
+tgl_is_dp_mode_enabled(struct drm_i915_private *dev_priv,
+		       enum tc_port tc_port, u32 ln0, u32 ln1)
+{
+	if (ln0 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0)))
+		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
+	if (ln1 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1)))
+		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
+}
+
 static void
 icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 		       const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 	u32 ln0, ln1, pin_assignment;
@@ -2185,6 +2196,10 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
 		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
+		 /* WA_14018221282 */
+		if (DISPLAY_VER(display) == 12)
+			tgl_is_dp_mode_enabled(dev_priv, tc_port, ln0, ln1);
+
 	} else {
 		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
 		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
-- 
2.25.1

