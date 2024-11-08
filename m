Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7855E9C175E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 09:00:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E69910E92B;
	Fri,  8 Nov 2024 08:00:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JyZQ2HHn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF48510E925
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 08:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731052811; x=1762588811;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ARdvEelyPHB6qlyqcTU4fiOIUfJZG81AMmp6dj28GMg=;
 b=JyZQ2HHnjrUZqo/Blp4x4b/worv8O1SZSAltIh8dJOzvZTNxAEigGqN4
 Cl+yLEO4URP0ORJX+89QQsg/zlOrbvqt2ibPqatSMgCwW13ULIvQmQduq
 FON/7BYXzbFDc52/msv0RRS7e3s6Uiwl8DlT75PRgg0Gox9e6aO1BzhCj
 3RgGAftuCCJwPHddmeXftTdbf9fDc4dH5OMAml05ryweECYM+e6ykp6yC
 aRZ/gm+t8lNiqqetEbAW7lXAwopsMI9uE5FYNvs03fbprFTfy9xyro9L4
 HkNQ8VZriXmEmikqN6vJtJ/XudXYndf6HBJION2P48PKom0iO6ASCFhRy Q==;
X-CSE-ConnectionGUID: iPgptbpxQ+SkgmF0lYgkMw==
X-CSE-MsgGUID: 6TyvnH2bTJGpzBKgmeM4PQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="42325881"
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="42325881"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 00:00:11 -0800
X-CSE-ConnectionGUID: nz/6l5YHRROqF7ijLgysdA==
X-CSE-MsgGUID: P5MmZW7/TCiVYBxluMqpoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="90261957"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa003.jf.intel.com with ESMTP; 08 Nov 2024 00:00:10 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>, Kulkarni@freedesktop.org,
	Vandita <vandita.kulkarni@intel.com>
Subject: [PATCH] drm/i915/display: Add WA_14018221282
Date: Fri,  8 Nov 2024 13:31:09 +0530
Message-Id: <20241108080109.3049672-1-nemesa.garg@intel.com>
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

It was observed that the first write to DKL DP Mode register
was not taking effect, hence rewrite this register.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 769bd1f26db2..16a1d18f3aa1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2104,6 +2104,16 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 	encoder->disable_clock(encoder);
 }
 
+static void
+tgl_wa_14018221282(struct drm_i915_private *dev_priv, enum tc_port tc_port,
+		   u32 ln0, u32 ln1)
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
@@ -2185,6 +2195,10 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
 		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
+		 /* WA_14018221282 */
+		if (DISPLAY_VER(dev_priv) == 12)
+			tgl_wa_14018221282(dev_priv, tc_port, ln0, ln1);
+
 	} else {
 		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
 		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
-- 
2.25.1

