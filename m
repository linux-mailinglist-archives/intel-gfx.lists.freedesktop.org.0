Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E489A86D3DF
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 21:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F5510E5C3;
	Thu, 29 Feb 2024 20:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lx5Pd4lO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D9DE10E5B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 20:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709237041; x=1740773041;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9KLsemy7tGJ/4ta6XWnaCxp2eB8TjYurFq41coCplyg=;
 b=Lx5Pd4lO1Ge/C/KC/5Ap69ZqJD/WUWiw/OZGfEM2fJtpgHriIYHoQJFx
 I7GiOE2tv7ANsReVhPkfr0IrtgNjco846mVNunYZZjMphzeV3Evr+y5S9
 srWbOb7dcUIgJZSTsIkGcvbfcgB5NVQychWaWmu8/rmyn+fwQq+67BNRc
 iJwu4+AAOYycX4PQqzj3liceRyJKyY0TFBySi8mcEs4qv4TB6YB0IQHVU
 4M/D/TTSR+Q4jUFbgRFO83Cwv8A3VM/8wCqpXmtSwxhA1TkrJak91/3IM
 DDMZumd4qkp9F8F+C5HbXdp0+XS7X3zQ7+yagDzGg6M6x3+f7QQLPTZ9d Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14310413"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14310413"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 12:04:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="827771640"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="827771640"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 29 Feb 2024 12:03:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Feb 2024 22:03:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915: Rename ICL_AUX_ANAOVRD1 to ICL_PORT_TX_DW6_AUX
Date: Thu, 29 Feb 2024 22:03:54 +0200
Message-ID: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

ICL_AUX_ANAOVRD1 is actually ICL_PORT_TX_DW6_AUX. Give it its proper
name, and relocate to the correct file (intel_combo_phy_regs.h).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h     | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 ++++-
 drivers/gpu/drm/i915/i915_reg.h                         | 9 ---------
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
index b0983edccf3f..1d931557cd79 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
@@ -142,6 +142,12 @@
 #define   RTERM_SELECT(x)			((x) << 3)
 #define   RTERM_SELECT_MASK			(0x7 << 3)
 
+#define ICL_PORT_TX_DW6_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(6, phy))
+#define ICL_PORT_TX_DW6_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(6, phy))
+#define ICL_PORT_TX_DW6_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(6, ln, phy))
+#define   ICL_AUX_ANAOVRD1_LDO_BYPASS		(1 << 7)
+#define   ICL_AUX_ANAOVRD1_ENABLE		(1 << 0)
+
 #define ICL_PORT_TX_DW7_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
 #define ICL_PORT_TX_DW7_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
 #define ICL_PORT_TX_DW7_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(7, ln, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index c20e80aded35..a1edac6ce31f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -199,6 +199,9 @@ static void hsw_power_well_pre_disable(struct drm_i915_private *dev_priv,
 		gen8_irq_power_well_pre_disable(dev_priv, irq_pipe_mask);
 }
 
+#define ICL_AUX_PW_TO_PHY(pw_idx)	\
+	((pw_idx) - ICL_PW_CTL_IDX_AUX_A + PHY_A)
+
 #define ICL_AUX_PW_TO_CH(pw_idx)	\
 	((pw_idx) - ICL_PW_CTL_IDX_AUX_A + AUX_CH_A)
 
@@ -426,7 +429,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	/* Display WA #1178: icl */
 	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
 	    !intel_port_is_edp(dev_priv, (enum port)phy))
-		intel_de_rmw(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
+		intel_de_rmw(dev_priv, ICL_PORT_TX_DW6_AUX(ICL_AUX_PW_TO_PHY(pw_idx)),
 			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e00557e1a57f..74e943f21475 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5566,15 +5566,6 @@ enum skl_power_gate {
 	((pw_idx) - ICL_PW_CTL_IDX_PW_1 + SKL_PG1)
 #define  SKL_FUSE_PG_DIST_STATUS(pg)		(1 << (27 - (pg)))
 
-#define _ICL_AUX_REG_IDX(pw_idx)	((pw_idx) - ICL_PW_CTL_IDX_AUX_A)
-#define _ICL_AUX_ANAOVRD1_A		0x162398
-#define _ICL_AUX_ANAOVRD1_B		0x6C398
-#define ICL_AUX_ANAOVRD1(pw_idx)	_MMIO(_PICK(_ICL_AUX_REG_IDX(pw_idx), \
-						    _ICL_AUX_ANAOVRD1_A, \
-						    _ICL_AUX_ANAOVRD1_B))
-#define   ICL_AUX_ANAOVRD1_LDO_BYPASS	(1 << 7)
-#define   ICL_AUX_ANAOVRD1_ENABLE	(1 << 0)
-
 /* Per-pipe DDI Function Control */
 #define _TRANS_DDI_FUNC_CTL_A		0x60400
 #define _TRANS_DDI_FUNC_CTL_B		0x61400
-- 
2.43.0

