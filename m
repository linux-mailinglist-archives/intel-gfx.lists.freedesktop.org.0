Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D83A75B60
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Mar 2025 19:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD3F10E314;
	Sun, 30 Mar 2025 17:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H77tzUKH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319D510E314;
 Sun, 30 Mar 2025 17:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743355591; x=1774891591;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5Po3JG2S9sbqBxuXPCmafclabzdq645cW4b9ZZs2W6c=;
 b=H77tzUKH2GRXmPFpKQlTwtjXOlSYoyl15DosRMxwOUCPfBPCDaejNTis
 9Jr3hqLygozAOUzOcJ+KwvYjZP36pkzeGn4ZNk7xNpaibF3B1IPvAesHb
 sc3RjZGG+ERYNIn++s+jiDh+m46WE8ufmHPRU0viVdUIK5WAs3Pc34/PQ
 4FbxdAm4YbvNsOgWdJtLeq5hJPNG/lQ4plZPVPKP6WF8c1iYldGdM6mqd
 OXccA99CXkjwdMfjAmsOWwnJD+Jeb+51OnGaLIJaMJnhzRz07NUj20DH3
 4lfSrM9IetsSXNtP0kv30uI9ne4qV1o4bEWBr53VanDeY+bY3iAW+OZUT A==;
X-CSE-ConnectionGUID: KAGMxmzeTMS1HyafegKuZg==
X-CSE-MsgGUID: 0vWp2S1EQOmVIqdlNjp3ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11389"; a="67129575"
X-IronPort-AV: E=Sophos;i="6.14,289,1736841600"; d="scan'208";a="67129575"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2025 10:26:31 -0700
X-CSE-ConnectionGUID: Tc0+i3gKRdutU9tG96gMLg==
X-CSE-MsgGUID: KGELH9VXQMyoX8SabrjbuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,289,1736841600"; d="scan'208";a="126367949"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.159])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2025 10:26:27 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 jani.nikula@intel.com, jani.saarinen@intel.com
Subject: [PATCH v3] drm/i915/display: implement wa_18038517565
Date: Sun, 30 Mar 2025 20:26:16 +0300
Message-ID: <20250330172616.718188-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Disable FBC compressor clock gating before enabling FBC and
clear it after disabling FBC.

v2: update the DG2 registers for this wa

v3: use local variable and single line reg definition (Jani)

Bspec: 74212, 72197, 69741, 65555
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  6 ++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index e89cee323d8b..ce5b1e3f1c20 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -520,6 +520,20 @@ static void ilk_fbc_activate(struct intel_fbc *fbc)
 		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
 }
 
+static void fbc_compressor_clkgate_disable_wa(struct intel_fbc *fbc,
+					      bool disable)
+{
+	struct intel_display *display = fbc->display;
+
+	if (display->platform.dg2)
+		intel_de_rmw(display, GEN9_CLKGATE_DIS_4, DG2_DPFC_GATING_DIS,
+			     disable ? DG2_DPFC_GATING_DIS : 0);
+	else if (DISPLAY_VER(display) >= 14)
+		intel_de_rmw(display, MTL_PIPE_CLKGATE_DIS2(fbc->id),
+			     MTL_DPFC_GATING_DIS,
+			     disable ? MTL_DPFC_GATING_DIS : 0);
+}
+
 static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
@@ -533,6 +547,10 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 	if (dpfc_ctl & DPFC_CTL_EN) {
 		dpfc_ctl &= ~DPFC_CTL_EN;
 		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
+
+		/* wa_18038517565 Enable DPFC clock gating after FBC disable */
+		if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
+			fbc_compressor_clkgate_disable_wa(fbc, false);
 	}
 }
 
@@ -922,6 +940,10 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
+
+	/* wa_18038517565 Disable DPFC clock gating before FBC enable */
+	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
+		fbc_compressor_clkgate_disable_wa(fbc, true);
 }
 
 static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c5064eebe063..49beab8e324d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1077,6 +1077,7 @@
 
 #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
 #define   BXT_GMBUS_GATING_DIS		(1 << 14)
+#define   DG2_DPFC_GATING_DIS		REG_BIT(31)
 
 #define GEN9_CLKGATE_DIS_5		_MMIO(0x46540)
 #define   DPCE_GATING_DIS		REG_BIT(17)
@@ -4242,6 +4243,11 @@ enum skl_power_gate {
 #define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)
 #define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS		REG_BIT(7)
 
+#define _MTL_PIPE_CLKGATE_DIS2_A		0x60114
+#define _MTL_PIPE_CLKGATE_DIS2_B		0x61114
+#define MTL_PIPE_CLKGATE_DIS2(pipe)		_MMIO_PIPE(pipe, _MTL_PIPE_CLKGATE_DIS2_A, _MTL_PIPE_CLKGATE_DIS2_B)
+#define   MTL_DPFC_GATING_DIS			REG_BIT(6)
+
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
 #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
 #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
-- 
2.43.0

