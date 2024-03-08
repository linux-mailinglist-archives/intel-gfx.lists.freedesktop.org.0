Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DC9875E66
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 08:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0A0210EE0E;
	Fri,  8 Mar 2024 07:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nt1jP1Sr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2259B10F87C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 07:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709882644; x=1741418644;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YhvRMKqHIvGv9UeUWURQ8depMCGCTm1p25uaQkaTlyA=;
 b=Nt1jP1Sre+1kBiwmNfYyjQQkmINuwBuHBTJlDcYMWfvZRnxBCmdAmWX7
 cQRADmDTZAFj4vBDAEMjoapM+ZYvHcY3zYStZ/kvUehWIOLWWnoS6X+Fh
 hw6jUbUSGxS0eI4+Tf5i8KFOlj1QkqSBKdIDb4Uhg15V6xXpysJR9ugLw
 vnl1J9lhWdtYvFkyviT/5u57mWoUCseH4VukBzPaPLCWYp97P5H7qFKua
 uPx3/uTPvb+KH6eh5sLaQ5idoQhio5BDGvP/lkbFqAThqKZwIBozAhaXK
 t4HR9c91dcBKjc9Ufr/e6PibJbDXN7K+HWF3VyhYlL+/C5bx++ySg4ffV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="15312872"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="15312872"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 23:24:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827775071"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="827775071"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 23:24:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Mar 2024 09:24:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Rename ICL_PORT_TX_DW6 bits
Date: Fri,  8 Mar 2024 09:24:00 +0200
Message-ID: <20240308072400.28918-1-ville.syrjala@linux.intel.com>
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

Our definitions for bit 7 and bit 0 of ICL_PORT_TX_DW6 are
swapped. Functionally it doesn't matter as we always set both
bits, but let's rename the bits to match bspec 100%.

And while at it, add the definition for bits 1-6 as well, just
to have it all fully documented.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h     | 5 +++--
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
index 63601129b736..0964e392d02c 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
@@ -141,8 +141,9 @@
 #define ICL_PORT_TX_DW6_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(6, phy))
 #define ICL_PORT_TX_DW6_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(6, phy))
 #define ICL_PORT_TX_DW6_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(6, ln, phy))
-#define   ICL_AUX_ANAOVRD1_LDO_BYPASS		REG_BIT(7)
-#define   ICL_AUX_ANAOVRD1_ENABLE		REG_BIT(0)
+#define   O_FUNC_OVRD_EN			REG_BIT(7)
+#define   O_LDO_REF_SEL_CRI			REG_GENMASK(6, 1)
+#define   O_LDO_BYPASS_CRI			REG_BIT(0)
 
 #define ICL_PORT_TX_DW7_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
 #define ICL_PORT_TX_DW7_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 217f82f1da84..78005d12638c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -425,7 +425,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
 	    !intel_aux_ch_is_edp(dev_priv, ICL_AUX_PW_TO_CH(pw_idx)))
 		intel_de_rmw(dev_priv, ICL_PORT_TX_DW6_AUX(ICL_AUX_PW_TO_PHY(pw_idx)),
-			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
+			     0, O_FUNC_OVRD_EN | O_LDO_BYPASS_CRI);
 }
 
 static void
-- 
2.43.0

