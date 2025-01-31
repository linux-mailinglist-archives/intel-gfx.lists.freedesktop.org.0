Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C23A23E13
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 14:01:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABED10EAA8;
	Fri, 31 Jan 2025 13:01:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gb1YCbJQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A0A10EAA7;
 Fri, 31 Jan 2025 13:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738328473; x=1769864473;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p8XYmkTp8x+1JjZ7TTGw1bdRX4YrjtFKM7t8XW13KEk=;
 b=Gb1YCbJQgtucZyrwLGOhCtk8ep76T39O4VA3JoI7Z/8YvNTpVbk9WdFx
 PfzspLWL63t6mJXCQwu60vvGpd/KNyw4jGe+pgoWoN2aAhbRLvfCy/pLR
 JwvUzGp96uaE88vOvNc4kOB4WZXmlhxtyASFjADyAqdMx0DItgCTG3gNF
 xujEV+X9NjgublzV0ELBe22t68v/GhndGJg3nfarN4PYjYPRdRzn91FSu
 f4z2eqOyos49FsKyXA2u5EoPgRoREFjr/ZJ5QSq1TVeiHyiiEncL90mPU
 VVd+79HazvRZeqcbr2BqRq580ZjjvifV4hNLBLfdcCIxnYdzu3UGj82X2 w==;
X-CSE-ConnectionGUID: 1mBA+o8zS+uvRhp6T1HXtQ==
X-CSE-MsgGUID: 0Z9r2C54SVaNPPf3vloC0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="39034387"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="39034387"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 05:01:13 -0800
X-CSE-ConnectionGUID: ehjCYntRRhqPGw7L6rKyIw==
X-CSE-MsgGUID: J/I4QvweQui+n4VK07Lspw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="109564583"
Received: from slindbla-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.169])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 05:01:10 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 jani.saarinen@intel.com
Subject: [PATCH] drm/i915/display: implement wa_18038517565
Date: Fri, 31 Jan 2025 15:00:57 +0200
Message-ID: <20250131130057.672646-1-vinod.govindapillai@intel.com>
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

Bspec: 74212, 69741, 65555
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  6 ++++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index df05904bac8a..637fe8c04cb6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -522,6 +522,13 @@ static void ilk_fbc_activate(struct intel_fbc *fbc)
 		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
 }
 
+static void mtl_fbc_compressor_clkgate_disable(struct intel_fbc *fbc,
+					       bool disable)
+{
+	intel_de_rmw(fbc->display, MTL_PIPE_CLKGATE_DIS2(fbc->id),
+		     MTL_DPFC_GATING_DIS, disable ? MTL_DPFC_GATING_DIS : 0);
+}
+
 static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
@@ -532,6 +539,10 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
 	if (dpfc_ctl & DPFC_CTL_EN) {
 		dpfc_ctl &= ~DPFC_CTL_EN;
 		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
+
+		/* wa_18038517565 Enable DPFC clock gating after FBC disable */
+		if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
+			mtl_fbc_compressor_clkgate_disable(fbc, false);
 	}
 }
 
@@ -665,6 +676,10 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	if (intel_fbc_has_fences(display))
 		snb_fbc_program_fence(fbc);
 
+	/* wa_18038517565 Disable DPFC clock gating before FBC enable */
+	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
+		mtl_fbc_compressor_clkgate_disable(fbc, true);
+
 	/* wa_14019417088 Alternative WA*/
 	dpfc_ctl = ivb_dpfc_ctl(fbc);
 	if (DISPLAY_VER(display) >= 20)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 03da51b03fb9..236188a1c9ce 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4269,6 +4269,12 @@ enum skl_power_gate {
 #define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)
 #define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS		REG_BIT(7)
 
+#define _MTL_PIPE_CLKGATE_DIS2_A			0x60114
+#define _MTL_PIPE_CLKGATE_DIS2_B			0x61114
+#define MTL_PIPE_CLKGATE_DIS2(pipe) \
+	_MMIO_PIPE(pipe, _MTL_PIPE_CLKGATE_DIS2_A, _MTL_PIPE_CLKGATE_DIS2_B)
+#define   MTL_DPFC_GATING_DIS			REG_BIT(6)
+
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
 #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
 #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
-- 
2.43.0

