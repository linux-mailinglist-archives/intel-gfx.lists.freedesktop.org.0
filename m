Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 724359EE337
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 10:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F6D10ED1A;
	Thu, 12 Dec 2024 09:39:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1dbTrRc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A89E10ED19;
 Thu, 12 Dec 2024 09:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733996358; x=1765532358;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SOFLbujAchtfSZt8jlKqPYIyEx5RQUE+jbkCs1Q6g4U=;
 b=V1dbTrRcSCEEZ/7/oyge/fEUa7TwMFmKKK+dHVFm/a+aCx0bpEujbdkj
 ipNdtC9vE80nWK1Ca2c7VRD+vsG/8TasF28USJOmmm9/XRmp11IjLkovO
 Y6pdCUNn8oUDmIY+aywW5a+MOZOhHWEBWdbLhDs8Q9cMhP9Z2831Lq0A1
 sNVq7EgCCmHeLtWOm6kjVuYXvDvONsZ2ssG1dKgMcPHz8lHpSIqO7n0n3
 BMK43ClwF2UVeBE3xh0KpUfgjHjE3cb/ZdV5dyG76YAy3vFN7JhavoXTY
 iSTrxSDMl+aNnLL9o6luSZBY4Rna20ZccZIN8mpCkSi+ue9NAFwtVlMlu g==;
X-CSE-ConnectionGUID: G8718CjoRum6bHN+iAKHQQ==
X-CSE-MsgGUID: kFaBrhtTSaamXxYRQdf5Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="38189467"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="38189467"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 01:39:18 -0800
X-CSE-ConnectionGUID: 5guJTlqTSrKcccZNdzi61A==
X-CSE-MsgGUID: eraZzs+qRlqosyA5PlsmXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="96414461"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa008.fm.intel.com with ESMTP; 12 Dec 2024 01:39:16 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>, Kulkarni@freedesktop.org,
	Vandita <vandita.kulkarni@intel.com>
Subject: [PATCH] drm/i915/display: Add WA_14018221282
Date: Thu, 12 Dec 2024 15:10:43 +0530
Message-Id: <20241212094043.911853-1-nemesa.garg@intel.com>
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

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..85b7c30aa9e5 100644
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
+		if (DISPLAY_VER(display) == 12)
+			tgl_dkl_phy_check_and_rewrite(dev_priv, tc_port, ln0, ln1);
+
 	} else {
 		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
 		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
-- 
2.25.1

