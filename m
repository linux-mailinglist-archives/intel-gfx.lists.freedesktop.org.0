Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE1C9FC8DC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2024 07:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F4010E73C;
	Thu, 26 Dec 2024 06:11:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NYmpHRDW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A206110E73A;
 Thu, 26 Dec 2024 06:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735193479; x=1766729479;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c8EjWFz6dgP8VXOiQeV3u5k67ak6CN52MGJoIoUzKLU=;
 b=NYmpHRDWyLER7ywO/Fwq4GDhA2VhZfIKvvfH9854uOZvqtLmxgLu92fF
 x2JaHIJ1eP/0ClLaRP63qPxS0pg0iyBhWuaREXRDFevJkc9gMFGn8sBwT
 PhVynorzw/Wjd5PXHQR8okeNgqx7sfsxbczSQ/gjz0v6YA0NFO5LkAMZ0
 bUB9aACAmUHD5x8d/+3RuWvT7uDLG4XC7PbcU7KrwwA1ojG5F3WAkRP0k
 XmnwX43yBtXZQoBzbB7SuXD4qsgS49iTjJrq5JOnXAloLmhcgYG1+ioWF
 FQpRehdb56Ca5NDStN+Ihgw11X7bGwRYzh/OjQ5PPCBLaa6MtR3cXzyYQ Q==;
X-CSE-ConnectionGUID: B4SNYWtrQAeL+OlA+UjBAA==
X-CSE-MsgGUID: TcSAMDE0RiSdIBkz1suT9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="35500606"
X-IronPort-AV: E=Sophos;i="6.12,265,1728975600"; d="scan'208";a="35500606"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Dec 2024 22:11:19 -0800
X-CSE-ConnectionGUID: C3k+OvbUS3W4OTl6HoFB1g==
X-CSE-MsgGUID: 2Guc4H2cTTuyv8mpzYM98Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="104935388"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa003.jf.intel.com with ESMTP; 25 Dec 2024 22:11:17 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH] drm/i915/display: Add WA_14018221282
Date: Thu, 26 Dec 2024 11:36:32 +0530
Message-Id: <20241226060632.213790-1-nemesa.garg@intel.com>
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
v3: Rename function [Jani]
v4: Add check for display ver 13 [Matt]

Co-developed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..112a37a58be3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2099,10 +2099,21 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 	encoder->disable_clock(encoder);
 }
 
+static void
+tgl_dkl_phy_check_and_rewrite(struct drm_i915_private *dev_priv,
+			      enum tc_port tc_port, u32 ln0, u32 ln1)
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
@@ -2180,6 +2191,10 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
 		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
+		 /* WA_14018221282 */
+		if (IS_DISPLAY_VER(display, 12, 13))
+			tgl_dkl_phy_check_and_rewrite(dev_priv, tc_port, ln0, ln1);
+
 	} else {
 		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
 		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
-- 
2.25.1

