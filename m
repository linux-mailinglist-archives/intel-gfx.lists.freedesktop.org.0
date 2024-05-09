Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 589098C0A2A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 05:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC7D210E073;
	Thu,  9 May 2024 03:32:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mbIsxLn8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6900A10E073
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 03:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715225578; x=1746761578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MdicJNX0PQIt/7WRK1XNo5Hrw+JNH9dw7KxxGaVeuNQ=;
 b=mbIsxLn8y53st2ZGnDxRvRqtMBx8uyI3ylIPY049ERguWagq3OfadePH
 /fTWFlewiBUtXTRIit3SSjBn/YezYd14Xgo+XTl28g8bQvk4WNnoQRPB1
 Y8sREGiuX9S2TaENH3BrBMbLCqY1I/o65MboCd1QrAo5OmxJRbEO5cAib
 w7mAjC4GQ4d8zLicogmoxWfPvhZn0gqJyJwly8yIAJeXSun/PcZuaWelk
 rB8ja5vhFNRF2D6jhSziT3dXHEZ7wPtPlKSA6Gv7qKX9KIRzUczF0JvGP
 MuwgmFmfTYPTZMM29OUfR5WDsvw6BjjPyDOb+UzqPtmCLOJly/yRiAtfj w==;
X-CSE-ConnectionGUID: fvhDoaVTQQGIvEKIDLD3aA==
X-CSE-MsgGUID: H8IGA/I9T6SuSmjtkilhhw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="10973440"
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="10973440"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 20:32:57 -0700
X-CSE-ConnectionGUID: UUU2SsRcR6WCe4CWGM0zSA==
X-CSE-MsgGUID: wLtYDR1USiyl3bvaIwB8oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="29191985"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 08 May 2024 20:32:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Date: Thu,  9 May 2024 08:59:23 +0530
Message-ID: <20240509032922.1145558-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240416093730.625486-2-suraj.kandpal@intel.com>
References: <20240416093730.625486-2-suraj.kandpal@intel.com>
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

Disable bit 29 of SCLKGATE_DIS register around pps sequence
when we turn panel power on.

--v2
-Squash two commit together [Jani]
-Use IS_DISPLAY_VER [Jani]
-Fix multiline comment [Jani]

--v3
-Define register in a more appropriate place [Mitul]

Bspec: 49304
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 0ccbf9a85914..d774aeb1673e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -948,6 +948,14 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 		intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	}
 
+	/*
+	 * WA: 16023567976
+	 * Disable DPLS gating around power sequence.
+	 */
+	if (IS_DISPLAY_VER(dev_priv, 12, 14))
+		intel_de_rmw(dev_priv, SCLKGATE_DIS,
+			     0, DPLS_GATING_DISABLE);
+
 	pp |= PANEL_POWER_ON;
 	if (!IS_IRONLAKE(dev_priv))
 		pp |= PANEL_POWER_RESET;
@@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	wait_panel_on(intel_dp);
 	intel_dp->pps.last_power_on = jiffies;
 
+	if (IS_DISPLAY_VER(dev_priv, 12, 14))
+		intel_de_rmw(dev_priv, SCLKGATE_DIS,
+			     DPLS_GATING_DISABLE, 0);
+
 	if (IS_IRONLAKE(dev_priv)) {
 		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
 		intel_de_write(dev_priv, pp_ctrl_reg, pp);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5670eee4a498..4cc82360298b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5151,6 +5151,10 @@ enum skl_power_gate {
 
 #define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i) * 4)
 
+/* SCLKGATE_DIS */
+#define SCLKGATE_DIS			_MMIO(0xc2020)
+#define  DPLS_GATING_DISABLE		REG_BIT(29)
+
 /* Plane CSC Registers */
 #define _PLANE_CSC_RY_GY_1_A	0x70210
 #define _PLANE_CSC_RY_GY_2_A	0x70310
-- 
2.43.2

